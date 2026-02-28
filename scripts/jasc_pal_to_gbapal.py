#!/usr/bin/env python3
"""Convert JASC-PAL text palettes (supporting >256 colors) into raw GBA palette binaries."""

from __future__ import annotations

import math
import sys
from pathlib import Path

MAX_GBA_COLOR = 31


def clamp(value: int, lower: int = 0, upper: int = 255) -> int:
    return max(lower, min(upper, value))


def to_gba_component(value: int) -> int:
    value = clamp(value)
    # Match gbagfx's DOWNCONVERT_BIT_DEPTH(x) ((x) / 8) behaviour (i.e., floor division).
    return value // 8


def parse_palette(path: Path) -> list[tuple[int, int, int]]:
    text = path.read_text(encoding="utf-8", errors="ignore")
    # Split on CRLF/LF uniformly.
    lines = [line.strip() for line in text.replace("\r", "\n").split("\n") if line.strip()]

    if len(lines) < 3:
        raise SystemExit(f"Palette {path} is missing required header lines")

    if lines[0] != "JASC-PAL":
        raise SystemExit(f"Palette {path} is missing JASC-PAL signature")

    if lines[1] != "0100":
        raise SystemExit(f"Palette {path} has unsupported version {lines[1]}")

    try:
        declared = int(lines[2])
    except ValueError as exc:
        raise SystemExit(f"Palette {path} has invalid color count line: {lines[2]}") from exc

    colors: list[tuple[int, int, int]] = []
    for raw in lines[3:]:
        parts = raw.split()
        if not parts:
            continue
        if len(parts) != 3:
            raise SystemExit(f"Palette {path} has malformed color entry: {raw}")
        try:
            r, g, b = (int(part) for part in parts)
        except ValueError as exc:
            raise SystemExit(f"Palette {path} has non-integer color entry: {raw}") from exc
        colors.append((clamp(r), clamp(g), clamp(b)))

    if len(colors) < declared:
        raise SystemExit(f"Palette {path} declared {declared} colors but only provided {len(colors)} entries")

    return colors[:declared]


def write_gbapal(path: Path, colors: list[tuple[int, int, int]]) -> None:
    data = bytearray()
    for r, g, b in colors:
        gba = (to_gba_component(b) << 10) | (to_gba_component(g) << 5) | to_gba_component(r)
        data.append(gba & 0xFF)
        data.append((gba >> 8) & 0xFF)
    path.write_bytes(bytes(data))


def main(argv: list[str]) -> int:
    if len(argv) != 3:
        print(f"Usage: {argv[0]} INPUT.pal OUTPUT.gbapal", file=sys.stderr)
        return 1

    input_path = Path(argv[1])
    output_path = Path(argv[2])

    colors = parse_palette(input_path)
    write_gbapal(output_path, colors)

    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
