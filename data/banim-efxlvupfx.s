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
	.incbin "dump/banim-efxlvupfx_5BC188.bin"

	.global Tsa_ArenaBattleBg
Tsa_ArenaBattleBg:  @ 0x085BE7F4
	.incbin "dump/banim-efxlvupfx_5BE7F4.bin"

	.global Pal_ArenaBattleBg_A
Pal_ArenaBattleBg_A:  @ 0x085BEF94
	.incbin "dump/banim-efxlvupfx_5BEF94.gbapal"

	.global Pal_ArenaBattleBg_B
Pal_ArenaBattleBg_B:  @ 0x085BF014
	.incbin "dump/banim-efxlvupfx_5BF014.gbapal"

	.global Pal_ArenaBattleBg_C
Pal_ArenaBattleBg_C:  @ 0x085BF094
	.incbin "dump/banim-efxlvupfx_5BF094.gbapal"

	.incbin "dump/banim-efxlvupfx_5BF114.bin"

	.global Img1_EfxLvupBG
Img1_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5BF708.bin"

	.global Img2_EfxLvupBG
Img2_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5C02E0.bin"

	.global Img3_EfxLvupBG
Img3_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5C1110.bin"

	.global Img4_EfxLvupBG
Img4_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5C1CD4.bin"

	.global Img5_EfxLvupBG
Img5_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5C2914.bin"

	.global Img6_EfxLvupBG
Img6_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5C3698.bin"

	.global Img7_EfxLvupBG
Img7_EfxLvupBG:
	.incbin "dump/banim-efxlvupfx_5C439C.bin"

	.global Pal_EfxLvupBG
Pal_EfxLvupBG:  @ 0x085C48AC
	.incbin "dump/banim-efxlvupfx_5C48AC.gbapal"

    .global Tsa1_EfxLvupBG
Tsa1_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C48CC.bin"

    .global Tsa2_EfxLvupBG
Tsa2_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C4A2C.bin"

    .global Tsa3_EfxLvupBG
Tsa3_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C4BA0.bin"

    .global Tsa4_EfxLvupBG
Tsa4_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C4D34.bin"

    .global Tsa5_EfxLvupBG
Tsa5_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C4EE8.bin"

    .global Tsa6_EfxLvupBG
Tsa6_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C50C0.bin"

    .global Tsa7_EfxLvupBG
Tsa7_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C52B8.bin"

    .global Tsa8_EfxLvupBG
Tsa8_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C54D4.bin"

    .global Tsa9_EfxLvupBG
Tsa9_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C56E8.bin"

    .global Tsa10_EfxLvupBG
Tsa10_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C5818.bin"

    .global Tsa11_EfxLvupBG
Tsa11_EfxLvupBG:
    .incbin "dump/banim-efxlvupfx_5C58E0.bin"

	.global Img_EfxLvupBG2
Img_EfxLvupBG2:  @ 0x085C5994
	.incbin "dump/banim-efxlvupfx_5C5994.bin"

	.global Pal_EfxLvupBG2
Pal_EfxLvupBG2:  @ 0x085C6054
	.incbin "dump/banim-efxlvupfx_5C6054.gbapal"

	.global Pal_EfxLvupBGCOL
Pal_EfxLvupBGCOL:  @ 0x085C60D4
	.incbin "dump/banim-efxlvupfx_5C60D4.gbapal"

    .global Tsa1_EfxLvupBG2
Tsa1_EfxLvupBG2:
    .incbin "dump/banim-efxlvupfx_5C60F4.bin"

    .global Tsa2_EfxLvupBG2
Tsa2_EfxLvupBG2:
    .incbin "dump/banim-efxlvupfx_5C61D8.bin"

    .global Tsa3_EfxLvupBG2
Tsa3_EfxLvupBG2:
    .incbin "dump/banim-efxlvupfx_5C62BC.bin"

    .global Tsa4_EfxLvupBG2
Tsa4_EfxLvupBG2:
    .incbin "dump/banim-efxlvupfx_5C63DC.bin"

    .global Tsa5_EfxLvupBG2
Tsa5_EfxLvupBG2:
    .incbin "dump/banim-efxlvupfx_5C64FC.bin"

    .global Tsa6_EfxLvupBG2
Tsa6_EfxLvupBG2:
    .incbin "dump/banim-efxlvupfx_5C6618.bin"

	.global Img_EfxLvupOBJ2
Img_EfxLvupOBJ2:  @ 0x085C6730
	.incbin "dump/banim-efxlvupfx_5C6730.bin"

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
