# 战斗动画资源拆解与导出流程

> 适用分支：`banim-assets-source`
>
> 目标：将 `data/data_banim.s` 中直接 `incbin baserom.gba` 的大块二进制数据，拆分成可追踪的图片、调色板与 TSA 资源，保证重编译可重现，并在仓库中保存原始压缩数据与可视化素材。

## 产出概览

| 项目 | 说明 |
| --- | --- |
| `graphics/banim/assets/img` | 651 份 PNG 源文件；`.4bpp`/`.4bpp.lz` 在构建时由 `banim_img_rules.mk` 自动生成 |
| `graphics/banim/assets/pal` | 120 份 `.pal` 源调色板；`.gbapal` 作为构建产物由 `banim_pal_rules.mk` 生成 |
| `graphics/banim/assets/tsa` | 617 份未压 `.tsa` + 对应的构建产物 `.tsa.lz`（由规则生成） |
| `graphics/banim/assets/misc` | 2 个尚未细分的块：`gUnk_085dd518`、`gUnknown_08678D20`（已解压成 `.bin` 源） |
| `reports/data_banim_incbin_report.txt` | `data/data_banim.s` 中剩余 `baserom` 引用清单（含行号、起止地址） |
| `reports/data_banim_incbin_labels.csv` | 每条 `incbin` 的标签、偏移、尺寸（供脚本消费） |
| `reports/data_banim_asset_map.csv` | 旧路径 → 新路径（img/pal/tsa）映射，用于校验/回溯 |
| `graphics/banim/assets/img/banim_img_rules.mk` | 由 `scripts/update_banim_img_rules.py` 生成的 PNG→4bpp 重建约束 |

## 依赖

- `baserom.gba`（干净的 FE8U ROM，放在仓库根目录）
- Python 3.11（已在 OpenClaw 环境中）
- Pillow（`scripts/tool.py` 会自动使用）
- `tools/gbagfx`（repo 已自带）
- `scripts/tool.py`、`scripts/update_banim_img_rules.py`

## 目录结构速查

```
projects/fireemblem8u/
├── data/data_banim.s
├── graphics/
│   └── banim/
│       └── assets/
│           ├── img/   (*.4bpp.lz + *.png)
│           ├── pal/   (*.gbapal)
│           ├── tsa/   (*.tsa.lz + *.tsa)
│           └── misc/  (尚未拆分的原始块)
├── reports/
│   ├── data_banim_asset_map.csv
│   ├── data_banim_incbin_labels.csv
│   └── data_banim_incbin_report.txt
└── scripts/
    ├── tool.py
    └── update_banim_img_rules.py
```

## 全流程概览（2026-02-27 ~ 2026-02-28）

1. **拉平 1390 条 `.incbin`（02-27 10:52~11:07）**：`data/data_banim.s` 原本直接指向 `baserom.gba`。先用脚本依序读取标签、ROM 偏移、长度，将所有块 dump 到 `graphics/banim_incbin/<offset>_<label>.bin`，并用 `reports/data_banim_incbin_{report,labels}.(txt/csv)` 记录来源。
2. **按资源类型落盘（11:14 起）**：依据标签前缀（`Img_`/`Pal_`/`Tsa_` 等）切片进 `graphics/banim/assets/{img,pal,tsa,misc}`，为后续 PNG、调色板、TSA 处理奠基。
3. **PNG Round-trip 验证（11:22~13:59）**：
   - 批量解压 `.4bpp.lz` → `.4bpp` → `.png`，删除仓库里的 `.4bpp`，只留下 PNG。
   - 写 `scripts/update_banim_img_rules.py` 统计 tile 数/宽度，生成 `banim_img_rules.mk`，解决 9 个“宽度未知”导致的 diff。
   - 清理 `data/banim/data_banim.o`、重跑 `scripts/arm_compressing_linker.py`，再以 `make -j8 && sha1sum -c checksum.sha1` 证明 PNG → .4bpp → ROM 无损。
4. **全面源码化（14:02~20:55）**：在群聊 20 分钟一报节奏下，继续把剩余资产转成可读格式：
   - `.gbapal` → `.pal` → （必要时）`.agbpal`，同时生成 `banim_pal_rules.mk`。
   - `.tsa.lz`/`misc.lz` 解压到未压 `*.tsa`/`*.bin`，但 `.incbin` 仍引用压缩成品。
   - `.animscr.lz` 反汇编为 `graphics/banim/assets/animscr/*.s`，格式对齐 `banim-ekrmainminifx.s`，并用 `banim_animscr_rules.mk` 再压回 `.animscr.lz`。
   - 所有构建产物统一移到 `build/banim_generated/`，仓库仅保存源资产。
5. **最终交付（22:30）**：整理脚本/规则/PNG/.pal/.tsa/.s 变更，提交 `b76b8a0e Source battle animation assets for deterministic builds agent=banim-migrator model=github-copilot/gpt-5.1-codex openclaw=2026.2.25`，标志 banim 资产完全可重复构建。
6. **文档补全（02-28 05:37~06:46）**：基于群聊新增本指南及附录，记录所有 edge case——`gbapal↔pal↔agbpal`、`gbagfx width/num_tiles`、TSA 头部判断、animscr 宏化、`.incbin` 命名规则等。

## 拆解步骤

### 1. 生成 incbin 报表

用途：锁定 `data/data_banim.s` 里仍然引用 `baserom.gba` 的行，并把标签、偏移、大小序列化成 CSV，方便后续脚本处理。

示例脚本（会更新 `reports/` 三个文件）：

```bash
python3 - <<'PY'
from pathlib import Path
import csv, re
src = Path('data/data_banim.s')
report_txt = Path('reports/data_banim_incbin_report.txt')
labels_csv = Path('reports/data_banim_incbin_labels.csv')
asset_csv = Path('reports/data_banim_asset_map.csv')
asset_rows = []
label_rows = [('line','label','global','start','size')]
report_lines = ['data/data_banim.s remaining baserom incbins']
with src.open() as f:
    lines = f.readlines()
for idx, line in enumerate(lines, 1):
    if '.incbin "baserom.gba"' not in line:
        continue
    report_lines.append(f"line {idx:5d}: {line.strip()}")
    label_line = lines[idx-2]
    label = label_line.split(':')[0].strip()
    label_rows.append((idx, label, label, line.split(',')[1].strip(), line.split(',')[2].strip()))
report_txt.write_text('\n'.join(report_lines) + '\n')
with labels_csv.open('w', newline='') as fp:
    writer = csv.writer(fp)
    writer.writerows(label_rows)
with asset_csv.open('w', newline='') as fp:
    writer = csv.writer(fp)
    writer.writerow(('old_path','new_path'))
    for row in label_rows[1:]:
        offset = row[3].replace('0x','').replace(' ','').upper()
        name = row[2]
        old = f'graphics/banim_incbin/{offset}_{name}.bin'
        new = old  # 占位，下一步再替换成 img/pal/tsa 目录
        asset_rows.append((old, new))
    writer.writerows(asset_rows)
PY
```

> 提示：仓库里已经有生成好的报表，只有在重新拆 ROM 时才需要再跑一次。

### 2. 把 baserom 的两个大块导出成 `.bin`

`data/data_banim.s` 里实际只剩两段连续的 `.bin`：`gUnk_085dd518` 与 `gUnknown_08678D20`。先用 `scripts/tool.py` 把原始字节 dump 出来，保存到临时的 `graphics/banim_incbin/`。

```bash
python3 - <<'PY'
from pathlib import Path
from scripts import tool
rom = Path('baserom.gba').open('rb')
chunks = {
    'graphics/banim_incbin/005DD518_gUnk_085dd518.bin': (0x05DD518, 0x1868),
    'graphics/banim_incbin/00678D20_gUnknown_08678D20.bin': (0x0678D20, 0xDEB0),
}
Path('graphics/banim_incbin').mkdir(parents=True, exist_ok=True)
for path, (start, size) in chunks.items():
    rom.seek(start)
    Path(path).write_bytes(rom.read(size))
PY
```

### 3. 依据标签拆分到 img/pal/tsa

- 使用 `reports/data_banim_incbin_labels.csv` 确定每个条目的偏移、长度、类型（`Img_` / `Pal_` / `Tsa_`）。
- 将 `graphics/banim_incbin/*.bin` 切片成独立文件，并根据类型落盘：
  - `graphics/banim/assets/img/<offset>_<label>.4bpp.lz`
  - `graphics/banim/assets/pal/<offset>_<label>.gbapal`
  - `graphics/banim/assets/tsa/<offset>_<label>.tsa.lz`
  - 未知结构放进 `graphics/banim/assets/misc/`

示例切片脚本（基于 CSV，自动写回 `reports/data_banim_asset_map.csv`）：

```bash
python3 - <<'PY'
from pathlib import Path
import csv
root = Path('.')
rom = root/'baserom.gba'
data = rom.read_bytes()
labels = Path('reports/data_banim_incbin_labels.csv')
asset_map = Path('reports/data_banim_asset_map.csv')
rows = []
with labels.open() as fp:
    reader = csv.DictReader(fp)
    for row in reader:
        start = int(row['start'], 0)
        size = eval(row['size'])
        blob = data[start:start+size]
        stem = f"{start:08X}_{row['global']}"
        if row['global'].startswith('Img_'):
            out = Path('graphics/banim/assets/img') / f"{stem}.4bpp.lz"
        elif row['global'].startswith('Pal_'):
            out = Path('graphics/banim/assets/pal') / f"{stem}.gbapal"
        elif row['global'].startswith('Tsa_'):
            out = Path('graphics/banim/assets/tsa') / f"{stem}.tsa.lz"
        else:
            out = Path('graphics/banim/assets/misc') / f"{stem}.bin"
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_bytes(blob)
        rows.append({'old_path': f'graphics/banim_incbin/{stem}.bin', 'new_path': str(out)})
with asset_map.open('w', newline='') as fp:
    writer = csv.DictWriter(fp, fieldnames=('old_path','new_path'))
    writer.writeheader()
    writer.writerows(rows)
PY
```

### 4. 解压图片、调色板与 TSA

#### 4.1 图片 → PNG

1. 对每个 `.4bpp.lz` 运行 `tool.decomp_file`，得到临时 `.4bpp`。
2. 再用 `tool.save_image`（底层调用 `gbagfx`）把 `.4bpp` 转成 `.png`。
3. 根据 TSA 或经验设置宽度。若找不到 TSA，就默认 32 tile 宽。
4. 删除临时 `.4bpp`，只保留 `.4bpp.lz` 与 `.png`。

```bash
python3 - <<'PY'
from pathlib import Path
from scripts import tool
for path in Path('graphics/banim/assets/img').glob('*.4bpp.lz'):
    raw = path.with_suffix('')
    tool.decomp_file(str(path), str(raw))
    width = 32 if 'Bg' in path.stem or 'Sprites' in path.stem else 1
    png = path.with_suffix('.png')
    tool.save_image(str(raw), str(png), width=width)
    raw.unlink()
PY
```

> 更精确的宽度/Tile 数由 `scripts/update_banim_img_rules.py` 统一维护，重建 `.4bpp` 时会强制 `GBAGFX` 使用正确参数。

#### 4.2 调色板

调色板本身没有压缩，拆分时先落地为 `.gbapal`，随后用 `gbagfx foo.gbapal foo.pal` 得到可编辑的 `.pal`。提交时只保留 `.pal`（由 `banim_pal_rules.mk` 在构建阶段重新生成 `.gbapal`），必要时可用 `tool.read_palette` 验证颜色数量或检查 16/256 色限制。

#### 4.3 TSA

1. 先将 `.tsa.lz` 解压为 `.tsa`（平面 tile map 数据），仓库只保留未压 `.tsa`。
2. `.incbin` 仍引用构建阶段重新 LZ77 压缩的 `.tsa.lz`，由 `make banim` 自动生成。
3. `.tsa` 文件与对应背景/OBJ 的 `.png` 配套，用于美术确认。

```bash
python3 - <<'PY'
from pathlib import Path
from scripts import tool
for path in Path('graphics/banim/assets/tsa').glob('*.tsa.lz'):
    tool.decomp_file(str(path), str(path.with_suffix('')))
PY
```

### 5. 回写 `data/data_banim.s` 与构建规则

1. 用 `reports/data_banim_asset_map.csv` 批量替换 `.incbin "baserom.gba", …` 为仓库内路径：
   ```asm
   	.incbin "./graphics/banim/assets/img/005DDC64_Img_BreathSprites.4bpp.lz"
   ```
2. 跑 `python3 scripts/update_banim_img_rules.py`，生成/更新 `graphics/banim/assets/img/banim_img_rules.mk`，确保 `make` 在把 PNG 重新压回 `.4bpp.lz` 时使用正确的 tile 数或宽度约束。
3. `Makefile` 中包含 `graphics/banim/assets/img/banim_img_rules.mk`，并确保 `BANIM_OBJECT` 构建前会先根据这些规则生成 `.4bpp.lz` / `.tsa.lz`。

### 6. 校验

- **字节级对比**：使用 `reports/data_banim_asset_map.csv`，将新路径的文件与 ROM 中原始字节比对 SHA1。

  ```bash
  python3 - <<'PY'
  import csv, hashlib, sys
  from pathlib import Path
  rom = Path('baserom.gba').read_bytes()
  ok = True
  with open('reports/data_banim_asset_map.csv') as fp:
      reader = csv.DictReader(fp)
      for row in reader:
          new = Path(row['new_path'])
          start = int(new.name.split('_',1)[0], 16)
          size = len(new.read_bytes())
          original = rom[start:start+size]
          if hashlib.sha1(original).digest() != hashlib.sha1(new.read_bytes()).digest():
              print('mismatch:', new)
              ok = False
  if not ok:
      sys.exit(1)
  PY
  ```

- **构建验证**：
  ```bash
  make clean-banim && make banim
  ```
  生成的对象应与 `baserom` 对应段落一致（`diff`/`sha1sum` 无差异）。

- **Git 检查**：确认只有期望的资源与报表发生变化，提交前跑 `git status` & `git diff`。

## 常见问题

| 问题 | 解决办法 |
| --- | --- |
| PNG 生成花屏 | 检查 `width/num_tiles`，重新跑 `scripts/update_banim_img_rules.py`，或用对应 TSA 推算实际宽度 |
| `.tsa` 无法解压 | 确认源文件确实是 LZ77；若 size ≤ 0x3C，说明原本是未压缩数据，直接复制即可 |
| `tool.py` 报 `gbagfx` 找不到 | 确认 `tools/gbagfx` 已编译；必要时重新 `make tools` |
| 校验脚本提示 SHA1 不一致 | 多半是 PNG 导出后忘记重新压回 `.4bpp.lz`，运行 `make banim` 可重新生成压缩文件 |

## Edge Case 处理与经验

### 1. `.incbin` 命名与构建产物分离
- `.incbin` 永远引用“可重现的构建产物”，例如 `graphics/banim/assets/img/005DDC64_Img_BreathSprites.4bpp.lz`。
- 仓库中保留的是源资产：PNG、`.pal`、未压 `.tsa`/`.bin`、宏化 `.s`；实际 `.4bpp`/`.gbapal`/`.tsa.lz`/`.animscr.lz` 都由 `make banim` 在 `build/banim_generated/` 目录生成。
- 命名格式 `<ROM偏移>_<Label>` 保证每个源文件都能追溯到原始地址，`reports/data_banim_asset_map.csv` 则记录旧 → 新路径映射。

### 2. PNG ↔ 4bpp Round-trip & width/tiles 约束
- `scripts/update_banim_img_rules.py` 会解压 `.4bpp.lz`、计算 tile 数，并把已知宽度写进 `CONSTRAINTS`：
  - 宽度来自两处：一是配套 TSA（若可推导列数），二是游戏调用里写死的 `width`/`height` 常量。
  - 如果无法整除，则在规则里写死 `num_tiles`，例如 `Img_EfxLokmsunaObj`。
- 规则文件会生成注释（如 `# 16x11 tiles`），方便复核并防止 `gbagfx` 默认 32 列带来的空行。

### 3. 调色板 α-bit 与 `.agbpal` 场景
- `.gbapal` 属于构建产物，`make clean` 会清理，所以需要保存 `.pal` 源文件。
- 转换链：`gbagfx foo.gbapal foo.pal` → 美术编辑 → `scripts/jasc_pal_to_gbapal.py foo.pal foo.gbapal`（该脚本复刻 `gbagfx` 的 8→5 bit 圆整逻辑、兼容 CRLF/LF，避免平台差异）。
- **高位检测**：在把 `.gbapal` dump 成 `.pal` 之前，先扫描每个 halfword 的 bit15；只要出现 1，这份调色板就不能安全地 round-trip 成 `.pal`。工具链约定直接把此类文件改后缀为 `.agbpal` 并在 `data/data_banim.s` / `reports/data_banim_asset_map.csv` 中引用 `.agbpal`，构建时也只做 `.agbpal → .agbpal.lz` 压缩，不再尝试文本化。
- 若 round-trip 时 RGB555 最高位（俗称 alpha bit）出现 0/1 差异，说明该数据应直接视为最终调色板：把源文件改名为 `.agbpal` 并更新 `.incbin`，避免无谓的转换。

### 4. TSA 头部判断与宽度来源
- 批量检测脚本会尝试把前两个 halfword 视作 `width-1`/`height-1`，验证 `4 + width * height * 2 == len(file)`。若不成立，就认定该 TSA 没有头部（当前 banim TSA 均属此类）。
- 无头 TSA 的宽度需靠：① 与之配套的 PNG 规则；② 游戏脚本/调用；③ 手动在查看器里试宽度。若无可靠宽度，至少保证 `num_tiles` 精准。

### 5. AnimSCR 宏化细节
- 反汇编时按 32-bit 指令位域（`ANFMT_NOT_FORCESPRITE`、`ANFMT_PTRINS`、`ANIM_INS_TYPE_*` 等）拆解，并映射到 `include/animscr.inc` 宏。
- 指针全部转成标签：读取 0x08xxxxxx 地址 → 减去 0x08000000 → 匹配同一文件内的 `AnimSprite` 块，保持与 `banim-ekrmainminifx.s` 相同的命名模式。
- 生成的 `.s` 会在 `banim_animscr_rules.mk` 下重新汇编→压缩→供 `.incbin` 引用。

### 6. 构建失效的应对（`data_banim.o` 案例）
- 删除 `.4bpp` 期间，如果 `data/banim/data_banim.o` 被普通规则覆盖，会导致 `ld` 报 “file format not recognized”。
- 处理方式：`rm data/banim/data_banim.o && make data/banim/data_banim.o`，让 `scripts/arm_compressing_linker.py` 重新生成压缩对象。
- 全量构建后务必执行 `sha1sum -c checksum.sha1`，确认和 `baserom` 完全一致。


## 附录：格式与转换规则

### A. gbapal ↔ pal ↔ agbpal

| 扩展名 | 含义 | 生成方式 |
| --- | --- | --- |
| `.gbapal` | 直接从 ROM 读出的 15-bit BGR 小端调色板，长度 = 颜色数 × 2 字节。默认所有 banim palette 资产都以这个格式存盘。 | `scripts/tool.dump_palette` 会输出 `.gbapal`，同时调用 `gbagfx` 生成 `.pal` 预览。 |
| `.pal` | Windows RIFF/Adobe 兼容的 8-bit RGB 调色板，方便美术工具编辑。 | `gbagfx in.gbapal out.pal`；反向转换用 `gbagfx in.pal out.gbapal`。 |
| `.agbpal` | 与 `.gbapal` 内容一致，只是用于标记“可直接被 `incbin` 的最终 GBA 调色板”。在非 banim 目录（如 item/unit icon）中，Makefile 约定引用 `.agbpal`。 | 将确认完毕的 `.gbapal` 重命名为 `.agbpal`（或在 `make` 规则中输出 `.agbpal`）。 |

使用规则：
1. 永远把 `.gbapal` 视为真值来源；如需调色，先 `gbagfx foo.gbapal foo-edit.pal`，在图形软件里改 `.pal`，再 `gbagfx foo-edit.pal foo.gbapal`。
2. 若该调色板最终要由 `incbin` 引入（尤其是非 LZ 压缩表），在提交前 rename 为 `.agbpal` 并更新引用；否则维持 `.gbapal`，由 `make banim` 自动压缩。

### B. gbagfx 的 `-width` / `-num_tiles` 取值

我们通过 `scripts/update_banim_img_rules.py` 把 ROM 中的真实参数固化到 `graphics/banim/assets/img/banim_img_rules.mk`，规则如下：

1. **Tile 总数**：对指定 Label 的 `.4bpp.lz`，脚本会先 LZ77 解压，再用 `len(raw) // 32` 得出 tile 数（每 tile 32 字节）。这个值会写入 `-num_tiles`，保证重新压缩不会因为多/少 tile 而改变长度。
2. **宽度**：
   - 若某资源在 `CONSTRAINTS` 中提供 `width`，表示它在游戏里被固定成 `width` 个 8×8 tile；脚本会自动推算高度 `tiles // width` 并在注释写明，例如 “16x11 tiles”。
   - 没有 `width` 约束的资源就纯粹靠 `-num_tiles`，让 `gbagfx` 自行按 PNG 的行数拆 tile。
3. **新增资源时**：
   - 先把 `.4bpp.lz` 解压并确认 tile 数；
   - 如果该图有配套 TSA（或能确认宽度），把 Label 加入 `CONSTRAINTS` 并写上 `width`；
   - 若只需要限制 tile 数，则写 `"Label": {"num_tiles": 实际 tile 数}`。
4. **PNG → 4bpp Round-trip**：`make banim` 会 include `banim_img_rules.mk`；缺失规则时默认 `-width 32`，容易导致列数错误，所以不要跳过脚本。

### C. TSA 是否带尺寸头的判断

Banim 的 `.tsa` 资产存在两种来源：

1. **`dump_map` 导出的“带头”版本**：文件前两个字节（有符号）分别存 `width-1`、`height-1`，后续才是 16-bit 条目。若 `(文件长度 - 2)` 正好等于 `2 × width × height`，说明这是带头格式，可直接喂给 `tool.save_image(..., mapfile=...)`，它会按头里的尺寸去拼图。
2. **按偏移切片得到的“裸 TSA”**：大多数 banim 的 `Tsa_*` 属于此类，没有尺寸头，文件开头就是 tile entry（bit[0:9] tile index，bit[10] H flip，bit[11] V flip，bit[12:15] palette）。判断方法：
   - 将首两个字节视作 width/height 时得出的面积若与 `文件长度 - 2` 不匹配，就视为无头；
   - 另一特征是首个 16-bit 值通常 ≥ 0x400（因为高位 palette 位为 1），这不可能出现在“width-1”字段。
3. **无头 TSA 如何求宽度**：
   - 如果该图在 `banim_img_rules.mk` 有 `width` 约束，直接使用；
   - 否则根据实际用途推断：OBJ 类素材通常按 1×N strip，背景类一般是 16 列或配套地图事件会写死列数。必要时可以在人类工具中加载 TSA + PNG，尝试不同宽度直到贴图不再错位。

### D. animscr（二进制脚本 → 宏汇编）

参考 `include/animscr.inc`：

1. **指令字格式**（32 bit）：
   - bit[31] = `ANFMT_NOT_FORCESPRITE`，置位表示这条命令不会强制刷新当前 OBJ（即 WAIT/LOOP/COMMAND 等控制指令）。
   - bit[30] = `ANFMT_PTRINS`，置位表示低 30 位是指向 sprite/函数的指针，且 bit[28] 决定指令类型（frame vs function）。
   - bit[27:24] = `ANIM_INS_TYPE_*`，值 0~6 对应 STOP/END/LOOP/MOVE/WAIT/COMMAND/FRAME。
   - 低位 payload：依指令不同存时间、跳转次数或指针偏移。
2. **宏映射规则**：
   - `ANIMSCR_FORCE_SPRITE SpriteLabel, time`：用于 `ANIM_INS_TYPE_FRAME` 且 `ANFMT_PTRINS_FRAME` 置位的指令；反编译时读取 32-bit，取出指针→`SpriteLabel`，时间字段 = `(word & 0x1F)`，高位 bit[2:4] 影响 `time` 的上层位，宏里 `(time & 0x3)` / `((time & 0x1C) << 26)` 已封装。
   - `ANIMSCR_WAIT n`：`ANIM_INS_TYPE_WAIT` + `ANFMT_NOT_FORCESPRITE`，低 24 位直接写持续帧数。
   - `ANIMSCR_LOOP`、`ANIMSCR_BLOCKED`、`ANIMSCR_DISABLED`：分别对应 `ANIM_INS_TYPE_LOOP/STOP/END` 的控制指令，均带 `ANFMT_NOT_FORCESPRITE`。
   - `ANIMSCR_FORCE_SPRITE` 之外的函数跳转（bit[30]=1 但 `ANFMT_PTRINS_FUNC`）会转成专用宏，如 `ANIMSCR_FORCE_SPRITE AnimSprite_X, t` / 或直接 `.4byte Label` 当函数调用，目前 banim 里主要见到 `ANIMSCR_FORCE_SPRITE` 与控制宏。
3. **`AnimSprite` 表**：每帧由 `ANIM_SPRITE` / `ANIM_SPRITE_XFLIP` / `ANIM_SPRITE_AFFIN` 等宏描述（6 halfword = 12 字节）。脚本在转换时保持一个“帧号 → Label”映射，遇到 frame 指针就生成 `AnimSprite_*` 标签。
4. **转换流程**：
   - 读取 `.animscr.bin`，按 4 字节拆分；
   - 解析高位判断指令类型 → 映射到对应宏；
   - 指向 sprite 数据的指针（0x08XXXXXX）减去 `0x08000000` 得到文件内偏移，再对照 `AnimSprite` 表生成 label；
   - 把每条指令翻译成宏语句，保持和原脚本同顺序，结尾保留 `ANIMSCR_LOOP / ANIMSCR_BLOCKED / ANIMSCR_DISABLED` 等控制流。

> 以上规则确保我们从二进制脚本反汇编回 `.s` 后，使用 `include/animscr.inc` 提供的宏重新汇编即可复原原始指令字。

---

如需重新跑整套流程，按以上步骤执行即可；若只新增/修改少量资源，可以直接参考第 4～6 步单独更新对应文件。