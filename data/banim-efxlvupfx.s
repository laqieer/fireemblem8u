    .include "animscr.inc"
	.section .data

	.global Img_LvupApfx
Img_LvupApfx:  @ 0x085BB0C8
	.incbin "./graphics/lvup/LvupAp.4bpp.lz"

	.global Pal_LvupApfx
Pal_LvupApfx:  @ 0x085BB2DC
	.incbin "./graphics/lvup/LvupAp.gbapal", 0x0, 0x20

    .incbin "dump/banim-efxlvupfx_5BB2FC.bin"

	.global Img_ArenaBattleBg
Img_ArenaBattleBg:  @ 0x085BC188
	.incbin "graphics/banim/efxlvupfx/Img_ArenaBattleBg.4bpp.lz"

	.global Tsa_ArenaBattleBg
Tsa_ArenaBattleBg:  @ 0x085BE7F4
	.incbin "graphics/banim/efxlvupfx/Tsa_ArenaBattleBg.tsa.lz"

	.global Pal_ArenaBattleBg_A
Pal_ArenaBattleBg_A:  @ 0x085BEF94
	.incbin "graphics/banim/efxlvupfx/Pal_ArenaBattleBg_A.gbapal"

	.global Pal_ArenaBattleBg_B
Pal_ArenaBattleBg_B:  @ 0x085BF014
	.incbin "graphics/banim/efxlvupfx/Pal_ArenaBattleBg_B.gbapal"

	.global Pal_ArenaBattleBg_C
Pal_ArenaBattleBg_C:  @ 0x085BF094
	.incbin "graphics/banim/efxlvupfx/Pal_ArenaBattleBg_C.gbapal"

	.incbin "dump/banim-efxlvupfx_5BF114.bin"

	.global Img1_EfxLvupBG
Img1_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img1_EfxLvupBG.4bpp.lz"

	.global Img2_EfxLvupBG
Img2_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img2_EfxLvupBG.4bpp.lz"

	.global Img3_EfxLvupBG
Img3_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img3_EfxLvupBG.4bpp.lz"

	.global Img4_EfxLvupBG
Img4_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img4_EfxLvupBG.4bpp.lz"

	.global Img5_EfxLvupBG
Img5_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img5_EfxLvupBG.4bpp.lz"

	.global Img6_EfxLvupBG
Img6_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img6_EfxLvupBG.4bpp.lz"

	.global Img7_EfxLvupBG
Img7_EfxLvupBG:
	.incbin "graphics/banim/efxlvupfx/Img7_EfxLvupBG.4bpp.lz"

	.global Pal_EfxLvupBG
Pal_EfxLvupBG:  @ 0x085C48AC
	.incbin "graphics/banim/efxlvupfx/Pal_EfxLvupBG.gbapal"

    .global Tsa1_EfxLvupBG
Tsa1_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa1_EfxLvupBG.tsa.lz"

    .global Tsa2_EfxLvupBG
Tsa2_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa2_EfxLvupBG.tsa.lz"

    .global Tsa3_EfxLvupBG
Tsa3_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa3_EfxLvupBG.tsa.lz"

    .global Tsa4_EfxLvupBG
Tsa4_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa4_EfxLvupBG.tsa.lz"

    .global Tsa5_EfxLvupBG
Tsa5_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa5_EfxLvupBG.tsa.lz"

    .global Tsa6_EfxLvupBG
Tsa6_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa6_EfxLvupBG.tsa.lz"

    .global Tsa7_EfxLvupBG
Tsa7_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa7_EfxLvupBG.tsa.lz"

    .global Tsa8_EfxLvupBG
Tsa8_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa8_EfxLvupBG.tsa.lz"

    .global Tsa9_EfxLvupBG
Tsa9_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa9_EfxLvupBG.tsa.lz"

    .global Tsa10_EfxLvupBG
Tsa10_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa10_EfxLvupBG.tsa.lz"

    .global Tsa11_EfxLvupBG
Tsa11_EfxLvupBG:
    .incbin "graphics/banim/efxlvupfx/Tsa11_EfxLvupBG.tsa.lz"

	.global Img_EfxLvupBG2
Img_EfxLvupBG2:  @ 0x085C5994
	.incbin "graphics/banim/efxlvupfx/Img_EfxLvupBG2.4bpp.lz"

	.global Pal_EfxLvupBG2
Pal_EfxLvupBG2:  @ 0x085C6054
	.incbin "graphics/banim/efxlvupfx/Pal_EfxLvupBG2.gbapal"

	.global Pal_EfxLvupBGCOL
Pal_EfxLvupBGCOL:  @ 0x085C60D4
	.incbin "graphics/banim/efxlvupfx/Pal_EfxLvupBGCOL.gbapal"

    .global Tsa1_EfxLvupBG2
Tsa1_EfxLvupBG2:
    .incbin "graphics/banim/efxlvupfx/Tsa1_EfxLvupBG2.tsa.lz"

    .global Tsa2_EfxLvupBG2
Tsa2_EfxLvupBG2:
    .incbin "graphics/banim/efxlvupfx/Tsa2_EfxLvupBG2.tsa.lz"

    .global Tsa3_EfxLvupBG2
Tsa3_EfxLvupBG2:
    .incbin "graphics/banim/efxlvupfx/Tsa3_EfxLvupBG2.tsa.lz"

    .global Tsa4_EfxLvupBG2
Tsa4_EfxLvupBG2:
    .incbin "graphics/banim/efxlvupfx/Tsa4_EfxLvupBG2.tsa.lz"

    .global Tsa5_EfxLvupBG2
Tsa5_EfxLvupBG2:
    .incbin "graphics/banim/efxlvupfx/Tsa5_EfxLvupBG2.tsa.lz"

    .global Tsa6_EfxLvupBG2
Tsa6_EfxLvupBG2:
    .incbin "graphics/banim/efxlvupfx/Tsa6_EfxLvupBG2.tsa.lz"

	.global Img_EfxLvupOBJ2
Img_EfxLvupOBJ2:  @ 0x085C6730
	.incbin "graphics/banim/efxlvupfx/Img_EfxLvupOBJ2.4bpp.lz"

	.global AnimSprite_EfxLvupOBJ2_085C69C8
AnimSprite_EfxLvupOBJ2_085C69C8:	@ 0x085C69C8
	.incbin "dump/banim-efxlvupfx_5C69C8.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6A04
AnimSprite_EfxLvupOBJ2_085C6A04:	@ 0x085C6A04
	.incbin "dump/banim-efxlvupfx_5C6A04.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6A58
AnimSprite_EfxLvupOBJ2_085C6A58:	@ 0x085C6A58
	.incbin "dump/banim-efxlvupfx_5C6A58.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6AC4
AnimSprite_EfxLvupOBJ2_085C6AC4:	@ 0x085C6AC4
	.incbin "dump/banim-efxlvupfx_5C6AC4.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6B48
AnimSprite_EfxLvupOBJ2_085C6B48:	@ 0x085C6B48
	.incbin "dump/banim-efxlvupfx_5C6B48.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6BCC
AnimSprite_EfxLvupOBJ2_085C6BCC:	@ 0x085C6BCC
	.incbin "dump/banim-efxlvupfx_5C6BCC.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6C5C
AnimSprite_EfxLvupOBJ2_085C6C5C:	@ 0x085C6C5C
	.incbin "dump/banim-efxlvupfx_5C6C5C.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6CEC
AnimSprite_EfxLvupOBJ2_085C6CEC:	@ 0x085C6CEC
	.incbin "dump/banim-efxlvupfx_5C6CEC.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6D70
AnimSprite_EfxLvupOBJ2_085C6D70:	@ 0x085C6D70
	.incbin "dump/banim-efxlvupfx_5C6D70.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6DF4
AnimSprite_EfxLvupOBJ2_085C6DF4:	@ 0x085C6DF4
	.incbin "dump/banim-efxlvupfx_5C6DF4.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6E84
AnimSprite_EfxLvupOBJ2_085C6E84:	@ 0x085C6E84
	.incbin "dump/banim-efxlvupfx_5C6E84.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6F14
AnimSprite_EfxLvupOBJ2_085C6F14:	@ 0x085C6F14
	.incbin "dump/banim-efxlvupfx_5C6F14.bin"

	.global AnimSprite_EfxLvupOBJ2_085C6FB0
AnimSprite_EfxLvupOBJ2_085C6FB0:	@ 0x085C6FB0
	.incbin "dump/banim-efxlvupfx_5C6FB0.bin"

	.global AnimSprite_EfxLvupOBJ2_085C704C
AnimSprite_EfxLvupOBJ2_085C704C:	@ 0x085C704C
	.incbin "dump/banim-efxlvupfx_5C704C.bin"

	.global AnimSprite_EfxLvupOBJ2_085C70E8
AnimSprite_EfxLvupOBJ2_085C70E8:	@ 0x085C70E8
	.incbin "dump/banim-efxlvupfx_5C70E8.bin"

	.global AnimSprite_EfxLvupOBJ2_085C7178
AnimSprite_EfxLvupOBJ2_085C7178:	@ 0x085C7178
	.incbin "dump/banim-efxlvupfx_5C7178.bin"

	.global AnimScr_EfxLvupOBJ2
AnimScr_EfxLvupOBJ2:  @ 0x085C71E4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C69C8, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6A04, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6A58, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6AC4, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6B48, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6BCC, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6C5C, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6CEC, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6D70, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6DF4, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6E84, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6F14, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C6FB0, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C704C, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C70E8, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxLvupOBJ2_085C7178, 10
    ANIMSCR_BLOCKED
