# 战斗动画资源拆解与导出流程

> 适用分支：`banim-assets-source`
>
> 目标：将 `data/data_banim.s` 中直接 `incbin baserom.gba` 的大块二进制数据，拆分成可追踪的图片、调色板与 TSA 资源，保证重编译可重现，并在仓库中保存原始压缩数据与可视化素材。

## 产出概览

| 项目 | 说明 |
| --- | --- |
| `graphics/banim/assets/img` | 651 份 LZ77 压缩的 `.4bpp.lz` + 对应 `.png` 预览 |
| `graphics/banim/assets/pal` | 120 份 `.gbapal`（16/256 色调色板） |
| `graphics/banim/assets/tsa` | 617 份 `.tsa.lz` + 解压后的 `.tsa` |
| `graphics/banim/assets/misc` | 2 个尚未细分的块：`gUnk_085dd518`、`gUnknown_08678D20` |
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

调色板本身没有压缩，拆分时直接写成 `.gbapal` 即可。必要时可以用 `tool.read_palette` 验证颜色数量。

#### 4.3 TSA

1. 先将 `.tsa.lz` 解压为 `.tsa`（平面 tile map 数据）。
2. `.tsa` 文件与对应背景/OBJ 的 `.png` 配套，用于美术确认。

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

---

如需重新跑整套流程，按以上步骤执行即可；若只新增/修改少量资源，可以直接参考第 4～6 步单独更新对应文件。