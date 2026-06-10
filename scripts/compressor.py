#!/usr/bin/env python3

# compressor for linker
# compressor.py <filename> <comptype>

import os
import sys
import struct

filename = sys.argv[1]
comptype = sys.argv[2]

# gbagfx may be vendored (tools/gbagfx/gbagfx) or provided on PATH by a build
# image; let the Makefile select it via $GBAGFX.
GBAGFX = os.environ.get('GBAGFX', 'tools/gbagfx/gbagfx')

if comptype == 'lz':
    os.system('%s %s %s.lz' % (GBAGFX, filename, filename))
elif comptype == 'fk':
    size = os.path.getsize(filename) + 4
    with open(filename, 'rb') as f:
        data = f.read()
    with open(filename + '.fk', 'wb') as f:
        f.write(struct.pack('<I', size << 8))
        f.write(data)

