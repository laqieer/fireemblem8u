# Battle Animation Follow-ups

## Pending Items

- **AnimScr_DarkBreath_Far (ROM offset 0x00723208)**  
  - Current state: still stored as `graphics/banim/assets/animscr/00723208_AnimScr_DarkBreath_Far.bin`.  
  - Reason: automatic animscr parser flagged this blob because it uses self-referential jumps and dynamic offsets that the macro generator cannot safely resolve yet.  
  - Action: author a hand-written macro script (matching `banim-ekrmainminifx.s` style) or extend the parser to model its control flow, then add it to the regular `.s` pipeline.  
  - Blocks: none for build correctness (binary matches ROM), but prevents complete animscr source coverage.
