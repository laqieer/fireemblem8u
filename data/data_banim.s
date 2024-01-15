	.section .data
    .include "animscr.inc"
    .include "gba_sprites.inc"

	.global Img_TeonoOBJ
Img_TeonoOBJ:  @ 0x085D9C5C
	.incbin "./graphics/efxmagic/Img_EfxTeonoOBJ.4bpp.lz"

	.global Pal_TeonoOBJ
Pal_TeonoOBJ:  @ 0x085DA05C
	.incbin "./graphics/efxmagic/Img_EfxTeonoOBJ.gbapal", 0x0, 0x20

    .global Obj_085DA07C
Obj_085DA07C:
AnimSprite_EfxTeonoObj1:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x100 / 0x20, -0x12, -0x04
    ANIM_SPRITE_END

AnimSprite_EfxTeonoObj2:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0, -0x29, 0x1
    ANIM_SPRITE_END

AnimSprite_EfxTeonoObj3:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x80 / 0x20, -0x3B, 0x3
    ANIM_SPRITE_END

AnimSprite_EfxTeonoObj4:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x100 / 0x20, -0x4B, 0x3
    ANIM_SPRITE_END

AnimSprite_EfxTeonoObj5:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0 / 0x20, -0x5B, 0x3
    ANIM_SPRITE_END

AnimSprite_EfxTeonoObj6:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x80 / 0x20, -0x65, -0x1
    ANIM_SPRITE_END

AnimSprite_EfxTeonoObj7:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x100 / 0x20, -0x68, -0x4
    ANIM_SPRITE_END

    .incbin "baserom.gba", 0x5DA124, 0x5DA364 - 0x5DA124

	.global AnimScr_TeonoObjCloseRight
AnimScr_TeonoObjCloseRight:  @ 0x085DA364
@ Replacing .incbin "baserom.gba", 0x5DA364, 0x5C
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj1, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj2, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj3, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj4, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj5, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj6, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj7, 1
    .4byte Obj_085DA07C + 0xA9
    .4byte Obj_085DA07C + 0xC2
    .4byte Obj_085DA07C + 0xDb
    .4byte Obj_085DA07C + 0xF2
    .4byte Obj_085DA07C + 0x116
    .4byte Obj_085DA07C + 0x13a
    .4byte Obj_085DA07C + 0x15d
    .4byte Obj_085DA07C + 0x182
    .4byte Obj_085DA07C + 0x1A5
    .4byte Obj_085DA07C + 0x1Ca
    .4byte Obj_085DA07C + 0x1Ed
    .4byte Obj_085DA07C + 0x212
    .4byte Obj_085DA07C + 0x235
    .4byte Obj_085DA07C + 0x25a
    .4byte Obj_085DA07C + 0x27d
    .4byte 0x80000000

	.global AnimScr_TeonoObjFarRight
AnimScr_TeonoObjFarRight:  @ 0x085DA3C0
@ Replacing .incbin "baserom.gba", 0x5DA3C0, 0x20
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj1, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj2, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj3, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj4, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxTeonoObj5, 1
    .4byte Obj_085DA07C + 0x296
    .4byte Obj_085DA07C + 0x2Ae
    ANIMSCR_BLOCKED

	.global AnimScr_TeonoObj2Right
AnimScr_TeonoObj2Right:  @ 0x085DA3E0
@ Replacing .incbin "baserom.gba", 0x5DA3E0, 0x31C
    .4byte Obj_085DA07C + 0x2C6
    .4byte Obj_085DA07C + 0x115
    .4byte Obj_085DA07C + 0x13a
    .4byte Obj_085DA07C + 0x15d
    .4byte Obj_085DA07C + 0x182
    .4byte Obj_085DA07C + 0x1A6
    .4byte Obj_085DA07C + 0x1C9
    .4byte Obj_085DA07C + 0x1Ed
    .4byte Obj_085DA07C + 0x212
    .4byte Obj_085DA07C + 0x235
    .4byte Obj_085DA07C + 0x259
    .4byte Obj_085DA07C + 0x27d
    ANIMSCR_BLOCKED

    .4byte 0x90004000
    .4byte 0xfff20008
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x00090000
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x001b0004
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x002b0008
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x003b0000
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x00450004
    .4byte 0x0000ffff
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x00480008
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x004e0000
    .4byte 0x0000fff9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x00550004
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x00590008
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00620040
    .4byte 0x0000ffee
    .4byte 0x10008000
    .4byte 0x005a0042
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x005d0043
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0x00550045
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x00550012
    .4byte 0x0000ffe8
    .4byte 0x10000000
    .4byte 0x004d0014
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x004e000c
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0x0046000e
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x0043000f
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0x003b0011
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x00380012
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0x00300014
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x0028000c
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0x0020000e
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x001e000f
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0x00160011
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x00110012
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0x00090014
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x00060046
    .4byte 0x0000ffeb
    .4byte 0x10000000
    .4byte 0xfffe0048
    .4byte 0x0000ffeb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff90049
    .4byte 0x0000ffee
    .4byte 0x10008000
    .4byte 0xfff1004b
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0xffe50008
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x004a0000
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0x005f0000
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x006e0043
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0x00660045
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global AnimScr_TeonoObjCloseLeft
AnimScr_TeonoObjCloseLeft:  @ 0x085DA6FC
@ Replacing .incbin "baserom.gba", 0x5DA6FC, 0x5C
    .4byte AnimScr_TeonoObj2Right + 0x35
    .4byte AnimScr_TeonoObj2Right + 0x4e
    .4byte AnimScr_TeonoObj2Right + 0x65
    .4byte AnimScr_TeonoObj2Right + 0x7e
    .4byte AnimScr_TeonoObj2Right + 0x95
    .4byte AnimScr_TeonoObj2Right + 0xae
    .4byte AnimScr_TeonoObj2Right + 0xc5
    .4byte AnimScr_TeonoObj2Right + 0xdd
    .4byte AnimScr_TeonoObj2Right + 0xf6
    .4byte AnimScr_TeonoObj2Right + 0x10f
    .4byte AnimScr_TeonoObj2Right + 0x126
    .4byte AnimScr_TeonoObj2Right + 0x14a
    .4byte AnimScr_TeonoObj2Right + 0x16e
    .4byte AnimScr_TeonoObj2Right + 0x191
    .4byte AnimScr_TeonoObj2Right + 0x1b6
    .4byte AnimScr_TeonoObj2Right + 0x1d9
    .4byte AnimScr_TeonoObj2Right + 0x1fe
    .4byte AnimScr_TeonoObj2Right + 0x221
    .4byte AnimScr_TeonoObj2Right + 0x246
    .4byte AnimScr_TeonoObj2Right + 0x269
    .4byte AnimScr_TeonoObj2Right + 0x28e
    .4byte AnimScr_TeonoObj2Right + 0x2b1
    .4byte 0x80000000

	.global AnimScr_TeonoObjFarLeft
AnimScr_TeonoObjFarLeft:  @ 0x085DA758
@ Replacing .incbin "baserom.gba", 0x5DA758, 0x20
    .4byte AnimScr_TeonoObj2Right + 0x35
    .4byte AnimScr_TeonoObj2Right + 0x4d
    .4byte AnimScr_TeonoObj2Right + 0x65
    .4byte AnimScr_TeonoObj2Right + 0x7e
    .4byte AnimScr_TeonoObj2Right + 0x95
    .4byte AnimScr_TeonoObj2Right + 0x2ca
    .4byte AnimScr_TeonoObj2Right + 0x2e2
    .4byte 0x80000000

	.global AnimScr_TeonoObj2Left
AnimScr_TeonoObj2Left:  @ 0x085DA778
@ Replacing .incbin "baserom.gba", 0x5DA778, 0x34
    .4byte AnimScr_TeonoObj2Right + 0x2fa
    .4byte AnimScr_TeonoObj2Right + 0x149
    .4byte AnimScr_TeonoObj2Right + 0x16e
    .4byte AnimScr_TeonoObj2Right + 0x191
    .4byte AnimScr_TeonoObj2Right + 0x1b6
    .4byte AnimScr_TeonoObj2Right + 0x1da
    .4byte AnimScr_TeonoObj2Right + 0x1fd
    .4byte AnimScr_TeonoObj2Right + 0x221
    .4byte AnimScr_TeonoObj2Right + 0x246
    .4byte AnimScr_TeonoObj2Right + 0x269
    .4byte AnimScr_TeonoObj2Right + 0x28d
    .4byte AnimScr_TeonoObj2Right + 0x2b1
    .4byte 0x80000000

	.global Img_EfxArrowOBJ
Img_EfxArrowOBJ:  @ 0x085DA7AC
    .incbin "./graphics/efxmagic/Img_EfxArrowOBJ.4bpp.lz"

.global Obj_085DA7E8
Obj_085DA7E8:
AnimSprite_EfxArrowObj1:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x000 / 0x20, -0x3D, -0x0E
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x040 / 0x20, -0x2D, -0x0E
    ANIM_SPRITE_END

AnimSprite_EfxArrowObj2:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x000 / 0x20, -0x5D, -0x0E
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x040 / 0x20, -0x4D, -0x0E
    ANIM_SPRITE_END

AnimSprite_EfxArrowObj3:
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x000 / 0x20, -0x7D, -0x0E
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x040 / 0x20, -0x6D, -0x0E
    ANIM_SPRITE_END

	.global AnimScr_ArrowCloseRight
AnimScr_ArrowCloseRight:  @ 0x085DA854
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxArrowObj1, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxArrowObj2, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxArrowObj3, 1
    ANIMSCR_BLOCKED

	.global AnimScr_ArrowFarRight
AnimScr_ArrowFarRight:  @ 0x085DA864
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxArrowObj1, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxArrowObj2, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxArrowObj3, 1
    ANIMSCR_BLOCKED

	.incbin "baserom.gba", 0x5DA874, 0x6C

	.global AnimScr_ArrowCloseLeft
AnimScr_ArrowCloseLeft:  @ 0x085DA8E0
	.incbin "baserom.gba", 0x5DA8E0, 0x10

	.global AnimScr_ArrowFarLeft
AnimScr_ArrowFarLeft:  @ 0x085DA8F0
	.incbin "baserom.gba", 0x5DA8F0, 0x10

	.global Img_SpellJavelin
Img_SpellJavelin:  @ 0x085DA900
	.incbin "./graphics/efxmagic/Img_SpellJavelin.4bpp.lz"

	.global Pal_SpellJavelin
Pal_SpellJavelin:  @ 0x085DAB30
	.incbin "./graphics/efxmagic/Img_SpellJavelin.gbapal", 0x0, 0x20

	.global Img_SpellJavelinCavalier
Img_SpellJavelinCavalier:  @ 0x085DAB50
	.incbin "./graphics/efxmagic/Img_SpellJavelinCavalier.4bpp.lz"

	.global Pal_SpellJavelinCavalier
Pal_SpellJavelinCavalier:  @ 0x085DAD6C
	.incbin "./graphics/efxmagic/Img_SpellJavelinCavalier.gbapal", 0x0, 0x20

	.global Img_SpellJavelinSoldier
Img_SpellJavelinSoldier:  @ 0x085DAD8C
	.incbin "./graphics/efxmagic/Img_SpellJavelinSoldier.4bpp.lz"

	.global Pal_SpellJavelinSoldier
Pal_SpellJavelinSoldier:  @ 0x085DAFA4
	.incbin "./graphics/efxmagic/Img_SpellJavelinSoldier.gbapal", 0x0, 0x20

	.global Img_SpellJavelinPaladin
Img_SpellJavelinPaladin:  @ 0x085DAFC4
	.incbin "./graphics/efxmagic/Img_SpellJavelinPaladin.4bpp.lz"

	.global Pal_SpellJavelinPaladin
Pal_SpellJavelinPaladin:  @ 0x085DB1E0
	.incbin "./graphics/efxmagic/Img_SpellJavelinPaladin.gbapal", 0x0, 0x20

	.global Img_SpellJavelinPrgasusKnight
Img_SpellJavelinPrgasusKnight:  @ 0x085DB200
	.incbin "./graphics/efxmagic/Img_SpellJavelinPrgasusKnight.4bpp.lz"

	.global Pal_SpellJavelinPrgasusKnight
Pal_SpellJavelinPrgasusKnight:  @ 0x085DB42C
	.incbin "./graphics/efxmagic/Img_SpellJavelinPrgasusKnight.gbapal", 0x0, 0x20

	.global Img_SpellJavelinFalcon
Img_SpellJavelinFalcon:  @ 0x085DB44C
	.incbin "./graphics/efxmagic/Img_SpellJavelinFalcon.4bpp.lz"

	.global Pal_SpellJavelinFalcon
Pal_SpellJavelinFalcon:  @ 0x085DB694
	.incbin "./graphics/efxmagic/Img_SpellJavelinFalcon.gbapal", 0x0, 0x20

	.global Img_SpellJavelinWyvernRider
Img_SpellJavelinWyvernRider:  @ 0x085DB6B4
	.incbin "./graphics/efxmagic/Img_SpellJavelinWyvernRider.4bpp.lz"

	.global Pal_SpellJavelinWyvernRider
Pal_SpellJavelinWyvernRider:  @ 0x085DB8EC
	.incbin "./graphics/efxmagic/Img_SpellJavelinWyvernRider.gbapal", 0x0, 0x20

	.global Img_SpellJavelinWyvernLord
Img_SpellJavelinWyvernLord:  @ 0x085DB90C
	.incbin "./graphics/efxmagic/Img_SpellJavelinWyvernLord.4bpp.lz"

	.global Pal_SpellJavelinWyvernLord
Pal_SpellJavelinWyvernLord:  @ 0x085DBB70
	.incbin "./graphics/efxmagic/Img_SpellJavelinWyvernLord.gbapal", 0x0, 0x20

	.global Img_SpellJavelinGenerial
Img_SpellJavelinGenerial:  @ 0x085DBB90
	.incbin "./graphics/efxmagic/Img_SpellJavelinGenerial.4bpp.lz"

	.global Pal_SpellJavelinGenerial
Pal_SpellJavelinGenerial:  @ 0x085DBE00
	.incbin "./graphics/efxmagic/Img_SpellJavelinGenerial.gbapal", 0x0, 0x20

	.global Img_SpellJavelinUnk
Img_SpellJavelinUnk:  @ 0x085DBE20
	.incbin "./graphics/efxmagic/Img_SpellJavelinUnk.4bpp.lz"

	.global Pal_SpellJavelinUnk
Pal_SpellJavelinUnk:  @ 0x085DC050
	.incbin "./graphics/efxmagic/Img_SpellJavelinUnk.gbapal", 0x0, 0x20

    .incbin "baserom.gba", 0x5DC070, 0x1D4

	.global AnimScr_085DC244
AnimScr_085DC244:  @ 0x085DC244
@ Replacing .incbin "baserom.gba", 0x5DC244, 0x254
    .4byte Pal_SpellJavelinUnk + 0x21
    .4byte Pal_SpellJavelinUnk + 0x45
    .4byte Pal_SpellJavelinUnk + 0x69
    .4byte Pal_SpellJavelinUnk + 0x82
    .4byte Pal_SpellJavelinUnk + 0xa5
    .4byte Pal_SpellJavelinUnk + 0xca
    .4byte Pal_SpellJavelinUnk + 0xee
    .4byte Pal_SpellJavelinUnk + 0x112
    .4byte Pal_SpellJavelinUnk + 0x135
    .4byte Pal_SpellJavelinUnk + 0x15a
    .4byte Pal_SpellJavelinUnk + 0x17e
    .4byte Pal_SpellJavelinUnk + 0x1a2
    .4byte Pal_SpellJavelinUnk + 0x1c7
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c6
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c6
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c6
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c5
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c5
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c5
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c5
    .4byte Pal_SpellJavelinUnk + 0x1de
    .4byte Pal_SpellJavelinUnk + 0x1c5
    .4byte 0x785dc22f
    .4byte 0x84000013
    .4byte 0x80000000
    .4byte 0xffff0001
    .4byte 0x0016ff01
    .4byte 0x00ff0016
    .4byte 0xc0004100
    .4byte 0xffb70000
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000dff01
    .4byte 0x00ff000d
    .4byte 0xc0004100
    .4byte 0xffc50000
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xd0004000
    .4byte 0xffda0000
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xfff7ff01
    .4byte 0x00fffff7
    .4byte 0xc0004100
    .4byte 0xfff50000
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe9ff02
    .4byte 0x00feffe9
    .4byte 0xc0004100
    .4byte 0x00050000
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0xc0004100
    .4byte 0x00130000
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffcbff06
    .4byte 0x00faffcb
    .4byte 0xc0004100
    .4byte 0x00240000
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffc2ff08
    .4byte 0x00f8ffc2
    .4byte 0xc0004100
    .4byte 0x002e0000
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0016ff01
    .4byte 0x00ff0016
    .4byte 0xc0004100
    .4byte 0x00310000
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x001fff02
    .4byte 0x00fe001f
    .4byte 0xc0004100
    .4byte 0x00340000
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0016ff01
    .4byte 0x00ff0016
    .4byte 0xc0004100
    .4byte 0x00370000
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000dff01
    .4byte 0x00ff000d
    .4byte 0xc0004100
    .4byte 0x00390000
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xd0004000
    .4byte 0x003b0000
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff8001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global AnimScr_085DC498
AnimScr_085DC498:  @ 0x085DC498
@ Replacing .incbin "baserom.gba", 0x5DC498, 0x260
    .4byte AnimScr_085DC244 + 0x81
    .4byte AnimScr_085DC244 + 0xa5
    .4byte AnimScr_085DC244 + 0xc9
    .4byte AnimScr_085DC244 + 0xe2
    .4byte AnimScr_085DC244 + 0x105
    .4byte AnimScr_085DC244 + 0x12a
    .4byte AnimScr_085DC244 + 0x14e
    .4byte AnimScr_085DC244 + 0x172
    .4byte AnimScr_085DC244 + 0x195
    .4byte AnimScr_085DC244 + 0x1ba
    .4byte AnimScr_085DC244 + 0x1de
    .4byte AnimScr_085DC244 + 0x202
    .4byte AnimScr_085DC244 + 0x227
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x226
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x226
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x226
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x225
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x225
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x225
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x225
    .4byte AnimScr_085DC244 + 0x23e
    .4byte AnimScr_085DC244 + 0x225
    .4byte 0x785dc483
    .4byte 0x84000013
    .4byte 0x80000000
    .4byte 0xc0004000
    .4byte 0x00170000
    .4byte 0x0000ffcf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xc0004000
    .4byte 0x00010000
    .4byte 0x0000ffcf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xc0004000
    .4byte 0xfff10000
    .4byte 0x0000ffcf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xfff700ff
    .4byte 0x00ff0009
    .4byte 0xc0004100
    .4byte 0xffdc0000
    .4byte 0x0000ffd4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xfff200ff
    .4byte 0x00ff000e
    .4byte 0xc0004100
    .4byte 0xffc80000
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe900fe
    .4byte 0x00fe0017
    .4byte 0xc0004100
    .4byte 0xffb50000
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe500fe
    .4byte 0x00fe001b
    .4byte 0xc0004100
    .4byte 0xffa40000
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe900fe
    .4byte 0x00fe0017
    .4byte 0xc0004100
    .4byte 0xff960000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffc200f8
    .4byte 0x00f8003e
    .4byte 0xc0004100
    .4byte 0xff920000
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x001600ff
    .4byte 0x00ffffea
    .4byte 0xc0004100
    .4byte 0xff8f0000
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x001f00fe
    .4byte 0x00feffe1
    .4byte 0xc0004100
    .4byte 0xff8c0000
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x001600ff
    .4byte 0x00ffffea
    .4byte 0xc0004100
    .4byte 0xff890000
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000d00ff
    .4byte 0x00fffff3
    .4byte 0xc0004100
    .4byte 0xff870000
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xc0004000
    .4byte 0xff850000
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x0000001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global AnimScr_085DC6F8
AnimScr_085DC6F8:  @ 0x085DC6F8
@ Replacing .incbin "baserom.gba", 0x5DC6F8, 0x260
    .4byte AnimScr_085DC498 + 0x81
    .4byte AnimScr_085DC498 + 0x99
    .4byte AnimScr_085DC498 + 0xc9
    .4byte AnimScr_085DC498 + 0xed
    .4byte AnimScr_085DC498 + 0x111
    .4byte AnimScr_085DC498 + 0x136
    .4byte AnimScr_085DC498 + 0x159
    .4byte AnimScr_085DC498 + 0x17e
    .4byte AnimScr_085DC498 + 0x1a1
    .4byte AnimScr_085DC498 + 0x1c6
    .4byte AnimScr_085DC498 + 0x1ea
    .4byte AnimScr_085DC498 + 0x20e
    .4byte AnimScr_085DC498 + 0x233
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x232
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x232
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x232
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x231
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x231
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x231
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x231
    .4byte AnimScr_085DC498 + 0x24a
    .4byte AnimScr_085DC498 + 0x231
    .4byte 0x785dc6e3
    .4byte 0x84000013
    .4byte 0x80000000
    .4byte 0xd0004000
    .4byte 0xffa90000
    .4byte 0x0000ffcf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xd0004000
    .4byte 0xffbf0000
    .4byte 0x0000ffcf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xd0004000
    .4byte 0xffcf0000
    .4byte 0x0000ffcf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xfff7ff01
    .4byte 0x00fffff7
    .4byte 0xc0004100
    .4byte 0xffe40000
    .4byte 0x0000ffd4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xfff2ff01
    .4byte 0x00fffff2
    .4byte 0xc0004100
    .4byte 0xfff80000
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe9ff02
    .4byte 0x00feffe9
    .4byte 0xc0004100
    .4byte 0x000b0000
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe5ff02
    .4byte 0x00feffe5
    .4byte 0xc0004100
    .4byte 0x001c0000
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffe9ff02
    .4byte 0x00feffe9
    .4byte 0xc0004100
    .4byte 0x002a0000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffc2ff08
    .4byte 0x00f8ffc2
    .4byte 0xc0004100
    .4byte 0x002e0000
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0016ff01
    .4byte 0x00ff0016
    .4byte 0xc0004100
    .4byte 0x00310000
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x001fff02
    .4byte 0x00fe001f
    .4byte 0xc0004100
    .4byte 0x00340000
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0016ff01
    .4byte 0x00ff0016
    .4byte 0xc0004100
    .4byte 0x00370000
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000dff01
    .4byte 0x00ff000d
    .4byte 0xc0004100
    .4byte 0x00390000
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xd0004000
    .4byte 0x003b0000
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff8001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global AnimScr_085DC958
AnimScr_085DC958:  @ 0x085DC958
@ Replacing .incbin "baserom.gba", 0x5DC958, 0x104
    .4byte AnimScr_085DC6F8 + 0x81
    .4byte AnimScr_085DC6F8 + 0x99
    .4byte AnimScr_085DC6F8 + 0xc9
    .4byte AnimScr_085DC6F8 + 0xed
    .4byte AnimScr_085DC6F8 + 0x111
    .4byte AnimScr_085DC6F8 + 0x136
    .4byte AnimScr_085DC6F8 + 0x159
    .4byte AnimScr_085DC6F8 + 0x17e
    .4byte AnimScr_085DC6F8 + 0x1a1
    .4byte AnimScr_085DC6F8 + 0x1c6
    .4byte AnimScr_085DC6F8 + 0x1ea
    .4byte AnimScr_085DC6F8 + 0x20e
    .4byte AnimScr_085DC6F8 + 0x233
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x232
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x232
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x232
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x231
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x231
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x231
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x231
    .4byte AnimScr_085DC6F8 + 0x24a
    .4byte AnimScr_085DC6F8 + 0x231
    .4byte 0x785dc943
    .4byte 0x84000013
    .4byte 0x80000000
    .4byte 0xa0004000
    .4byte 0xffe81000
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xa0004000
    .4byte 0x00081000
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xa0004000
    .4byte 0x00281000
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xa0004000
    .4byte 0x00481000
    .4byte 0x0000ffb0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x60000000
    .4byte 0x00681000
    .4byte 0x0000ffa0
    .4byte 0x20008000
    .4byte 0x00781002
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085DCA5C
gUnknown_085DCA5C:  @ 0x085DCA5C
	.incbin "baserom.gba", 0x5DCA5C, 0x9C

	.global gUnknown_085DCAF8
gUnknown_085DCAF8:  @ 0x085DCAF8
	.incbin "baserom.gba", 0x5DCAF8, 0x18

	.global gUnknown_085DCB10
gUnknown_085DCB10:  @ 0x085DCB10
	.incbin "baserom.gba", 0x5DCB10, 0x174

	.global gUnknown_085DCC84
gUnknown_085DCC84:  @ 0x085DCC84
	.incbin "baserom.gba", 0x5DCC84, 0x800

	.global gUnknown_085DD484
gUnknown_085DD484:  @ 0x085DD484
@ Replacing .incbin "baserom.gba", 0x5DD484, 0x30
    .4byte gUnknown_085DCC84 + 0x21
    .4byte gUnknown_085DCC84 + 0x45
    .4byte gUnknown_085DCC84 + 0x69
    .4byte gUnknown_085DCC84 + 0x8d
    .4byte gUnknown_085DCC84 + 0xb2
    .4byte gUnknown_085DCC84 + 0xd7
    .4byte 0x785dcd7e
    .4byte gUnknown_085DCC84 + 0x113
    .4byte gUnknown_085DCC84 + 0x136
    .4byte gUnknown_085DCC84 + 0x159
    .4byte gUnknown_085DCC84 + 0x17d
    .4byte 0x80000000

	.global gUnknown_085DD4B4
gUnknown_085DD4B4:  @ 0x085DD4B4
@ Replacing .incbin "baserom.gba", 0x5DD4B4, 0x7B0
    .4byte gUnknown_085DCC84 + 0x51a
    .4byte gUnknown_085DCC84 + 0x532
    .4byte gUnknown_085DCC84 + 0x562
    .4byte gUnknown_085DCC84 + 0x59e
    .4byte gUnknown_085DCC84 + 0x5fe
    .4byte gUnknown_085DCC84 + 0x676
    .4byte gUnknown_085DCC84 + 0x6e2
    .4byte gUnknown_085DCC84 + 0x736
    .4byte gUnknown_085DCC84 + 0x78a
    .4byte gUnknown_085DCC84 + 0x7ba
    .4byte gUnknown_085DCC84 + 0x7d2
    .4byte gUnknown_085DCC84 + 0x7ea
    .4byte gUnknown_085DCC84 + 0x51a
    .4byte gUnknown_085DCC84 + 0x532
    .4byte gUnknown_085DCC84 + 0x562
    .4byte gUnknown_085DCC84 + 0x59e
    .4byte gUnknown_085DCC84 + 0x5fe
    .4byte gUnknown_085DCC84 + 0x676
    .4byte gUnknown_085DCC84 + 0x6e2
    .4byte gUnknown_085DCC84 + 0x736
    .4byte gUnknown_085DCC84 + 0x78a
    .4byte gUnknown_085DCC84 + 0x7ba
    .4byte gUnknown_085DCC84 + 0x7d2
    .4byte gUnknown_085DCC84 + 0x7ea
    .4byte 0x80000000
    .4byte 0x00040010
    .4byte 0xf0000031
    .4byte 0x0f014001
    .4byte 0x12e0f000
    .4byte 0x15200f42
    .4byte 0xe000e0f0
    .4byte 0x4c0e0f20
    .4byte 0xf01ea0d0
    .4byte 0x001e00f0
    .4byte 0x030e0e1a
    .4byte 0x00000e00
    .4byte 0x1dc0000d
    .4byte 0x00ca0660
    .4byte 0xd0010024
    .4byte 0x0f2510f0
    .4byte 0x220e4910
    .4byte 0x5030e0d0
    .4byte 0x000d000d
    .4byte 0xc000c002
    .4byte 0x000c0000
    .4byte 0x080000b0
    .4byte 0x0d0e000b
    .4byte 0x0d0c1620
    .4byte 0xc0003c0c
    .4byte 0x02000100
    .4byte 0x14101620
    .4byte 0x003ba0a0
    .4byte 0x0027000a
    .4byte 0xc0040014
    .4byte 0x01001600
    .4byte 0x0a000b02
    .4byte 0x000a000a
    .4byte 0x091d0019
    .4byte 0x04109000
    .4byte 0x8270cb60
    .4byte 0xedc610e0
    .4byte 0xc4107410
    .4byte 0x40c00900
    .4byte 0x0c471064
    .4byte 0xb03f7e00
    .4byte 0x104c0000
    .4byte 0x004e0055
    .4byte 0x006c0048
    .4byte 0x72209055
    .4byte 0x0d1090a0
    .4byte 0x09090080
    .4byte 0x087910b6
    .4byte 0x07100900
    .4byte 0x300f1090
    .4byte 0x0701083f
    .4byte 0x70000808
    .4byte 0x02007000
    .4byte 0x060f209f
    .4byte 0x00261050
    .4byte 0x00160002
    .4byte 0x0017000e
    .4byte 0x60000007
    .4byte 0x00060600
    .4byte 0x00000607
    .4byte 0x1d000005
    .4byte 0x0fc01ff1
    .4byte 0x44110f4a
    .4byte 0x1f41c00d
    .4byte 0x0eab100c
    .4byte 0x9d00d074
    .4byte 0x0e00a710
    .4byte 0x0a98200c
    .4byte 0x07009709
    .4byte 0xad000090
    .4byte 0x00f610b0
    .4byte 0x626d1094
    .4byte 0x107b20a0
    .4byte 0x80600789
    .4byte 0x51009040
    .4byte 0x60020007
    .4byte 0x00067800
    .4byte 0xc3821040
    .4byte 0x16000e00
    .4byte 0x05060505
    .4byte 0x11000f00
    .4byte 0x04105050
    .4byte 0x202b2004
    .4byte 0xc1020030
    .4byte 0x0f001a00
    .4byte 0x40400400
    .4byte 0x00132030
    .4byte 0x02030003
    .4byte 0x20200200
    .4byte 0x1a10007f
    .4byte 0x45310140
    .4byte 0xd001ac30
    .4byte 0x1f020f00
    .4byte 0x000f40d7
    .4byte 0xab100cbc
    .4byte 0x0161210b
    .4byte 0x6c070057
    .4byte 0x00b410a0
    .4byte 0xc1100a07
    .4byte 0x0070aa00
    .4byte 0x1d210973
    .4byte 0x0a003f21
    .4byte 0xac000060
    .4byte 0x10d45a01
    .4byte 0x05a800b7
    .4byte 0x20040210
    .4byte 0x854040a6
    .4byte 0x00203711
    .4byte 0x15100404
    .4byte 0x5eaa1002
    .4byte 0x02171003
    .4byte 0x09708c70
    .4byte 0x34010190
    .4byte 0x8d02f20f
    .4byte 0x7f52fe41
    .4byte 0x0c000212
    .4byte 0x20003401
    .4byte 0x3f42900b
    .4byte 0x0a0b0009
    .4byte 0xb00c3800
    .4byte 0x4821f621
    .4byte 0x06079a30
    .4byte 0x01076e08
    .4byte 0x8043011a
    .4byte 0xc4119e00
    .4byte 0x5e500100
    .4byte 0x048d1080
    .4byte 0x85000b01
    .4byte 0x0a001f41
    .4byte 0x04001f02
    .4byte 0x30130030
    .4byte 0xf08af098
    .4byte 0xfc01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01e001f0
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20205355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x44605355
    .4byte 0x00002020
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x64a05355
    .4byte 0x20204460
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x71a75355
    .4byte 0x446064a0
    .4byte 0x00002020
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x7ece5355
    .4byte 0x64a071a7
    .4byte 0x20204460
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x7f765355
    .4byte 0x71a77ece
    .4byte 0x446064a0
    .4byte 0x00002020
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x7fff5355
    .4byte 0x7ece7f76
    .4byte 0x64a071a7
    .4byte 0x20204460
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x7fff5355
    .4byte 0x7f767fff
    .4byte 0x71a77ece
    .4byte 0x446064a0
    .4byte 0x00002020
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x7f765355
    .4byte 0x7fff7fff
    .4byte 0x7ece7f76
    .4byte 0x64a071a7
    .4byte 0x20204460
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x7ece5355
    .4byte 0x7fff7f76
    .4byte 0x7f767fff
    .4byte 0x71a77ece
    .4byte 0x446064a0
    .4byte 0x00002020
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x71a75355
    .4byte 0x7f767ece
    .4byte 0x7fff7fff
    .4byte 0x7ece7f76
    .4byte 0x64a071a7
    .4byte 0x20204460
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x64a05355
    .4byte 0x7ece71a7
    .4byte 0x7fff7f76
    .4byte 0x7f767fff
    .4byte 0x71a77ece
    .4byte 0x446064a0
    .4byte 0x00002020
    .4byte 0x00000000
    .4byte 0x44605355
    .4byte 0x71a764a0
    .4byte 0x7f767ece
    .4byte 0x7fff7fff
    .4byte 0x7ece7f76
    .4byte 0x64a071a7
    .4byte 0x20204460
    .4byte 0x00000000
    .4byte 0x20205355
    .4byte 0x64a04460
    .4byte 0x7ece71a7
    .4byte 0x7fff7f76
    .4byte 0x7f767fff
    .4byte 0x71a77ece
    .4byte 0x446064a0
    .4byte 0x00002020
    .4byte 0x00005355
    .4byte 0x44602020
    .4byte 0x71a764a0
    .4byte 0x7f767ece
    .4byte 0x7fff7fff
    .4byte 0x7ece7f76
    .4byte 0x64a071a7
    .4byte 0x20204460
    .4byte 0x00005355
    .4byte 0x20200000
    .4byte 0x64a04460
    .4byte 0x7ece71a7
    .4byte 0x7fff7f76
    .4byte 0x7f767fff
    .4byte 0x71a77ece
    .4byte 0x446064a0
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x44602020
    .4byte 0x71a764a0
    .4byte 0x7f767ece
    .4byte 0x7fff7fff
    .4byte 0x7ece7f76
    .4byte 0x64a071a7
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x20200000
    .4byte 0x64a04460
    .4byte 0x7ece71a7
    .4byte 0x7fff7f76
    .4byte 0x7f767fff
    .4byte 0x71a77ece
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x44602020
    .4byte 0x71a764a0
    .4byte 0x7f767ece
    .4byte 0x7fff7fff
    .4byte 0x7ece7f76
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20200000
    .4byte 0x64a04460
    .4byte 0x7ece71a7
    .4byte 0x7fff7f76
    .4byte 0x7f767fff
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x44602020
    .4byte 0x71a764a0
    .4byte 0x7f767ece
    .4byte 0x7fff7fff
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20200000
    .4byte 0x64a04460
    .4byte 0x7ece71a7
    .4byte 0x7fff7f76
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x44602020
    .4byte 0x71a764a0
    .4byte 0x7f767ece
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20200000
    .4byte 0x64a04460
    .4byte 0x7ece71a7
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x44602020
    .4byte 0x71a764a0
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20200000
    .4byte 0x64a04460
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x44602020
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20200000
    .4byte 0x00005355
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x0004b010
    .4byte 0xf0001f3f
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0f8
    .4byte 0xf001f001
    .4byte 0x00013001
    .4byte 0x00000100
    .4byte 0x04020002
    .4byte 0x70000401
    .4byte 0xf01df004
    .4byte 0x03017001
    .4byte 0x00000400
    .4byte 0x00060005
    .4byte 0x04050406
    .4byte 0x0304041c
    .4byte 0x01f03df0
    .4byte 0x00070140
    .4byte 0x09000800
    .4byte 0x0b000a00
    .4byte 0x040b0000
    .4byte 0x0409040a
    .4byte 0x07700408
    .4byte 0x01f03df0
    .4byte 0x000c0100
    .4byte 0x0e00000d
    .4byte 0x10000f00
    .4byte 0x00001100
    .4byte 0x04100411
    .4byte 0x040e040f
    .4byte 0x0c040d18
    .4byte 0x01f03df0
    .4byte 0x01001200
    .4byte 0x00140013
    .4byte 0x20160015
    .4byte 0x0416000d
    .4byte 0x04140415
    .4byte 0x12600413
    .4byte 0x01f03bf0
    .4byte 0x18001700
    .4byte 0x00191000
    .4byte 0x1a0f601a
    .4byte 0x18041904
    .4byte 0xf0170418
    .4byte 0x0001f03b
    .4byte 0x18020817
    .4byte 0x1a081908
    .4byte 0x0c3b6008
    .4byte 0x180c1903
    .4byte 0xf00c170c
    .4byte 0x0001f029
    .4byte 0x08130812
    .4byte 0x08150814
    .4byte 0x3d201640
    .4byte 0x0c150c16
    .4byte 0x13180c14
    .4byte 0x3bf0120c
    .4byte 0x0c0001f0
    .4byte 0x080d0008
    .4byte 0x080f080e
    .4byte 0x11000810
    .4byte 0x100c1108
    .4byte 0x070c0f0c
    .4byte 0x0c0d0c0e
    .4byte 0xf03bf00c
    .4byte 0x00a31101
    .4byte 0x09080808
    .4byte 0x0b080a08
    .4byte 0x0c0b0800
    .4byte 0x0c090c0a
    .4byte 0x070c3808
    .4byte 0x01f039f0
    .4byte 0x04081b52
    .4byte 0x08050008
    .4byte 0x0c060806
    .4byte 0x041c0c05
    .4byte 0x39f0030c
    .4byte 0x939201f0
    .4byte 0x08000108
    .4byte 0x0c020802
    .4byte 0xff000c01
    .4byte 0x01f039f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0e0
    .4byte 0x0001e001

	.global Img_BreathSprites
Img_BreathSprites:  @ 0x085DDC64
	.incbin "baserom.gba", 0x5DDC64, 0xD00

	.global Pal_FireBreathSprites
Pal_FireBreathSprites:  @ 0x085DE964
	.incbin "baserom.gba", 0x5DE964, 0x20

	.global gUnknown_085DE984
gUnknown_085DE984:  @ 0x085DE984
	.incbin "baserom.gba", 0x5DE984, 0x8A0

	.global gUnknown_085DF224
gUnknown_085DF224:  @ 0x085DF224
	.incbin "baserom.gba", 0x5DF224, 0x7E4

	.global gUnknown_085DFA08
gUnknown_085DFA08:  @ 0x085DFA08
	.incbin "baserom.gba", 0x5DFA08, 0x20

	.global Pal_IceBreathSprites
Pal_IceBreathSprites:  @ 0x085DFA28
	.incbin "baserom.gba", 0x5DFA28, 0x20

	.global Pal_DarkBreathSprites
Pal_DarkBreathSprites:  @ 0x085DFA48
	.incbin "baserom.gba", 0x5DFA48, 0x20

	.global Pal_WretchedAirSprites
Pal_WretchedAirSprites:  @ 0x085DFA68
	.incbin "baserom.gba", 0x5DFA68, 0xC14

	.global gUnknown_085E067C
gUnknown_085E067C:  @ 0x085E067C
@ Replacing .incbin "baserom.gba", 0x5E067C, 0xC60
    .4byte Pal_WretchedAirSprites + 0x22
    .4byte Pal_WretchedAirSprites + 0x3a
    .4byte Pal_WretchedAirSprites + 0x52
    .4byte Pal_WretchedAirSprites + 0x9a
    .4byte Pal_WretchedAirSprites + 0xd6
    .4byte Pal_WretchedAirSprites + 0x136
    .4byte Pal_WretchedAirSprites + 0x1ba
    .4byte Pal_WretchedAirSprites + 0x21a
    .4byte Pal_WretchedAirSprites + 0x27a
    .4byte Pal_WretchedAirSprites + 0x32e
    .4byte Pal_WretchedAirSprites + 0x3be
    .4byte Pal_WretchedAirSprites + 0x48a
    .4byte Pal_WretchedAirSprites + 0x5c2
    .4byte Pal_WretchedAirSprites + 0x68e
    .4byte Pal_WretchedAirSprites + 0x74e
    .4byte Pal_WretchedAirSprites + 0x802
    .4byte Pal_WretchedAirSprites + 0x8c2
    .4byte Pal_WretchedAirSprites + 0x952
    .4byte Pal_WretchedAirSprites + 0x9fa
    .4byte Pal_WretchedAirSprites + 0xa42
    .4byte Pal_WretchedAirSprites + 0xa8a
    .4byte Pal_WretchedAirSprites + 0xaf6
    .4byte Pal_WretchedAirSprites + 0xb56
    .4byte Pal_WretchedAirSprites + 0xb7a
    .4byte Pal_WretchedAirSprites + 0xbc2
    .4byte Pal_WretchedAirSprites + 0xbda
    .4byte 0x80000000
    .4byte 0x10000000
    .4byte 0xfffc0464
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff80400
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfffc0402
    .4byte 0x0000fff4
    .4byte 0x10008000
    .4byte 0xfff40404
    .4byte 0x0000fff4
    .4byte 0x10004000
    .4byte 0xfffc0442
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0xfff40444
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0x000f0464
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xfff00405
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0x000c0400
    .4byte 0x0000fffc
    .4byte 0x10000000
    .4byte 0xfff80464
    .4byte 0x0000ffe8
    .4byte 0x10000000
    .4byte 0xffe40064
    .4byte 0x00000004
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00130402
    .4byte 0x0000fff8
    .4byte 0x10008000
    .4byte 0x000b0404
    .4byte 0x0000fff8
    .4byte 0x10004000
    .4byte 0x00130442
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0x000b0444
    .4byte 0x00000008
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffe2
    .4byte 0x50000000
    .4byte 0xffe00000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xfff00005
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffe40002
    .4byte 0x0000fffc
    .4byte 0x10008000
    .4byte 0xffdc0004
    .4byte 0x0000fffc
    .4byte 0x10004000
    .4byte 0xffe40042
    .4byte 0x0000000c
    .4byte 0x10000000
    .4byte 0xffdc0044
    .4byte 0x0000000c
    .4byte 0x50000000
    .4byte 0xfff80002
    .4byte 0x0000ffdd
    .4byte 0x10008000
    .4byte 0xfff00004
    .4byte 0x0000ffdd
    .4byte 0x10004000
    .4byte 0xfff80042
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xfff00044
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x00060005
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xfff00009
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe00064
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd80005
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0xffec0005
    .4byte 0x0000ffda
    .4byte 0x90000000
    .4byte 0x00060009
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0x00100064
    .4byte 0x0000ffd0
    .4byte 0x10000000
    .4byte 0x002c0064
    .4byte 0x00000004
    .4byte 0x90000000
    .4byte 0xfff0000d
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffdc0000
    .4byte 0x0000fffc
    .4byte 0x90000000
    .4byte 0x0006000d
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xffd80009
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0xffec0009
    .4byte 0x0000ffd9
    .4byte 0x50000000
    .4byte 0x000c0000
    .4byte 0x0000ffcc
    .4byte 0x50000000
    .4byte 0x00280000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xfff00011
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x10000000
    .4byte 0xfff00064
    .4byte 0x0000fff8
    .4byte 0x50000000
    .4byte 0xffe00002
    .4byte 0x0000fff8
    .4byte 0x10008000
    .4byte 0xffd80004
    .4byte 0x0000fff8
    .4byte 0x10004000
    .4byte 0xffe00042
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0xffd80044
    .4byte 0x00000008
    .4byte 0x90000000
    .4byte 0x00060411
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xffec040d
    .4byte 0x0000ffd8
    .4byte 0x80000100
    .4byte 0x00040005
    .4byte 0x0000ffc4
    .4byte 0x50000000
    .4byte 0x002c0002
    .4byte 0x0000fffc
    .4byte 0x10008000
    .4byte 0x00240004
    .4byte 0x0000fffc
    .4byte 0x10004000
    .4byte 0x002c0042
    .4byte 0x0000000c
    .4byte 0x10000000
    .4byte 0x00240044
    .4byte 0x0000000c
    .4byte 0x90000000
    .4byte 0xfff00015
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x10000000
    .4byte 0xfff00063
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0xffd40005
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xffec0411
    .4byte 0x0000ffd8
    .4byte 0x90000000
    .4byte 0x00060415
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0xfff00064
    .4byte 0x0000ffc8
    .4byte 0x80000100
    .4byte 0x00040009
    .4byte 0x0000ffc4
    .4byte 0x10000000
    .4byte 0xffe40064
    .4byte 0x0000ffec
    .4byte 0x82000100
    .4byte 0x00200009
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0xfff00019
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x50000000
    .4byte 0xffd00000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xfff00064
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0x00070419
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xffec0415
    .4byte 0x0000ffd7
    .4byte 0x80000100
    .4byte 0x00040011
    .4byte 0x0000ffc4
    .4byte 0x90000000
    .4byte 0xffd40009
    .4byte 0x0000fff4
    .4byte 0x50000000
    .4byte 0xffec0000
    .4byte 0x0000ffc4
    .4byte 0x10000000
    .4byte 0x00140064
    .4byte 0x0000ffe4
    .4byte 0x50000000
    .4byte 0xffe00000
    .4byte 0x0000ffe8
    .4byte 0x82000100
    .4byte 0x0020000d
    .4byte 0x0000fff8
    .4byte 0x90008000
    .4byte 0x0000041d
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xfff8041f
    .4byte 0x0000fff0
    .4byte 0x10008000
    .4byte 0xfff00440
    .4byte 0x0000fff0
    .4byte 0x10008000
    .4byte 0xfff00441
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x50000000
    .4byte 0xffd40002
    .4byte 0x0000fffc
    .4byte 0x10008000
    .4byte 0xffcc0004
    .4byte 0x0000fffc
    .4byte 0x10004000
    .4byte 0xffd40042
    .4byte 0x0000000c
    .4byte 0x10000000
    .4byte 0xffcc0044
    .4byte 0x0000000c
    .4byte 0x50000000
    .4byte 0xffe40002
    .4byte 0x0000ffe4
    .4byte 0x10008000
    .4byte 0xffdc0004
    .4byte 0x0000ffe4
    .4byte 0x10004000
    .4byte 0xffe40042
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0xffdc0044
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0xfff00062
    .4byte 0x0000fff8
    .4byte 0x90008000
    .4byte 0x0017041d
    .4byte 0x0000fff4
    .4byte 0x50008000
    .4byte 0x000f041f
    .4byte 0x0000fff4
    .4byte 0x10008000
    .4byte 0x00070440
    .4byte 0x0000fff4
    .4byte 0x10008000
    .4byte 0x00070441
    .4byte 0x00000004
    .4byte 0x90000000
    .4byte 0xffec0419
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xfff00002
    .4byte 0x0000ffc0
    .4byte 0x10008000
    .4byte 0xffe80004
    .4byte 0x0000ffc0
    .4byte 0x10004000
    .4byte 0xfff00042
    .4byte 0x0000ffd0
    .4byte 0x10000000
    .4byte 0xffe80044
    .4byte 0x0000ffd0
    .4byte 0x90000000
    .4byte 0xffd4000d
    .4byte 0x0000fff4
    .4byte 0x80000100
    .4byte 0x00040015
    .4byte 0x0000ffc4
    .4byte 0x50000000
    .4byte 0x00100000
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0x00040064
    .4byte 0x0000ffd4
    .4byte 0x82000100
    .4byte 0x00200011
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x80000100
    .4byte 0xffc60009
    .4byte 0x0000fff8
    .4byte 0x80000100
    .4byte 0xffd80009
    .4byte 0x0000ffe0
    .4byte 0x50000000
    .4byte 0x00000000
    .4byte 0x0000ffd0
    .4byte 0x90000000
    .4byte 0xffe40005
    .4byte 0x0000ffbb
    .4byte 0x90008000
    .4byte 0xfffc041d
    .4byte 0x0000ffd3
    .4byte 0x50008000
    .4byte 0xfff4041f
    .4byte 0x0000ffd3
    .4byte 0x10008000
    .4byte 0xffec0440
    .4byte 0x0000ffd3
    .4byte 0x10008000
    .4byte 0xffec0441
    .4byte 0x0000ffe3
    .4byte 0x90000000
    .4byte 0xffd40011
    .4byte 0x0000fff4
    .4byte 0x82000100
    .4byte 0x00040019
    .4byte 0x0000ffc4
    .4byte 0x10000000
    .4byte 0x00080064
    .4byte 0x0000ffb0
    .4byte 0x10000000
    .4byte 0xffe80064
    .4byte 0x0000ffdc
    .4byte 0x82000100
    .4byte 0x00080005
    .4byte 0x0000ffd8
    .4byte 0x80000100
    .4byte 0x00200015
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x80000100
    .4byte 0xffc6000d
    .4byte 0x0000fff8
    .4byte 0x80000100
    .4byte 0xffd8000d
    .4byte 0x0000ffe0
    .4byte 0x50000000
    .4byte 0x00040002
    .4byte 0x0000ffcc
    .4byte 0x10008000
    .4byte 0xfffc0004
    .4byte 0x0000ffcc
    .4byte 0x10004000
    .4byte 0x00040042
    .4byte 0x0000ffdc
    .4byte 0x10000000
    .4byte 0xfffc0044
    .4byte 0x0000ffdc
    .4byte 0x90000000
    .4byte 0xffd40015
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xffe40009
    .4byte 0x0000ffbb
    .4byte 0x50000000
    .4byte 0x00040000
    .4byte 0x0000ffac
    .4byte 0x50000000
    .4byte 0xffe40000
    .4byte 0x0000ffd8
    .4byte 0x82000100
    .4byte 0x00080009
    .4byte 0x0000ffd8
    .4byte 0x10000000
    .4byte 0xffe00064
    .4byte 0x0000ffb8
    .4byte 0x80000100
    .4byte 0x00200019
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x80000100
    .4byte 0xffdc0005
    .4byte 0x0000ffd0
    .4byte 0x82000100
    .4byte 0xffd80015
    .4byte 0x0000ffe0
    .4byte 0x90000000
    .4byte 0xfff80005
    .4byte 0x0000ffc8
    .4byte 0x90000000
    .4byte 0xffd40019
    .4byte 0x0000fff4
    .4byte 0x90000000
    .4byte 0xffe40011
    .4byte 0x0000ffbb
    .4byte 0x50000000
    .4byte 0x00080002
    .4byte 0x0000ffa8
    .4byte 0x10008000
    .4byte 0x00000004
    .4byte 0x0000ffa8
    .4byte 0x10004000
    .4byte 0x00080042
    .4byte 0x0000ffb8
    .4byte 0x10000000
    .4byte 0x00000044
    .4byte 0x0000ffb8
    .4byte 0x80000100
    .4byte 0x00080011
    .4byte 0x0000ffd8
    .4byte 0x10000000
    .4byte 0xfff00064
    .4byte 0x0000ffb8
    .4byte 0x10000000
    .4byte 0xffe00063
    .4byte 0x0000ffb8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x90000000
    .4byte 0xfff80009
    .4byte 0x0000ffc8
    .4byte 0x90000000
    .4byte 0xfffc0005
    .4byte 0x0000ffa4
    .4byte 0x90000000
    .4byte 0xffe40015
    .4byte 0x0000ffbb
    .4byte 0x10000000
    .4byte 0xffe40064
    .4byte 0x0000ffa4
    .4byte 0x80000100
    .4byte 0xffdc000d
    .4byte 0x0000ffd0
    .4byte 0x90008000
    .4byte 0xffe4041d
    .4byte 0x0000fff4
    .4byte 0x50008000
    .4byte 0xffdc041f
    .4byte 0x0000fff4
    .4byte 0x10008000
    .4byte 0xffd40440
    .4byte 0x0000fff4
    .4byte 0x10008000
    .4byte 0xffd40441
    .4byte 0x00000004
    .4byte 0x80000100
    .4byte 0x00080019
    .4byte 0x0000ffd8
    .4byte 0x50000000
    .4byte 0xffec0000
    .4byte 0x0000ffb4
    .4byte 0x00000000
    .4byte 0xffe00064
    .4byte 0x0000ffb8
    .4byte 0x82000100
    .4byte 0xffd80019
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0xfff8000d
    .4byte 0x0000ffc8
    .4byte 0x50000000
    .4byte 0xfff00002
    .4byte 0x0000ffb0
    .4byte 0x10008000
    .4byte 0xffe80004
    .4byte 0x0000ffb0
    .4byte 0x10004000
    .4byte 0xfff00042
    .4byte 0x0000ffc0
    .4byte 0x10000000
    .4byte 0xffe80044
    .4byte 0x0000ffc0
    .4byte 0x50000000
    .4byte 0xffe00000
    .4byte 0x0000ffa0
    .4byte 0x90000000
    .4byte 0xfffc0009
    .4byte 0x0000ffa4
    .4byte 0x90000000
    .4byte 0xffe40019
    .4byte 0x0000ffbc
    .4byte 0x80000100
    .4byte 0xffdc0011
    .4byte 0x0000ffd0
    .4byte 0x10000000
    .4byte 0xffe00062
    .4byte 0x0000ffb8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0xfff80011
    .4byte 0x0000ffc8
    .4byte 0x90000000
    .4byte 0xffe40005
    .4byte 0x0000ffac
    .4byte 0x50000000
    .4byte 0xffe40002
    .4byte 0x0000ff9d
    .4byte 0x10008000
    .4byte 0xffdc0004
    .4byte 0x0000ff9d
    .4byte 0x10004000
    .4byte 0xffe40042
    .4byte 0x0000ffad
    .4byte 0x10000000
    .4byte 0xffdc0044
    .4byte 0x0000ffad
    .4byte 0x90000000
    .4byte 0xfffc000d
    .4byte 0x0000ffa4
    .4byte 0x90008000
    .4byte 0xfff4041d
    .4byte 0x0000ffbc
    .4byte 0x50008000
    .4byte 0xffec041f
    .4byte 0x0000ffbc
    .4byte 0x10008000
    .4byte 0xffe40440
    .4byte 0x0000ffbc
    .4byte 0x10008000
    .4byte 0xffe40441
    .4byte 0x0000ffcc
    .4byte 0x80000100
    .4byte 0xffdc0019
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x00000064
    .4byte 0x0000ffc0
    .4byte 0x90000000
    .4byte 0xffd80005
    .4byte 0x0000ff98
    .4byte 0x90000000
    .4byte 0xfffc0011
    .4byte 0x0000ffa3
    .4byte 0x90000000
    .4byte 0xffe40009
    .4byte 0x0000ffac
    .4byte 0x90000000
    .4byte 0xfff80015
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd80005
    .4byte 0x0000ff98
    .4byte 0x10000000
    .4byte 0x00000063
    .4byte 0x0000ffc0
    .4byte 0x90000000
    .4byte 0xfffc0015
    .4byte 0x0000ffa3
    .4byte 0x90000000
    .4byte 0xffe4000d
    .4byte 0x0000ffac
    .4byte 0x90000000
    .4byte 0xfff80019
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd80009
    .4byte 0x0000ff98
    .4byte 0x00000000
    .4byte 0x00000064
    .4byte 0x0000ffc0
    .4byte 0x90000000
    .4byte 0xfffc0019
    .4byte 0x0000ffa3
    .4byte 0x90000000
    .4byte 0xffe40011
    .4byte 0x0000ffac
    .4byte 0x90008000
    .4byte 0x0008041d
    .4byte 0x0000ffc8
    .4byte 0x50008000
    .4byte 0x0000041f
    .4byte 0x0000ffc8
    .4byte 0x10008000
    .4byte 0xfff80440
    .4byte 0x0000ffc8
    .4byte 0x10008000
    .4byte 0xfff80441
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd8000d
    .4byte 0x0000ff98
    .4byte 0x90008000
    .4byte 0x000c041d
    .4byte 0x0000ffa3
    .4byte 0x50008000
    .4byte 0x0004041f
    .4byte 0x0000ffa3
    .4byte 0x10008000
    .4byte 0xfffc0440
    .4byte 0x0000ffa3
    .4byte 0x10008000
    .4byte 0xfffc0441
    .4byte 0x0000ffb3
    .4byte 0x90000000
    .4byte 0xffe40015
    .4byte 0x0000ffac
    .4byte 0x10000000
    .4byte 0x00000062
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd80011
    .4byte 0x0000ff98
    .4byte 0x90000000
    .4byte 0xffe40019
    .4byte 0x0000ffac
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd80015
    .4byte 0x0000ff98
    .4byte 0x90008000
    .4byte 0xfff4041d
    .4byte 0x0000ffac
    .4byte 0x50008000
    .4byte 0xffec041f
    .4byte 0x0000ffac
    .4byte 0x10008000
    .4byte 0xffe40440
    .4byte 0x0000ffac
    .4byte 0x10008000
    .4byte 0xffe40441
    .4byte 0x0000ffbc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd80019
    .4byte 0x0000ff98
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xffe8041d
    .4byte 0x0000ff98
    .4byte 0x50008000
    .4byte 0xffe0041f
    .4byte 0x0000ff98
    .4byte 0x10008000
    .4byte 0xffd80440
    .4byte 0x0000ff98
    .4byte 0x10008000
    .4byte 0xffd80441
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E12DC
gUnknown_085E12DC:  @ 0x085E12DC
@ Replacing .incbin "baserom.gba", 0x5E12DC, 0x318
    .4byte gUnknown_085E067C + 0x6e
    .4byte gUnknown_085E067C + 0x86
    .4byte gUnknown_085E067C + 0x9e
    .4byte gUnknown_085E067C + 0xe6
    .4byte gUnknown_085E067C + 0x122
    .4byte gUnknown_085E067C + 0x182
    .4byte gUnknown_085E067C + 0x206
    .4byte gUnknown_085E067C + 0x266
    .4byte gUnknown_085E067C + 0x2c6
    .4byte gUnknown_085E067C + 0x37a
    .4byte gUnknown_085E067C + 0x40a
    .4byte gUnknown_085E067C + 0x4d6
    .4byte gUnknown_085E067C + 0x60e
    .4byte gUnknown_085E067C + 0x6da
    .4byte gUnknown_085E067C + 0x79a
    .4byte gUnknown_085E067C + 0x84e
    .4byte gUnknown_085E067C + 0x90e
    .4byte gUnknown_085E067C + 0x99e
    .4byte gUnknown_085E067C + 0xa46
    .4byte gUnknown_085E067C + 0xa8e
    .4byte gUnknown_085E067C + 0xad6
    .4byte gUnknown_085E067C + 0xb42
    .4byte gUnknown_085E067C + 0xba2
    .4byte gUnknown_085E067C + 0xbc6
    .4byte gUnknown_085E067C + 0xc0e
    .4byte gUnknown_085E067C + 0xc26
    .4byte 0x80000000
    .4byte 0x40000000
    .4byte 0xfffd0000
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80004000
    .4byte 0xfff60040
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80004000
    .4byte 0xfff60002
    .4byte 0x0000ffd8
    .4byte 0x00004000
    .4byte 0xfffe0044
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffe0006
    .4byte 0x0000ffd0
    .4byte 0x00000000
    .4byte 0xfff70064
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffe0008
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffd000a
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffd000c
    .4byte 0x0000ffc0
    .4byte 0x80008000
    .4byte 0xfffd0010
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00010065
    .4byte 0x0000ffc4
    .4byte 0x80008000
    .4byte 0xfffd0012
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffd000e
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffd0010
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffd0012
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xfffc0014
    .4byte 0x0000ffcc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd300fb
    .4byte 0x00fb002d
    .4byte 0x80008100
    .4byte 0xfff80014
    .4byte 0x0000ffcd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbd00f7
    .4byte 0x00f70043
    .4byte 0x80008100
    .4byte 0xfff70014
    .4byte 0x0000ffce
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbd00f7
    .4byte 0x00f70043
    .4byte 0x40000100
    .4byte 0xfff30016
    .4byte 0x0000ffd3
    .4byte 0x40000000
    .4byte 0xfff80056
    .4byte 0x0000ffde
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffdc00fd
    .4byte 0x00fd0024
    .4byte 0x40000000
    .4byte 0xfff70056
    .4byte 0x0000ffdf
    .4byte 0x40000100
    .4byte 0xfff10016
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xfff00016
    .4byte 0x0000ffd7
    .4byte 0x40000000
    .4byte 0xfff50056
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0x0011001a
    .4byte 0x0000fff5
    .4byte 0x40000000
    .4byte 0x00010018
    .4byte 0x0000ffed
    .4byte 0x00008000
    .4byte 0xfff9005b
    .4byte 0x0000ffed
    .4byte 0x40000000
    .4byte 0xffe90059
    .4byte 0x0000ffe5
    .4byte 0x00000000
    .4byte 0xffe10058
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x0015001e
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0x0004003c
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0x0017005c
    .4byte 0x0000fff7
    .4byte 0x40000000
    .4byte 0x0027005e
    .4byte 0x0000ffff
    .4byte 0x00004000
    .4byte 0xffe9001c
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E15F4
gUnknown_085E15F4:  @ 0x085E15F4
@ Replacing .incbin "baserom.gba", 0x5E15F4, 0x48
    .4byte gUnknown_085E12DC + 0x6e
    .4byte gUnknown_085E12DC + 0x86
    .4byte gUnknown_085E12DC + 0x9d
    .4byte gUnknown_085E12DC + 0xc1
    .4byte gUnknown_085E12DC + 0xe5
    .4byte gUnknown_085E12DC + 0xfd
    .4byte gUnknown_085E12DC + 0x117
    .4byte gUnknown_085E12DC + 0x13b
    .4byte gUnknown_085E12DC + 0x15f
    .4byte gUnknown_085E12DC + 0x1a5
    .4byte gUnknown_085E12DC + 0x1bd
    .4byte gUnknown_085E12DC + 0x1e1
    .4byte gUnknown_085E12DC + 0x205
    .4byte gUnknown_085E12DC + 0x235
    .4byte gUnknown_085E12DC + 0x265
    .4byte gUnknown_085E12DC + 0x28a
    .4byte gUnknown_085E12DC + 0x2d2
    .4byte 0x80000000

	.global gUnknown_085E163C
gUnknown_085E163C:  @ 0x085E163C
@ Replacing .incbin "baserom.gba", 0x5E163C, 0x324
    .4byte gUnknown_085E12DC + 0x6d
    .4byte gUnknown_085E12DC + 0x85
    .4byte gUnknown_085E12DC + 0x9d
    .4byte gUnknown_085E12DC + 0xc1
    .4byte gUnknown_085E12DC + 0xe5
    .4byte gUnknown_085E12DC + 0xfd
    .4byte gUnknown_085E12DC + 0x117
    .4byte gUnknown_085E12DC + 0x13b
    .4byte gUnknown_085E12DC + 0x15f
    .4byte gUnknown_085E12DC + 0x177
    .4byte gUnknown_085E12DC + 0x18f
    .4byte gUnknown_085E12DC + 0xfe
    .4byte gUnknown_085E12DC + 0x117
    .4byte gUnknown_085E12DC + 0x13b
    .4byte gUnknown_085E12DC + 0x15f
    .4byte gUnknown_085E12DC + 0x177
    .4byte gUnknown_085E12DC + 0x18f
    .4byte gUnknown_085E12DC + 0x15f
    .4byte gUnknown_085E12DC + 0x177
    .4byte gUnknown_085E12DC + 0x18f
    .4byte gUnknown_085E12DC + 0xfe
    .4byte gUnknown_085E12DC + 0x1a5
    .4byte gUnknown_085E12DC + 0x1bd
    .4byte gUnknown_085E12DC + 0x1e1
    .4byte gUnknown_085E12DC + 0x205
    .4byte gUnknown_085E12DC + 0x235
    .4byte gUnknown_085E12DC + 0x265
    .4byte gUnknown_085E12DC + 0x28a
    .4byte gUnknown_085E12DC + 0x2d2
    .4byte 0x80000000
    .4byte 0x50000000
    .4byte 0xfff30000
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0xffea0040
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0xffea0002
    .4byte 0x0000ffd8
    .4byte 0x10004000
    .4byte 0xfff20044
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff20006
    .4byte 0x0000ffd0
    .4byte 0x10000000
    .4byte 0x00010064
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff20008
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff3000a
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff3000c
    .4byte 0x0000ffc0
    .4byte 0x90008000
    .4byte 0xfff30010
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff70065
    .4byte 0x0000ffc4
    .4byte 0x90008000
    .4byte 0xfff30012
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff3000e
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff30010
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff30012
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff40014
    .4byte 0x0000ffcc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0x80008100
    .4byte 0xfff80014
    .4byte 0x0000ffcd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbdff09
    .4byte 0x00f7ffbd
    .4byte 0x80008100
    .4byte 0xfff90014
    .4byte 0x0000ffce
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbdff09
    .4byte 0x00f7ffbd
    .4byte 0x40000100
    .4byte 0xfffd0016
    .4byte 0x0000ffd3
    .4byte 0x50000000
    .4byte 0xfff80056
    .4byte 0x0000ffde
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffdcff03
    .4byte 0x00fdffdc
    .4byte 0x50000000
    .4byte 0xfff90056
    .4byte 0x0000ffdf
    .4byte 0x40000100
    .4byte 0xffff0016
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00000016
    .4byte 0x0000ffd7
    .4byte 0x50000000
    .4byte 0xfffb0056
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffdf001a
    .4byte 0x0000fff5
    .4byte 0x50000000
    .4byte 0xffef0018
    .4byte 0x0000ffed
    .4byte 0x10008000
    .4byte 0xffff005b
    .4byte 0x0000ffed
    .4byte 0x50000000
    .4byte 0x00070059
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0x00170058
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffe3001e
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0xfff4003c
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0xffd9005c
    .4byte 0x0000fff7
    .4byte 0x50000000
    .4byte 0xffc9005e
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0x0007001c
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E1960
gUnknown_085E1960:  @ 0x085E1960
@ Replacing .incbin "baserom.gba", 0x5E1960, 0x48
    .4byte gUnknown_085E163C + 0x7a
    .4byte gUnknown_085E163C + 0x92
    .4byte gUnknown_085E163C + 0xa9
    .4byte gUnknown_085E163C + 0xcd
    .4byte gUnknown_085E163C + 0xf1
    .4byte gUnknown_085E163C + 0x109
    .4byte gUnknown_085E163C + 0x123
    .4byte gUnknown_085E163C + 0x147
    .4byte gUnknown_085E163C + 0x16b
    .4byte gUnknown_085E163C + 0x1b1
    .4byte gUnknown_085E163C + 0x1c9
    .4byte gUnknown_085E163C + 0x1ed
    .4byte gUnknown_085E163C + 0x211
    .4byte gUnknown_085E163C + 0x241
    .4byte gUnknown_085E163C + 0x271
    .4byte gUnknown_085E163C + 0x296
    .4byte gUnknown_085E163C + 0x2de
    .4byte 0x80000000

	.global gUnknown_085E19A8
gUnknown_085E19A8:  @ 0x085E19A8
@ Replacing .incbin "baserom.gba", 0x5E19A8, 0x2A0
    .4byte gUnknown_085E163C + 0x79
    .4byte gUnknown_085E163C + 0x91
    .4byte gUnknown_085E163C + 0xa9
    .4byte gUnknown_085E163C + 0xcd
    .4byte gUnknown_085E163C + 0xf1
    .4byte gUnknown_085E163C + 0x109
    .4byte gUnknown_085E163C + 0x123
    .4byte gUnknown_085E163C + 0x147
    .4byte gUnknown_085E163C + 0x16b
    .4byte gUnknown_085E163C + 0x183
    .4byte gUnknown_085E163C + 0x19b
    .4byte gUnknown_085E163C + 0x10a
    .4byte gUnknown_085E163C + 0x123
    .4byte gUnknown_085E163C + 0x147
    .4byte gUnknown_085E163C + 0x16b
    .4byte gUnknown_085E163C + 0x183
    .4byte gUnknown_085E163C + 0x19b
    .4byte gUnknown_085E163C + 0x16b
    .4byte gUnknown_085E163C + 0x183
    .4byte gUnknown_085E163C + 0x19b
    .4byte gUnknown_085E163C + 0x10a
    .4byte gUnknown_085E163C + 0x1b1
    .4byte gUnknown_085E163C + 0x1c9
    .4byte gUnknown_085E163C + 0x1ed
    .4byte gUnknown_085E163C + 0x211
    .4byte gUnknown_085E163C + 0x241
    .4byte gUnknown_085E163C + 0x271
    .4byte gUnknown_085E163C + 0x296
    .4byte gUnknown_085E163C + 0x2de
    .4byte 0x80000000
    .4byte 0x00000000
    .4byte 0x0016007e
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0x0006007d
    .4byte 0x0000fff0
    .4byte 0x80004000
    .4byte 0x00160004
    .4byte 0x0000fffa
    .4byte 0x00000000
    .4byte 0xfff3007f
    .4byte 0x0000ffea
    .4byte 0x10004000
    .4byte 0x0034007a
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x20000000
    .4byte 0x0008007e
    .4byte 0x0000ffec
    .4byte 0x80004000
    .4byte 0x00160040
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xfff6007d
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x0039007f
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80004000
    .4byte 0x00160044
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0xfff7007e
    .4byte 0x0000ffe9
    .4byte 0x30000000
    .4byte 0x003b007e
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80004000
    .4byte 0x00150000
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0x00130008
    .4byte 0x0000ffe7
    .4byte 0x80008000
    .4byte 0x0023000a
    .4byte 0x0000ffe7
    .4byte 0x00008000
    .4byte 0x002f0001
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00004000
    .4byte 0x00000077
    .4byte 0x0000ffcb
    .4byte 0x00004000
    .4byte 0xffe70077
    .4byte 0x0000ffc8
    .4byte 0x40008000
    .4byte 0xffda000c
    .4byte 0x0000ffca
    .4byte 0x80004000
    .4byte 0xffe2000d
    .4byte 0x0000ffca
    .4byte 0x40000000
    .4byte 0x00020011
    .4byte 0x0000ffca
    .4byte 0x40000000
    .4byte 0x00120051
    .4byte 0x0000ffd2
    .4byte 0x00000000
    .4byte 0x000a0070
    .4byte 0x0000ffda
    .4byte 0x00000000
    .4byte 0x00220050
    .4byte 0x0000ffe0
    .4byte 0x00000000
    .4byte 0xffe2004d
    .4byte 0x0000ffda
    .4byte 0x40004000
    .4byte 0xffe20013
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00008000
    .4byte 0xffd8001d
    .4byte 0x0000ffd0
    .4byte 0x40000000
    .4byte 0xffda0038
    .4byte 0x0000ffe4
    .4byte 0x40000000
    .4byte 0xffea003a
    .4byte 0x0000fff4
    .4byte 0x00000000
    .4byte 0xffe2005c
    .4byte 0x0000fff4
    .4byte 0x40004000
    .4byte 0x00050018
    .4byte 0x00000000
    .4byte 0x00004000
    .4byte 0xffff0077
    .4byte 0x0000ffc9
    .4byte 0x20004000
    .4byte 0xffe50077
    .4byte 0x0000ffc8
    .4byte 0x00000000
    .4byte 0xffe2007c
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00004000
    .4byte 0xfff8003e
    .4byte 0x0000ffc8
    .4byte 0x20004000
    .4byte 0xffe0003e
    .4byte 0x0000ffca
    .4byte 0x00000000
    .4byte 0xffd8005e
    .4byte 0x0000ffd8
    .4byte 0x00000000
    .4byte 0xffe0001c
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E1C48
gUnknown_085E1C48:  @ 0x085E1C48
	.incbin "baserom.gba", 0x5E1C48, 0x10

	.global gUnknown_085E1C58
gUnknown_085E1C58:  @ 0x085E1C58
@ Replacing .incbin "baserom.gba", 0x5E1C58, 0x24C
    .4byte gUnknown_085E19A8 + 0x7b
    .4byte gUnknown_085E19A8 + 0xc3
    .4byte gUnknown_085E19A8 + 0xff
    .4byte 0x185e1ad4
    .4byte gUnknown_085E19A8 + 0x147
    .4byte gUnknown_085E19A8 + 0x176
    .4byte gUnknown_085E19A8 + 0x1fa
    .4byte gUnknown_085E19A8 + 0x266
    .4byte 0x80000000
    .4byte 0x10000000
    .4byte 0xffe2007e
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0xfff2007d
    .4byte 0x0000fff0
    .4byte 0x90004000
    .4byte 0xffca0004
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0x0005007f
    .4byte 0x0000ffea
    .4byte 0x00004000
    .4byte 0xffbc007a
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x30000000
    .4byte 0xfff0007e
    .4byte 0x0000ffec
    .4byte 0x90004000
    .4byte 0xffca0040
    .4byte 0x0000fffa
    .4byte 0x00000000
    .4byte 0x0002007d
    .4byte 0x0000ffe9
    .4byte 0x00000000
    .4byte 0xffbf007f
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0xffca0044
    .4byte 0x0000fffb
    .4byte 0x00000000
    .4byte 0x0001007e
    .4byte 0x0000ffe9
    .4byte 0x20000000
    .4byte 0xffbd007e
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90004000
    .4byte 0xffcb0000
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffdd0008
    .4byte 0x0000ffe7
    .4byte 0x90008000
    .4byte 0xffcd000a
    .4byte 0x0000ffe7
    .4byte 0x10008000
    .4byte 0xffc90001
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff00077
    .4byte 0x0000ffcb
    .4byte 0x10004000
    .4byte 0x00090077
    .4byte 0x0000ffc8
    .4byte 0x50008000
    .4byte 0x001e000c
    .4byte 0x0000ffca
    .4byte 0x90004000
    .4byte 0xfffe000d
    .4byte 0x0000ffca
    .4byte 0x50000000
    .4byte 0xffee0011
    .4byte 0x0000ffca
    .4byte 0x50000000
    .4byte 0xffde0051
    .4byte 0x0000ffd2
    .4byte 0x10000000
    .4byte 0xffee0070
    .4byte 0x0000ffda
    .4byte 0x10000000
    .4byte 0xffd60050
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0x0016004d
    .4byte 0x0000ffda
    .4byte 0x50004000
    .4byte 0xfffe0013
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0x0020001d
    .4byte 0x0000ffd0
    .4byte 0x50000000
    .4byte 0x00160038
    .4byte 0x0000ffe4
    .4byte 0x50000000
    .4byte 0x0006003a
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0x0016005c
    .4byte 0x0000fff4
    .4byte 0x50004000
    .4byte 0xffdb0018
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff10077
    .4byte 0x0000ffc9
    .4byte 0x30004000
    .4byte 0x000b0077
    .4byte 0x0000ffc8
    .4byte 0x10000000
    .4byte 0x0016007c
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff8003e
    .4byte 0x0000ffc8
    .4byte 0x30004000
    .4byte 0x0010003e
    .4byte 0x0000ffca
    .4byte 0x10000000
    .4byte 0x0020005e
    .4byte 0x0000ffd8
    .4byte 0x10000000
    .4byte 0x0018001c
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E1EA4
gUnknown_085E1EA4:  @ 0x085E1EA4
	.incbin "baserom.gba", 0x5E1EA4, 0x10

	.global gUnknown_085E1EB4
gUnknown_085E1EB4:  @ 0x085E1EB4
@ Replacing .incbin "baserom.gba", 0x5E1EB4, 0xB70
    .4byte gUnknown_085E1C58 + 0x27
    .4byte gUnknown_085E1C58 + 0x6f
    .4byte gUnknown_085E1C58 + 0xab
    .4byte 0x185e1d30
    .4byte gUnknown_085E1C58 + 0xf3
    .4byte gUnknown_085E1C58 + 0x122
    .4byte gUnknown_085E1C58 + 0x1a6
    .4byte gUnknown_085E1C58 + 0x212
    .4byte 0x80000000
    .4byte 0x00000000
    .4byte 0x00100064
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0x00000000
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0x00100063
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffea0002
    .4byte 0x0000fff1
    .4byte 0x00008000
    .4byte 0xfffa0004
    .4byte 0x0000fff1
    .4byte 0x00004000
    .4byte 0xffea0042
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0xfffa0044
    .4byte 0x00000001
    .4byte 0x40000000
    .4byte 0xfffe0000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xa0000000
    .4byte 0xffca0005
    .4byte 0x0000fff7
    .4byte 0x60000000
    .4byte 0xffe50002
    .4byte 0x0000fffb
    .4byte 0x20008000
    .4byte 0xfff50004
    .4byte 0x0000fffb
    .4byte 0x20004000
    .4byte 0xffe50042
    .4byte 0x0000fff3
    .4byte 0x20000000
    .4byte 0xfff50044
    .4byte 0x0000fff3
    .4byte 0x60000000
    .4byte 0xfff60000
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000141
    .4byte 0x01410000
    .4byte 0x80000000
    .4byte 0xffb50009
    .4byte 0x0000ffec
    .4byte 0x80000100
    .4byte 0xffcd0005
    .4byte 0x0000fffa
    .4byte 0x40000000
    .4byte 0xffe50002
    .4byte 0x0000fff4
    .4byte 0x00008000
    .4byte 0xfff50004
    .4byte 0x0000fff4
    .4byte 0x00004000
    .4byte 0xffe50042
    .4byte 0x00000004
    .4byte 0x00000000
    .4byte 0xfff50044
    .4byte 0x00000004
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffd70005
    .4byte 0x0000ffed
    .4byte 0x80000000
    .4byte 0xffb3000d
    .4byte 0x0000ffe7
    .4byte 0x40000000
    .4byte 0xfff40000
    .4byte 0x0000fff5
    .4byte 0x80000000
    .4byte 0xffcc0009
    .4byte 0x0000fff8
    .4byte 0x00000000
    .4byte 0x00080064
    .4byte 0x0000fffe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000141
    .4byte 0x01410000
    .4byte 0x80000000
    .4byte 0xffc40005
    .4byte 0x0000fff0
    .4byte 0x80000000
    .4byte 0xffa00011
    .4byte 0x0000ffe7
    .4byte 0x40000000
    .4byte 0xffdf0002
    .4byte 0x0000fff7
    .4byte 0x00008000
    .4byte 0xffef0004
    .4byte 0x0000fff7
    .4byte 0x00004000
    .4byte 0xffdf0042
    .4byte 0x00000007
    .4byte 0x00000000
    .4byte 0xffef0044
    .4byte 0x00000007
    .4byte 0x80000100
    .4byte 0xffb8000d
    .4byte 0x0000fffd
    .4byte 0x40000000
    .4byte 0xfffc0000
    .4byte 0x0000fffa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0x40000000
    .4byte 0xffe60002
    .4byte 0x0000fffe
    .4byte 0x00008000
    .4byte 0xfff60004
    .4byte 0x0000fffe
    .4byte 0x00004000
    .4byte 0xffe60042
    .4byte 0x0000000e
    .4byte 0x00000000
    .4byte 0xfff60044
    .4byte 0x0000000e
    .4byte 0x80000000
    .4byte 0xff9c0015
    .4byte 0x0000ffe9
    .4byte 0x80000000
    .4byte 0xffce0005
    .4byte 0x0000ffea
    .4byte 0x80000100
    .4byte 0xffbc0011
    .4byte 0x0000fffd
    .4byte 0x40000000
    .4byte 0xffc20002
    .4byte 0x0000ffe6
    .4byte 0x00008000
    .4byte 0xffd20004
    .4byte 0x0000ffe6
    .4byte 0x00004000
    .4byte 0xffc20042
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0xffd20044
    .4byte 0x0000fff6
    .4byte 0x40000000
    .4byte 0xfffb0000
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffe00002
    .4byte 0x00000000
    .4byte 0x00008000
    .4byte 0xfff00004
    .4byte 0x00000000
    .4byte 0x00004000
    .4byte 0xffe00042
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0xfff00044
    .4byte 0x00000010
    .4byte 0x80000000
    .4byte 0xff8c0019
    .4byte 0x0000ffd9
    .4byte 0x80000000
    .4byte 0xffc70009
    .4byte 0x0000ffef
    .4byte 0x80000000
    .4byte 0xffb20005
    .4byte 0x0000ffe8
    .4byte 0x00000000
    .4byte 0x00050063
    .4byte 0x00000001
    .4byte 0x80000000
    .4byte 0xff9c0011
    .4byte 0x0000fff9
    .4byte 0x40000000
    .4byte 0xffec0000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffca0005
    .4byte 0x0000fff9
    .4byte 0x80000000
    .4byte 0xffba000d
    .4byte 0x0000ffe7
    .4byte 0x80000000
    .4byte 0xffa80005
    .4byte 0x0000ffde
    .4byte 0x40000000
    .4byte 0xfff20000
    .4byte 0x0000fff9
    .4byte 0x40000000
    .4byte 0xffea0000
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0xffaf0002
    .4byte 0x00000003
    .4byte 0x00008000
    .4byte 0xffbf0004
    .4byte 0x00000003
    .4byte 0x00004000
    .4byte 0xffaf0042
    .4byte 0x00000013
    .4byte 0x00000000
    .4byte 0xffbf0044
    .4byte 0x00000013
    .4byte 0x80000100
    .4byte 0xffd50009
    .4byte 0x0000ffe9
    .4byte 0xa0000000
    .4byte 0xff8a0019
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0xa0000000
    .4byte 0xffb90009
    .4byte 0x0000ffe2
    .4byte 0xa0000000
    .4byte 0xffab0011
    .4byte 0x0000fff8
    .4byte 0x60000000
    .4byte 0xffdf0002
    .4byte 0x00000002
    .4byte 0x20008000
    .4byte 0xffef0004
    .4byte 0x00000002
    .4byte 0x20004000
    .4byte 0xffdf0042
    .4byte 0x0000fffa
    .4byte 0x20000000
    .4byte 0xffef0044
    .4byte 0x0000fffa
    .4byte 0x60000000
    .4byte 0xffcb0002
    .4byte 0x0000fffa
    .4byte 0x20008000
    .4byte 0xffdb0004
    .4byte 0x0000fffa
    .4byte 0x20004000
    .4byte 0xffcb0042
    .4byte 0x0000fff2
    .4byte 0x20000000
    .4byte 0xffdb0044
    .4byte 0x0000fff2
    .4byte 0x60000000
    .4byte 0xff9f0002
    .4byte 0x0000ffe8
    .4byte 0x20008000
    .4byte 0xffaf0004
    .4byte 0x0000ffe8
    .4byte 0x20004000
    .4byte 0xff9f0042
    .4byte 0x0000ffe0
    .4byte 0x20000000
    .4byte 0xffaf0044
    .4byte 0x0000ffe0
    .4byte 0x80000100
    .4byte 0xff8d0009
    .4byte 0x0000fff0
    .4byte 0x60000000
    .4byte 0xfff40000
    .4byte 0x0000fffd
    .4byte 0x82000100
    .4byte 0xffc3000d
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0xa0000000
    .4byte 0xffb4000d
    .4byte 0x0000ffe3
    .4byte 0xa0000000
    .4byte 0xffa40015
    .4byte 0x0000fff3
    .4byte 0xa0000000
    .4byte 0xffd40005
    .4byte 0x0000fff3
    .4byte 0xa0000000
    .4byte 0xffa40005
    .4byte 0x0000ffe9
    .4byte 0xa0000000
    .4byte 0xff8b0005
    .4byte 0x0000ffde
    .4byte 0x80000100
    .4byte 0x007f000d
    .4byte 0x0000fffc
    .4byte 0x00000000
    .4byte 0x000c0064
    .4byte 0x00000002
    .4byte 0x60000000
    .4byte 0xfff40000
    .4byte 0x0000fffc
    .4byte 0x82000100
    .4byte 0xffba0011
    .4byte 0x0000ffff
    .4byte 0x20000000
    .4byte 0xffdc0064
    .4byte 0x0000ffeb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xa0000000
    .4byte 0xffc70005
    .4byte 0x0000fff8
    .4byte 0xa0000000
    .4byte 0xffaf0011
    .4byte 0x0000ffe8
    .4byte 0xa0000000
    .4byte 0xff9f0019
    .4byte 0x0000fff9
    .4byte 0xa0000000
    .4byte 0xff8f0009
    .4byte 0x0000ffeb
    .4byte 0x00000000
    .4byte 0xfff30064
    .4byte 0x00000008
    .4byte 0x40000000
    .4byte 0xfffb0000
    .4byte 0x00000000
    .4byte 0x60000000
    .4byte 0xffe70000
    .4byte 0x0000fffd
    .4byte 0x20000000
    .4byte 0xffd50063
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0xa0000000
    .4byte 0xff960019
    .4byte 0x0000fffc
    .4byte 0xa0000000
    .4byte 0xffa60015
    .4byte 0x0000ffdf
    .4byte 0xa0000000
    .4byte 0xffbf0009
    .4byte 0x0000fffa
    .4byte 0x00000000
    .4byte 0x00040063
    .4byte 0x00000004
    .4byte 0x20000000
    .4byte 0xffe70063
    .4byte 0x00000005
    .4byte 0x60000000
    .4byte 0xffeb0002
    .4byte 0x00000001
    .4byte 0x20008000
    .4byte 0xfffb0004
    .4byte 0x00000001
    .4byte 0x20004000
    .4byte 0xffeb0042
    .4byte 0x0000fff9
    .4byte 0x20000000
    .4byte 0xfffb0044
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0xffd40009
    .4byte 0x0000ffec
    .4byte 0x20000000
    .4byte 0xffcd0064
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0xa0000000
    .4byte 0xffa10019
    .4byte 0x0000ffe1
    .4byte 0xa0000000
    .4byte 0xffbb000d
    .4byte 0x0000fff8
    .4byte 0x60000000
    .4byte 0xffa90002
    .4byte 0x00000011
    .4byte 0x20008000
    .4byte 0xffb90004
    .4byte 0x00000011
    .4byte 0x20004000
    .4byte 0xffa90042
    .4byte 0x00000009
    .4byte 0x20000000
    .4byte 0xffb90044
    .4byte 0x00000009
    .4byte 0x60000000
    .4byte 0xfff70000
    .4byte 0x00000001
    .4byte 0x60000000
    .4byte 0xffe60002
    .4byte 0x0000fffe
    .4byte 0x20008000
    .4byte 0xfff60004
    .4byte 0x0000fffe
    .4byte 0x20004000
    .4byte 0xffe60042
    .4byte 0x0000fff6
    .4byte 0x20000000
    .4byte 0xfff60044
    .4byte 0x0000fff6
    .4byte 0x20000000
    .4byte 0xffdf0064
    .4byte 0x0000fffb
    .4byte 0x80000100
    .4byte 0xffd80009
    .4byte 0x0000fffc
    .4byte 0x82000100
    .4byte 0xffcf000d
    .4byte 0x0000ffe3
    .4byte 0x20000000
    .4byte 0xffc70062
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80008000
    .4byte 0xff93001d
    .4byte 0x0000fffc
    .4byte 0x40008000
    .4byte 0xffa3001f
    .4byte 0x0000fffc
    .4byte 0x00008000
    .4byte 0xffab0040
    .4byte 0x0000fffc
    .4byte 0x00008000
    .4byte 0xffab0041
    .4byte 0x0000000c
    .4byte 0x80000000
    .4byte 0xffb30011
    .4byte 0x0000ffed
    .4byte 0x80000000
    .4byte 0x007f0015
    .4byte 0x0000fff7
    .4byte 0x80000000
    .4byte 0xff8f0005
    .4byte 0x0000ffe5
    .4byte 0x40000000
    .4byte 0xffea0002
    .4byte 0x0000fff6
    .4byte 0x00008000
    .4byte 0xfffa0004
    .4byte 0x0000fff6
    .4byte 0x00004000
    .4byte 0xffea0042
    .4byte 0x00000006
    .4byte 0x00000000
    .4byte 0xfffa0044
    .4byte 0x00000006
    .4byte 0x80000000
    .4byte 0xffcf0005
    .4byte 0x0000fff8
    .4byte 0x00000000
    .4byte 0xffcb0062
    .4byte 0x00000011
    .4byte 0x80000100
    .4byte 0xffcb000d
    .4byte 0x0000ffe3
    .4byte 0x82000100
    .4byte 0xffbb0011
    .4byte 0x00000009
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffb50015
    .4byte 0x0000fff0
    .4byte 0x80000000
    .4byte 0xffdf0005
    .4byte 0x0000fff0
    .4byte 0x80000000
    .4byte 0xffbf0009
    .4byte 0x00000002
    .4byte 0x80000000
    .4byte 0xff920009
    .4byte 0x0000ffe3
    .4byte 0x80000100
    .4byte 0xffcb0015
    .4byte 0x0000ffe3
    .4byte 0x82000100
    .4byte 0xffac0011
    .4byte 0x0000000c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x40000000
    .4byte 0xffd10000
    .4byte 0x00000004
    .4byte 0x80000000
    .4byte 0xffaa0019
    .4byte 0x0000ffea
    .4byte 0x80000000
    .4byte 0xffd40009
    .4byte 0x0000ffed
    .4byte 0x80000000
    .4byte 0xffa3000d
    .4byte 0x0000fffe
    .4byte 0x80000000
    .4byte 0xff88000d
    .4byte 0x0000ffdf
    .4byte 0x00000000
    .4byte 0xffca0064
    .4byte 0x0000fff0
    .4byte 0x80000000
    .4byte 0xffba0019
    .4byte 0x0000ffdf
    .4byte 0x80000100
    .4byte 0xff8e0015
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80008000
    .4byte 0xffa2001d
    .4byte 0x0000ffec
    .4byte 0x40008000
    .4byte 0xffb2001f
    .4byte 0x0000ffec
    .4byte 0x00008000
    .4byte 0xffba0040
    .4byte 0x0000ffec
    .4byte 0x00008000
    .4byte 0xffba0041
    .4byte 0x0000fffc
    .4byte 0x40000000
    .4byte 0xffca0002
    .4byte 0x0000ffff
    .4byte 0x00008000
    .4byte 0xffda0004
    .4byte 0x0000ffff
    .4byte 0x00004000
    .4byte 0xffca0042
    .4byte 0x0000000f
    .4byte 0x00000000
    .4byte 0xffda0044
    .4byte 0x0000000f
    .4byte 0x80000000
    .4byte 0xffd0000d
    .4byte 0x0000ffed
    .4byte 0x80000000
    .4byte 0xff980011
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff870011
    .4byte 0x0000ffde
    .4byte 0x00000000
    .4byte 0xffc60063
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0xff800019
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffb30005
    .4byte 0x0000fffd
    .4byte 0x80000000
    .4byte 0xffc60011
    .4byte 0x0000ffeb
    .4byte 0x80000000
    .4byte 0xff8d0015
    .4byte 0x0000fffc
    .4byte 0x80000000
    .4byte 0xff880015
    .4byte 0x0000ffdd
    .4byte 0x00000000
    .4byte 0xffb80064
    .4byte 0x0000ffe8
    .4byte 0x40000000
    .4byte 0xffb80000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffa20009
    .4byte 0x0000fffb
    .4byte 0x80000000
    .4byte 0xff900019
    .4byte 0x0000fff3
    .4byte 0x80000000
    .4byte 0xff880019
    .4byte 0x0000ffd9
    .4byte 0x80000000
    .4byte 0xffbc0015
    .4byte 0x0000ffe9
    .4byte 0x00000000
    .4byte 0xffb00062
    .4byte 0x0000ffe4
    .4byte 0x40000000
    .4byte 0xffab0000
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffb00019
    .4byte 0x0000ffe7
    .4byte 0x80000000
    .4byte 0xff92000d
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0xff980009
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xff8d0011
    .4byte 0x0000fff6
    .4byte 0x80008000
    .4byte 0xffa3001d
    .4byte 0x0000ffe4
    .4byte 0x40008000
    .4byte 0xffb3001f
    .4byte 0x0000ffe4
    .4byte 0x00008000
    .4byte 0xffbb0040
    .4byte 0x0000ffe4
    .4byte 0x00008000
    .4byte 0xffbb0041
    .4byte 0x0000fff4
    .4byte 0x80000100
    .4byte 0xff90000d
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff9e0015
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff900019
    .4byte 0x0000ffeb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xff88001d
    .4byte 0x0000ffe8
    .4byte 0x40008000
    .4byte 0xff98001f
    .4byte 0x0000ffe8
    .4byte 0x00008000
    .4byte 0xffa00040
    .4byte 0x0000ffe8
    .4byte 0x00008000
    .4byte 0xffa00041
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E2A24
gUnknown_085E2A24:  @ 0x085E2A24
@ Replacing .incbin "baserom.gba", 0x5E2A24, 0xBB8
    .4byte gUnknown_085E1EB4 + 0x26
    .4byte gUnknown_085E1EB4 + 0x3e
    .4byte gUnknown_085E1EB4 + 0x62
    .4byte gUnknown_085E1EB4 + 0xaa
    .4byte gUnknown_085E1EB4 + 0xfe
    .4byte gUnknown_085E1EB4 + 0x15e
    .4byte gUnknown_085E1EB4 + 0x1a6
    .4byte gUnknown_085E1EB4 + 0x21e
    .4byte gUnknown_085E1EB4 + 0x2c6
    .4byte gUnknown_085E1EB4 + 0x34a
    .4byte gUnknown_085E1EB4 + 0x3e6
    .4byte gUnknown_085E1EB4 + 0x4d6
    .4byte gUnknown_085E1EB4 + 0x572
    .4byte gUnknown_085E1EB4 + 0x5de
    .4byte gUnknown_085E1EB4 + 0x67a
    .4byte gUnknown_085E1EB4 + 0x752
    .4byte gUnknown_085E1EB4 + 0x82a
    .4byte gUnknown_085E1EB4 + 0x896
    .4byte gUnknown_085E1EB4 + 0x90e
    .4byte gUnknown_085E1EB4 + 0x9c2
    .4byte gUnknown_085E1EB4 + 0xa16
    .4byte gUnknown_085E1EB4 + 0xa6a
    .4byte gUnknown_085E1EB4 + 0xaa6
    .4byte gUnknown_085E1EB4 + 0xb06
    .4byte gUnknown_085E1EB4 + 0xb1e
    .4byte gUnknown_085E1EB4 + 0xb36
    .4byte 0x80000000
    .4byte 0x10000000
    .4byte 0xffe80064
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff00000
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0xffe80063
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00060002
    .4byte 0x0000fff1
    .4byte 0x10008000
    .4byte 0xfffe0004
    .4byte 0x0000fff1
    .4byte 0x10004000
    .4byte 0x00060042
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0xfffe0044
    .4byte 0x00000001
    .4byte 0x50000000
    .4byte 0xfff20000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xb0000000
    .4byte 0x00160005
    .4byte 0x0000fff7
    .4byte 0x70000000
    .4byte 0x000b0002
    .4byte 0x0000fffb
    .4byte 0x30008000
    .4byte 0x00030004
    .4byte 0x0000fffb
    .4byte 0x30004000
    .4byte 0x000b0042
    .4byte 0x0000fff3
    .4byte 0x30000000
    .4byte 0x00030044
    .4byte 0x0000fff3
    .4byte 0x70000000
    .4byte 0xfffa0000
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0x90000000
    .4byte 0x002b0009
    .4byte 0x0000ffec
    .4byte 0x80000100
    .4byte 0x00130005
    .4byte 0x0000fffa
    .4byte 0x50000000
    .4byte 0x000b0002
    .4byte 0x0000fff4
    .4byte 0x10008000
    .4byte 0x00030004
    .4byte 0x0000fff4
    .4byte 0x10004000
    .4byte 0x000b0042
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0x00030044
    .4byte 0x00000004
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00090005
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x002d000d
    .4byte 0x0000ffe7
    .4byte 0x50000000
    .4byte 0xfffc0000
    .4byte 0x0000fff5
    .4byte 0x90000000
    .4byte 0x00140009
    .4byte 0x0000fff8
    .4byte 0x10000000
    .4byte 0xfff00064
    .4byte 0x0000fffe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0x90000000
    .4byte 0x001c0005
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x00400011
    .4byte 0x0000ffe7
    .4byte 0x50000000
    .4byte 0x00110002
    .4byte 0x0000fff7
    .4byte 0x10008000
    .4byte 0x00090004
    .4byte 0x0000fff7
    .4byte 0x10004000
    .4byte 0x00110042
    .4byte 0x00000007
    .4byte 0x10000000
    .4byte 0x00090044
    .4byte 0x00000007
    .4byte 0x80000100
    .4byte 0x0028000d
    .4byte 0x0000fffd
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000fffa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x50000000
    .4byte 0x000a0002
    .4byte 0x0000fffe
    .4byte 0x10008000
    .4byte 0x00020004
    .4byte 0x0000fffe
    .4byte 0x10004000
    .4byte 0x000a0042
    .4byte 0x0000000e
    .4byte 0x10000000
    .4byte 0x00020044
    .4byte 0x0000000e
    .4byte 0x90000000
    .4byte 0x00440015
    .4byte 0x0000ffe9
    .4byte 0x90000000
    .4byte 0x00120005
    .4byte 0x0000ffea
    .4byte 0x80000100
    .4byte 0x00240011
    .4byte 0x0000fffd
    .4byte 0x50000000
    .4byte 0x002e0002
    .4byte 0x0000ffe6
    .4byte 0x10008000
    .4byte 0x00260004
    .4byte 0x0000ffe6
    .4byte 0x10004000
    .4byte 0x002e0042
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0x00260044
    .4byte 0x0000fff6
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00100002
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0x00080004
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0x00100042
    .4byte 0x00000010
    .4byte 0x10000000
    .4byte 0x00080044
    .4byte 0x00000010
    .4byte 0x90000000
    .4byte 0x00540019
    .4byte 0x0000ffd9
    .4byte 0x90000000
    .4byte 0x00190009
    .4byte 0x0000ffef
    .4byte 0x90000000
    .4byte 0x002e0005
    .4byte 0x0000ffe8
    .4byte 0x10000000
    .4byte 0xfff30063
    .4byte 0x00000001
    .4byte 0x90000000
    .4byte 0x00440011
    .4byte 0x0000fff9
    .4byte 0x50000000
    .4byte 0x00040000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00160005
    .4byte 0x0000fff9
    .4byte 0x90000000
    .4byte 0x0026000d
    .4byte 0x0000ffe7
    .4byte 0x90000000
    .4byte 0x00380005
    .4byte 0x0000ffde
    .4byte 0x50000000
    .4byte 0xfffe0000
    .4byte 0x0000fff9
    .4byte 0x50000000
    .4byte 0x00060000
    .4byte 0x0000fffe
    .4byte 0x50000000
    .4byte 0x00410002
    .4byte 0x00000003
    .4byte 0x10008000
    .4byte 0x00390004
    .4byte 0x00000003
    .4byte 0x10004000
    .4byte 0x00410042
    .4byte 0x00000013
    .4byte 0x10000000
    .4byte 0x00390044
    .4byte 0x00000013
    .4byte 0x80000100
    .4byte 0x000b0009
    .4byte 0x0000ffe9
    .4byte 0xb0000000
    .4byte 0x00560019
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xb0000000
    .4byte 0x00270009
    .4byte 0x0000ffe2
    .4byte 0xb0000000
    .4byte 0x00350011
    .4byte 0x0000fff8
    .4byte 0x70000000
    .4byte 0x00110002
    .4byte 0x00000002
    .4byte 0x30008000
    .4byte 0x00090004
    .4byte 0x00000002
    .4byte 0x30004000
    .4byte 0x00110042
    .4byte 0x0000fffa
    .4byte 0x30000000
    .4byte 0x00090044
    .4byte 0x0000fffa
    .4byte 0x70000000
    .4byte 0x00250002
    .4byte 0x0000fffa
    .4byte 0x30008000
    .4byte 0x001d0004
    .4byte 0x0000fffa
    .4byte 0x30004000
    .4byte 0x00250042
    .4byte 0x0000fff2
    .4byte 0x30000000
    .4byte 0x001d0044
    .4byte 0x0000fff2
    .4byte 0x70000000
    .4byte 0x00510002
    .4byte 0x0000ffe8
    .4byte 0x30008000
    .4byte 0x00490004
    .4byte 0x0000ffe8
    .4byte 0x30004000
    .4byte 0x00510042
    .4byte 0x0000ffe0
    .4byte 0x30000000
    .4byte 0x00490044
    .4byte 0x0000ffe0
    .4byte 0x80000100
    .4byte 0x00530009
    .4byte 0x0000fff0
    .4byte 0x70000000
    .4byte 0xfffc0000
    .4byte 0x0000fffd
    .4byte 0x82000100
    .4byte 0x001d000d
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xb0000000
    .4byte 0x002c000d
    .4byte 0x0000ffe3
    .4byte 0xb0000000
    .4byte 0x003c0015
    .4byte 0x0000fff3
    .4byte 0xb0000000
    .4byte 0x000c0005
    .4byte 0x0000fff3
    .4byte 0xb0000000
    .4byte 0x003c0005
    .4byte 0x0000ffe9
    .4byte 0xb0000000
    .4byte 0x00550005
    .4byte 0x0000ffde
    .4byte 0x80000100
    .4byte 0xff61000d
    .4byte 0x0000fffc
    .4byte 0x10000000
    .4byte 0xffec0064
    .4byte 0x00000002
    .4byte 0x70000000
    .4byte 0xfffc0000
    .4byte 0x0000fffc
    .4byte 0x82000100
    .4byte 0x00260011
    .4byte 0x0000ffff
    .4byte 0x30000000
    .4byte 0x001c0064
    .4byte 0x0000ffeb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xb0000000
    .4byte 0x00190005
    .4byte 0x0000fff8
    .4byte 0xb0000000
    .4byte 0x00310011
    .4byte 0x0000ffe8
    .4byte 0xb0000000
    .4byte 0x00410019
    .4byte 0x0000fff9
    .4byte 0xb0000000
    .4byte 0x00510009
    .4byte 0x0000ffeb
    .4byte 0x10000000
    .4byte 0x00050064
    .4byte 0x00000008
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x00000000
    .4byte 0x70000000
    .4byte 0x00090000
    .4byte 0x0000fffd
    .4byte 0x30000000
    .4byte 0x00230063
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xb0000000
    .4byte 0x004a0019
    .4byte 0x0000fffc
    .4byte 0xb0000000
    .4byte 0x003a0015
    .4byte 0x0000ffdf
    .4byte 0xb0000000
    .4byte 0x00210009
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xfff40063
    .4byte 0x00000004
    .4byte 0x30000000
    .4byte 0x00110063
    .4byte 0x00000005
    .4byte 0x70000000
    .4byte 0x00050002
    .4byte 0x00000001
    .4byte 0x30008000
    .4byte 0xfffd0004
    .4byte 0x00000001
    .4byte 0x30004000
    .4byte 0x00050042
    .4byte 0x0000fff9
    .4byte 0x30000000
    .4byte 0xfffd0044
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0x000c0009
    .4byte 0x0000ffec
    .4byte 0x30000000
    .4byte 0x002b0064
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xb0000000
    .4byte 0x003f0019
    .4byte 0x0000ffe1
    .4byte 0xb0000000
    .4byte 0x0025000d
    .4byte 0x0000fff8
    .4byte 0x70000000
    .4byte 0x00470002
    .4byte 0x00000011
    .4byte 0x30008000
    .4byte 0x003f0004
    .4byte 0x00000011
    .4byte 0x30004000
    .4byte 0x00470042
    .4byte 0x00000009
    .4byte 0x30000000
    .4byte 0x003f0044
    .4byte 0x00000009
    .4byte 0x70000000
    .4byte 0xfff90000
    .4byte 0x00000001
    .4byte 0x70000000
    .4byte 0x000a0002
    .4byte 0x0000fffe
    .4byte 0x30008000
    .4byte 0x00020004
    .4byte 0x0000fffe
    .4byte 0x30004000
    .4byte 0x000a0042
    .4byte 0x0000fff6
    .4byte 0x30000000
    .4byte 0x00020044
    .4byte 0x0000fff6
    .4byte 0x30000000
    .4byte 0x00190064
    .4byte 0x0000fffb
    .4byte 0x80000100
    .4byte 0x00080009
    .4byte 0x0000fffc
    .4byte 0x82000100
    .4byte 0x0011000d
    .4byte 0x0000ffe3
    .4byte 0x30000000
    .4byte 0x00310062
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90008000
    .4byte 0x005d001d
    .4byte 0x0000fffc
    .4byte 0x50008000
    .4byte 0x0055001f
    .4byte 0x0000fffc
    .4byte 0x10008000
    .4byte 0x004d0040
    .4byte 0x0000fffc
    .4byte 0x10008000
    .4byte 0x004d0041
    .4byte 0x0000000c
    .4byte 0x90000000
    .4byte 0x002d0011
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0xff610015
    .4byte 0x0000fff7
    .4byte 0x90000000
    .4byte 0x00510005
    .4byte 0x0000ffe5
    .4byte 0x50000000
    .4byte 0x00060002
    .4byte 0x0000fff6
    .4byte 0x10008000
    .4byte 0xfffe0004
    .4byte 0x0000fff6
    .4byte 0x10004000
    .4byte 0x00060042
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0xfffe0044
    .4byte 0x00000006
    .4byte 0x90000000
    .4byte 0x00110005
    .4byte 0x0000fff8
    .4byte 0x10000000
    .4byte 0x002d0062
    .4byte 0x00000011
    .4byte 0x80000100
    .4byte 0x0015000d
    .4byte 0x0000ffe3
    .4byte 0x82000100
    .4byte 0x00250011
    .4byte 0x00000009
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x002b0015
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x00010005
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x00210009
    .4byte 0x00000002
    .4byte 0x90000000
    .4byte 0x004e0009
    .4byte 0x0000ffe3
    .4byte 0x80000100
    .4byte 0x00150015
    .4byte 0x0000ffe3
    .4byte 0x82000100
    .4byte 0x00340011
    .4byte 0x0000000c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x001f0000
    .4byte 0x00000004
    .4byte 0x90000000
    .4byte 0x00360019
    .4byte 0x0000ffea
    .4byte 0x90000000
    .4byte 0x000c0009
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x003d000d
    .4byte 0x0000fffe
    .4byte 0x90000000
    .4byte 0x0058000d
    .4byte 0x0000ffdf
    .4byte 0x10000000
    .4byte 0x002e0064
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x00260019
    .4byte 0x0000ffdf
    .4byte 0x80000100
    .4byte 0x00520015
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90008000
    .4byte 0x004e001d
    .4byte 0x0000ffec
    .4byte 0x50008000
    .4byte 0x0046001f
    .4byte 0x0000ffec
    .4byte 0x10008000
    .4byte 0x003e0040
    .4byte 0x0000ffec
    .4byte 0x10008000
    .4byte 0x003e0041
    .4byte 0x0000fffc
    .4byte 0x50000000
    .4byte 0x00260002
    .4byte 0x0000ffff
    .4byte 0x10008000
    .4byte 0x001e0004
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0x00260042
    .4byte 0x0000000f
    .4byte 0x10000000
    .4byte 0x001e0044
    .4byte 0x0000000f
    .4byte 0x90000000
    .4byte 0x0010000d
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x00480011
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00590011
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0x00320063
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0x00600019
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x002d0005
    .4byte 0x0000fffd
    .4byte 0x90000000
    .4byte 0x001a0011
    .4byte 0x0000ffeb
    .4byte 0x90000000
    .4byte 0x00530015
    .4byte 0x0000fffc
    .4byte 0x90000000
    .4byte 0x00580015
    .4byte 0x0000ffdd
    .4byte 0x10000000
    .4byte 0x00400064
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0x00380000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x003e0009
    .4byte 0x0000fffb
    .4byte 0x90000000
    .4byte 0x00500019
    .4byte 0x0000fff3
    .4byte 0x90000000
    .4byte 0x00580019
    .4byte 0x0000ffd9
    .4byte 0x90000000
    .4byte 0x00240015
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x00480062
    .4byte 0x0000ffe4
    .4byte 0x50000000
    .4byte 0x00450000
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00300019
    .4byte 0x0000ffe7
    .4byte 0x90000000
    .4byte 0x004e000d
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0x00480009
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00530011
    .4byte 0x0000fff6
    .4byte 0x90008000
    .4byte 0x004d001d
    .4byte 0x0000ffe4
    .4byte 0x50008000
    .4byte 0x0045001f
    .4byte 0x0000ffe4
    .4byte 0x10008000
    .4byte 0x003d0040
    .4byte 0x0000ffe4
    .4byte 0x10008000
    .4byte 0x003d0041
    .4byte 0x0000fff4
    .4byte 0x80000100
    .4byte 0x0050000d
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00420015
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00500019
    .4byte 0x0000ffeb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0x0068001d
    .4byte 0x0000ffe8
    .4byte 0x50008000
    .4byte 0x0060001f
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x00580040
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x00580041
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E35DC
gUnknown_085E35DC:  @ 0x085E35DC
@ Replacing .incbin "baserom.gba", 0x5E35DC, 0xC30
    .4byte gUnknown_085E2A24 + 0x6e
    .4byte gUnknown_085E2A24 + 0x86
    .4byte gUnknown_085E2A24 + 0xaa
    .4byte gUnknown_085E2A24 + 0xf2
    .4byte gUnknown_085E2A24 + 0x146
    .4byte gUnknown_085E2A24 + 0x1a6
    .4byte gUnknown_085E2A24 + 0x1ee
    .4byte gUnknown_085E2A24 + 0x266
    .4byte gUnknown_085E2A24 + 0x30e
    .4byte gUnknown_085E2A24 + 0x392
    .4byte gUnknown_085E2A24 + 0x42e
    .4byte gUnknown_085E2A24 + 0x51e
    .4byte gUnknown_085E2A24 + 0x5ba
    .4byte gUnknown_085E2A24 + 0x626
    .4byte gUnknown_085E2A24 + 0x6c2
    .4byte gUnknown_085E2A24 + 0x79a
    .4byte gUnknown_085E2A24 + 0x872
    .4byte gUnknown_085E2A24 + 0x8de
    .4byte gUnknown_085E2A24 + 0x956
    .4byte gUnknown_085E2A24 + 0xa0a
    .4byte gUnknown_085E2A24 + 0xa5e
    .4byte gUnknown_085E2A24 + 0xab2
    .4byte gUnknown_085E2A24 + 0xaee
    .4byte gUnknown_085E2A24 + 0xb4e
    .4byte gUnknown_085E2A24 + 0xb66
    .4byte gUnknown_085E2A24 + 0xb7e
    .4byte 0x80000000
    .4byte 0x00000000
    .4byte 0x000c0064
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xfffb0000
    .4byte 0x0000fff0
    .4byte 0x00000000
    .4byte 0x000a0063
    .4byte 0x0000fff3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffea0002
    .4byte 0x0000fff2
    .4byte 0x00008000
    .4byte 0xfffa0004
    .4byte 0x0000fff2
    .4byte 0x00004000
    .4byte 0xffea0042
    .4byte 0x00000002
    .4byte 0x00000000
    .4byte 0xfffa0044
    .4byte 0x00000002
    .4byte 0x40000000
    .4byte 0xfffb0000
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffda0005
    .4byte 0x0000fff1
    .4byte 0x40000000
    .4byte 0xfff10002
    .4byte 0x00000002
    .4byte 0x00008000
    .4byte 0x00010004
    .4byte 0x00000002
    .4byte 0x00004000
    .4byte 0xfff10042
    .4byte 0x00000012
    .4byte 0x00000000
    .4byte 0x00010044
    .4byte 0x00000012
    .4byte 0x40000000
    .4byte 0x00020000
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000141
    .4byte 0x01410000
    .4byte 0x80000000
    .4byte 0xffce0009
    .4byte 0x0000fff3
    .4byte 0x80000100
    .4byte 0xffe40005
    .4byte 0x00000002
    .4byte 0x40000000
    .4byte 0xfff30002
    .4byte 0x0000fff0
    .4byte 0x00008000
    .4byte 0x00030004
    .4byte 0x0000fff0
    .4byte 0x00004000
    .4byte 0xfff30042
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00030044
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffde0005
    .4byte 0x0000fff2
    .4byte 0x80000000
    .4byte 0xffbb000d
    .4byte 0x0000fff3
    .4byte 0x40000000
    .4byte 0xfffb0000
    .4byte 0x0000fff3
    .4byte 0x80000000
    .4byte 0xffd60009
    .4byte 0x00000002
    .4byte 0x00000000
    .4byte 0x00080064
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000141
    .4byte 0x01410000
    .4byte 0x80000000
    .4byte 0xffd40005
    .4byte 0x0000fff5
    .4byte 0x80000000
    .4byte 0xffae0011
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0xffeb0002
    .4byte 0x0000fff2
    .4byte 0x00008000
    .4byte 0xfffb0004
    .4byte 0x0000fff2
    .4byte 0x00004000
    .4byte 0xffeb0042
    .4byte 0x00000002
    .4byte 0x00000000
    .4byte 0xfffb0044
    .4byte 0x00000002
    .4byte 0x80000100
    .4byte 0xffce000d
    .4byte 0x00000003
    .4byte 0x40000000
    .4byte 0xfffe0000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0x40000000
    .4byte 0xffee0002
    .4byte 0x0000fffd
    .4byte 0x00008000
    .4byte 0xfffe0004
    .4byte 0x0000fffd
    .4byte 0x00004000
    .4byte 0xffee0042
    .4byte 0x0000000d
    .4byte 0x00000000
    .4byte 0xfffe0044
    .4byte 0x0000000d
    .4byte 0x80000000
    .4byte 0xff9e0015
    .4byte 0x0000ffee
    .4byte 0x80000000
    .4byte 0xffce0005
    .4byte 0x0000fff4
    .4byte 0x80000100
    .4byte 0xffc40011
    .4byte 0x00000004
    .4byte 0x40000000
    .4byte 0xffc70002
    .4byte 0x0000ffee
    .4byte 0x00008000
    .4byte 0xffd70004
    .4byte 0x0000ffee
    .4byte 0x00004000
    .4byte 0xffc70042
    .4byte 0x0000fffe
    .4byte 0x00000000
    .4byte 0xffd70044
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0xfffe0000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffef0002
    .4byte 0x0000fff3
    .4byte 0x00008000
    .4byte 0xffff0004
    .4byte 0x0000fff3
    .4byte 0x00004000
    .4byte 0xffef0042
    .4byte 0x00000003
    .4byte 0x00000000
    .4byte 0xffff0044
    .4byte 0x00000003
    .4byte 0x80000000
    .4byte 0xffbf0005
    .4byte 0x0000fff7
    .4byte 0x40000000
    .4byte 0xffe50002
    .4byte 0x0000ffff
    .4byte 0x00008000
    .4byte 0xfff50004
    .4byte 0x0000ffff
    .4byte 0x00004000
    .4byte 0xffe50042
    .4byte 0x0000000f
    .4byte 0x00000000
    .4byte 0xfff50044
    .4byte 0x0000000f
    .4byte 0x80000000
    .4byte 0xff960019
    .4byte 0x0000ffec
    .4byte 0x80000000
    .4byte 0xffd20009
    .4byte 0x0000fff0
    .4byte 0x00000000
    .4byte 0x000c0063
    .4byte 0x0000ffec
    .4byte 0x80000000
    .4byte 0xffae0011
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffd70005
    .4byte 0x0000fffd
    .4byte 0x80000000
    .4byte 0xffaf0005
    .4byte 0x0000ffeb
    .4byte 0x40000000
    .4byte 0xffbc0002
    .4byte 0x00000005
    .4byte 0x00008000
    .4byte 0xffcc0004
    .4byte 0x00000005
    .4byte 0x00004000
    .4byte 0xffbc0042
    .4byte 0x00000015
    .4byte 0x00000000
    .4byte 0xffcc0044
    .4byte 0x00000015
    .4byte 0x80008000
    .4byte 0xff86001d
    .4byte 0x0000ffe8
    .4byte 0x40008000
    .4byte 0xff96001f
    .4byte 0x0000ffe8
    .4byte 0x00008000
    .4byte 0xff9e0040
    .4byte 0x0000ffe8
    .4byte 0x00008000
    .4byte 0xff9e0041
    .4byte 0x0000fff8
    .4byte 0x80000000
    .4byte 0xffc6000d
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0xfffe0000
    .4byte 0x0000ffef
    .4byte 0x80000100
    .4byte 0xffe20009
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x40000000
    .4byte 0xffde0002
    .4byte 0x0000ffff
    .4byte 0x00008000
    .4byte 0xffee0004
    .4byte 0x0000ffff
    .4byte 0x00004000
    .4byte 0xffde0042
    .4byte 0x0000000f
    .4byte 0x00000000
    .4byte 0xffee0044
    .4byte 0x0000000f
    .4byte 0x80000000
    .4byte 0xffcc0009
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffbe0011
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0xffed0002
    .4byte 0x0000fff1
    .4byte 0x00008000
    .4byte 0xfffd0004
    .4byte 0x0000fff1
    .4byte 0x00004000
    .4byte 0xffed0042
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0xfffd0044
    .4byte 0x00000001
    .4byte 0x40000000
    .4byte 0xffae0002
    .4byte 0x00000008
    .4byte 0x00008000
    .4byte 0xffbe0004
    .4byte 0x00000008
    .4byte 0x00004000
    .4byte 0xffae0042
    .4byte 0x00000018
    .4byte 0x00000000
    .4byte 0xffbe0044
    .4byte 0x00000018
    .4byte 0x80000100
    .4byte 0xff9e0009
    .4byte 0x0000ffe8
    .4byte 0x40000000
    .4byte 0x00050000
    .4byte 0x0000ffec
    .4byte 0x82000100
    .4byte 0xffd6000d
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffdd0005
    .4byte 0x0000fff0
    .4byte 0x80000000
    .4byte 0xffb60005
    .4byte 0x0000fffa
    .4byte 0x80000000
    .4byte 0xffc6000d
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffb60015
    .4byte 0x0000fff1
    .4byte 0x80000000
    .4byte 0xff9d0005
    .4byte 0x00000005
    .4byte 0x80000100
    .4byte 0xff91000d
    .4byte 0x0000ffe7
    .4byte 0x00000000
    .4byte 0x000b0064
    .4byte 0x0000ffef
    .4byte 0x40000000
    .4byte 0xfffd0000
    .4byte 0x0000fffa
    .4byte 0x82000100
    .4byte 0xffcc0011
    .4byte 0x0000ffe5
    .4byte 0x00000000
    .4byte 0xffee0064
    .4byte 0x00000010
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff8a0005
    .4byte 0x00000008
    .4byte 0x00000000
    .4byte 0xfffa0064
    .4byte 0x0000fffb
    .4byte 0x80000000
    .4byte 0xffd30005
    .4byte 0x0000ffef
    .4byte 0x80000000
    .4byte 0xff9e0009
    .4byte 0x0000fffd
    .4byte 0x80000000
    .4byte 0xffbe0011
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffae0019
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0x00000000
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0xfff60000
    .4byte 0x00000002
    .4byte 0x00000000
    .4byte 0xffe40063
    .4byte 0x00000014
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffcc0009
    .4byte 0x0000ffef
    .4byte 0x80000000
    .4byte 0xffa60019
    .4byte 0x0000ffee
    .4byte 0x80000000
    .4byte 0xffb60015
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff8e000d
    .4byte 0x0000fffb
    .4byte 0x00000000
    .4byte 0x000b0063
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0xfff30063
    .4byte 0x00000001
    .4byte 0x40000000
    .4byte 0xfff40002
    .4byte 0x0000fff1
    .4byte 0x00008000
    .4byte 0x00040004
    .4byte 0x0000fff1
    .4byte 0x00004000
    .4byte 0xfff40042
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00040044
    .4byte 0x00000001
    .4byte 0x80000100
    .4byte 0xffe20009
    .4byte 0x0000ffff
    .4byte 0x00000000
    .4byte 0xffdd0064
    .4byte 0x00000015
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x40000000
    .4byte 0xffb60002
    .4byte 0x0000ffee
    .4byte 0x00008000
    .4byte 0xffc60004
    .4byte 0x0000ffee
    .4byte 0x00004000
    .4byte 0xffb60042
    .4byte 0x0000fffe
    .4byte 0x00000000
    .4byte 0xffc60044
    .4byte 0x0000fffe
    .4byte 0x80000000
    .4byte 0xffae0019
    .4byte 0x0000fffc
    .4byte 0x80000000
    .4byte 0xffc6000d
    .4byte 0x0000fff1
    .4byte 0x80000000
    .4byte 0xff860011
    .4byte 0x0000fff9
    .4byte 0x40000000
    .4byte 0x00040000
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0xffee0002
    .4byte 0x0000fff7
    .4byte 0x00008000
    .4byte 0xfffe0004
    .4byte 0x0000fff7
    .4byte 0x00004000
    .4byte 0xffee0042
    .4byte 0x00000007
    .4byte 0x00000000
    .4byte 0xfffe0044
    .4byte 0x00000007
    .4byte 0x00000000
    .4byte 0xffea0064
    .4byte 0x00000006
    .4byte 0x80000100
    .4byte 0xffe40009
    .4byte 0x0000ffe9
    .4byte 0x82000100
    .4byte 0xffd6000d
    .4byte 0x00000006
    .4byte 0x00000000
    .4byte 0xffd20062
    .4byte 0x00000018
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xff9e0005
    .4byte 0x0000ffe9
    .4byte 0x80008000
    .4byte 0xffa2001d
    .4byte 0x0000fff8
    .4byte 0x40008000
    .4byte 0xffb2001f
    .4byte 0x0000fff8
    .4byte 0x00008000
    .4byte 0xffba0040
    .4byte 0x0000fff8
    .4byte 0x00008000
    .4byte 0xffba0041
    .4byte 0x00000008
    .4byte 0x80000000
    .4byte 0xff800015
    .4byte 0x0000fff7
    .4byte 0x40000000
    .4byte 0xfff20002
    .4byte 0x0000fff2
    .4byte 0x00008000
    .4byte 0x00020004
    .4byte 0x0000fff2
    .4byte 0x00004000
    .4byte 0xfff20042
    .4byte 0x00000002
    .4byte 0x00000000
    .4byte 0x00020044
    .4byte 0x00000002
    .4byte 0x80000000
    .4byte 0xffd60005
    .4byte 0x0000fffb
    .4byte 0x00000000
    .4byte 0xffd20062
    .4byte 0x00000011
    .4byte 0x80000100
    .4byte 0xffd2000d
    .4byte 0x0000ffe7
    .4byte 0x82000100
    .4byte 0xffc60011
    .4byte 0x0000000c
    .4byte 0x80000000
    .4byte 0xffbe0011
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffde0005
    .4byte 0x0000ffee
    .4byte 0x80000000
    .4byte 0xffbe0009
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff920009
    .4byte 0x0000ffe4
    .4byte 0x80000100
    .4byte 0xffc90015
    .4byte 0x0000ffe6
    .4byte 0x82000100
    .4byte 0xffad0011
    .4byte 0x0000000c
    .4byte 0x80000000
    .4byte 0xffb60015
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x40000000
    .4byte 0xffd60000
    .4byte 0x00000002
    .4byte 0x80000000
    .4byte 0xffd60009
    .4byte 0x0000ffee
    .4byte 0x80000000
    .4byte 0xffa6000d
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff8a000d
    .4byte 0x0000ffe2
    .4byte 0x00000000
    .4byte 0xffce0064
    .4byte 0x0000fff0
    .4byte 0x80000000
    .4byte 0xffbe0019
    .4byte 0x0000ffe5
    .4byte 0x80000100
    .4byte 0xff940015
    .4byte 0x0000000b
    .4byte 0x80000000
    .4byte 0xffae0019
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x40000000
    .4byte 0xffc80002
    .4byte 0x0000ffff
    .4byte 0x00008000
    .4byte 0xffd80004
    .4byte 0x0000ffff
    .4byte 0x00004000
    .4byte 0xffc80042
    .4byte 0x0000000f
    .4byte 0x00000000
    .4byte 0xffd80044
    .4byte 0x0000000f
    .4byte 0x80000000
    .4byte 0xffce000d
    .4byte 0x0000ffee
    .4byte 0x80000000
    .4byte 0xff960011
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff850011
    .4byte 0x0000ffde
    .4byte 0x00000000
    .4byte 0xffc40063
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0xff800019
    .4byte 0x00000008
    .4byte 0x80008000
    .4byte 0xffa0001d
    .4byte 0x0000ffec
    .4byte 0x40008000
    .4byte 0xffb0001f
    .4byte 0x0000ffec
    .4byte 0x00008000
    .4byte 0xffb80040
    .4byte 0x0000ffec
    .4byte 0x00008000
    .4byte 0xffb80041
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffb10005
    .4byte 0x0000fffd
    .4byte 0x80000000
    .4byte 0xffc40011
    .4byte 0x0000ffec
    .4byte 0x80000000
    .4byte 0xff8b0015
    .4byte 0x0000fffc
    .4byte 0x80000000
    .4byte 0xff820015
    .4byte 0x0000ffde
    .4byte 0x00000000
    .4byte 0xffb60064
    .4byte 0x0000ffe8
    .4byte 0x40000000
    .4byte 0xffb60000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffa00009
    .4byte 0x0000fffb
    .4byte 0x80000000
    .4byte 0xff810019
    .4byte 0x0000fff3
    .4byte 0x80000000
    .4byte 0xff810019
    .4byte 0x0000ffda
    .4byte 0x80000000
    .4byte 0xffba0015
    .4byte 0x0000ffea
    .4byte 0x00000000
    .4byte 0xffae0062
    .4byte 0x0000ffe5
    .4byte 0x40000000
    .4byte 0xffa90000
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xffae0019
    .4byte 0x0000ffe8
    .4byte 0x80000000
    .4byte 0xff90000d
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0xff960009
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xff8b0011
    .4byte 0x0000fff6
    .4byte 0x80008000
    .4byte 0xffa1001d
    .4byte 0x0000ffe5
    .4byte 0x40008000
    .4byte 0xffb1001f
    .4byte 0x0000ffe5
    .4byte 0x00008000
    .4byte 0xffb90040
    .4byte 0x0000ffe5
    .4byte 0x00008000
    .4byte 0xffb90041
    .4byte 0x0000fff5
    .4byte 0x80000100
    .4byte 0xff8e000d
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000000
    .4byte 0xff880015
    .4byte 0x0000fff5
    .4byte 0x80000100
    .4byte 0xff860019
    .4byte 0x0000ffda
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xff840019
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80008000
    .4byte 0xff81001d
    .4byte 0x0000fff2
    .4byte 0x40008000
    .4byte 0xff91001f
    .4byte 0x0000fff2
    .4byte 0x00008000
    .4byte 0xff990040
    .4byte 0x0000fff2
    .4byte 0x00008000
    .4byte 0xff990041
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E420C
gUnknown_085E420C:  @ 0x085E420C
@ Replacing .incbin "baserom.gba", 0x5E420C, 0xC30
    .4byte gUnknown_085E35DC + 0x6e
    .4byte gUnknown_085E35DC + 0x86
    .4byte gUnknown_085E35DC + 0xaa
    .4byte gUnknown_085E35DC + 0xf2
    .4byte gUnknown_085E35DC + 0x146
    .4byte gUnknown_085E35DC + 0x1a6
    .4byte gUnknown_085E35DC + 0x1ee
    .4byte gUnknown_085E35DC + 0x266
    .4byte gUnknown_085E35DC + 0x30e
    .4byte gUnknown_085E35DC + 0x3b6
    .4byte gUnknown_085E35DC + 0x46a
    .4byte gUnknown_085E35DC + 0x55a
    .4byte gUnknown_085E35DC + 0x5f6
    .4byte gUnknown_085E35DC + 0x66e
    .4byte gUnknown_085E35DC + 0x716
    .4byte gUnknown_085E35DC + 0x7fa
    .4byte gUnknown_085E35DC + 0x8d2
    .4byte gUnknown_085E35DC + 0x93e
    .4byte gUnknown_085E35DC + 0x9b6
    .4byte gUnknown_085E35DC + 0xa6a
    .4byte gUnknown_085E35DC + 0xabe
    .4byte gUnknown_085E35DC + 0xb12
    .4byte gUnknown_085E35DC + 0xb4e
    .4byte gUnknown_085E35DC + 0xbae
    .4byte gUnknown_085E35DC + 0xbde
    .4byte gUnknown_085E35DC + 0xbf6
    .4byte 0x80000000
    .4byte 0x10000000
    .4byte 0xffec0064
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffee0063
    .4byte 0x0000fff3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00060002
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0xfffe0004
    .4byte 0x0000fff2
    .4byte 0x10004000
    .4byte 0x00060042
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xfffe0044
    .4byte 0x00000002
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00060005
    .4byte 0x0000fff1
    .4byte 0x50000000
    .4byte 0xffff0002
    .4byte 0x00000002
    .4byte 0x10008000
    .4byte 0xfff70004
    .4byte 0x00000002
    .4byte 0x10004000
    .4byte 0xffff0042
    .4byte 0x00000012
    .4byte 0x10000000
    .4byte 0xfff70044
    .4byte 0x00000012
    .4byte 0x50000000
    .4byte 0xffee0000
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0x90000000
    .4byte 0x00120009
    .4byte 0x0000fff3
    .4byte 0x80000100
    .4byte 0xfffc0005
    .4byte 0x00000002
    .4byte 0x50000000
    .4byte 0xfffd0002
    .4byte 0x0000fff0
    .4byte 0x10008000
    .4byte 0xfff50004
    .4byte 0x0000fff0
    .4byte 0x10004000
    .4byte 0xfffd0042
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff50044
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00020005
    .4byte 0x0000fff2
    .4byte 0x90000000
    .4byte 0x0025000d
    .4byte 0x0000fff3
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000fff3
    .4byte 0x90000000
    .4byte 0x000a0009
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xfff00064
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0x90000000
    .4byte 0x000c0005
    .4byte 0x0000fff5
    .4byte 0x90000000
    .4byte 0x00320011
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0x00050002
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0xfffd0004
    .4byte 0x0000fff2
    .4byte 0x10004000
    .4byte 0x00050042
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xfffd0044
    .4byte 0x00000002
    .4byte 0x80000100
    .4byte 0x0012000d
    .4byte 0x00000003
    .4byte 0x50000000
    .4byte 0xfff20000
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x50000000
    .4byte 0x00020002
    .4byte 0x0000fffd
    .4byte 0x10008000
    .4byte 0xfffa0004
    .4byte 0x0000fffd
    .4byte 0x10004000
    .4byte 0x00020042
    .4byte 0x0000000d
    .4byte 0x10000000
    .4byte 0xfffa0044
    .4byte 0x0000000d
    .4byte 0x90000000
    .4byte 0x00420015
    .4byte 0x0000ffee
    .4byte 0x90000000
    .4byte 0x00120005
    .4byte 0x0000fff4
    .4byte 0x80000100
    .4byte 0x001c0011
    .4byte 0x00000004
    .4byte 0x50000000
    .4byte 0x00290002
    .4byte 0x0000ffee
    .4byte 0x10008000
    .4byte 0x00210004
    .4byte 0x0000ffee
    .4byte 0x10004000
    .4byte 0x00290042
    .4byte 0x0000fffe
    .4byte 0x10000000
    .4byte 0x00210044
    .4byte 0x0000fffe
    .4byte 0x50000000
    .4byte 0xfff20000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00010002
    .4byte 0x0000fff3
    .4byte 0x10008000
    .4byte 0xfff90004
    .4byte 0x0000fff3
    .4byte 0x10004000
    .4byte 0x00010042
    .4byte 0x00000003
    .4byte 0x10000000
    .4byte 0xfff90044
    .4byte 0x00000003
    .4byte 0x90000000
    .4byte 0x00210005
    .4byte 0x0000fff7
    .4byte 0x50000000
    .4byte 0x000b0002
    .4byte 0x0000ffff
    .4byte 0x10008000
    .4byte 0x00030004
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0x000b0042
    .4byte 0x0000000f
    .4byte 0x10000000
    .4byte 0x00030044
    .4byte 0x0000000f
    .4byte 0x90000000
    .4byte 0x004a0019
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x000e0009
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffec0063
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x00320011
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00090005
    .4byte 0x0000fffd
    .4byte 0x90000000
    .4byte 0x00310005
    .4byte 0x0000ffeb
    .4byte 0x50000000
    .4byte 0x00340002
    .4byte 0x00000005
    .4byte 0x10008000
    .4byte 0x002c0004
    .4byte 0x00000005
    .4byte 0x10004000
    .4byte 0x00340042
    .4byte 0x00000015
    .4byte 0x10000000
    .4byte 0x002c0044
    .4byte 0x00000015
    .4byte 0x90008000
    .4byte 0x006a001d
    .4byte 0x0000ffe8
    .4byte 0x50008000
    .4byte 0x0062001f
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x005a0040
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x005a0041
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0x001a000d
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0xfff20000
    .4byte 0x0000ffef
    .4byte 0x80000100
    .4byte 0xfffe0009
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x00120002
    .4byte 0x0000ffff
    .4byte 0x10008000
    .4byte 0x000a0004
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0x00120042
    .4byte 0x0000000f
    .4byte 0x10000000
    .4byte 0x000a0044
    .4byte 0x0000000f
    .4byte 0x90000000
    .4byte 0x00140009
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00220011
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0x00030002
    .4byte 0x0000fff1
    .4byte 0x10008000
    .4byte 0xfffb0004
    .4byte 0x0000fff1
    .4byte 0x10004000
    .4byte 0x00030042
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0xfffb0044
    .4byte 0x00000001
    .4byte 0x50000000
    .4byte 0x00420002
    .4byte 0x00000008
    .4byte 0x10008000
    .4byte 0x003a0004
    .4byte 0x00000008
    .4byte 0x10004000
    .4byte 0x00420042
    .4byte 0x00000018
    .4byte 0x10000000
    .4byte 0x003a0044
    .4byte 0x00000018
    .4byte 0x80000100
    .4byte 0x00420009
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0xffeb0000
    .4byte 0x0000ffec
    .4byte 0x82000100
    .4byte 0x000a000d
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00030005
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x002a0005
    .4byte 0x0000fffa
    .4byte 0x90000000
    .4byte 0x001a000d
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x002a0015
    .4byte 0x0000fff1
    .4byte 0x90000000
    .4byte 0x00430005
    .4byte 0x00000005
    .4byte 0x80000100
    .4byte 0x004f000d
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0xffed0064
    .4byte 0x0000ffef
    .4byte 0x50000000
    .4byte 0xfff30000
    .4byte 0x0000fffa
    .4byte 0x82000100
    .4byte 0x00140011
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0x000a0064
    .4byte 0x00000010
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00560005
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0xfffe0064
    .4byte 0x0000fffb
    .4byte 0x90000000
    .4byte 0x000d0005
    .4byte 0x0000ffef
    .4byte 0x90000000
    .4byte 0x00420009
    .4byte 0x0000fffd
    .4byte 0x90000000
    .4byte 0x00220011
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0xfff00000
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0xfffa0000
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0x00140063
    .4byte 0x00000014
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00140009
    .4byte 0x0000ffef
    .4byte 0x90000000
    .4byte 0x003a0019
    .4byte 0x0000ffee
    .4byte 0x90000000
    .4byte 0x002a0015
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0052000d
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0xffed0063
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0x00050063
    .4byte 0x00000001
    .4byte 0x50000000
    .4byte 0xfffc0002
    .4byte 0x0000fff1
    .4byte 0x10008000
    .4byte 0xfff40004
    .4byte 0x0000fff1
    .4byte 0x10004000
    .4byte 0xfffc0042
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0xfff40044
    .4byte 0x00000001
    .4byte 0x80000100
    .4byte 0xfffe0009
    .4byte 0x0000ffff
    .4byte 0x10000000
    .4byte 0x001b0064
    .4byte 0x00000015
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x003a0002
    .4byte 0x0000ffee
    .4byte 0x10008000
    .4byte 0x00320004
    .4byte 0x0000ffee
    .4byte 0x10004000
    .4byte 0x003a0042
    .4byte 0x0000fffe
    .4byte 0x10000000
    .4byte 0x00320044
    .4byte 0x0000fffe
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000fffc
    .4byte 0x90000000
    .4byte 0x001a000d
    .4byte 0x0000fff1
    .4byte 0x90000000
    .4byte 0x005a0011
    .4byte 0x0000fff9
    .4byte 0x50000000
    .4byte 0xffec0000
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0x00020002
    .4byte 0x0000fff7
    .4byte 0x10008000
    .4byte 0xfffa0004
    .4byte 0x0000fff7
    .4byte 0x10004000
    .4byte 0x00020042
    .4byte 0x00000007
    .4byte 0x10000000
    .4byte 0xfffa0044
    .4byte 0x00000007
    .4byte 0x10000000
    .4byte 0x000e0064
    .4byte 0x00000006
    .4byte 0x80000100
    .4byte 0xfffc0009
    .4byte 0x0000ffe9
    .4byte 0x82000100
    .4byte 0x000a000d
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0x00260062
    .4byte 0x00000018
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00420005
    .4byte 0x0000ffe9
    .4byte 0x90008000
    .4byte 0x004e001d
    .4byte 0x0000fff8
    .4byte 0x50008000
    .4byte 0x0046001f
    .4byte 0x0000fff8
    .4byte 0x10008000
    .4byte 0x003e0040
    .4byte 0x0000fff8
    .4byte 0x10008000
    .4byte 0x003e0041
    .4byte 0x00000008
    .4byte 0x90000000
    .4byte 0x00600015
    .4byte 0x0000fff7
    .4byte 0x50000000
    .4byte 0xfffe0002
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0xfff60004
    .4byte 0x0000fff2
    .4byte 0x10004000
    .4byte 0xfffe0042
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xfff60044
    .4byte 0x00000002
    .4byte 0x90000000
    .4byte 0x000a0005
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0x00260062
    .4byte 0x00000011
    .4byte 0x80000100
    .4byte 0x000e000d
    .4byte 0x0000ffe7
    .4byte 0x82000100
    .4byte 0x001a0011
    .4byte 0x0000000c
    .4byte 0x90000000
    .4byte 0x00220011
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00020005
    .4byte 0x0000ffee
    .4byte 0x90000000
    .4byte 0x00220009
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x004e0009
    .4byte 0x0000ffe4
    .4byte 0x80000100
    .4byte 0x00170015
    .4byte 0x0000ffe6
    .4byte 0x82000100
    .4byte 0x00330011
    .4byte 0x0000000c
    .4byte 0x90000000
    .4byte 0x002a0015
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x001a0000
    .4byte 0x00000002
    .4byte 0x90000000
    .4byte 0x000a0009
    .4byte 0x0000ffee
    .4byte 0x90000000
    .4byte 0x003a000d
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0056000d
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0x002a0064
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x00220019
    .4byte 0x0000ffe5
    .4byte 0x80000100
    .4byte 0x004c0015
    .4byte 0x0000000b
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x00280002
    .4byte 0x0000ffff
    .4byte 0x10008000
    .4byte 0x00200004
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0x00280042
    .4byte 0x0000000f
    .4byte 0x10000000
    .4byte 0x00200044
    .4byte 0x0000000f
    .4byte 0x90000000
    .4byte 0x0012000d
    .4byte 0x0000ffee
    .4byte 0x90000000
    .4byte 0x004a0011
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x005b0011
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0x00340063
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0x00600019
    .4byte 0x00000008
    .4byte 0x90008000
    .4byte 0x0050001d
    .4byte 0x0000ffec
    .4byte 0x50008000
    .4byte 0x0048001f
    .4byte 0x0000ffec
    .4byte 0x10008000
    .4byte 0x00400040
    .4byte 0x0000ffec
    .4byte 0x10008000
    .4byte 0x00400041
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x002f0005
    .4byte 0x0000fffd
    .4byte 0x90000000
    .4byte 0x001c0011
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x00550015
    .4byte 0x0000fffc
    .4byte 0x90000000
    .4byte 0x005e0015
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0x00420064
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0x003a0000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00400009
    .4byte 0x0000fffb
    .4byte 0x90000000
    .4byte 0x005f0019
    .4byte 0x0000fff3
    .4byte 0x90000000
    .4byte 0x005f0019
    .4byte 0x0000ffda
    .4byte 0x90000000
    .4byte 0x00260015
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0x004a0062
    .4byte 0x0000ffe5
    .4byte 0x50000000
    .4byte 0x00470000
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000ffe8
    .4byte 0x90000000
    .4byte 0x0050000d
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0x004a0009
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00550011
    .4byte 0x0000fff6
    .4byte 0x90008000
    .4byte 0x004f001d
    .4byte 0x0000ffe5
    .4byte 0x50008000
    .4byte 0x0047001f
    .4byte 0x0000ffe5
    .4byte 0x10008000
    .4byte 0x003f0040
    .4byte 0x0000ffe5
    .4byte 0x10008000
    .4byte 0x003f0041
    .4byte 0x0000fff5
    .4byte 0x80000100
    .4byte 0x0052000d
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00580015
    .4byte 0x0000fff5
    .4byte 0x80000100
    .4byte 0x005a0019
    .4byte 0x0000ffda
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x005c0019
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0x006f001d
    .4byte 0x0000fff2
    .4byte 0x50008000
    .4byte 0x0067001f
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0x005f0040
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0x005f0041
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E4E3C
gUnknown_085E4E3C:  @ 0x085E4E3C
@ Replacing .incbin "baserom.gba", 0x5E4E3C, 0xC3C
    .4byte gUnknown_085E420C + 0x6e
    .4byte gUnknown_085E420C + 0x86
    .4byte gUnknown_085E420C + 0xaa
    .4byte gUnknown_085E420C + 0xf2
    .4byte gUnknown_085E420C + 0x146
    .4byte gUnknown_085E420C + 0x1a6
    .4byte gUnknown_085E420C + 0x1ee
    .4byte gUnknown_085E420C + 0x266
    .4byte gUnknown_085E420C + 0x30e
    .4byte gUnknown_085E420C + 0x3b6
    .4byte gUnknown_085E420C + 0x46a
    .4byte gUnknown_085E420C + 0x55a
    .4byte gUnknown_085E420C + 0x5f6
    .4byte gUnknown_085E420C + 0x66e
    .4byte gUnknown_085E420C + 0x716
    .4byte gUnknown_085E420C + 0x7fa
    .4byte gUnknown_085E420C + 0x8d2
    .4byte gUnknown_085E420C + 0x93e
    .4byte gUnknown_085E420C + 0x9b6
    .4byte gUnknown_085E420C + 0xa6a
    .4byte gUnknown_085E420C + 0xabe
    .4byte gUnknown_085E420C + 0xb12
    .4byte gUnknown_085E420C + 0xb4e
    .4byte gUnknown_085E420C + 0xbae
    .4byte gUnknown_085E420C + 0xbde
    .4byte gUnknown_085E420C + 0xbf6
    .4byte 0x80000000
    .4byte 0x10000000
    .4byte 0xfff40064
    .4byte 0x0000ffc4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff60000
    .4byte 0x0000ffc9
    .4byte 0x10000000
    .4byte 0xfff70063
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00040002
    .4byte 0x0000ffd2
    .4byte 0x10008000
    .4byte 0xfffc0004
    .4byte 0x0000ffd2
    .4byte 0x10004000
    .4byte 0x00040042
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0xfffc0044
    .4byte 0x0000ffe2
    .4byte 0x50000000
    .4byte 0xfff80000
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00080005
    .4byte 0x0000ffdf
    .4byte 0x50000000
    .4byte 0xffff0002
    .4byte 0x0000ffe7
    .4byte 0x10008000
    .4byte 0xfff70004
    .4byte 0x0000ffe7
    .4byte 0x10004000
    .4byte 0xffff0042
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xfff70044
    .4byte 0x0000fff7
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000ffc6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0x90000000
    .4byte 0x00140009
    .4byte 0x0000ffe5
    .4byte 0x80000100
    .4byte 0xfffe0005
    .4byte 0x0000fff2
    .4byte 0x50000000
    .4byte 0xfffe0002
    .4byte 0x0000ffce
    .4byte 0x10008000
    .4byte 0xfff60004
    .4byte 0x0000ffce
    .4byte 0x10004000
    .4byte 0xfffe0042
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0xfff60044
    .4byte 0x0000ffde
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00030005
    .4byte 0x0000ffd7
    .4byte 0x90000000
    .4byte 0x002c000d
    .4byte 0x0000ffea
    .4byte 0x50000000
    .4byte 0xfff20000
    .4byte 0x0000ffcf
    .4byte 0x90000000
    .4byte 0x000c0009
    .4byte 0x00000003
    .4byte 0x10000000
    .4byte 0xfff40064
    .4byte 0x0000ffc5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0x90000000
    .4byte 0x00170005
    .4byte 0x0000ffe2
    .4byte 0x90000000
    .4byte 0x00390011
    .4byte 0x0000ffeb
    .4byte 0x50000000
    .4byte 0x00040002
    .4byte 0x0000ffd3
    .4byte 0x10008000
    .4byte 0xfffc0004
    .4byte 0x0000ffd3
    .4byte 0x10004000
    .4byte 0x00040042
    .4byte 0x0000ffe3
    .4byte 0x10000000
    .4byte 0xfffc0044
    .4byte 0x0000ffe3
    .4byte 0x80000100
    .4byte 0x001f000d
    .4byte 0x00000007
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffc5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0x50000000
    .4byte 0x003e0002
    .4byte 0x0000ffe6
    .4byte 0x10008000
    .4byte 0x00360004
    .4byte 0x0000ffe6
    .4byte 0x10004000
    .4byte 0x003e0042
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0x00360044
    .4byte 0x0000fff6
    .4byte 0x50000000
    .4byte 0x00050002
    .4byte 0x0000ffdf
    .4byte 0x10008000
    .4byte 0xfffd0004
    .4byte 0x0000ffdf
    .4byte 0x10004000
    .4byte 0x00050042
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0xfffd0044
    .4byte 0x0000ffef
    .4byte 0x90000000
    .4byte 0x00480015
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x00210005
    .4byte 0x0000ffe7
    .4byte 0x80000100
    .4byte 0x002a0011
    .4byte 0x00000006
    .4byte 0x50000000
    .4byte 0xfffe0000
    .4byte 0x0000ffd1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x000b0002
    .4byte 0x0000ffd3
    .4byte 0x10008000
    .4byte 0x00030004
    .4byte 0x0000ffd3
    .4byte 0x10004000
    .4byte 0x000b0042
    .4byte 0x0000ffe3
    .4byte 0x10000000
    .4byte 0x00030044
    .4byte 0x0000ffe3
    .4byte 0x90000000
    .4byte 0x003c0005
    .4byte 0x0000ffe3
    .4byte 0x50000000
    .4byte 0x00170002
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x000f0004
    .4byte 0x0000ffe8
    .4byte 0x10004000
    .4byte 0x00170042
    .4byte 0x0000fff8
    .4byte 0x10000000
    .4byte 0x000f0044
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0x00520019
    .4byte 0x0000ffea
    .4byte 0x90000000
    .4byte 0x002d0009
    .4byte 0x0000ffeb
    .4byte 0x10000000
    .4byte 0xfff30063
    .4byte 0x0000ffc5
    .4byte 0x80000100
    .4byte 0x003a0011
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00120005
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x00460005
    .4byte 0x0000ffe1
    .4byte 0x50000000
    .4byte 0x00340002
    .4byte 0x00000005
    .4byte 0x10008000
    .4byte 0x002c0004
    .4byte 0x00000005
    .4byte 0x10004000
    .4byte 0x00340042
    .4byte 0x00000015
    .4byte 0x10000000
    .4byte 0x002c0044
    .4byte 0x00000015
    .4byte 0x90008000
    .4byte 0x006a001d
    .4byte 0x0000ffe8
    .4byte 0x50008000
    .4byte 0x0062001f
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x005a0040
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x005a0041
    .4byte 0x0000fff8
    .4byte 0x90000000
    .4byte 0x0038000d
    .4byte 0x0000ffeb
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffca
    .4byte 0x80000100
    .4byte 0x00090009
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x00100002
    .4byte 0x0000fff1
    .4byte 0x10008000
    .4byte 0x00080004
    .4byte 0x0000fff1
    .4byte 0x10004000
    .4byte 0x00100042
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0x00080044
    .4byte 0x00000001
    .4byte 0x90000000
    .4byte 0x001b0009
    .4byte 0x0000fff3
    .4byte 0x90000000
    .4byte 0x003e0011
    .4byte 0x0000ffec
    .4byte 0x50000000
    .4byte 0x00010002
    .4byte 0x0000ffd0
    .4byte 0x10008000
    .4byte 0xfff90004
    .4byte 0x0000ffd0
    .4byte 0x10004000
    .4byte 0x00010042
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0xfff90044
    .4byte 0x0000ffe0
    .4byte 0x50000000
    .4byte 0x00420002
    .4byte 0x00000008
    .4byte 0x10008000
    .4byte 0x003a0004
    .4byte 0x00000008
    .4byte 0x10004000
    .4byte 0x00420042
    .4byte 0x00000018
    .4byte 0x10000000
    .4byte 0x003a0044
    .4byte 0x00000018
    .4byte 0x80000100
    .4byte 0x00510009
    .4byte 0x0000ffda
    .4byte 0x50000000
    .4byte 0xffef0000
    .4byte 0x0000ffc6
    .4byte 0x82000100
    .4byte 0x0011000d
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00010005
    .4byte 0x0000ffdc
    .4byte 0x90000000
    .4byte 0x002a0005
    .4byte 0x0000fff6
    .4byte 0x90000000
    .4byte 0x0016000d
    .4byte 0x0000fffa
    .4byte 0x90000000
    .4byte 0x004a0015
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x00430005
    .4byte 0x00000005
    .4byte 0x80000100
    .4byte 0x0059000d
    .4byte 0x0000ffd7
    .4byte 0x10000000
    .4byte 0xfff40064
    .4byte 0x0000ffc6
    .4byte 0x50000000
    .4byte 0xfff60000
    .4byte 0x0000ffd1
    .4byte 0x82000100
    .4byte 0x001e0011
    .4byte 0x0000ffe3
    .4byte 0x10000000
    .4byte 0x000a0064
    .4byte 0x00000007
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00520005
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0x00050064
    .4byte 0x0000fff5
    .4byte 0x90000000
    .4byte 0x00120005
    .4byte 0x0000ffe6
    .4byte 0x90000000
    .4byte 0x003e0009
    .4byte 0x0000fff7
    .4byte 0x90000000
    .4byte 0x002c0011
    .4byte 0x00000001
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000ffeb
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000ffc6
    .4byte 0x50000000
    .4byte 0xfffb0000
    .4byte 0x0000ffd7
    .4byte 0x10000000
    .4byte 0x00160063
    .4byte 0x0000000e
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x001d0009
    .4byte 0x0000ffe9
    .4byte 0x90000000
    .4byte 0x00480019
    .4byte 0x0000fff2
    .4byte 0x90000000
    .4byte 0x00330015
    .4byte 0x00000003
    .4byte 0x90000000
    .4byte 0x0058000d
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0xfff50063
    .4byte 0x0000ffc6
    .4byte 0x10000000
    .4byte 0x00060063
    .4byte 0x0000fff8
    .4byte 0x50000000
    .4byte 0xfffe0002
    .4byte 0x0000ffcc
    .4byte 0x10008000
    .4byte 0xfff60004
    .4byte 0x0000ffcc
    .4byte 0x10004000
    .4byte 0xfffe0042
    .4byte 0x0000ffdc
    .4byte 0x10000000
    .4byte 0xfff60044
    .4byte 0x0000ffdc
    .4byte 0x80000100
    .4byte 0x00020009
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0x001d0064
    .4byte 0x00000014
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x003a0002
    .4byte 0x0000ffee
    .4byte 0x10008000
    .4byte 0x00320004
    .4byte 0x0000ffee
    .4byte 0x10004000
    .4byte 0x003a0042
    .4byte 0x0000fffe
    .4byte 0x10000000
    .4byte 0x00320044
    .4byte 0x0000fffe
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000fffc
    .4byte 0x90000000
    .4byte 0x0024000d
    .4byte 0x0000ffeb
    .4byte 0x90000000
    .4byte 0x005b0011
    .4byte 0x00000004
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffc5
    .4byte 0x50000000
    .4byte 0x00060002
    .4byte 0x0000fff0
    .4byte 0x10008000
    .4byte 0xfffe0004
    .4byte 0x0000fff0
    .4byte 0x10004000
    .4byte 0x00060042
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfffe0044
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x000e0064
    .4byte 0x00000006
    .4byte 0x80000100
    .4byte 0xfffc0009
    .4byte 0x0000ffd9
    .4byte 0x82000100
    .4byte 0x000a000d
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0x00260062
    .4byte 0x00000018
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00420005
    .4byte 0x0000ffe9
    .4byte 0x90008000
    .4byte 0x004e001d
    .4byte 0x0000fff8
    .4byte 0x50008000
    .4byte 0x0046001f
    .4byte 0x0000fff8
    .4byte 0x10008000
    .4byte 0x003e0040
    .4byte 0x0000fff8
    .4byte 0x10008000
    .4byte 0x003e0041
    .4byte 0x00000008
    .4byte 0x90000000
    .4byte 0x00600015
    .4byte 0x0000ffff
    .4byte 0x50000000
    .4byte 0x00000002
    .4byte 0x0000ffd2
    .4byte 0x10008000
    .4byte 0xfff80004
    .4byte 0x0000ffd2
    .4byte 0x10004000
    .4byte 0x00000042
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0xfff80044
    .4byte 0x0000ffe2
    .4byte 0x90000000
    .4byte 0x000a0005
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0x00260062
    .4byte 0x00000011
    .4byte 0x80000100
    .4byte 0x000e000d
    .4byte 0x0000ffe7
    .4byte 0x82000100
    .4byte 0x001a0011
    .4byte 0x0000000c
    .4byte 0x90000000
    .4byte 0x002f0011
    .4byte 0x0000ffeb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000fe92
    .4byte 0x016e0000
    .4byte 0xffff0002
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00040005
    .4byte 0x0000ffdf
    .4byte 0x90000000
    .4byte 0x00220009
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x004e0009
    .4byte 0x0000ffe4
    .4byte 0x80000100
    .4byte 0x00170015
    .4byte 0x0000ffea
    .4byte 0x82000100
    .4byte 0x00330011
    .4byte 0x0000000c
    .4byte 0x90000000
    .4byte 0x00390015
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x001a0000
    .4byte 0x00000002
    .4byte 0x90000000
    .4byte 0x000a0009
    .4byte 0x0000ffe8
    .4byte 0x90000000
    .4byte 0x003a000d
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0056000d
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0x002a0064
    .4byte 0x0000fff0
    .4byte 0x90000000
    .4byte 0x00220019
    .4byte 0x0000ffee
    .4byte 0x80000100
    .4byte 0x004c0015
    .4byte 0x0000000b
    .4byte 0x90000000
    .4byte 0x00420019
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x50000000
    .4byte 0x00280002
    .4byte 0x0000ffff
    .4byte 0x10008000
    .4byte 0x00200004
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0x00280042
    .4byte 0x0000000f
    .4byte 0x10000000
    .4byte 0x00200044
    .4byte 0x0000000f
    .4byte 0x90000000
    .4byte 0x0012000d
    .4byte 0x0000ffee
    .4byte 0x90000000
    .4byte 0x004a0011
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x005b0011
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0x00340063
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0x00600019
    .4byte 0x00000008
    .4byte 0x90008000
    .4byte 0x005a001d
    .4byte 0x0000ffec
    .4byte 0x50008000
    .4byte 0x0052001f
    .4byte 0x0000ffec
    .4byte 0x10008000
    .4byte 0x004a0040
    .4byte 0x0000ffec
    .4byte 0x10008000
    .4byte 0x004a0041
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x002f0005
    .4byte 0x0000fffd
    .4byte 0x90000000
    .4byte 0x001c0011
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x00550015
    .4byte 0x0000fffc
    .4byte 0x90000000
    .4byte 0x005e0015
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0x00420064
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0x003a0000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x00400009
    .4byte 0x0000fffb
    .4byte 0x90000000
    .4byte 0x005f0019
    .4byte 0x0000fff3
    .4byte 0x90000000
    .4byte 0x005f0019
    .4byte 0x0000ffda
    .4byte 0x90000000
    .4byte 0x00260015
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0x004a0062
    .4byte 0x0000ffe5
    .4byte 0x50000000
    .4byte 0x00470000
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00320019
    .4byte 0x0000ffe8
    .4byte 0x90000000
    .4byte 0x0050000d
    .4byte 0x0000fff9
    .4byte 0x80000100
    .4byte 0x004a0009
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00550011
    .4byte 0x0000fff6
    .4byte 0x90008000
    .4byte 0x004f001d
    .4byte 0x0000ffe5
    .4byte 0x50008000
    .4byte 0x0047001f
    .4byte 0x0000ffe5
    .4byte 0x10008000
    .4byte 0x003f0040
    .4byte 0x0000ffe5
    .4byte 0x10008000
    .4byte 0x003f0041
    .4byte 0x0000fff5
    .4byte 0x80000100
    .4byte 0x0052000d
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0x90000000
    .4byte 0x00580015
    .4byte 0x0000fff5
    .4byte 0x80000100
    .4byte 0x005a0019
    .4byte 0x0000ffda
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x005c0019
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0x006f001d
    .4byte 0x0000fff2
    .4byte 0x50008000
    .4byte 0x0067001f
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0x005f0040
    .4byte 0x0000fff2
    .4byte 0x10008000
    .4byte 0x005f0041
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085E5A78
gUnknown_085E5A78:  @ 0x085E5A78
@ Replacing .incbin "baserom.gba", 0x5E5A78, 0x6C
    .4byte gUnknown_085E4E3C + 0x6e
    .4byte gUnknown_085E4E3C + 0x86
    .4byte gUnknown_085E4E3C + 0xaa
    .4byte gUnknown_085E4E3C + 0xf2
    .4byte gUnknown_085E4E3C + 0x146
    .4byte gUnknown_085E4E3C + 0x1a6
    .4byte gUnknown_085E4E3C + 0x1ee
    .4byte gUnknown_085E4E3C + 0x266
    .4byte gUnknown_085E4E3C + 0x30e
    .4byte gUnknown_085E4E3C + 0x3c2
    .4byte gUnknown_085E4E3C + 0x476
    .4byte gUnknown_085E4E3C + 0x566
    .4byte gUnknown_085E4E3C + 0x602
    .4byte gUnknown_085E4E3C + 0x67a
    .4byte gUnknown_085E4E3C + 0x722
    .4byte gUnknown_085E4E3C + 0x806
    .4byte gUnknown_085E4E3C + 0x8de
    .4byte gUnknown_085E4E3C + 0x94a
    .4byte gUnknown_085E4E3C + 0x9c2
    .4byte gUnknown_085E4E3C + 0xa76
    .4byte gUnknown_085E4E3C + 0xaca
    .4byte gUnknown_085E4E3C + 0xb1e
    .4byte gUnknown_085E4E3C + 0xb5a
    .4byte gUnknown_085E4E3C + 0xbba
    .4byte gUnknown_085E4E3C + 0xbea
    .4byte gUnknown_085E4E3C + 0xc02
    .4byte 0x80000000

	.global Img_DarkBreathBg
Img_DarkBreathBg:  @ 0x085E5AE4
	.incbin "baserom.gba", 0x5E5AE4, 0x9F4    @ 0x5E64D8 - 0x5E5AE4

	.global Tsa_085E64D8
Tsa_085E64D8:  @ 0x085E64D8
	.incbin "baserom.gba", 0x5E64D8, 0xE8    @ 0x5E65C0 - 0x5E64D8

	.global Tsa_085E65C0
Tsa_085E65C0:  @ 0x085E65C0
	.incbin "baserom.gba", 0x5E65C0, 0xBC    @ 0x5E667C - 0x5E65C0

	.global Tsa_085E667C
Tsa_085E667C:  @ 0x085E667C
	.incbin "baserom.gba", 0x5E667C, 0xFC    @ 0x5E6778 - 0x5E667C

	.global Tsa_085E6778
Tsa_085E6778:  @ 0x085E6778
	.incbin "baserom.gba", 0x5E6778, 0xE8    @ 0x5E6860 - 0x5E6778

	.global Tsa_085E6860
Tsa_085E6860:  @ 0x085E6860
	.incbin "baserom.gba", 0x5E6860, 0xE8    @ 0x5E6948 - 0x5E6860

	.global Tsa_085E6948
Tsa_085E6948:  @ 0x085E6948
	.incbin "baserom.gba", 0x5E6948, 0xFC    @ 0x5E6A44 - 0x5E6948

	.global Tsa_085E6A44
Tsa_085E6A44:  @ 0x085E6A44
	.incbin "baserom.gba", 0x5E6A44, 0x12C    @ 0x5E6B70 - 0x5E6A44

	.global Tsa_085E6B70
Tsa_085E6B70:  @ 0x085E6B70
	.incbin "baserom.gba", 0x5E6B70, 0x134    @ 0x5E6CA4 - 0x5E6B70

	.global Tsa_085E6CA4
Tsa_085E6CA4:  @ 0x085E6CA4
	.incbin "baserom.gba", 0x5E6CA4, 0xC4    @ 0x5E6D68 - 0x5E6CA4

	.global Tsa_085E6D68
Tsa_085E6D68:  @ 0x085E6D68
	.incbin "baserom.gba", 0x5E6D68, 0x12C    @ 0x5E6E94 - 0x5E6D68

	.global Tsa_085E6E94
Tsa_085E6E94:  @ 0x085E6E94
	.incbin "baserom.gba", 0x5E6E94, 0xFC    @ 0x5E6F90 - 0x5E6E94

	.global Tsa_085E6F90
Tsa_085E6F90:  @ 0x085E6F90
	.incbin "baserom.gba", 0x5E6F90, 0x98    @ 0x5E7028 - 0x5E6F90

	.global gUnknown_085E7028
gUnknown_085E7028:  @ 0x085E7028
	.incbin "baserom.gba", 0x5E7028, 0x10E0

	.global Pal_085E8108
Pal_085E8108:  @ 0x085E8108
	.incbin "baserom.gba", 0x5E8108, 0x200

	.global gUnknown_085E8308
gUnknown_085E8308:  @ 0x085E8308
	.incbin "baserom.gba", 0x5E8308, 0x4A0

	.global gUnknown_085E87A8
gUnknown_085E87A8:  @ 0x085E87A8
	.incbin "baserom.gba", 0x5E87A8, 0x45C

	.global gUnknown_085E8C04
gUnknown_085E8C04:  @ 0x085E8C04
	.incbin "baserom.gba", 0x5E8C04, 0xC0

	.global gUnknown_085E8CC4
gUnknown_085E8CC4:  @ 0x085E8CC4
	.incbin "baserom.gba", 0x5E8CC4, 0x20

	.global gUnknown_085E8CE4
gUnknown_085E8CE4:  @ 0x085E8CE4
	.incbin "baserom.gba", 0x5E8CE4, 0xA4

	.global Img_EfxNormalEffectBG
Img_EfxNormalEffectBG:  @ 0x085E8D88
	.incbin "baserom.gba", 0x5E8D88, 0x3C8

	.global Pal_EfxNormalEffectBG
Pal_EfxNormalEffectBG:  @ 0x085E9150
	.incbin "baserom.gba", 0x5E9150, 0x20

	.global Tsa1_EfxNormalEffectBG
Tsa1_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E9170, 0x5E923C - 0x5E9170

	.global Tsa2_EfxNormalEffectBG
Tsa2_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E923C, 0x5E933C - 0x5E923C

	.global Tsa3_EfxNormalEffectBG
Tsa3_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E933C, 0x5E944C - 0x5E933C

	.global Tsa4_EfxNormalEffectBG
Tsa4_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E944C, 0x5E9558 - 0x5E944C

	.global Tsa5_EfxNormalEffectBG
Tsa5_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E9558, 0x5E965C - 0x5E9558

	.global Tsa6_EfxNormalEffectBG
Tsa6_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E965C, 0x5E9748 - 0x5E965C

	.global Tsa7_EfxNormalEffectBG
Tsa7_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E9748, 0x5E981C - 0x5E9748

	.global Tsa8_EfxNormalEffectBG
Tsa8_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E981C, 0x5E98D8 - 0x5E981C

	.global Tsa9_EfxNormalEffectBG
Tsa9_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E98D8, 0x5E9980 - 0x5E98D8

	.global TsaA_EfxNormalEffectBG
TsaA_EfxNormalEffectBG:
    .incbin "baserom.gba", 0x5E9980, 0x5EAB58 - 0x5E9980

	.global gUnknown_085EAB58
gUnknown_085EAB58:  @ 0x085EAB58
@ Replacing .incbin "baserom.gba", 0x5EAB58, 0x104
    .4byte Pal_EfxNormalEffectBG + 0x8c9
    .4byte Pal_EfxNormalEffectBG + 0x8ed
    .4byte Pal_EfxNormalEffectBG + 0x929
    .4byte Pal_EfxNormalEffectBG + 0x965
    .4byte Pal_EfxNormalEffectBG + 0x995
    .4byte Pal_EfxNormalEffectBG + 0x9d1
    .4byte Pal_EfxNormalEffectBG + 0xa0d
    .4byte Pal_EfxNormalEffectBG + 0xa49
    .4byte Pal_EfxNormalEffectBG + 0xa6d
    .4byte Pal_EfxNormalEffectBG + 0xaa9
    .4byte Pal_EfxNormalEffectBG + 0xae5
    .4byte Pal_EfxNormalEffectBG + 0xb21
    .4byte Pal_EfxNormalEffectBG + 0xb5d
    .4byte Pal_EfxNormalEffectBG + 0xb99
    .4byte Pal_EfxNormalEffectBG + 0xbd5
    .4byte Pal_EfxNormalEffectBG + 0xc05
    .4byte Pal_EfxNormalEffectBG + 0xc41
    .4byte Pal_EfxNormalEffectBG + 0xc7d
    .4byte Pal_EfxNormalEffectBG + 0xcb9
    .4byte Pal_EfxNormalEffectBG + 0xce9
    .4byte Pal_EfxNormalEffectBG + 0xd25
    .4byte Pal_EfxNormalEffectBG + 0xd61
    .4byte Pal_EfxNormalEffectBG + 0xd85
    .4byte Pal_EfxNormalEffectBG + 0xdc1
    .4byte Pal_EfxNormalEffectBG + 0xdfd
    .4byte Pal_EfxNormalEffectBG + 0xe39
    .4byte Pal_EfxNormalEffectBG + 0xe75
    .4byte Pal_EfxNormalEffectBG + 0xeb1
    .4byte Pal_EfxNormalEffectBG + 0xeed
    .4byte Pal_EfxNormalEffectBG + 0xf29
    .4byte Pal_EfxNormalEffectBG + 0xf65
    .4byte Pal_EfxNormalEffectBG + 0xfa1
    .4byte Pal_EfxNormalEffectBG + 0xfdd
    .4byte Pal_EfxNormalEffectBG + 0x1019
    .4byte Pal_EfxNormalEffectBG + 0x1055
    .4byte Pal_EfxNormalEffectBG + 0x1091
    .4byte Pal_EfxNormalEffectBG + 0x10c1
    .4byte Pal_EfxNormalEffectBG + 0x10fd
    .4byte Pal_EfxNormalEffectBG + 0x1139
    .4byte Pal_EfxNormalEffectBG + 0x1175
    .4byte Pal_EfxNormalEffectBG + 0x11b1
    .4byte Pal_EfxNormalEffectBG + 0x11ed
    .4byte Pal_EfxNormalEffectBG + 0x1229
    .4byte Pal_EfxNormalEffectBG + 0x1265
    .4byte Pal_EfxNormalEffectBG + 0x12a1
    .4byte Pal_EfxNormalEffectBG + 0x12dd
    .4byte Pal_EfxNormalEffectBG + 0x1319
    .4byte Pal_EfxNormalEffectBG + 0x1355
    .4byte Pal_EfxNormalEffectBG + 0x1391
    .4byte Pal_EfxNormalEffectBG + 0x13cd
    .4byte Pal_EfxNormalEffectBG + 0x140a
    .4byte Pal_EfxNormalEffectBG + 0x1445
    .4byte Pal_EfxNormalEffectBG + 0x1481
    .4byte Pal_EfxNormalEffectBG + 0x14bd
    .4byte Pal_EfxNormalEffectBG + 0x14fa
    .4byte Pal_EfxNormalEffectBG + 0x1535
    .4byte Pal_EfxNormalEffectBG + 0x1571
    .4byte Pal_EfxNormalEffectBG + 0x15ad
    .4byte Pal_EfxNormalEffectBG + 0x15de
    .4byte Pal_EfxNormalEffectBG + 0x1619
    .4byte Pal_EfxNormalEffectBG + 0x1655
    .4byte Pal_EfxNormalEffectBG + 0x1691
    .4byte Pal_EfxNormalEffectBG + 0x16c2
    .4byte Pal_EfxNormalEffectBG + 0x19f2
    .4byte 0x82000000

	.global gUnknown_085EAC5C
gUnknown_085EAC5C:  @ 0x085EAC5C
@ Replacing .incbin "baserom.gba", 0x5EAC5C, 0x28
    .4byte Pal_EfxNormalEffectBG + 0x16fd
    .4byte Pal_EfxNormalEffectBG + 0x1721
    .4byte Pal_EfxNormalEffectBG + 0x1745
    .4byte Pal_EfxNormalEffectBG + 0x1769
    .4byte Pal_EfxNormalEffectBG + 0x178d
    .4byte Pal_EfxNormalEffectBG + 0x17b1
    .4byte Pal_EfxNormalEffectBG + 0x17d5
    .4byte Pal_EfxNormalEffectBG + 0x17f9
    .4byte Pal_EfxNormalEffectBG + 0x181d
    .4byte 0x82000000

	.global gUnknown_085EAC84
gUnknown_085EAC84:  @ 0x085EAC84
@ Replacing .incbin "baserom.gba", 0x5EAC84, 0x1174
    .4byte Pal_EfxNormalEffectBG + 0x1841
    .4byte Pal_EfxNormalEffectBG + 0x1865
    .4byte Pal_EfxNormalEffectBG + 0x1889
    .4byte Pal_EfxNormalEffectBG + 0x18ae
    .4byte Pal_EfxNormalEffectBG + 0x18d2
    .4byte Pal_EfxNormalEffectBG + 0x18f6
    .4byte Pal_EfxNormalEffectBG + 0x191a
    .4byte Pal_EfxNormalEffectBG + 0x193e
    .4byte Pal_EfxNormalEffectBG + 0x1962
    .4byte Pal_EfxNormalEffectBG + 0x1986
    .4byte Pal_EfxNormalEffectBG + 0x19aa
    .4byte Pal_EfxNormalEffectBG + 0x19ce
    .4byte 0x82000000
    .4byte 0xb0000000
    .4byte 0x0000001c
    .4byte 0x0000ffcd
    .4byte 0x20000000
    .4byte 0x000b009f
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffbf00f7
    .4byte 0xff09ffbf
    .4byte 0xffff0002
    .4byte 0xff9500e8
    .4byte 0xff18ff95
    .4byte 0x80000100
    .4byte 0xffff001c
    .4byte 0x0000ffca
    .4byte 0x02000100
    .4byte 0x000f009f
    .4byte 0x0000ffe2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3d00a4
    .4byte 0xff5cff3d
    .4byte 0xffff0002
    .4byte 0xff4c00b5
    .4byte 0xff4bff4c
    .4byte 0x80000100
    .4byte 0xffff001c
    .4byte 0x0000ffc8
    .4byte 0x02000100
    .4byte 0x0015009f
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0x80000100
    .4byte 0xffff001c
    .4byte 0x0000ffc6
    .4byte 0x00000100
    .4byte 0x0017009f
    .4byte 0x0000ffd6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff09ffbf
    .4byte 0x0041ff09
    .4byte 0xffff0002
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0x80000100
    .4byte 0x0000001c
    .4byte 0x0000ffc4
    .4byte 0x02000100
    .4byte 0x0018009f
    .4byte 0x0000ffcc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff2eff6e
    .4byte 0x0092ff2e
    .4byte 0xffff0002
    .4byte 0xff36ff63
    .4byte 0x009dff36
    .4byte 0x80000100
    .4byte 0x0000001c
    .4byte 0x0000ffc2
    .4byte 0x02000100
    .4byte 0x0016009f
    .4byte 0x0000ffc6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff94ff19
    .4byte 0x00e7ff94
    .4byte 0xffff0002
    .4byte 0xff8cff1d
    .4byte 0x00e3ff8c
    .4byte 0x80000100
    .4byte 0x0001001c
    .4byte 0x0000ffc0
    .4byte 0x02000100
    .4byte 0x0011009f
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0002001c
    .4byte 0x0000ffbe
    .4byte 0x00000000
    .4byte 0x000d009f
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x0001001c
    .4byte 0x0000ffbc
    .4byte 0x02000100
    .4byte 0x0007009f
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00bbff52
    .4byte 0x00ae00bb
    .4byte 0xffff0002
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb9
    .4byte 0x02000100
    .4byte 0x0004009f
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f0ffa9
    .4byte 0x005700f0
    .4byte 0xffff0002
    .4byte 0x00f2ffad
    .4byte 0x005300f2
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb6
    .4byte 0x02000100
    .4byte 0x0002009f
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f70042
    .4byte 0xffbe00f7
    .4byte 0xffff0002
    .4byte 0x00ff000d
    .4byte 0xfff300ff
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb4
    .4byte 0x02000100
    .4byte 0x0002009f
    .4byte 0x0000ffc4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00d10092
    .4byte 0xff6e00d1
    .4byte 0xffff0002
    .4byte 0x00cc0099
    .4byte 0xff6700cc
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb1
    .4byte 0x02000100
    .4byte 0x0004009f
    .4byte 0x0000ffc5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x008000dd
    .4byte 0xff230080
    .4byte 0xffff0002
    .4byte 0x008700d8
    .4byte 0xff280087
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffaf
    .4byte 0x02000100
    .4byte 0x0008009f
    .4byte 0x0000ffc6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffad
    .4byte 0x00000100
    .4byte 0x0010009f
    .4byte 0x0000ffc5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0xff9900ea
    .4byte 0xff16ff99
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffaa
    .4byte 0x02000100
    .4byte 0x0014009f
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3d00a4
    .4byte 0xff5cff3d
    .4byte 0xffff0002
    .4byte 0xff4c00b5
    .4byte 0xff4bff4c
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa8
    .4byte 0x02000100
    .4byte 0x0018009f
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa5
    .4byte 0x02000100
    .4byte 0x001b009f
    .4byte 0x0000ffb5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa2
    .4byte 0x00000100
    .4byte 0x001a009f
    .4byte 0x0000ffa9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3cff5c
    .4byte 0x00a4ff3c
    .4byte 0xffff0002
    .4byte 0xff36ff63
    .4byte 0x009dff36
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa1
    .4byte 0x02000100
    .4byte 0x0018009f
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff94ff19
    .4byte 0x00e7ff94
    .4byte 0xffff0002
    .4byte 0xff8cff1d
    .4byte 0x00e3ff8c
    .4byte 0x80000100
    .4byte 0x0004001c
    .4byte 0x0000ffa0
    .4byte 0x02000100
    .4byte 0x0015009f
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0004001c
    .4byte 0x0000ff9e
    .4byte 0x00000000
    .4byte 0x000f009f
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x0004001c
    .4byte 0x0000ff9c
    .4byte 0x02000100
    .4byte 0x000a009f
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c4ff5c
    .4byte 0x00a400c4
    .4byte 0xffff0002
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x0005001c
    .4byte 0x0000ff9a
    .4byte 0x02000100
    .4byte 0x0007009f
    .4byte 0x0000ff9e
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f7ffbe
    .4byte 0x004200f7
    .4byte 0xffff0002
    .4byte 0x00f2ffad
    .4byte 0x005300f2
    .4byte 0x80000100
    .4byte 0x0005001c
    .4byte 0x0000ff9a
    .4byte 0x02000100
    .4byte 0x0004009f
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00e8006b
    .4byte 0xff9500e8
    .4byte 0xffff0002
    .4byte 0x00ff000d
    .4byte 0xfff300ff
    .4byte 0x80000100
    .4byte 0x0005001c
    .4byte 0x0000ff9a
    .4byte 0x02000100
    .4byte 0x0005009f
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c400a4
    .4byte 0xff5c00c4
    .4byte 0xffff0002
    .4byte 0x00cc0099
    .4byte 0xff6700cc
    .4byte 0x80000100
    .4byte 0x0006001c
    .4byte 0x0000ff98
    .4byte 0x02000100
    .4byte 0x0009009f
    .4byte 0x0000ffad
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x005700f0
    .4byte 0xff100057
    .4byte 0xffff0002
    .4byte 0x008700d8
    .4byte 0xff280087
    .4byte 0x80000100
    .4byte 0x0006001c
    .4byte 0x0000ff97
    .4byte 0x02000100
    .4byte 0x000e009f
    .4byte 0x0000ffaf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002c00fc
    .4byte 0xff04002c
    .4byte 0xffff0002
    .4byte 0x001b00fe
    .4byte 0xff02001b
    .4byte 0x80000100
    .4byte 0x0006001c
    .4byte 0x0000ff97
    .4byte 0x02000100
    .4byte 0x0011009f
    .4byte 0x0000ffb0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x80000100
    .4byte 0x0007001c
    .4byte 0x0000ff96
    .4byte 0x02000100
    .4byte 0x0016009f
    .4byte 0x0000ffae
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0xff9900ea
    .4byte 0xff16ff99
    .4byte 0x80000100
    .4byte 0x0007001c
    .4byte 0x0000ff95
    .4byte 0x02000100
    .4byte 0x0018009f
    .4byte 0x0000ffad
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0xffff0002
    .4byte 0xff6e00d1
    .4byte 0xff2fff6e
    .4byte 0x80000100
    .4byte 0x0008001c
    .4byte 0x0000ff95
    .4byte 0x02000100
    .4byte 0x001b009f
    .4byte 0x0000ffac
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5c00c4
    .4byte 0xff3cff5c
    .4byte 0xffff0002
    .4byte 0xff4c00b5
    .4byte 0xff4bff4c
    .4byte 0x80000100
    .4byte 0x0008001c
    .4byte 0x0000ff95
    .4byte 0x02000100
    .4byte 0x001c009f
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0008001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x001f009f
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0xffff0002
    .4byte 0xff0f0053
    .4byte 0xffadff0f
    .4byte 0x80000100
    .4byte 0x0009001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x0020009f
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff010000
    .4byte 0x0000ff01
    .4byte 0x80000100
    .4byte 0x0009001c
    .4byte 0x0000ff93
    .4byte 0x00000100
    .4byte 0x0021009f
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0xffff0002
    .4byte 0xff01ffeb
    .4byte 0x0015ff01
    .4byte 0x80000100
    .4byte 0x0009001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x0021009f
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0002
    .4byte 0xff22ff81
    .4byte 0x007fff22
    .4byte 0x80000100
    .4byte 0x000a001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x0021009f
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3cff5c
    .4byte 0x00a4ff3c
    .4byte 0xffff0002
    .4byte 0xff36ff63
    .4byte 0x009dff36
    .4byte 0x80000100
    .4byte 0x000a001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x001f009f
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff6dff2f
    .4byte 0x00d1ff6d
    .4byte 0xffff0002
    .4byte 0xff8cff1d
    .4byte 0x00e3ff8c
    .4byte 0x80000100
    .4byte 0x000a001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x001c009f
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffb1ff0d
    .4byte 0x00f3ffb1
    .4byte 0xffff0002
    .4byte 0xff8cff1d
    .4byte 0x00e3ff8c
    .4byte 0x80000100
    .4byte 0x000b001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x001b009f
    .4byte 0x0000ff94
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0xffff0002
    .4byte 0xfff2ff01
    .4byte 0x00fffff2
    .4byte 0x80000100
    .4byte 0x000b001c
    .4byte 0x0000ff94
    .4byte 0x02000100
    .4byte 0x001a009f
    .4byte 0x0000ff94
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x000b001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x0013009f
    .4byte 0x0000ff93
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x000c001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x0012009f
    .4byte 0x0000ff94
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x007fff23
    .4byte 0x00dd007f
    .4byte 0xffff0002
    .4byte 0x00abff42
    .4byte 0x00be00ab
    .4byte 0x80000100
    .4byte 0x000c001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x0010009f
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0xffff0002
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x000d001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x0010009f
    .4byte 0x0000ff96
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00d1ff6e
    .4byte 0x009200d1
    .4byte 0xffff0002
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x000d001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x000e009f
    .4byte 0x0000ff98
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f0ffa9
    .4byte 0x005700f0
    .4byte 0xffff0002
    .4byte 0x00e4ff8c
    .4byte 0x007400e4
    .4byte 0x80000100
    .4byte 0x000e001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x000e009f
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00ff0000
    .4byte 0x000000ff
    .4byte 0xffff0002
    .4byte 0x00ff0004
    .4byte 0xfffc00ff
    .4byte 0x80000100
    .4byte 0x000e001c
    .4byte 0x0000ff93
    .4byte 0x02000100
    .4byte 0x000d009f
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f70042
    .4byte 0xffbe00f7
    .4byte 0xffff0002
    .4byte 0x00ff000d
    .4byte 0xfff300ff
    .4byte 0x80000100
    .4byte 0x000f001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x000f009f
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00dd007f
    .4byte 0xff8100dd
    .4byte 0xffff0002
    .4byte 0x00cc0099
    .4byte 0xff6700cc
    .4byte 0x80000100
    .4byte 0x000f001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0011009f
    .4byte 0x0000ffa6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00b500b4
    .4byte 0xff4c00b5
    .4byte 0xffff0002
    .4byte 0x00b800b1
    .4byte 0xff4f00b8
    .4byte 0x80000100
    .4byte 0x000f001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0013009f
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x009300d1
    .4byte 0xff2f0093
    .4byte 0xffff0002
    .4byte 0x008700d8
    .4byte 0xff280087
    .4byte 0x80000100
    .4byte 0x0010001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0015009f
    .4byte 0x0000ffa9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x006c00e7
    .4byte 0xff19006c
    .4byte 0xffff0002
    .4byte 0x007400e3
    .4byte 0xff1d0074
    .4byte 0x80000100
    .4byte 0x0010001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0017009f
    .4byte 0x0000ffaa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002c00fc
    .4byte 0xff04002c
    .4byte 0xffff0002
    .4byte 0x001b00fe
    .4byte 0xff02001b
    .4byte 0x80000100
    .4byte 0x0011001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x001c009f
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x80000100
    .4byte 0x0011001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x001f009f
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0xff9900ea
    .4byte 0xff16ff99
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0023009f
    .4byte 0x0000ffaa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff6e00d1
    .4byte 0xff2fff6e
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x00000100
    .4byte 0x0026009f
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3d00a4
    .4byte 0xff5cff3d
    .4byte 0xffff0002
    .4byte 0xff4c00b5
    .4byte 0xff4bff4c
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0027009f
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x0029009f
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff090042
    .4byte 0xffbeff09
    .4byte 0xffff0002
    .4byte 0xff0f0053
    .4byte 0xffadff0f
    .4byte 0x80000100
    .4byte 0x0013001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x002b009f
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff010000
    .4byte 0x0000ff01
    .4byte 0x80000100
    .4byte 0x0014001c
    .4byte 0x0000ff92
    .4byte 0x00000100
    .4byte 0x002c009f
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0xffff0002
    .4byte 0xff010000
    .4byte 0x0000ff01
    .4byte 0x80000100
    .4byte 0x0015001c
    .4byte 0x0000ff92
    .4byte 0x02000100
    .4byte 0x002d009f
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0x80000100
    .4byte 0x0017001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x008000dd
    .4byte 0xff230080
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ff0000
    .4byte 0x000000ff
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbdff09
    .4byte 0x00f7ffbd
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0x80000100
    .4byte 0x001a001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff19006c
    .4byte 0xff94ff19
    .4byte 0x80000100
    .4byte 0x001a001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x80000100
    .4byte 0x001a001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c3
    .4byte 0xff3d00a4
    .4byte 0x80000100
    .4byte 0x001b001c
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x001b001c
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0x80000100
    .4byte 0x001c001c
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff22ff81
    .4byte 0x007fff22
    .4byte 0x80000100
    .4byte 0x001c001c
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0x80000100
    .4byte 0x001e001c
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff9500e8
    .4byte 0xff18ff95
    .4byte 0x80000100
    .4byte 0x001f001c
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0xff100057
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00f00057
    .4byte 0xffa900f0
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffaf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00f0ffa9
    .4byte 0x005700f0
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffb2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffba
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffc3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff8001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085EBDF8
gUnknown_085EBDF8:  @ 0x085EBDF8
@ Replacing .incbin "baserom.gba", 0x5EBDF8, 0x104
    .4byte gUnknown_085EAC84 + 0x35
    .4byte gUnknown_085EAC84 + 0x59
    .4byte gUnknown_085EAC84 + 0x95
    .4byte gUnknown_085EAC84 + 0xd1
    .4byte gUnknown_085EAC84 + 0x101
    .4byte gUnknown_085EAC84 + 0x13d
    .4byte gUnknown_085EAC84 + 0x179
    .4byte gUnknown_085EAC84 + 0x1b5
    .4byte gUnknown_085EAC84 + 0x1d9
    .4byte gUnknown_085EAC84 + 0x215
    .4byte gUnknown_085EAC84 + 0x251
    .4byte gUnknown_085EAC84 + 0x28d
    .4byte gUnknown_085EAC84 + 0x2c9
    .4byte gUnknown_085EAC84 + 0x305
    .4byte gUnknown_085EAC84 + 0x341
    .4byte gUnknown_085EAC84 + 0x371
    .4byte gUnknown_085EAC84 + 0x3ad
    .4byte gUnknown_085EAC84 + 0x3e9
    .4byte gUnknown_085EAC84 + 0x425
    .4byte gUnknown_085EAC84 + 0x455
    .4byte gUnknown_085EAC84 + 0x491
    .4byte gUnknown_085EAC84 + 0x4cd
    .4byte gUnknown_085EAC84 + 0x4f1
    .4byte gUnknown_085EAC84 + 0x52d
    .4byte gUnknown_085EAC84 + 0x569
    .4byte gUnknown_085EAC84 + 0x5a5
    .4byte gUnknown_085EAC84 + 0x5e1
    .4byte gUnknown_085EAC84 + 0x61d
    .4byte gUnknown_085EAC84 + 0x659
    .4byte gUnknown_085EAC84 + 0x695
    .4byte gUnknown_085EAC84 + 0x6d1
    .4byte gUnknown_085EAC84 + 0x70d
    .4byte gUnknown_085EAC84 + 0x749
    .4byte gUnknown_085EAC84 + 0x785
    .4byte gUnknown_085EAC84 + 0x7c1
    .4byte gUnknown_085EAC84 + 0x7fd
    .4byte gUnknown_085EAC84 + 0x82d
    .4byte gUnknown_085EAC84 + 0x869
    .4byte gUnknown_085EAC84 + 0x8a5
    .4byte gUnknown_085EAC84 + 0x8e1
    .4byte gUnknown_085EAC84 + 0x91d
    .4byte gUnknown_085EAC84 + 0x959
    .4byte gUnknown_085EAC84 + 0x995
    .4byte gUnknown_085EAC84 + 0x9d1
    .4byte gUnknown_085EAC84 + 0xa0d
    .4byte gUnknown_085EAC84 + 0xa49
    .4byte gUnknown_085EAC84 + 0xa85
    .4byte gUnknown_085EAC84 + 0xac1
    .4byte gUnknown_085EAC84 + 0xafd
    .4byte gUnknown_085EAC84 + 0xb39
    .4byte gUnknown_085EAC84 + 0xb76
    .4byte gUnknown_085EAC84 + 0xbb1
    .4byte gUnknown_085EAC84 + 0xbed
    .4byte gUnknown_085EAC84 + 0xc29
    .4byte gUnknown_085EAC84 + 0xc66
    .4byte gUnknown_085EAC84 + 0xca1
    .4byte gUnknown_085EAC84 + 0xcdd
    .4byte gUnknown_085EAC84 + 0xd19
    .4byte gUnknown_085EAC84 + 0xd4a
    .4byte gUnknown_085EAC84 + 0xd85
    .4byte gUnknown_085EAC84 + 0xdc1
    .4byte gUnknown_085EAC84 + 0xdfd
    .4byte gUnknown_085EAC84 + 0xe2e
    .4byte gUnknown_085EAC84 + 0x115e
    .4byte 0x82000000

	.global gUnknown_085EBEFC
gUnknown_085EBEFC:  @ 0x085EBEFC
@ Replacing .incbin "baserom.gba", 0x5EBEFC, 0x28
    .4byte gUnknown_085EAC84 + 0xe69
    .4byte gUnknown_085EAC84 + 0xe8d
    .4byte gUnknown_085EAC84 + 0xeb1
    .4byte gUnknown_085EAC84 + 0xed5
    .4byte gUnknown_085EAC84 + 0xef9
    .4byte gUnknown_085EAC84 + 0xf1d
    .4byte gUnknown_085EAC84 + 0xf41
    .4byte gUnknown_085EAC84 + 0xf65
    .4byte gUnknown_085EAC84 + 0xf89
    .4byte 0x82000000

	.global gUnknown_085EBF24
gUnknown_085EBF24:  @ 0x085EBF24
@ Replacing .incbin "baserom.gba", 0x5EBF24, 0x11A4
    .4byte gUnknown_085EAC84 + 0xfad
    .4byte gUnknown_085EAC84 + 0xfd1
    .4byte gUnknown_085EAC84 + 0xff5
    .4byte gUnknown_085EAC84 + 0x101a
    .4byte gUnknown_085EAC84 + 0x103e
    .4byte gUnknown_085EAC84 + 0x1062
    .4byte gUnknown_085EAC84 + 0x1086
    .4byte gUnknown_085EAC84 + 0x10aa
    .4byte gUnknown_085EAC84 + 0x10ce
    .4byte gUnknown_085EAC84 + 0x10f2
    .4byte gUnknown_085EAC84 + 0x1116
    .4byte gUnknown_085EAC84 + 0x113a
    .4byte 0x82000000
    .4byte 0xa0000000
    .4byte 0xffe0001c
    .4byte 0x0000ffcd
    .4byte 0x60000000
    .4byte 0xffe7003a
    .4byte 0x0000ffdb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffbfff09
    .4byte 0xff090041
    .4byte 0xffff0002
    .4byte 0xffd4ff04
    .4byte 0xff04002c
    .4byte 0x80000100
    .4byte 0xffe1001c
    .4byte 0x0000ffca
    .4byte 0x42000100
    .4byte 0xffe8003a
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3dff5c
    .4byte 0xff5c00c3
    .4byte 0xffff0002
    .4byte 0xff3aff5f
    .4byte 0xff5f00c6
    .4byte 0x80000100
    .4byte 0xffe1001c
    .4byte 0x0000ffc8
    .4byte 0x42000100
    .4byte 0xffe4003a
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff10ffa8
    .4byte 0xffa800f0
    .4byte 0xffff0002
    .4byte 0xff21ff84
    .4byte 0xff8400df
    .4byte 0x80000100
    .4byte 0xffe1001c
    .4byte 0x0000ffc6
    .4byte 0x42000100
    .4byte 0xffe3003a
    .4byte 0x0000ffd1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff090041
    .4byte 0x004100f7
    .4byte 0xffff0002
    .4byte 0xff160067
    .4byte 0x006700ea
    .4byte 0x80000100
    .4byte 0xffe0001c
    .4byte 0x0000ffc4
    .4byte 0x42000100
    .4byte 0xffe0003a
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff2e0092
    .4byte 0x009200d2
    .4byte 0xffff0002
    .4byte 0xff4200aa
    .4byte 0x00aa00be
    .4byte 0x80000100
    .4byte 0xffe0001c
    .4byte 0x0000ffc2
    .4byte 0x42000100
    .4byte 0xffe2003a
    .4byte 0x0000ffc6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff9400e7
    .4byte 0x00e7006c
    .4byte 0xffff0002
    .4byte 0xff8400df
    .4byte 0x00df007c
    .4byte 0x80000100
    .4byte 0xffdf001c
    .4byte 0x0000ffc0
    .4byte 0x42000100
    .4byte 0xffe4003a
    .4byte 0x0000ffc1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffde001c
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0xffe6003a
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x005700f0
    .4byte 0x00f0ffa9
    .4byte 0xffff0002
    .4byte 0x006800e9
    .4byte 0x00e9ff98
    .4byte 0x80000100
    .4byte 0xffdf001c
    .4byte 0x0000ffbc
    .4byte 0x42000100
    .4byte 0xffea003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00bb00ae
    .4byte 0x00aeff45
    .4byte 0xffff0002
    .4byte 0x00a400c4
    .4byte 0x00c4ff5c
    .4byte 0x80000100
    .4byte 0xffde001c
    .4byte 0x0000ffb9
    .4byte 0x42000100
    .4byte 0xffea003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f00057
    .4byte 0x0057ff10
    .4byte 0xffff0002
    .4byte 0x00be00ab
    .4byte 0x00abff42
    .4byte 0x80000100
    .4byte 0xffde001c
    .4byte 0x0000ffb6
    .4byte 0x42000100
    .4byte 0xffec003a
    .4byte 0x0000ffbc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f7ffbe
    .4byte 0xffbeff09
    .4byte 0xffff0002
    .4byte 0x00fe001a
    .4byte 0x001aff02
    .4byte 0x80000100
    .4byte 0xffde001c
    .4byte 0x0000ffb4
    .4byte 0x42000100
    .4byte 0xffed003a
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00d1ff6e
    .4byte 0xff6eff2f
    .4byte 0xffff0002
    .4byte 0x00ddff81
    .4byte 0xff81ff23
    .4byte 0x80000100
    .4byte 0xffde001c
    .4byte 0x0000ffb1
    .4byte 0x42000100
    .4byte 0xffec003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0080ff23
    .4byte 0xff23ff80
    .4byte 0xffff0002
    .4byte 0x007cff21
    .4byte 0xff21ff84
    .4byte 0x80000100
    .4byte 0xffde001c
    .4byte 0x0000ffaf
    .4byte 0x42000100
    .4byte 0xffea003a
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0000ff01
    .4byte 0xff010000
    .4byte 0xffff0002
    .4byte 0xfff4ff01
    .4byte 0xff01000c
    .4byte 0x80000100
    .4byte 0xffde001c
    .4byte 0x0000ffad
    .4byte 0x42000100
    .4byte 0xffe6003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0xffff0002
    .4byte 0xffd4ff04
    .4byte 0xff04002c
    .4byte 0x80000100
    .4byte 0xffdd001c
    .4byte 0x0000ffaa
    .4byte 0x42000100
    .4byte 0xffe3003a
    .4byte 0x0000ffb9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3dff5c
    .4byte 0xff5c00c3
    .4byte 0xffff0002
    .4byte 0xff3aff5f
    .4byte 0xff5f00c6
    .4byte 0x80000100
    .4byte 0xffdd001c
    .4byte 0x0000ffa8
    .4byte 0x42000100
    .4byte 0xffe0003a
    .4byte 0x0000ffb5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff10ffa8
    .4byte 0xffa800f0
    .4byte 0xffff0002
    .4byte 0xff21ff84
    .4byte 0xff8400df
    .4byte 0x80000100
    .4byte 0xffdd001c
    .4byte 0x0000ffa5
    .4byte 0x42000100
    .4byte 0xffdf003a
    .4byte 0x0000ffb0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100056
    .4byte 0x005600f0
    .4byte 0xffff0002
    .4byte 0xff160067
    .4byte 0x006700ea
    .4byte 0x80000100
    .4byte 0xffdd001c
    .4byte 0x0000ffa2
    .4byte 0x42000100
    .4byte 0xffde003a
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3c00a4
    .4byte 0x00a400c4
    .4byte 0xffff0002
    .4byte 0xff4200aa
    .4byte 0x00aa00be
    .4byte 0x80000100
    .4byte 0xffdd001c
    .4byte 0x0000ffa1
    .4byte 0x42000100
    .4byte 0xffe0003a
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff9400e7
    .4byte 0x00e7006c
    .4byte 0xffff0002
    .4byte 0xff8400df
    .4byte 0x00df007c
    .4byte 0x80000100
    .4byte 0xffdc001c
    .4byte 0x0000ffa0
    .4byte 0x42000100
    .4byte 0xffe1003a
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xffdc001c
    .4byte 0x0000ff9e
    .4byte 0x40000000
    .4byte 0xffe4003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x005700f0
    .4byte 0x00f0ffa9
    .4byte 0xffff0002
    .4byte 0x006800e9
    .4byte 0x00e9ff98
    .4byte 0x80000100
    .4byte 0xffdc001c
    .4byte 0x0000ff9c
    .4byte 0x42000100
    .4byte 0xffe6003a
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c400a4
    .4byte 0x00a4ff3c
    .4byte 0xffff0002
    .4byte 0x00a400c4
    .4byte 0x00c4ff5c
    .4byte 0x80000100
    .4byte 0xffdb001c
    .4byte 0x0000ff9a
    .4byte 0x42000100
    .4byte 0xffe8003a
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f70042
    .4byte 0x0042ff09
    .4byte 0xffff0002
    .4byte 0x00be00ab
    .4byte 0x00abff42
    .4byte 0x80000100
    .4byte 0xffdb001c
    .4byte 0x0000ff9a
    .4byte 0x42000100
    .4byte 0xffe9003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00e8ff95
    .4byte 0xff95ff18
    .4byte 0xffff0002
    .4byte 0x00ddff81
    .4byte 0xff81ff23
    .4byte 0x80000100
    .4byte 0xffdb001c
    .4byte 0x0000ff9a
    .4byte 0x42000100
    .4byte 0xffe9003a
    .4byte 0x0000ffa6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c4ff5c
    .4byte 0xff5cff3c
    .4byte 0xffff0002
    .4byte 0x007cff21
    .4byte 0xff21ff84
    .4byte 0x80000100
    .4byte 0xffda001c
    .4byte 0x0000ff98
    .4byte 0x42000100
    .4byte 0xffe7003a
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0x007cff21
    .4byte 0xff21ff84
    .4byte 0x80000100
    .4byte 0xffda001c
    .4byte 0x0000ff97
    .4byte 0x42000100
    .4byte 0xffe4003a
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002cff04
    .4byte 0xff04ffd4
    .4byte 0xffff0002
    .4byte 0x0039ff07
    .4byte 0xff07ffc7
    .4byte 0x80000100
    .4byte 0xffda001c
    .4byte 0x0000ff97
    .4byte 0x42000100
    .4byte 0xffe3003a
    .4byte 0x0000ffa6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd4ff04
    .4byte 0xff04002c
    .4byte 0xffff0002
    .4byte 0xfff4ff01
    .4byte 0xff01000c
    .4byte 0x80000100
    .4byte 0xffd9001c
    .4byte 0x0000ff96
    .4byte 0x42000100
    .4byte 0xffe0003a
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0xffff0002
    .4byte 0xffd4ff04
    .4byte 0xff04002c
    .4byte 0x80000100
    .4byte 0xffd9001c
    .4byte 0x0000ff95
    .4byte 0x42000100
    .4byte 0xffdf003a
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff81ff23
    .4byte 0xff23007f
    .4byte 0xffff0002
    .4byte 0xff9dff15
    .4byte 0xff150063
    .4byte 0x80000100
    .4byte 0xffd8001c
    .4byte 0x0000ff95
    .4byte 0x42000100
    .4byte 0xffdc003a
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5cff3c
    .4byte 0xff3c00a4
    .4byte 0xffff0002
    .4byte 0xff3aff5f
    .4byte 0xff5f00c6
    .4byte 0x80000100
    .4byte 0xffd8001c
    .4byte 0x0000ff95
    .4byte 0x42000100
    .4byte 0xffdc003a
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0xffff0002
    .4byte 0xff3aff5f
    .4byte 0xff5f00c6
    .4byte 0x80000100
    .4byte 0xffd8001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffdb003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff10ffa8
    .4byte 0xffa800f0
    .4byte 0xffff0002
    .4byte 0xff21ff84
    .4byte 0xff8400df
    .4byte 0x80000100
    .4byte 0xffd7001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffd9003a
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff010000
    .4byte 0x000000ff
    .4byte 0xffff0002
    .4byte 0xff08003d
    .4byte 0x003d00f8
    .4byte 0x80000100
    .4byte 0xffd7001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffd9003a
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff04002b
    .4byte 0x002b00fc
    .4byte 0xffff0002
    .4byte 0xff08003d
    .4byte 0x003d00f8
    .4byte 0x80000100
    .4byte 0xffd7001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffd8003a
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100056
    .4byte 0x005600f0
    .4byte 0xffff0002
    .4byte 0xff160067
    .4byte 0x006700ea
    .4byte 0x80000100
    .4byte 0xffd6001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffd8003a
    .4byte 0x0000ff9a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3c00a4
    .4byte 0x00a400c4
    .4byte 0xffff0002
    .4byte 0xff4200aa
    .4byte 0x00aa00be
    .4byte 0x80000100
    .4byte 0xffd6001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffd8003a
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff6d00d1
    .4byte 0x00d10093
    .4byte 0xffff0002
    .4byte 0xff8400df
    .4byte 0x00df007c
    .4byte 0x80000100
    .4byte 0xffd6001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffda003a
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffb100f3
    .4byte 0x00f3004f
    .4byte 0xffff0002
    .4byte 0xff8400df
    .4byte 0x00df007c
    .4byte 0x80000100
    .4byte 0xffd5001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffdb003a
    .4byte 0x0000ff96
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd300fb
    .4byte 0x00fb002d
    .4byte 0xffff0002
    .4byte 0xffc600f9
    .4byte 0x00f9003a
    .4byte 0x80000100
    .4byte 0xffd5001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0xffdc003a
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002c00fc
    .4byte 0x00fcffd4
    .4byte 0xffff0002
    .4byte 0x003500fa
    .4byte 0x00faffcb
    .4byte 0x80000100
    .4byte 0xffd5001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffde003a
    .4byte 0x0000ff93
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x005700f0
    .4byte 0x00f0ffa9
    .4byte 0xffff0002
    .4byte 0x003500fa
    .4byte 0x00faffcb
    .4byte 0x80000100
    .4byte 0xffd4001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffdf003a
    .4byte 0x0000ff94
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x007f00dd
    .4byte 0x00ddff81
    .4byte 0xffff0002
    .4byte 0x006800e9
    .4byte 0x00e9ff98
    .4byte 0x80000100
    .4byte 0xffd4001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffdf003a
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c4
    .4byte 0x00c4ff5c
    .4byte 0x80000100
    .4byte 0xffd3001c
    .4byte 0x0000ff93
    .4byte 0x40000100
    .4byte 0xffdf003a
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00d10092
    .4byte 0x0092ff2f
    .4byte 0xffff0002
    .4byte 0x00be00ab
    .4byte 0x00abff42
    .4byte 0x80000100
    .4byte 0xffd3001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffe0003a
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f00057
    .4byte 0x0057ff10
    .4byte 0xffff0002
    .4byte 0x00dd0080
    .4byte 0x0080ff23
    .4byte 0x80000100
    .4byte 0xffd2001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffe1003a
    .4byte 0x0000ff98
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00ff0000
    .4byte 0x0000ff01
    .4byte 0xffff0002
    .4byte 0x00fe001a
    .4byte 0x001aff02
    .4byte 0x80000100
    .4byte 0xffd2001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0xffe2003a
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f7ffbe
    .4byte 0xffbeff09
    .4byte 0xffff0002
    .4byte 0x00fe001a
    .4byte 0x001aff02
    .4byte 0x80000100
    .4byte 0xffd1001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffdf003a
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ddff81
    .4byte 0xff81ff23
    .4byte 0x80000100
    .4byte 0xffd1001c
    .4byte 0x0000ff92
    .4byte 0x40000100
    .4byte 0xffdf003a
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00b5ff4c
    .4byte 0xff4cff4b
    .4byte 0xffff0002
    .4byte 0x007cff21
    .4byte 0xff21ff84
    .4byte 0x80000100
    .4byte 0xffd1001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffde003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0093ff2f
    .4byte 0xff2fff6d
    .4byte 0xffff0002
    .4byte 0x007cff21
    .4byte 0xff21ff84
    .4byte 0x80000100
    .4byte 0xffd0001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffdd003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x006cff19
    .4byte 0xff19ff94
    .4byte 0xffff0002
    .4byte 0x007cff21
    .4byte 0xff21ff84
    .4byte 0x80000100
    .4byte 0xffd0001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffdb003a
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002cff04
    .4byte 0xff04ffd4
    .4byte 0xffff0002
    .4byte 0x0053ff0f
    .4byte 0xff0fffad
    .4byte 0x80000100
    .4byte 0xffcf001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffd9003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd4ff04
    .4byte 0xff04002c
    .4byte 0xffff0002
    .4byte 0xfff4ff01
    .4byte 0xff01000c
    .4byte 0x80000100
    .4byte 0xffcf001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffd6003a
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0xffff0002
    .4byte 0xffd4ff04
    .4byte 0xff04002c
    .4byte 0x80000100
    .4byte 0xffce001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffd3003a
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff6eff2f
    .4byte 0xff2f0092
    .4byte 0xffff0002
    .4byte 0xff3aff5f
    .4byte 0xff5f00c6
    .4byte 0x80000100
    .4byte 0xffce001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffd2003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3dff5c
    .4byte 0xff5c00c3
    .4byte 0xffff0002
    .4byte 0xff3aff5f
    .4byte 0xff5f00c6
    .4byte 0x80000100
    .4byte 0xffce001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffd1003a
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0xffff0002
    .4byte 0xff21ff84
    .4byte 0xff8400df
    .4byte 0x80000100
    .4byte 0xffce001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffd0003a
    .4byte 0x0000ff9e
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff09ffbe
    .4byte 0xffbe00f7
    .4byte 0xffff0002
    .4byte 0xff21ff84
    .4byte 0xff8400df
    .4byte 0x80000100
    .4byte 0xffcd001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffce003a
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff010000
    .4byte 0x000000ff
    .4byte 0xffff0002
    .4byte 0xff030023
    .4byte 0x002300fd
    .4byte 0x80000100
    .4byte 0xffcc001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffcc003a
    .4byte 0x0000ff9a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff04002b
    .4byte 0x002b00fc
    .4byte 0xffff0002
    .4byte 0xff030023
    .4byte 0x002300fd
    .4byte 0x80000100
    .4byte 0xffcb001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0xffcc003a
    .4byte 0x0000ff99
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff81ff23
    .4byte 0xff23007f
    .4byte 0x80000100
    .4byte 0xffc9001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000ff01
    .4byte 0xff010000
    .4byte 0x80000100
    .4byte 0xffc7001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0080ff23
    .4byte 0xff23ff80
    .4byte 0x80000100
    .4byte 0xffc7001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ff0000
    .4byte 0x0000ff01
    .4byte 0x80000100
    .4byte 0xffc7001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00b400b5
    .4byte 0x00b5ff4c
    .4byte 0x80000100
    .4byte 0xffc7001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbd00f7
    .4byte 0x00f70043
    .4byte 0x80000100
    .4byte 0xffc7001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff100056
    .4byte 0x005600f0
    .4byte 0x80000100
    .4byte 0xffc6001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff19ff94
    .4byte 0xff9400e7
    .4byte 0x80000100
    .4byte 0xffc6001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0x80000100
    .4byte 0xffc6001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a4ff3d
    .4byte 0xff3dff5c
    .4byte 0x80000100
    .4byte 0xffc5001c
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00b400b5
    .4byte 0x00b5ff4c
    .4byte 0x80000100
    .4byte 0xffc5001c
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd300fb
    .4byte 0x00fb002d
    .4byte 0x80000100
    .4byte 0xffc4001c
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff22007f
    .4byte 0x007f00de
    .4byte 0x80000100
    .4byte 0xffc4001c
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff10ffa8
    .4byte 0xffa800f0
    .4byte 0x80000100
    .4byte 0xffc2001c
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff95ff18
    .4byte 0xff18006b
    .4byte 0x80000100
    .4byte 0xffc1001c
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0xff10ffa9
    .4byte 0x80000100
    .4byte 0xffc0001c
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00f0ffa9
    .4byte 0xffa9ff10
    .4byte 0x80000100
    .4byte 0xffc0001c
    .4byte 0x0000ffaf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00f00057
    .4byte 0x0057ff10
    .4byte 0x80000100
    .4byte 0xffc0001c
    .4byte 0x0000ffb2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0x00f0ffa9
    .4byte 0x80000100
    .4byte 0xffc0001c
    .4byte 0x0000ffba
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5b00c3
    .4byte 0x00c300a5
    .4byte 0x80000100
    .4byte 0xffc0001c
    .4byte 0x0000ffc3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0x80000100
    .4byte 0xffc0001c
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x0000001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085ED0C8
gUnknown_085ED0C8:  @ 0x085ED0C8
@ Replacing .incbin "baserom.gba", 0x5ED0C8, 0x104
    .4byte gUnknown_085EBF24 + 0x35
    .4byte gUnknown_085EBF24 + 0x59
    .4byte gUnknown_085EBF24 + 0x95
    .4byte gUnknown_085EBF24 + 0xd1
    .4byte gUnknown_085EBF24 + 0x10d
    .4byte gUnknown_085EBF24 + 0x149
    .4byte gUnknown_085EBF24 + 0x185
    .4byte gUnknown_085EBF24 + 0x1c1
    .4byte gUnknown_085EBF24 + 0x1e5
    .4byte gUnknown_085EBF24 + 0x221
    .4byte gUnknown_085EBF24 + 0x25d
    .4byte gUnknown_085EBF24 + 0x299
    .4byte gUnknown_085EBF24 + 0x2d5
    .4byte gUnknown_085EBF24 + 0x311
    .4byte gUnknown_085EBF24 + 0x34d
    .4byte gUnknown_085EBF24 + 0x389
    .4byte gUnknown_085EBF24 + 0x3c5
    .4byte gUnknown_085EBF24 + 0x401
    .4byte gUnknown_085EBF24 + 0x43d
    .4byte gUnknown_085EBF24 + 0x479
    .4byte gUnknown_085EBF24 + 0x4b5
    .4byte gUnknown_085EBF24 + 0x4f1
    .4byte gUnknown_085EBF24 + 0x515
    .4byte gUnknown_085EBF24 + 0x551
    .4byte gUnknown_085EBF24 + 0x58d
    .4byte gUnknown_085EBF24 + 0x5c9
    .4byte gUnknown_085EBF24 + 0x605
    .4byte gUnknown_085EBF24 + 0x641
    .4byte gUnknown_085EBF24 + 0x67d
    .4byte gUnknown_085EBF24 + 0x6b9
    .4byte gUnknown_085EBF24 + 0x6f5
    .4byte gUnknown_085EBF24 + 0x731
    .4byte gUnknown_085EBF24 + 0x76d
    .4byte gUnknown_085EBF24 + 0x7a9
    .4byte gUnknown_085EBF24 + 0x7e5
    .4byte gUnknown_085EBF24 + 0x821
    .4byte gUnknown_085EBF24 + 0x85d
    .4byte gUnknown_085EBF24 + 0x899
    .4byte gUnknown_085EBF24 + 0x8d5
    .4byte gUnknown_085EBF24 + 0x911
    .4byte gUnknown_085EBF24 + 0x94d
    .4byte gUnknown_085EBF24 + 0x989
    .4byte gUnknown_085EBF24 + 0x9c5
    .4byte gUnknown_085EBF24 + 0xa01
    .4byte gUnknown_085EBF24 + 0xa3d
    .4byte gUnknown_085EBF24 + 0xa79
    .4byte gUnknown_085EBF24 + 0xaa9
    .4byte gUnknown_085EBF24 + 0xae5
    .4byte gUnknown_085EBF24 + 0xb21
    .4byte gUnknown_085EBF24 + 0xb5d
    .4byte gUnknown_085EBF24 + 0xb9a
    .4byte gUnknown_085EBF24 + 0xbc9
    .4byte gUnknown_085EBF24 + 0xc05
    .4byte gUnknown_085EBF24 + 0xc41
    .4byte gUnknown_085EBF24 + 0xc7e
    .4byte gUnknown_085EBF24 + 0xcb9
    .4byte gUnknown_085EBF24 + 0xcf5
    .4byte gUnknown_085EBF24 + 0xd31
    .4byte gUnknown_085EBF24 + 0xd6e
    .4byte gUnknown_085EBF24 + 0xda9
    .4byte gUnknown_085EBF24 + 0xde5
    .4byte gUnknown_085EBF24 + 0xe21
    .4byte gUnknown_085EBF24 + 0xe5e
    .4byte gUnknown_085EBF24 + 0x118e
    .4byte 0x82000000

	.global gUnknown_085ED1CC
gUnknown_085ED1CC:  @ 0x085ED1CC
@ Replacing .incbin "baserom.gba", 0x5ED1CC, 0x28
    .4byte gUnknown_085EBF24 + 0xe99
    .4byte gUnknown_085EBF24 + 0xebd
    .4byte gUnknown_085EBF24 + 0xee1
    .4byte gUnknown_085EBF24 + 0xf05
    .4byte gUnknown_085EBF24 + 0xf29
    .4byte gUnknown_085EBF24 + 0xf4d
    .4byte gUnknown_085EBF24 + 0xf71
    .4byte gUnknown_085EBF24 + 0xf95
    .4byte gUnknown_085EBF24 + 0xfb9
    .4byte 0x82000000

	.global gUnknown_085ED1F4
gUnknown_085ED1F4:  @ 0x085ED1F4
@ Replacing .incbin "baserom.gba", 0x5ED1F4, 0x11A4
    .4byte gUnknown_085EBF24 + 0xfdd
    .4byte gUnknown_085EBF24 + 0x1001
    .4byte gUnknown_085EBF24 + 0x1025
    .4byte gUnknown_085EBF24 + 0x104a
    .4byte gUnknown_085EBF24 + 0x106e
    .4byte gUnknown_085EBF24 + 0x1092
    .4byte gUnknown_085EBF24 + 0x10b6
    .4byte gUnknown_085EBF24 + 0x10da
    .4byte gUnknown_085EBF24 + 0x10fe
    .4byte gUnknown_085EBF24 + 0x1122
    .4byte gUnknown_085EBF24 + 0x1146
    .4byte gUnknown_085EBF24 + 0x116a
    .4byte 0x82000000
    .4byte 0xb0000000
    .4byte 0x0000001c
    .4byte 0x0000ffcd
    .4byte 0x70000000
    .4byte 0x0009003a
    .4byte 0x0000ffdb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffbf00f7
    .4byte 0xff09ffbf
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0x80000100
    .4byte 0xffff001c
    .4byte 0x0000ffca
    .4byte 0x42000100
    .4byte 0x0008003a
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3d00a4
    .4byte 0xff5cff3d
    .4byte 0xffff0002
    .4byte 0xff3a00a1
    .4byte 0xff5fff3a
    .4byte 0x80000100
    .4byte 0xffff001c
    .4byte 0x0000ffc8
    .4byte 0x42000100
    .4byte 0x000c003a
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0xffff001c
    .4byte 0x0000ffc6
    .4byte 0x42000100
    .4byte 0x000d003a
    .4byte 0x0000ffd1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff09ffbf
    .4byte 0x0041ff09
    .4byte 0xffff0002
    .4byte 0xff16ff99
    .4byte 0x0067ff16
    .4byte 0x80000100
    .4byte 0x0000001c
    .4byte 0x0000ffc4
    .4byte 0x42000100
    .4byte 0x0010003a
    .4byte 0x0000ffca
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff2eff6e
    .4byte 0x0092ff2e
    .4byte 0xffff0002
    .4byte 0xff42ff56
    .4byte 0x00aaff42
    .4byte 0x80000100
    .4byte 0x0000001c
    .4byte 0x0000ffc2
    .4byte 0x42000100
    .4byte 0x000e003a
    .4byte 0x0000ffc6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff94ff19
    .4byte 0x00e7ff94
    .4byte 0xffff0002
    .4byte 0xff84ff21
    .4byte 0x00dfff84
    .4byte 0x80000100
    .4byte 0x0001001c
    .4byte 0x0000ffc0
    .4byte 0x42000100
    .4byte 0x000c003a
    .4byte 0x0000ffc1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0002001c
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0x000a003a
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x0001001c
    .4byte 0x0000ffbc
    .4byte 0x42000100
    .4byte 0x0006003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00bbff52
    .4byte 0x00ae00bb
    .4byte 0xffff0002
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb9
    .4byte 0x42000100
    .4byte 0x0006003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f0ffa9
    .4byte 0x005700f0
    .4byte 0xffff0002
    .4byte 0x00beff55
    .4byte 0x00ab00be
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb6
    .4byte 0x42000100
    .4byte 0x0004003a
    .4byte 0x0000ffbc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f70042
    .4byte 0xffbe00f7
    .4byte 0xffff0002
    .4byte 0x00feffe6
    .4byte 0x001a00fe
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb4
    .4byte 0x42000100
    .4byte 0x0003003a
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00d10092
    .4byte 0xff6e00d1
    .4byte 0xffff0002
    .4byte 0x00dd007f
    .4byte 0xff8100dd
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffb1
    .4byte 0x42000100
    .4byte 0x0004003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x008000dd
    .4byte 0xff230080
    .4byte 0xffff0002
    .4byte 0x007c00df
    .4byte 0xff21007c
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffaf
    .4byte 0x42000100
    .4byte 0x0006003a
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0xffff0002
    .4byte 0xfff400ff
    .4byte 0xff01fff4
    .4byte 0x80000100
    .4byte 0x0002001c
    .4byte 0x0000ffad
    .4byte 0x42000100
    .4byte 0x000a003a
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffaa
    .4byte 0x42000100
    .4byte 0x000d003a
    .4byte 0x0000ffb9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3d00a4
    .4byte 0xff5cff3d
    .4byte 0xffff0002
    .4byte 0xff3a00a1
    .4byte 0xff5fff3a
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa8
    .4byte 0x42000100
    .4byte 0x0010003a
    .4byte 0x0000ffb5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa5
    .4byte 0x42000100
    .4byte 0x0011003a
    .4byte 0x0000ffb0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0002
    .4byte 0xff16ff99
    .4byte 0x0067ff16
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa2
    .4byte 0x42000100
    .4byte 0x0012003a
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3cff5c
    .4byte 0x00a4ff3c
    .4byte 0xffff0002
    .4byte 0xff42ff56
    .4byte 0x00aaff42
    .4byte 0x80000100
    .4byte 0x0003001c
    .4byte 0x0000ffa1
    .4byte 0x42000100
    .4byte 0x0010003a
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff94ff19
    .4byte 0x00e7ff94
    .4byte 0xffff0002
    .4byte 0xff84ff21
    .4byte 0x00dfff84
    .4byte 0x80000100
    .4byte 0x0004001c
    .4byte 0x0000ffa0
    .4byte 0x42000100
    .4byte 0x000f003a
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0x0004001c
    .4byte 0x0000ff9e
    .4byte 0x50000000
    .4byte 0x000c003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x0004001c
    .4byte 0x0000ff9c
    .4byte 0x42000100
    .4byte 0x000a003a
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c4ff5c
    .4byte 0x00a400c4
    .4byte 0xffff0002
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x80000100
    .4byte 0x0005001c
    .4byte 0x0000ff9a
    .4byte 0x42000100
    .4byte 0x0008003a
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f7ffbe
    .4byte 0x004200f7
    .4byte 0xffff0002
    .4byte 0x00beff55
    .4byte 0x00ab00be
    .4byte 0x80000100
    .4byte 0x0005001c
    .4byte 0x0000ff9a
    .4byte 0x42000100
    .4byte 0x0007003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00e8006b
    .4byte 0xff9500e8
    .4byte 0xffff0002
    .4byte 0x00dd007f
    .4byte 0xff8100dd
    .4byte 0x80000100
    .4byte 0x0005001c
    .4byte 0x0000ff9a
    .4byte 0x42000100
    .4byte 0x0007003a
    .4byte 0x0000ffa6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c400a4
    .4byte 0xff5c00c4
    .4byte 0xffff0002
    .4byte 0x007c00df
    .4byte 0xff21007c
    .4byte 0x80000100
    .4byte 0x0006001c
    .4byte 0x0000ff98
    .4byte 0x42000100
    .4byte 0x0009003a
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x005700f0
    .4byte 0xff100057
    .4byte 0xffff0002
    .4byte 0x007c00df
    .4byte 0xff21007c
    .4byte 0x80000100
    .4byte 0x0006001c
    .4byte 0x0000ff97
    .4byte 0x42000100
    .4byte 0x000c003a
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002c00fc
    .4byte 0xff04002c
    .4byte 0xffff0002
    .4byte 0x003900f9
    .4byte 0xff070039
    .4byte 0x80000100
    .4byte 0x0006001c
    .4byte 0x0000ff97
    .4byte 0x42000100
    .4byte 0x000d003a
    .4byte 0x0000ffa6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0xffff0002
    .4byte 0xfff400ff
    .4byte 0xff01fff4
    .4byte 0x80000100
    .4byte 0x0007001c
    .4byte 0x0000ff96
    .4byte 0x42000100
    .4byte 0x0010003a
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0x80000100
    .4byte 0x0007001c
    .4byte 0x0000ff95
    .4byte 0x42000100
    .4byte 0x0011003a
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0xffff0002
    .4byte 0xff9d00eb
    .4byte 0xff15ff9d
    .4byte 0x80000100
    .4byte 0x0008001c
    .4byte 0x0000ff95
    .4byte 0x42000100
    .4byte 0x0014003a
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5c00c4
    .4byte 0xff3cff5c
    .4byte 0xffff0002
    .4byte 0xff3a00a1
    .4byte 0xff5fff3a
    .4byte 0x80000100
    .4byte 0x0008001c
    .4byte 0x0000ff95
    .4byte 0x42000100
    .4byte 0x0014003a
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0002
    .4byte 0xff3a00a1
    .4byte 0xff5fff3a
    .4byte 0x80000100
    .4byte 0x0008001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0015003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0009001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0017003a
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff010000
    .4byte 0x0000ff01
    .4byte 0xffff0002
    .4byte 0xff08ffc3
    .4byte 0x003dff08
    .4byte 0x80000100
    .4byte 0x0009001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x0017003a
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0xffff0002
    .4byte 0xff08ffc3
    .4byte 0x003dff08
    .4byte 0x80000100
    .4byte 0x0009001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x0018003a
    .4byte 0x0000ff9b
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0002
    .4byte 0xff16ff99
    .4byte 0x0067ff16
    .4byte 0x80000100
    .4byte 0x000a001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0018003a
    .4byte 0x0000ff9a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3cff5c
    .4byte 0x00a4ff3c
    .4byte 0xffff0002
    .4byte 0xff42ff56
    .4byte 0x00aaff42
    .4byte 0x80000100
    .4byte 0x000a001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0018003a
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff6dff2f
    .4byte 0x00d1ff6d
    .4byte 0xffff0002
    .4byte 0xff84ff21
    .4byte 0x00dfff84
    .4byte 0x80000100
    .4byte 0x000a001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0016003a
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffb1ff0d
    .4byte 0x00f3ffb1
    .4byte 0xffff0002
    .4byte 0xff84ff21
    .4byte 0x00dfff84
    .4byte 0x80000100
    .4byte 0x000b001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0015003a
    .4byte 0x0000ff96
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0xffff0002
    .4byte 0xffc6ff07
    .4byte 0x00f9ffc6
    .4byte 0x80000100
    .4byte 0x000b001c
    .4byte 0x0000ff94
    .4byte 0x42000100
    .4byte 0x0014003a
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0002
    .4byte 0x0035ff06
    .4byte 0x00fa0035
    .4byte 0x80000100
    .4byte 0x000b001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x0012003a
    .4byte 0x0000ff93
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0002
    .4byte 0x0035ff06
    .4byte 0x00fa0035
    .4byte 0x80000100
    .4byte 0x000c001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x0011003a
    .4byte 0x0000ff94
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x007fff23
    .4byte 0x00dd007f
    .4byte 0xffff0002
    .4byte 0x0068ff17
    .4byte 0x00e90068
    .4byte 0x80000100
    .4byte 0x000c001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x0011003a
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x80000100
    .4byte 0x000d001c
    .4byte 0x0000ff93
    .4byte 0x40000100
    .4byte 0x0011003a
    .4byte 0x0000ff95
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00d1ff6e
    .4byte 0x009200d1
    .4byte 0xffff0002
    .4byte 0x00beff55
    .4byte 0x00ab00be
    .4byte 0x80000100
    .4byte 0x000d001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x0010003a
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f0ffa9
    .4byte 0x005700f0
    .4byte 0xffff0002
    .4byte 0x00ddff80
    .4byte 0x008000dd
    .4byte 0x80000100
    .4byte 0x000e001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x000f003a
    .4byte 0x0000ff98
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00ff0000
    .4byte 0x000000ff
    .4byte 0xffff0002
    .4byte 0x00feffe6
    .4byte 0x001a00fe
    .4byte 0x80000100
    .4byte 0x000e001c
    .4byte 0x0000ff93
    .4byte 0x42000100
    .4byte 0x000e003a
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f70042
    .4byte 0xffbe00f7
    .4byte 0xffff0002
    .4byte 0x00feffe6
    .4byte 0x001a00fe
    .4byte 0x80000100
    .4byte 0x000f001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0011003a
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00dd007f
    .4byte 0xff8100dd
    .4byte 0x80000100
    .4byte 0x000f001c
    .4byte 0x0000ff92
    .4byte 0x40000100
    .4byte 0x0011003a
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00b500b4
    .4byte 0xff4c00b5
    .4byte 0xffff0002
    .4byte 0x007c00df
    .4byte 0xff21007c
    .4byte 0x80000100
    .4byte 0x000f001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0012003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x009300d1
    .4byte 0xff2f0093
    .4byte 0xffff0002
    .4byte 0x007c00df
    .4byte 0xff21007c
    .4byte 0x80000100
    .4byte 0x0010001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0013003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x006c00e7
    .4byte 0xff19006c
    .4byte 0xffff0002
    .4byte 0x007c00df
    .4byte 0xff21007c
    .4byte 0x80000100
    .4byte 0x0010001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0015003a
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002c00fc
    .4byte 0xff04002c
    .4byte 0xffff0002
    .4byte 0x005300f1
    .4byte 0xff0f0053
    .4byte 0x80000100
    .4byte 0x0011001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0017003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0xffff0002
    .4byte 0xfff400ff
    .4byte 0xff01fff4
    .4byte 0x80000100
    .4byte 0x0011001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x001a003a
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0xffff0002
    .4byte 0xffd400fc
    .4byte 0xff04ffd4
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x001d003a
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff6e00d1
    .4byte 0xff2fff6e
    .4byte 0xffff0002
    .4byte 0xff3a00a1
    .4byte 0xff5fff3a
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x001e003a
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff3d00a4
    .4byte 0xff5cff3d
    .4byte 0xffff0002
    .4byte 0xff3a00a1
    .4byte 0xff5fff3a
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x001f003a
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0012001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0020003a
    .4byte 0x0000ff9e
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff090042
    .4byte 0xffbeff09
    .4byte 0xffff0002
    .4byte 0xff21007c
    .4byte 0xff84ff21
    .4byte 0x80000100
    .4byte 0x0013001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0022003a
    .4byte 0x0000ff9c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff010000
    .4byte 0x0000ff01
    .4byte 0xffff0002
    .4byte 0xff03ffdd
    .4byte 0x0023ff03
    .4byte 0x80000100
    .4byte 0x0014001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0024003a
    .4byte 0x0000ff9a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0xffff0002
    .4byte 0xff03ffdd
    .4byte 0x0023ff03
    .4byte 0x80000100
    .4byte 0x0015001c
    .4byte 0x0000ff92
    .4byte 0x42000100
    .4byte 0x0024003a
    .4byte 0x0000ff99
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0x80000100
    .4byte 0x0017001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x008000dd
    .4byte 0xff230080
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ff0000
    .4byte 0x000000ff
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffbdff09
    .4byte 0x00f7ffbd
    .4byte 0x80000100
    .4byte 0x0019001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0x80000100
    .4byte 0x001a001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff19006c
    .4byte 0xff94ff19
    .4byte 0x80000100
    .4byte 0x001a001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x80000100
    .4byte 0x001a001c
    .4byte 0x0000ff9f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c3
    .4byte 0xff3d00a4
    .4byte 0x80000100
    .4byte 0x001b001c
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00b4ff4b
    .4byte 0x00b500b4
    .4byte 0x80000100
    .4byte 0x001b001c
    .4byte 0x0000ffa2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0x80000100
    .4byte 0x001c001c
    .4byte 0x0000ffa3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff22ff81
    .4byte 0x007fff22
    .4byte 0x80000100
    .4byte 0x001c001c
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff100058
    .4byte 0xffa8ff10
    .4byte 0x80000100
    .4byte 0x001e001c
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff9500e8
    .4byte 0xff18ff95
    .4byte 0x80000100
    .4byte 0x001f001c
    .4byte 0x0000ffa7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0xff100057
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00f00057
    .4byte 0xffa900f0
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffaf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00f0ffa9
    .4byte 0x005700f0
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffb2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffba
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffc3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0x80000100
    .4byte 0x0020001c
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff8001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085EE398
gUnknown_085EE398:  @ 0x085EE398
@ Replacing .incbin "baserom.gba", 0x5EE398, 0x104
    .4byte gUnknown_085ED1F4 + 0x35
    .4byte gUnknown_085ED1F4 + 0x59
    .4byte gUnknown_085ED1F4 + 0x95
    .4byte gUnknown_085ED1F4 + 0xd1
    .4byte gUnknown_085ED1F4 + 0x10d
    .4byte gUnknown_085ED1F4 + 0x149
    .4byte gUnknown_085ED1F4 + 0x185
    .4byte gUnknown_085ED1F4 + 0x1c1
    .4byte gUnknown_085ED1F4 + 0x1e5
    .4byte gUnknown_085ED1F4 + 0x221
    .4byte gUnknown_085ED1F4 + 0x25d
    .4byte gUnknown_085ED1F4 + 0x299
    .4byte gUnknown_085ED1F4 + 0x2d5
    .4byte gUnknown_085ED1F4 + 0x311
    .4byte gUnknown_085ED1F4 + 0x34d
    .4byte gUnknown_085ED1F4 + 0x389
    .4byte gUnknown_085ED1F4 + 0x3c5
    .4byte gUnknown_085ED1F4 + 0x401
    .4byte gUnknown_085ED1F4 + 0x43d
    .4byte gUnknown_085ED1F4 + 0x479
    .4byte gUnknown_085ED1F4 + 0x4b5
    .4byte gUnknown_085ED1F4 + 0x4f1
    .4byte gUnknown_085ED1F4 + 0x515
    .4byte gUnknown_085ED1F4 + 0x551
    .4byte gUnknown_085ED1F4 + 0x58d
    .4byte gUnknown_085ED1F4 + 0x5c9
    .4byte gUnknown_085ED1F4 + 0x605
    .4byte gUnknown_085ED1F4 + 0x641
    .4byte gUnknown_085ED1F4 + 0x67d
    .4byte gUnknown_085ED1F4 + 0x6b9
    .4byte gUnknown_085ED1F4 + 0x6f5
    .4byte gUnknown_085ED1F4 + 0x731
    .4byte gUnknown_085ED1F4 + 0x76d
    .4byte gUnknown_085ED1F4 + 0x7a9
    .4byte gUnknown_085ED1F4 + 0x7e5
    .4byte gUnknown_085ED1F4 + 0x821
    .4byte gUnknown_085ED1F4 + 0x85d
    .4byte gUnknown_085ED1F4 + 0x899
    .4byte gUnknown_085ED1F4 + 0x8d5
    .4byte gUnknown_085ED1F4 + 0x911
    .4byte gUnknown_085ED1F4 + 0x94d
    .4byte gUnknown_085ED1F4 + 0x989
    .4byte gUnknown_085ED1F4 + 0x9c5
    .4byte gUnknown_085ED1F4 + 0xa01
    .4byte gUnknown_085ED1F4 + 0xa3d
    .4byte gUnknown_085ED1F4 + 0xa79
    .4byte gUnknown_085ED1F4 + 0xaa9
    .4byte gUnknown_085ED1F4 + 0xae5
    .4byte gUnknown_085ED1F4 + 0xb21
    .4byte gUnknown_085ED1F4 + 0xb5d
    .4byte gUnknown_085ED1F4 + 0xb9a
    .4byte gUnknown_085ED1F4 + 0xbc9
    .4byte gUnknown_085ED1F4 + 0xc05
    .4byte gUnknown_085ED1F4 + 0xc41
    .4byte gUnknown_085ED1F4 + 0xc7e
    .4byte gUnknown_085ED1F4 + 0xcb9
    .4byte gUnknown_085ED1F4 + 0xcf5
    .4byte gUnknown_085ED1F4 + 0xd31
    .4byte gUnknown_085ED1F4 + 0xd6e
    .4byte gUnknown_085ED1F4 + 0xda9
    .4byte gUnknown_085ED1F4 + 0xde5
    .4byte gUnknown_085ED1F4 + 0xe21
    .4byte gUnknown_085ED1F4 + 0xe5e
    .4byte gUnknown_085ED1F4 + 0x118e
    .4byte 0x82000000

	.global gUnknown_085EE49C
gUnknown_085EE49C:  @ 0x085EE49C
@ Replacing .incbin "baserom.gba", 0x5EE49C, 0x28
    .4byte gUnknown_085ED1F4 + 0xe99
    .4byte gUnknown_085ED1F4 + 0xebd
    .4byte gUnknown_085ED1F4 + 0xee1
    .4byte gUnknown_085ED1F4 + 0xf05
    .4byte gUnknown_085ED1F4 + 0xf29
    .4byte gUnknown_085ED1F4 + 0xf4d
    .4byte gUnknown_085ED1F4 + 0xf71
    .4byte gUnknown_085ED1F4 + 0xf95
    .4byte gUnknown_085ED1F4 + 0xfb9
    .4byte 0x82000000

	.global gUnknown_085EE4C4
gUnknown_085EE4C4:  @ 0x085EE4C4
@ Replacing .incbin "baserom.gba", 0x5EE4C4, 0x34
    .4byte gUnknown_085ED1F4 + 0xfdd
    .4byte gUnknown_085ED1F4 + 0x1001
    .4byte gUnknown_085ED1F4 + 0x1025
    .4byte gUnknown_085ED1F4 + 0x104a
    .4byte gUnknown_085ED1F4 + 0x106e
    .4byte gUnknown_085ED1F4 + 0x1092
    .4byte gUnknown_085ED1F4 + 0x10b6
    .4byte gUnknown_085ED1F4 + 0x10da
    .4byte gUnknown_085ED1F4 + 0x10fe
    .4byte gUnknown_085ED1F4 + 0x1122
    .4byte gUnknown_085ED1F4 + 0x1146
    .4byte gUnknown_085ED1F4 + 0x116a
    .4byte 0x82000000

	.global gUnknown_085EE4F8
gUnknown_085EE4F8:  @ 0x085EE4F8
	.incbin "baserom.gba", 0x5EE4F8, 0xD54

	.global gUnknown_085EF24C
gUnknown_085EF24C:  @ 0x085EF24C
	.incbin "baserom.gba", 0x5EF24C, 0xF44

	.global gUnknown_085F0190
gUnknown_085F0190:  @ 0x085F0190
	.incbin "baserom.gba", 0x5F0190, 0xC74

	.global gUnknown_085F0E04
gUnknown_085F0E04:  @ 0x085F0E04
	.incbin "baserom.gba", 0x5F0E04, 0x3AC

	.global gUnknown_085F11B0
gUnknown_085F11B0:  @ 0x085F11B0
	.incbin "baserom.gba", 0x5F11B0, 0x470

	.global gUnknown_085F1620
gUnknown_085F1620:  @ 0x085F1620
	.incbin "baserom.gba", 0x5F1620, 0x20

	.global gUnknown_085F1640
gUnknown_085F1640:  @ 0x085F1640
	.incbin "baserom.gba", 0x5F1640, 0x20

	.global gUnknown_085F1660
gUnknown_085F1660:  @ 0x085F1660
	.incbin "baserom.gba", 0x5F1660, 0xB0

	.global gUnknown_085F1710
gUnknown_085F1710:  @ 0x085F1710
	.incbin "baserom.gba", 0x5F1710, 0xA4

	.global gUnknown_085F17B4
gUnknown_085F17B4:  @ 0x085F17B4
	.incbin "baserom.gba", 0x5F17B4, 0xA4

	.global gUnknown_085F1858
gUnknown_085F1858:  @ 0x085F1858
	.incbin "baserom.gba", 0x5F1858, 0xA4

	.global gUnknown_085F18FC
gUnknown_085F18FC:  @ 0x085F18FC
	.incbin "baserom.gba", 0x5F18FC, 0xA4

	.global gUnknown_085F19A0
gUnknown_085F19A0:  @ 0x085F19A0
	.incbin "baserom.gba", 0x5F19A0, 0xA4

	.global gUnknown_085F1A44
gUnknown_085F1A44:  @ 0x085F1A44
	.incbin "baserom.gba", 0x5F1A44, 0x194

	.global gUnknown_085F1BD8
gUnknown_085F1BD8:  @ 0x085F1BD8
	.incbin "baserom.gba", 0x5F1BD8, 0x194

	.global gUnknown_085F1D6C
gUnknown_085F1D6C:  @ 0x085F1D6C
	.incbin "baserom.gba", 0x5F1D6C, 0x1AC

	.global gUnknown_085F1F18
gUnknown_085F1F18:  @ 0x085F1F18
	.incbin "baserom.gba", 0x5F1F18, 0x1AC

	.global gUnknown_085F20C4
gUnknown_085F20C4:  @ 0x085F20C4
	.incbin "baserom.gba", 0x5F20C4, 0x1AC

	.global gUnknown_085F2270
gUnknown_085F2270:  @ 0x085F2270
	.incbin "baserom.gba", 0x5F2270, 0x1A8

	.global gUnknown_085F2418
gUnknown_085F2418:  @ 0x085F2418
	.incbin "baserom.gba", 0x5F2418, 0xDC

	.global gUnknown_085F24F4
gUnknown_085F24F4:  @ 0x085F24F4
	.incbin "baserom.gba", 0x5F24F4, 0xE4

	.global gUnknown_085F25D8
gUnknown_085F25D8:  @ 0x085F25D8
	.incbin "baserom.gba", 0x5F25D8, 0x108

	.global gUnknown_085F26E0
gUnknown_085F26E0:  @ 0x085F26E0
	.incbin "baserom.gba", 0x5F26E0, 0x104

	.global gUnknown_085F27E4
gUnknown_085F27E4:  @ 0x085F27E4
	.incbin "baserom.gba", 0x5F27E4, 0x1DC

	.global gUnknown_085F29C0
gUnknown_085F29C0:  @ 0x085F29C0
@ Replacing .incbin "baserom.gba", 0x5F29C0, 0x27C
    .4byte gUnknown_085F27E4 + 0x16
    .4byte gUnknown_085F27E4 + 0x5e
    .4byte gUnknown_085F27E4 + 0xa6
    .4byte gUnknown_085F27E4 + 0x5e
    .4byte 0x82000000
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte 0x82000000
    .4byte gUnknown_085F27E4 + 0xee
    .4byte gUnknown_085F27E4 + 0x136
    .4byte gUnknown_085F27E4 + 0x17e
    .4byte gUnknown_085F27E4 + 0x136
    .4byte 0x82000000
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte gUnknown_085F27E4 + 0x1c6
    .4byte 0x82000000
    .4byte gUnknown_085F27E4 + 0x16
    .4byte gUnknown_085F27E4 + 0x5e
    .4byte gUnknown_085F27E4 + 0xa6
    .4byte gUnknown_085F27E4 + 0x5e
    .4byte 0x82000000
    .4byte gUnknown_085F27E4 + 0xee
    .4byte gUnknown_085F27E4 + 0x136
    .4byte gUnknown_085F27E4 + 0x17e
    .4byte gUnknown_085F27E4 + 0x136
    .4byte 0x82000000
    .4byte 0x185f29a8
    .4byte 0x82000000
    .4byte 0x185f29a8
    .4byte 0x82000000
    .4byte 0x185f29a8
    .4byte 0x82000000
    .4byte 0x185f29a8
    .4byte 0x82000000
    .4byte 0x185f29a8
    .4byte 0x82000000
    .4byte gUnknown_085F27E4 + 0x16
    .4byte gUnknown_085F27E4 + 0x5e
    .4byte gUnknown_085F27E4 + 0xa6
    .4byte gUnknown_085F27E4 + 0x5e
    .4byte 0x82000000
    .4byte 0x90008000
    .4byte 0xfff00013
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0xffe80015
    .4byte 0x0000ffe0
    .4byte 0x90008000
    .4byte 0x0008000d
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0x0000000f
    .4byte 0x0000ffe0
    .4byte 0x50004000
    .4byte 0xfff00006
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0x0008000d
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0x0000000f
    .4byte 0x0000ffe0
    .4byte 0x50004000
    .4byte 0xfff00006
    .4byte 0x00000008
    .4byte 0x90008000
    .4byte 0xfff00019
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0xffe8001b
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff00003
    .4byte 0x0000ffe1
    .4byte 0x50008000
    .4byte 0xffe80005
    .4byte 0x0000ffe1
    .4byte 0x90008000
    .4byte 0x0008000d
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0x0000000f
    .4byte 0x0000ffe0
    .4byte 0x50004000
    .4byte 0xfff00006
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff00013
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0xffe80015
    .4byte 0x0000ffe0
    .4byte 0x50004000
    .4byte 0xfff00006
    .4byte 0x00000008
    .4byte 0x90008000
    .4byte 0x0008008d
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0x0000008f
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50004000
    .4byte 0xfff00006
    .4byte 0x00000008
    .4byte 0x90008000
    .4byte 0xfff00019
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0xffe8001b
    .4byte 0x0000ffe0
    .4byte 0x90008000
    .4byte 0x0008008d
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0x0000008f
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff00003
    .4byte 0x0000ffe1
    .4byte 0x50008000
    .4byte 0xffe80005
    .4byte 0x0000ffe1
    .4byte 0x50004000
    .4byte 0xfff00006
    .4byte 0x00000008
    .4byte 0x90008000
    .4byte 0x0008008d
    .4byte 0x0000ffe0
    .4byte 0x50008000
    .4byte 0x0000008f
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff8001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085F2C3C
gUnknown_085F2C3C:  @ 0x085F2C3C
@ Replacing .incbin "baserom.gba", 0x5F2C3C, 0x108
    .4byte gUnknown_085F29C0 + 0xb6
    .4byte gUnknown_085F29C0 + 0xfe
    .4byte gUnknown_085F29C0 + 0x146
    .4byte gUnknown_085F29C0 + 0xfe
    .4byte 0x82000000
    .4byte gUnknown_085F29C0 + 0x266
    .4byte gUnknown_085F29C0 + 0x266
    .4byte gUnknown_085F29C0 + 0x266
    .4byte gUnknown_085F29C0 + 0x266
    .4byte 0x82000000
    .4byte gUnknown_085F29C0 + 0x18e
    .4byte gUnknown_085F29C0 + 0x1d6
    .4byte gUnknown_085F29C0 + 0x21e
    .4byte gUnknown_085F29C0 + 0x1d6
    .4byte 0x82000000
    .4byte gUnknown_085F29C0 + 0x266
    .4byte gUnknown_085F29C0 + 0x266
    .4byte gUnknown_085F29C0 + 0x266
    .4byte gUnknown_085F29C0 + 0x266
    .4byte 0x82000000
    .4byte gUnknown_085F29C0 + 0xb6
    .4byte gUnknown_085F29C0 + 0xfe
    .4byte gUnknown_085F29C0 + 0x146
    .4byte gUnknown_085F29C0 + 0xfe
    .4byte 0x82000000
    .4byte gUnknown_085F29C0 + 0x18e
    .4byte gUnknown_085F29C0 + 0x1d6
    .4byte gUnknown_085F29C0 + 0x21e
    .4byte gUnknown_085F29C0 + 0x1d6
    .4byte 0x82000000
    .4byte 0x185f2c24
    .4byte 0x82000000
    .4byte 0x185f2c24
    .4byte 0x82000000
    .4byte 0x185f2c24
    .4byte 0x82000000
    .4byte 0x185f2c24
    .4byte 0x82000000
    .4byte 0x185f2c24
    .4byte 0x82000000
    .4byte gUnknown_085F29C0 + 0xb6
    .4byte gUnknown_085F29C0 + 0xfe
    .4byte gUnknown_085F29C0 + 0x146
    .4byte gUnknown_085F29C0 + 0xfe
    .4byte 0x82000000
    .4byte 0x80000000
    .4byte 0xfff8000c
    .4byte 0x0000ffd8
    .4byte 0x80004000
    .4byte 0xfff8008c
    .4byte 0x0000fff8
    .4byte 0x40004000
    .4byte 0xfff800cc
    .4byte 0x00000008
    .4byte 0x40008000
    .4byte 0x00180010
    .4byte 0x0000fff0
    .4byte 0x00008000
    .4byte 0xfff000d0
    .4byte 0x0000ffe8
    .4byte 0x40000000
    .4byte 0xffe00090
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085F2D44
gUnknown_085F2D44:  @ 0x085F2D44
	.incbin "baserom.gba", 0x5F2D44, 0x68

	.global gUnknown_085F2DAC
gUnknown_085F2DAC:  @ 0x085F2DAC
	.incbin "baserom.gba", 0x5F2DAC, 0x14

	.global gUnknown_085F2DC0
gUnknown_085F2DC0:  @ 0x085F2DC0
	.incbin "baserom.gba", 0x5F2DC0, 0x8BC

	.global gUnknown_085F367C
gUnknown_085F367C:  @ 0x085F367C
	.incbin "baserom.gba", 0x5F367C, 0x42C

	.global Img_BoltingSprites
Img_BoltingSprites:  @ 0x085F3AA8
	.incbin "baserom.gba", 0x5F3AA8, 0x498

	.global Pal_BoltingSprites
Pal_BoltingSprites:  @ 0x085F3F40
	.incbin "baserom.gba", 0x5F3F40, 0xAE4

	.global gUnknown_085F4A24
gUnknown_085F4A24:  @ 0x085F4A24
@ Replacing .incbin "baserom.gba", 0x5F4A24, 0xB2C
    .4byte 0x385f45ca
    .4byte Pal_BoltingSprites + 0xa2
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0xd1
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x13d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x19d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x1fd
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x25d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x2bd
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x31d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x37d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x3dd
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x43d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x49d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x4fd
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x55d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x5bd
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x61d
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x6a1
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x701
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x761
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x7c1
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x821
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x881
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x8e1
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x941
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0x9a1
    .4byte Pal_BoltingSprites + 0x689
    .4byte Pal_BoltingSprites + 0xa01
    .4byte Pal_BoltingSprites + 0x689
    .4byte 0x80000000
    .4byte Pal_BoltingSprites + 0xa61
    .4byte 0x80000000
    .4byte Pal_BoltingSprites + 0xa79
    .4byte 0x80000000
    .4byte 0x10004000
    .4byte 0xfff80000
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff80002
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff80004
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0xfff70006
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff30006
    .4byte 0x00000003
    .4byte 0x10000000
    .4byte 0xfff20006
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0x00010006
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0x00060006
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0x00050006
    .4byte 0x0000000a
    .4byte 0x10000000
    .4byte 0xfffc0006
    .4byte 0x00000006
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff50006
    .4byte 0x0000ffff
    .4byte 0x10000000
    .4byte 0xfff10006
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xffef0006
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0x00020006
    .4byte 0x0000ffff
    .4byte 0x10000000
    .4byte 0x00080006
    .4byte 0x00000005
    .4byte 0x10000000
    .4byte 0x00060006
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0xfffb0006
    .4byte 0x00000004
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff60006
    .4byte 0x0000fffd
    .4byte 0x10000000
    .4byte 0xffef0006
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0xffee0006
    .4byte 0x0000000a
    .4byte 0x10000000
    .4byte 0x00010006
    .4byte 0x0000fffd
    .4byte 0x10000000
    .4byte 0x000a0006
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0x00070006
    .4byte 0x0000000a
    .4byte 0x10000000
    .4byte 0xfffa0006
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff70006
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0xffed0006
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xffeb0006
    .4byte 0x0000000a
    .4byte 0x10000000
    .4byte 0x00030006
    .4byte 0x0000fffc
    .4byte 0x10000000
    .4byte 0x000b0006
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0x00080006
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0xfff80006
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff50006
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xffec0006
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffea0006
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0x00040006
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0x000d0006
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0x00090006
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0xfff90006
    .4byte 0x0000ffff
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff30006
    .4byte 0x0000fff9
    .4byte 0x10000000
    .4byte 0xffe90006
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe90006
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0x00040006
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0x000e0006
    .4byte 0x0000ffff
    .4byte 0x10000000
    .4byte 0x000a0006
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0xfff80006
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff00006
    .4byte 0x0000fff9
    .4byte 0x10000000
    .4byte 0xffea0006
    .4byte 0x0000fffe
    .4byte 0x10000000
    .4byte 0xffe70006
    .4byte 0x00000005
    .4byte 0x10000000
    .4byte 0x00030006
    .4byte 0x0000fff5
    .4byte 0x10000000
    .4byte 0x000f0006
    .4byte 0x0000fffd
    .4byte 0x10000000
    .4byte 0x000b0006
    .4byte 0x00000006
    .4byte 0x10000000
    .4byte 0xfff70006
    .4byte 0x0000fffb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff00006
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0xffe90006
    .4byte 0x0000fffc
    .4byte 0x10000000
    .4byte 0xffe50006
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0x00020006
    .4byte 0x0000fff3
    .4byte 0x10000000
    .4byte 0x00100006
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0x000d0006
    .4byte 0x00000005
    .4byte 0x10000000
    .4byte 0xfff60006
    .4byte 0x0000fff9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff00006
    .4byte 0x0000fff3
    .4byte 0x10000000
    .4byte 0xffe80006
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xffe40006
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0x00030006
    .4byte 0x0000fff1
    .4byte 0x10000000
    .4byte 0x00110006
    .4byte 0x0000fff9
    .4byte 0x10000000
    .4byte 0x000f0006
    .4byte 0x00000004
    .4byte 0x10000000
    .4byte 0xfff50006
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffee0006
    .4byte 0x0000fff2
    .4byte 0x10000000
    .4byte 0xffe90006
    .4byte 0x0000fff8
    .4byte 0x10000000
    .4byte 0xffe20006
    .4byte 0x00000003
    .4byte 0x10000000
    .4byte 0x00050006
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0x00100006
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0x00100006
    .4byte 0x00000002
    .4byte 0x10000000
    .4byte 0xfff50006
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffed0006
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffe70006
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xffe10006
    .4byte 0x00000001
    .4byte 0x10000000
    .4byte 0x00080006
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0x000f0006
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0x00110006
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff60006
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffeb0006
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0xffe60006
    .4byte 0x0000fff5
    .4byte 0x10000000
    .4byte 0xffe10006
    .4byte 0x0000fffe
    .4byte 0x10000000
    .4byte 0x00080006
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0x00100006
    .4byte 0x0000fff2
    .4byte 0x10000000
    .4byte 0x00120006
    .4byte 0x0000fffd
    .4byte 0x10000000
    .4byte 0xfff70006
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffea0006
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffe40006
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0xffe10006
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0x000b0006
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0x00110006
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0x00120006
    .4byte 0x0000fffb
    .4byte 0x10000000
    .4byte 0xfff70006
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x000a0006
    .4byte 0x0000ffeb
    .4byte 0x10000000
    .4byte 0x00120006
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0x00140006
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xfff60006
    .4byte 0x0000ffeb
    .4byte 0x10000000
    .4byte 0xffe80006
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xffe40006
    .4byte 0x0000fff1
    .4byte 0x10000000
    .4byte 0xffdf0006
    .4byte 0x0000fffa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff50006
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x000b0006
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x00140006
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0x00140006
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0xfff50006
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0xffe80006
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0xffe20006
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0xffde0006
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff80009
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffdc0006
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xffe00006
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xffe70006
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0xfff40006
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0x000b0006
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0x00150006
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0x00150006
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffdc0006
    .4byte 0x0000fff3
    .4byte 0x10000000
    .4byte 0xffdf0006
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xffe80006
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0xfff40006
    .4byte 0x0000ffe4
    .4byte 0x10000000
    .4byte 0x000a0006
    .4byte 0x0000ffe4
    .4byte 0x10000000
    .4byte 0x00180006
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x00180006
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffda0006
    .4byte 0x0000fff2
    .4byte 0x10000000
    .4byte 0xffde0006
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0xffe70006
    .4byte 0x0000ffe3
    .4byte 0x10000000
    .4byte 0xfff30006
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0x000c0006
    .4byte 0x0000ffe3
    .4byte 0x10000000
    .4byte 0x00190006
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0x00190006
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffd80006
    .4byte 0x0000fff1
    .4byte 0x10000000
    .4byte 0xffdd0006
    .4byte 0x0000ffe8
    .4byte 0x10000000
    .4byte 0xffe50006
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0xfff10006
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0x000d0006
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0x001a0006
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0x001b0006
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffd60006
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffdd0006
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0xffe30006
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0xfff10006
    .4byte 0x0000ffde
    .4byte 0x10000000
    .4byte 0x00100006
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0x001a0006
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0x001c0006
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffd40006
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0xffdc0006
    .4byte 0x0000ffe3
    .4byte 0x10000000
    .4byte 0xffe10006
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0xffef0006
    .4byte 0x0000ffdd
    .4byte 0x10000000
    .4byte 0x00110006
    .4byte 0x0000ffdf
    .4byte 0x10000000
    .4byte 0x001b0006
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0x001e0006
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffd30006
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffdb0006
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0xffe10006
    .4byte 0x0000ffdc
    .4byte 0x10000000
    .4byte 0xffec0006
    .4byte 0x0000ffdd
    .4byte 0x10000000
    .4byte 0x00110006
    .4byte 0x0000ffdc
    .4byte 0x10000000
    .4byte 0x001d0006
    .4byte 0x0000ffdf
    .4byte 0x10000000
    .4byte 0x001f0006
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffd00006
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffd90006
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0xffe10006
    .4byte 0x0000ffd9
    .4byte 0x10000000
    .4byte 0xffec0006
    .4byte 0x0000ffda
    .4byte 0x10000000
    .4byte 0x00120006
    .4byte 0x0000ffda
    .4byte 0x10000000
    .4byte 0x001d0006
    .4byte 0x0000ffdb
    .4byte 0x10000000
    .4byte 0x00220006
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffd00007
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0xffd70007
    .4byte 0x0000ffdf
    .4byte 0x10000000
    .4byte 0xffde0007
    .4byte 0x0000ffd9
    .4byte 0x10000000
    .4byte 0xffec0007
    .4byte 0x0000ffd7
    .4byte 0x10000000
    .4byte 0x00130007
    .4byte 0x0000ffd7
    .4byte 0x10000000
    .4byte 0x001f0007
    .4byte 0x0000ffda
    .4byte 0x10000000
    .4byte 0x00220007
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffcf0008
    .4byte 0x0000ffe8
    .4byte 0x10000000
    .4byte 0xffd70008
    .4byte 0x0000ffdc
    .4byte 0x10000000
    .4byte 0xffdc0008
    .4byte 0x0000ffd8
    .4byte 0x10000000
    .4byte 0xffed0008
    .4byte 0x0000ffd5
    .4byte 0x10000000
    .4byte 0x00120008
    .4byte 0x0000ffd5
    .4byte 0x10000000
    .4byte 0x00200008
    .4byte 0x0000ffd8
    .4byte 0x10000000
    .4byte 0x00230008
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff80020
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffd8000a
    .4byte 0x0000ffa8
    .4byte 0x90000000
    .4byte 0xffd80011
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0xfff80015
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff80055
    .4byte 0x00000010
    .4byte 0x10008000
    .4byte 0xfff80028
    .4byte 0x0000ffd8
    .4byte 0x10008000
    .4byte 0xfff80029
    .4byte 0x0000ffc0
    .4byte 0x90008000
    .4byte 0xffe8000e
    .4byte 0x0000ffc8
    .4byte 0x50008000
    .4byte 0xffe00010
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085F5550
gUnknown_085F5550:  @ 0x085F5550
@ Replacing .incbin "baserom.gba", 0x5F5550, 0xE8
    .4byte 0x385f50f6
    .4byte gUnknown_085F4A24 + 0xea
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x119
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x185
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x1e5
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x245
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x2a5
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x305
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x365
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x3c5
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x425
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x485
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x4e5
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x545
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x5a5
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x605
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x665
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x6e9
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x749
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x7a9
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x809
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x869
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x8c9
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x929
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x989
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0x9e9
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte gUnknown_085F4A24 + 0xa49
    .4byte gUnknown_085F4A24 + 0x6d1
    .4byte 0x80000000
    .4byte gUnknown_085F4A24 + 0xaa9
    .4byte 0x80000000
    .4byte gUnknown_085F4A24 + 0xac1
    .4byte 0x80000000

	.global gUnknown_085F5638
gUnknown_085F5638:  @ 0x085F5638
	.incbin "baserom.gba", 0x5F5638, 0xBF8

	.global gUnknown_085F6230
gUnknown_085F6230:  @ 0x085F6230
	.incbin "baserom.gba", 0x5F6230, 0x1538

	.global gUnknown_085F7768
gUnknown_085F7768:  @ 0x085F7768
	.incbin "baserom.gba", 0x5F7768, 0x5FC

	.global gUnknown_085F7D64
gUnknown_085F7D64:  @ 0x085F7D64
	.incbin "baserom.gba", 0x5F7D64, 0x350

	.global gUnknown_085F80B4
gUnknown_085F80B4:  @ 0x085F80B4
@ Replacing .incbin "baserom.gba", 0x5F80B4, 0x2C
    .4byte 0x685f7f4d
    .4byte gUnknown_085F7D64 + 0x23
    .4byte gUnknown_085F7D64 + 0x3a
    .4byte gUnknown_085F7D64 + 0x5e
    .4byte 0x285f7de6
    .4byte gUnknown_085F7D64 + 0xa7
    .4byte gUnknown_085F7D64 + 0xca
    .4byte gUnknown_085F7D64 + 0x11e
    .4byte gUnknown_085F7D64 + 0x17e
    .4byte gUnknown_085F7D64 + 0x1d2
    .4byte 0x80000000

	.global gUnknown_085F80E0
gUnknown_085F80E0:  @ 0x085F80E0
@ Replacing .incbin "baserom.gba", 0x5F80E0, 0x35C
    .4byte 0x685f7f4d
    .4byte gUnknown_085F7D64 + 0x23
    .4byte gUnknown_085F7D64 + 0x3a
    .4byte gUnknown_085F7D64 + 0x5e
    .4byte 0x285f7de6
    .4byte gUnknown_085F7D64 + 0xa7
    .4byte gUnknown_085F7D64 + 0x202
    .4byte gUnknown_085F7D64 + 0x256
    .4byte gUnknown_085F7D64 + 0x2b6
    .4byte gUnknown_085F7D64 + 0x30a
    .4byte 0x80000000
    .4byte 0x50000000
    .4byte 0xfff80000
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0102fefe
    .4byte 0x01020102
    .4byte 0x40000100
    .4byte 0xfff80000
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x01ff0000
    .4byte 0x000001ff
    .4byte 0x40000100
    .4byte 0xfff80000
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x02620260
    .4byte 0xfda00262
    .4byte 0x40000100
    .4byte 0xfff80000
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00040000
    .4byte 0x0000ffd1
    .4byte 0x90000000
    .4byte 0xfff0000e
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00180002
    .4byte 0x0000ffdb
    .4byte 0x10008000
    .4byte 0x00100004
    .4byte 0x0000ffdb
    .4byte 0x10004000
    .4byte 0x0008000b
    .4byte 0x0000ffd3
    .4byte 0x10000000
    .4byte 0x0008000d
    .4byte 0x0000ffdb
    .4byte 0x90004000
    .4byte 0xffef0016
    .4byte 0x0000ffc0
    .4byte 0x90004000
    .4byte 0xffef001a
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfffe001e
    .4byte 0x0000ffc0
    .4byte 0x50000000
    .4byte 0xffee0040
    .4byte 0x0000ffc0
    .4byte 0x90004000
    .4byte 0xffee0042
    .4byte 0x0000ffd0
    .4byte 0x50000000
    .4byte 0x00220005
    .4byte 0x0000ffe1
    .4byte 0x10008000
    .4byte 0x001a0007
    .4byte 0x0000ffe1
    .4byte 0x10004000
    .4byte 0x0012002b
    .4byte 0x0000ffd9
    .4byte 0x10000000
    .4byte 0x0012002d
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x002c0008
    .4byte 0x0000ffe7
    .4byte 0x10008000
    .4byte 0x0024000a
    .4byte 0x0000ffe7
    .4byte 0x10004000
    .4byte 0x001c002b
    .4byte 0x0000ffdf
    .4byte 0x10000000
    .4byte 0x001c000d
    .4byte 0x0000ffe7
    .4byte 0x90004000
    .4byte 0xffed0046
    .4byte 0x0000ffc0
    .4byte 0x90004000
    .4byte 0xffed004a
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffe70012
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x0000005f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x001e0002
    .4byte 0x0000ffd4
    .4byte 0x10008000
    .4byte 0x00160004
    .4byte 0x0000ffd4
    .4byte 0x10004000
    .4byte 0x000e000b
    .4byte 0x0000ffcc
    .4byte 0x10000000
    .4byte 0x000e000d
    .4byte 0x0000ffd4
    .4byte 0x90004000
    .4byte 0xffef0016
    .4byte 0x0000ffc0
    .4byte 0x90004000
    .4byte 0xffef001a
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfffe001e
    .4byte 0x0000ffc0
    .4byte 0x50000000
    .4byte 0xffee0040
    .4byte 0x0000ffc0
    .4byte 0x90004000
    .4byte 0xffee0042
    .4byte 0x0000ffd0
    .4byte 0x50000000
    .4byte 0x00320005
    .4byte 0x0000ffdc
    .4byte 0x10008000
    .4byte 0x002a0007
    .4byte 0x0000ffdc
    .4byte 0x10004000
    .4byte 0x0022002b
    .4byte 0x0000ffd4
    .4byte 0x10000000
    .4byte 0x0022002d
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x004a0008
    .4byte 0x0000ffe8
    .4byte 0x10008000
    .4byte 0x0042000a
    .4byte 0x0000ffe8
    .4byte 0x10004000
    .4byte 0x003a002b
    .4byte 0x0000ffe0
    .4byte 0x10000000
    .4byte 0x003a000d
    .4byte 0x0000ffe8
    .4byte 0x90004000
    .4byte 0xffed0046
    .4byte 0x0000ffc0
    .4byte 0x90004000
    .4byte 0xffed004a
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffe70012
    .4byte 0x0000ffc0
    .4byte 0x50000000
    .4byte 0x00610002
    .4byte 0x0000fff6
    .4byte 0x10008000
    .4byte 0x00590004
    .4byte 0x0000fff6
    .4byte 0x10004000
    .4byte 0x0051000b
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0x0051000d
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_085F843C
gUnknown_085F843C:  @ 0x085F843C
@ Replacing .incbin "baserom.gba", 0x5F843C, 0x2C
    .4byte 0x685f82d5
    .4byte gUnknown_085F80E0 + 0x2f
    .4byte gUnknown_085F80E0 + 0x46
    .4byte gUnknown_085F80E0 + 0x6a
    .4byte 0x285f816e
    .4byte gUnknown_085F80E0 + 0xb3
    .4byte gUnknown_085F80E0 + 0xd6
    .4byte gUnknown_085F80E0 + 0x12a
    .4byte gUnknown_085F80E0 + 0x18a
    .4byte gUnknown_085F80E0 + 0x1de
    .4byte 0x80000000

	.global gUnknown_085F8468
gUnknown_085F8468:  @ 0x085F8468
@ Replacing .incbin "baserom.gba", 0x5F8468, 0x8C24
    .4byte 0x685f82d5
    .4byte gUnknown_085F80E0 + 0x2f
    .4byte gUnknown_085F80E0 + 0x46
    .4byte gUnknown_085F80E0 + 0x6a
    .4byte 0x285f816e
    .4byte gUnknown_085F80E0 + 0xb3
    .4byte gUnknown_085F80E0 + 0x20e
    .4byte gUnknown_085F80E0 + 0x262
    .4byte gUnknown_085F80E0 + 0x2c2
    .4byte gUnknown_085F80E0 + 0x316
    .4byte 0x80000000
    .4byte 0x00180010
    .4byte 0x20000020
    .4byte 0x0000ff01
    .4byte 0x00a8dff0
    .4byte 0x0600cd06
    .4byte 0xaf0300bc
    .4byte 0xbd03ff00
    .4byte 0xabdf009a
    .4byte 0xf01f4089
    .4byte 0x3520a801
    .4byte 0xff0ee00f
    .4byte 0xfddd4900
    .4byte 0xcc00010f
    .4byte 0xbc00ffdc
    .4byte 0xc50800cb
    .4byte 0x5fe05800
    .4byte 0x00abcdff
    .4byte 0x06009a06
    .4byte 0x2f208960
    .4byte 0xddcc3800
    .4byte 0x00bbf0ff
    .4byte 0xaafffdcc
    .4byte 0x99dfdcbb
    .4byte 0xcccbaa00
    .4byte 0xbbba9988
    .4byte 0xa9881d77
    .4byte 0x105f90aa
    .4byte 0x002e004c
    .4byte 0x00b85510
    .4byte 0x5e30005e
    .4byte 0x813001a0
    .4byte 0x00fdfff0
    .4byte 0xdcddff00
    .4byte 0xcbccdff0
    .4byte 0x00b4f0e3
    .4byte 0xfda74024
    .4byte 0x9b100ffd
    .4byte 0x80f001f0
    .4byte 0xf001406b
    .4byte 0xdfc350c3
    .4byte 0x00df00ff
    .4byte 0xcd0ffdcd
    .4byte 0xbcffdcbc
    .4byte 0xfdcbab00
    .4byte 0xdcba9aab
    .4byte 0xa989009a
    .4byte 0x987889cb
    .4byte 0x671a78ba
    .4byte 0x5c41a987
    .4byte 0x00dd1b21
    .4byte 0x0080cc08
    .4byte 0xffdcbb73
    .4byte 0xfdcbaaff
    .4byte 0xba99df04
    .4byte 0x75d0cddc
    .4byte 0xff00f0ff
    .4byte 0xfdfffd00
    .4byte 0x03dfdd0f
    .4byte 0xcdccffdc
    .4byte 0x99f0fdcb
    .4byte 0x50ffa3b0
    .4byte 0xf0039007
    .4byte 0xc027f001
    .4byte 0xb00190df
    .4byte 0xaf1890eb
    .4byte 0x01df3741
    .4byte 0xdf31cd77
    .4byte 0x0bc242f0
    .4byte 0x80f501f0
    .4byte 0xb2542023
    .4byte 0x7806000f
    .4byte 0x00670600
    .4byte 0x10164006
    .4byte 0xdcbaab03
    .4byte 0x00a99aff
    .4byte 0x9889ddcb
    .4byte 0x8778ccba
    .4byte 0x67bba900
    .4byte 0x16aa9876
    .4byte 0x99870061
    .4byte 0x88766111
    .4byte 0x61241111
    .4byte 0xff6b4277
    .4byte 0xaa8b00bb
    .4byte 0xdddc0aba
    .4byte 0x3b02a999
    .4byte 0x873b0298
    .4byte 0x66aaa902
    .4byte 0x10999876
    .4byte 0xff10ff61
    .4byte 0xa701ff0f
    .4byte 0xfddddddf
    .4byte 0xcccccd00
    .4byte 0xbbbbbcdc
    .4byte 0xaaab00cb
    .4byte 0x999abaaa
    .4byte 0x8955a999
    .4byte 0x01009781
    .4byte 0x97010097
    .4byte 0x0097010f
    .4byte 0xcba988ff
    .4byte 0xba9877fd
    .4byte 0x8888dc00
    .4byte 0x67777898
    .4byte 0x66670487
    .4byte 0x00677616
    .4byte 0x0011166e
    .4byte 0x61167611
    .4byte 0x11686111
    .4byte 0x03006660
    .4byte 0x87660c00
    .4byte 0x1111cba9
    .4byte 0x20ba9876
    .4byte 0xa9876103
    .4byte 0x40fe0320
    .4byte 0x521b100f
    .4byte 0x10af52ab
    .4byte 0x220f5003
    .4byte 0xbf28ffbe
    .4byte 0x4bff006b
    .4byte 0xff46ff00
    .4byte 0x636b02cd
    .4byte 0x868abcdf
    .4byte 0xa587ff00
    .4byte 0x01980701
    .4byte 0x02f0a90f
    .4byte 0x5f02ff5f
    .4byte 0x5f02df54
    .4byte 0xbc5f02cd
    .4byte 0x8aab5f02
    .4byte 0x78ccb900
    .4byte 0x69bcb876
    .4byte 0xcb871564
    .4byte 0xbcab00bc
    .4byte 0x009c6600
    .4byte 0x976905ab
    .4byte 0x0049cba9
    .4byte 0x77006977
    .4byte 0xdc7e02bd
    .4byte 0x3ff28602
    .4byte 0xef4101f0
    .4byte 0xa4ef0100
    .4byte 0x00dff791
    .4byte 0x51cdff03
    .4byte 0x2cabcd8f
    .4byte 0x97412679
    .4byte 0x00060067
    .4byte 0x80762603
    .4byte 0x66660700
    .4byte 0x129a9877
    .4byte 0x89870066
    .4byte 0x78761641
    .4byte 0x87004761
    .4byte 0x78874167
    .4byte 0x00762216
    .4byte 0x76662678
    .4byte 0x41664778
    .4byte 0x0015672d
    .4byte 0x0511009e
    .4byte 0x11ff8e00
    .4byte 0x9e00af0e
    .4byte 0xcb2201dc
    .4byte 0x73f30750
    .4byte 0xe7831701
    .4byte 0x5393f2d0
    .4byte 0xa714dd7f
    .4byte 0xbbcdffbc
    .4byte 0xbcdfba00
    .4byte 0xabcda9aa
    .4byte 0xbc980099
    .4byte 0xab87889a
    .4byte 0x76037789
    .4byte 0x6166789a
    .4byte 0x02ad019a
    .4byte 0xdc612a3e
    .4byte 0x03cb1b02
    .4byte 0x6b03ba6b
    .4byte 0xcba900a9
    .4byte 0xba9898bc
    .4byte 0x870087ab
    .4byte 0x76779aa9
    .4byte 0x19678998
    .4byte 0x94788762
    .4byte 0xbaabf04b
    .4byte 0xfb7f80dc
    .4byte 0x8fa00350
    .4byte 0x0350b352
    .4byte 0x00990f40
    .4byte 0x018f0006
    .4byte 0x16678778
    .4byte 0x02169876
    .4byte 0x38228414
    .4byte 0x67676111
    .4byte 0x66783202
    .4byte 0x8961661a
    .4byte 0x03009f00
    .4byte 0xbc670211
    .4byte 0xab6702a8
    .4byte 0x029a2b02
    .4byte 0x76118933
    .4byte 0x66788800
    .4byte 0x77677787
    .4byte 0x16660176
    .4byte 0x16116166
    .4byte 0x00e001bb
    .4byte 0xcba9abaa
    .4byte 0xba989a99
    .4byte 0x87898800
    .4byte 0x767876a9
    .4byte 0x67610b98
    .4byte 0x7f028761
    .4byte 0xd57f1287
    .4byte 0xc350ff0f
    .4byte 0x1bf0c750
    .4byte 0x03101b30
    .4byte 0x0ef20f10
    .4byte 0x10ff6b91
    .4byte 0x9143f403
    .4byte 0xf1de54a3
    .4byte 0x32d3339f
    .4byte 0x0003103b
    .4byte 0x9abc789a
    .4byte 0x89ab789a
    .4byte 0x9a89a900
    .4byte 0x89999878
    .4byte 0x88870367
    .4byte 0x77761678
    .4byte 0x0501c200
    .4byte 0x01676128
    .4byte 0x1f01661f
    .4byte 0x18116711
    .4byte 0x00781116
    .4byte 0x1114000c
    .4byte 0x00886678
    .4byte 0x88876104
    .4byte 0x66770300
    .4byte 0x66773861
    .4byte 0x03202a20
    .4byte 0x16660b10
    .4byte 0x1f01fd61
    .4byte 0x25100300
    .4byte 0x03209303
    .4byte 0x00610b00
    .4byte 0x0300bf3d
    .4byte 0x000a4066
    .4byte 0x442b212d
    .4byte 0x1063002f
    .4byte 0x0160ea2f
    .4byte 0x0c01e323
    .4byte 0x76070087
    .4byte 0xff61f401
    .4byte 0x8c01c753
    .4byte 0xd8100710
    .4byte 0x4b3177f6
    .4byte 0xe3000710
    .4byte 0xeb00ba5f
    .4byte 0x020800cb
    .4byte 0x0477062b
    .4byte 0x002f916e
    .4byte 0xcb988466
    .4byte 0xcbaa8684
    .4byte 0xbba89808
    .4byte 0xbc5e00cb
    .4byte 0xcb50bbb8
    .4byte 0x04ccae03
    .4byte 0xcb9abcd6
    .4byte 0x1501eafd
    .4byte 0xd6034800
    .4byte 0x00de030f
    .4byte 0xff00e603
    .4byte 0x56b7ee03
    .4byte 0x4f214701
    .4byte 0x8f219323
    .4byte 0xb7865f10
    .4byte 0x711710fa
    .4byte 0x402f6073
    .4byte 0x227a010f
    .4byte 0xa8120300
    .4byte 0x02661303
    .4byte 0x0300546f
    .4byte 0x00789a33
    .4byte 0x789a6215
    .4byte 0x88893226
    .4byte 0x11266700
    .4byte 0x11122611
    .4byte 0x14360041
    .4byte 0x42463566
    .4byte 0x33003411
    .4byte 0x11333675
    .4byte 0x00112252
    .4byte 0x11631211
    .4byte 0x14233651
    .4byte 0x64356315
    .4byte 0x0124b400
    .4byte 0x0b011213
    .4byte 0x03001452
    .4byte 0x61a80266
    .4byte 0x661b0133
    .4byte 0x5398611e
    .4byte 0x13914403
    .4byte 0x1b110350
    .4byte 0xfddc3dba
    .4byte 0x5ef20720
    .4byte 0xfff5bb90
    .4byte 0xe06804df
    .4byte 0x0f100710
    .4byte 0x899a0310
    .4byte 0x0a897667
    .4byte 0x78677898
    .4byte 0x01675704
    .4byte 0x610b16fb
    .4byte 0x01671167
    .4byte 0x4d0378d7
    .4byte 0x66011f12
    .4byte 0x22678762
    .4byte 0x12008766
    .4byte 0x61677613
    .4byte 0x16612000
    .4byte 0x03101c00
    .4byte 0xaf15665a
    .4byte 0x752a0667
    .4byte 0x0c00619f
    .4byte 0xd711e716
    .4byte 0x12020300
    .4byte 0x070061a9
    .4byte 0xbb309fd5
    .4byte 0x30db31fe
    .4byte 0xc11369bf
    .4byte 0x01eb3283
    .4byte 0x166f045b
    .4byte 0x156b24f7
    .4byte 0x35b3160f
    .4byte 0xeb029827
    .4byte 0x6302e312
    .4byte 0x66dd029d
    .4byte 0x52bb4277
    .4byte 0x67bf009e
    .4byte 0x12aba212
    .4byte 0xcb0266bf
    .4byte 0x61570616
    .4byte 0x0e132090
    .4byte 0x421113c0
    .4byte 0x887676bf
    .4byte 0xef776161
    .4byte 0xd812bf02
    .4byte 0x20140110
    .4byte 0x93e31305
    .4byte 0xd463d5ef
    .4byte 0x0b070310
    .4byte 0xba3707cb
    .4byte 0x11160c11
    .4byte 0x16a98610
    .4byte 0x7766c301
    .4byte 0x77099988
    .4byte 0xd2887888
    .4byte 0x71ddcbd7
    .4byte 0x5310fdc3
    .4byte 0x8f41a329
    .4byte 0x17318bb2
    .4byte 0x53666401
    .4byte 0x00896cab
    .4byte 0x11fe009d
    .4byte 0x0320fe00
    .4byte 0x773f889a
    .4byte 0x00312716
    .4byte 0x23be13ff
    .4byte 0x20d000a9
    .4byte 0xe530fdd7
    .4byte 0x01108a93
    .4byte 0x01c02150
    .4byte 0x1561b313
    .4byte 0x0161603f
    .4byte 0x871ac015
    .4byte 0x88761698
    .4byte 0x0567873f
    .4byte 0x311b0218
    .4byte 0x012810fc
    .4byte 0x605501e8
    .4byte 0x50d3d587
    .4byte 0xcbba9803
    .4byte 0x0886a9fd
    .4byte 0xdfffdc30
    .4byte 0x0ae510bc
    .4byte 0x18c0df34
    .4byte 0xe09fd2b2
    .4byte 0xde00eedd
    .4byte 0x0edd01cc
    .4byte 0xedccbbcd
    .4byte 0x559c0abc
    .4byte 0x9a9c0aab
    .4byte 0x0a899c0a
    .4byte 0xfc06789c
    .4byte 0xed275094
    .4byte 0xed47080e
    .4byte 0x0edc4708
    .4byte 0xcbbb0005
    .4byte 0x5a0000ed
    .4byte 0xf68b080e
    .4byte 0xfff21100
    .4byte 0xf7624b96
    .4byte 0xd66731cc
    .4byte 0x7700784b
    .4byte 0x76676535
    .4byte 0x00261336
    .4byte 0x47113641
    .4byte 0x16114621
    .4byte 0x53576400
    .4byte 0x76787416
    .4byte 0xf3108026
    .4byte 0x32789987
    .4byte 0x00211131
    .4byte 0x11114111
    .4byte 0x41111515
    .4byte 0x31315600
    .4byte 0x14235756
    .4byte 0x55780076
    .4byte 0x36776114
    .4byte 0x66004113
    .4byte 0x32146667
    .4byte 0x00876756
    .4byte 0x75244142
    .4byte 0x61143653
    .4byte 0x67577600
    .4byte 0x78765776
    .4byte 0x01476a87
    .4byte 0xa9ba0333
    .4byte 0x51baef04
    .4byte 0x03ff971b
    .4byte 0x524b52b0
    .4byte 0x58bec3ff
    .4byte 0x66bb5027
    .4byte 0xa9b799ff
    .4byte 0x0089bb40
    .4byte 0x0a00880b
    .4byte 0xba016777
    .4byte 0xe2226770
    .4byte 0x0100b702
    .4byte 0x32116616
    .4byte 0x6204079e
    .4byte 0x067f0478
    .4byte 0x12cd01e9
    .4byte 0x16103608
    .4byte 0xed063616
    .4byte 0x36761236
    .4byte 0x61122212
    .4byte 0x13117f04
    .4byte 0x69310330
    .4byte 0x10e00126
    .4byte 0x43271203
    .4byte 0x87098776
    .4byte 0x33117618
    .4byte 0x38032b00
    .4byte 0x61766113
    .4byte 0x91cf9666
    .4byte 0xcba986e7
    .4byte 0x7c0700dc
    .4byte 0xcb7ef1fc
    .4byte 0x6337d52b
    .4byte 0x9adf33e3
    .4byte 0x77761c78
    .4byte 0x17c40089
    .4byte 0x67e383af
    .4byte 0x89aa03bc
    .4byte 0x7899ab78
    .4byte 0xb832de12
    .4byte 0x22df40ff
    .4byte 0x00ea12c1
    .4byte 0x92ad1319
    .4byte 0xa28b26a9
    .4byte 0x312223df
    .4byte 0x1114c513
    .4byte 0x16df1241
    .4byte 0x0277709b
    .4byte 0x23df43b3
    .4byte 0x88786628
    .4byte 0x0c08a067
    .4byte 0x22371116
    .4byte 0x62216111
    .4byte 0x64030080
    .4byte 0x76667666
    .4byte 0x77068777
    .4byte 0x88988887
    .4byte 0xef60ce08
    .4byte 0xdb72ffdd
    .4byte 0x7bf2c771
    .4byte 0x7bcb7fc5
    .4byte 0x7f557752
    .4byte 0x674e4e09
    .4byte 0x67664e09
    .4byte 0x5b037101
    .4byte 0xcf675a25
    .4byte 0x120b7b15
    .4byte 0xfff08889
    .4byte 0x1404ff60
    .4byte 0x90dff214
    .4byte 0x163d0001
    .4byte 0xf411c105
    .4byte 0xc9b3a445
    .4byte 0x10c3e843
    .4byte 0x6108013a
    .4byte 0x01777676
    .4byte 0xfb610aeb
    .4byte 0xff104b01
    .4byte 0x01202110
    .4byte 0x0067ff40
    .4byte 0x294908ff
    .4byte 0x0801cba9
    .4byte 0xa91000ba
    .4byte 0xdaf00b67
    .4byte 0x1b196b39
    .4byte 0x532b1261
    .4byte 0x0300e09f
    .4byte 0x0600dfde
    .4byte 0x00d0db01
    .4byte 0x50071003
    .4byte 0x00ea730f
    .4byte 0x13009002
    .4byte 0x1600cdde
    .4byte 0xbcde00bc
    .4byte 0x07e0ab24
    .4byte 0x0933679e
    .4byte 0x0036668d
    .4byte 0x66367676
    .4byte 0x33366367
    .4byte 0x33347600
    .4byte 0x35556631
    .4byte 0x63360022
    .4byte 0x62265636
    .4byte 0x35686334
    .4byte 0x37287a00
    .4byte 0x63ef1b63
    .4byte 0x7742a987
    .4byte 0x33663007
    .4byte 0x181ca976
    .4byte 0x5c08a043
    .4byte 0x99660a88
    .4byte 0xaa789aa9
    .4byte 0x89abba10
    .4byte 0xcc9afa07
    .4byte 0xab01cddc
    .4byte 0xbcdffddd
    .4byte 0x7304ffdf
    .4byte 0xdff00f07
    .4byte 0x1d067412
    .4byte 0x9f05e308
    .4byte 0xdf0c9956
    .4byte 0xbbe70caa
    .4byte 0x2018ef0c
    .4byte 0x5f0da5dd
    .4byte 0xcb9708df
    .4byte 0xa9cb0298
    .4byte 0x04819f03
    .4byte 0xdccbffb2
    .4byte 0x03dc0fff
    .4byte 0x791dff9b
    .4byte 0xbb152718
    .4byte 0x01f0a358
    .4byte 0xbfe61f48
    .4byte 0x25fa1320
    .4byte 0x15cf12c3
    .4byte 0x01b755b3
    .4byte 0xd31666fe
    .4byte 0x22896eab
    .4byte 0x657116eb
    .4byte 0x5c197116
    .4byte 0x1416a011
    .4byte 0x09536666
    .4byte 0x732576b6
    .4byte 0x78148761
    .4byte 0x14003111
    .4byte 0x257f0451
    .4byte 0x66110012
    .4byte 0x57161232
    .4byte 0x660c1523
    .4byte 0x14122678
    .4byte 0x1634027f
    .4byte 0x56310e16
    .4byte 0x38007761
    .4byte 0x2302f732
    .4byte 0x77761056
    .4byte 0x77371067
    .4byte 0xb4898776
    .4byte 0x1c984600
    .4byte 0xcb260fa7
    .4byte 0x11baaa01
    .4byte 0xa987620d
    .4byte 0x01030021
    .4byte 0xb316bac6
    .4byte 0xe65b11fb
    .4byte 0x5097449f
    .4byte 0xdd3fa8f7
    .4byte 0x0350b332
    .4byte 0x9a17109f
    .4byte 0x02a70288
    .4byte 0x1d6a14a5
    .4byte 0x7fe600b0
    .4byte 0x00035061
    .4byte 0x123208fa
    .4byte 0x12a38289
    .4byte 0x619e16e7
    .4byte 0x00400866
    .4byte 0x123211fd
    .4byte 0x81bb3221
    .4byte 0x67160320
    .4byte 0x67661422
    .4byte 0x35e6a304
    .4byte 0x02c1035f
    .4byte 0x001211aa
    .4byte 0x110800df
    .4byte 0x05132268
    .4byte 0x1287df60
    .4byte 0x99a987bf
    .4byte 0xba98a908
    .4byte 0xbb6705aa
    .4byte 0xdc01bacb
    .4byte 0xfdcbdccc
    .4byte 0xd500fddd
    .4byte 0xca01ff5f
    .4byte 0x8b9e830f
    .4byte 0x0f4f9b73
    .4byte 0xff5b8542
    .4byte 0x5b280300
    .4byte 0x61050390
    .4byte 0x9923e605
    .4byte 0x670c36f7
    .4byte 0x906318f5
    .4byte 0x086753df
    .4byte 0x02007653
    .4byte 0xfd751b77
    .4byte 0x5f138923
    .4byte 0xb7140b01
    .4byte 0x9c37ea1e
    .4byte 0x81521716
    .4byte 0x76767608
    .4byte 0x87878761
    .4byte 0x1ba21b0b
    .4byte 0x2800788b
    .4byte 0x0f661188
    .4byte 0x76217683
    .4byte 0x89df0098
    .4byte 0x0baaa988
    .4byte 0xabba2fd2
    .4byte 0x11bbc701
    .4byte 0x5ecf11c7
    .4byte 0x553b0f7f
    .4byte 0xba430fa9
    .4byte 0x0fcb6b0f
    .4byte 0x7b0fdc73
    .4byte 0x830ffd4f
    .4byte 0xec0addff
    .4byte 0x7613930f
    .4byte 0xde7f8702
    .4byte 0x03109b02
    .4byte 0x03209753
    .4byte 0x1500b313
    .4byte 0x12844b76
    .4byte 0x3689abab
    .4byte 0x63070033
    .4byte 0x589a10bc
    .4byte 0x36070036
    .4byte 0x00111236
    .4byte 0x32532462
    .4byte 0x33253562
    .4byte 0x31677500
    .4byte 0x42585632
    .4byte 0x78871165
    .4byte 0x36440d66
    .4byte 0xc6028763
    .4byte 0x66339802
    .4byte 0x0046ba98
    .4byte 0x360a5783
    .4byte 0x0065a986
    .4byte 0x9f004507
    .4byte 0x5b42ed65
    .4byte 0xb6079f17
    .4byte 0x07a41700
    .4byte 0xad1700b6
    .4byte 0xdd0320b5
    .4byte 0x13100730
    .4byte 0xbb6400aa
    .4byte 0x03ab0300
    .4byte 0xba0378ba
    .4byte 0x9aba0389
    .4byte 0x4f539411
    .4byte 0xcb01cd41
    .4byte 0xf00ffddf
    .4byte 0xdebd11ff
    .4byte 0xcf0b84f3
    .4byte 0xf0c4010f
    .4byte 0x00015017
    .4byte 0x10ea7656
    .4byte 0x00331edf
    .4byte 0x5600aa56
    .4byte 0xcc5600bb
    .4byte 0x005f00c0
    .4byte 0x78fdff85
    .4byte 0x6a678876
    .4byte 0x0ac90089
    .4byte 0x6f06164e
    .4byte 0x67770616
    .4byte 0x05bbcd3f
    .4byte 0x022f18a7
    .4byte 0x41b311ef
    .4byte 0xe86503bf
    .4byte 0x3b1e7e02
    .4byte 0x01881705
    .4byte 0xaaba9997
    .4byte 0xc4029a5b
    .4byte 0x03331e87
    .4byte 0xf607a9ae
    .4byte 0x04b5072b
    .4byte 0xf75ccb9a
    .4byte 0x01fd0301
    .4byte 0x9601ff96
    .4byte 0x96010f5f
    .4byte 0x105b9400
    .4byte 0xf91b56ce
    .4byte 0xe9ab32ff
    .4byte 0x681b6b01
    .4byte 0x07619d0b
    .4byte 0x0e677627
    .4byte 0xf70a82f2
    .4byte 0x9abc8998
    .4byte 0xbafb0da9
    .4byte 0xbf10ab54
    .4byte 0x66bf0077
    .4byte 0x76112100
    .4byte 0x7a0a7851
    .4byte 0x899f0089
    .4byte 0xcb008867
    .4byte 0xcb009978
    .4byte 0x7f32bf80
    .4byte 0x76165706
    .4byte 0x3304e378
    .4byte 0x7f926732
    .4byte 0x2d987651
    .4byte 0xe0c31b93
    .4byte 0x4800c31a
    .4byte 0xabcb5903
    .4byte 0x00dccbbb
    .4byte 0xfddcbcbc
    .4byte 0xfffdcdcd
    .4byte 0x6f01df5f
    .4byte 0x96bb00ff
    .4byte 0xa9cfdee3
    .4byte 0xf55b53e3
    .4byte 0xbb5bb71b
    .4byte 0x06040397
    .4byte 0x875a0176
    .4byte 0x03c0a400
    .4byte 0x76c90a2b
    .4byte 0x87676787
    .4byte 0x78780098
    .4byte 0x9989a998
    .4byte 0x9a7bbaa9
    .4byte 0xdf00e703
    .4byte 0xdf406404
    .4byte 0x80752261
    .4byte 0xce26d8df
    .4byte 0x0a611810
    .4byte 0x87ef04a3
    .4byte 0x8900a988
    .4byte 0x9aba9998
    .4byte 0x0bcbaaa9
    .4byte 0xdcbbbaab
    .4byte 0x03875807
    .4byte 0x10250172
    .4byte 0x0f997611
    .4byte 0x7789aaf9
    .4byte 0x9abb0098
    .4byte 0xabcca988
    .4byte 0xdd07ba99
    .4byte 0x99cbaabc
    .4byte 0x06159b01
    .4byte 0x45f59bf9
    .4byte 0xf02cae03
    .4byte 0xa9c30601
    .4byte 0x00ba4403
    .4byte 0x03cb6808
    .4byte 0xe0a30e4d
    .4byte 0x89ab93aa
    .4byte 0x9a650425
    .4byte 0x0e213678
    .4byte 0x25ab430f
    .4byte 0x57035789
    .4byte 0x93425368
    .4byte 0x557b0387
    .4byte 0xa9cf0198
    .4byte 0x01bacf01
    .4byte 0xcf01cbcf
    .4byte 0xbcdedc01
    .4byte 0xcde0edcb
    .4byte 0xde4f1903
    .4byte 0x0ee04600
    .4byte 0xef1ae72a
    .4byte 0xff1af71a
    .4byte 0x5013de7f
    .4byte 0x57630180
    .4byte 0x53537900
    .4byte 0x26508010
    .4byte 0xcccbbc05
    .4byte 0x851bcdfd
    .4byte 0xc40f04fd
    .4byte 0x43d32803
    .4byte 0x00bbcdff
    .4byte 0x1ffdcc1c
    .4byte 0x00ddff00
    .4byte 0xd3ec101c
    .4byte 0xf16f2f4c
    .4byte 0x1d60f004
    .4byte 0x3fffdb19
    .4byte 0xcbaa1f50
    .4byte 0xbb00abbb
    .4byte 0xccbcccdc
    .4byte 0x7dcdddfd
    .4byte 0x12ca03dd
    .4byte 0x502c123e
    .4byte 0xaa7f111f
    .4byte 0x009e7001
    .4byte 0x01cc0085
    .4byte 0x23850070
    .4byte 0xdf85501b
    .4byte 0xbccbbc00
    .4byte 0xcddccdff
    .4byte 0xfddf1df0
    .4byte 0x108c01df
    .4byte 0xaa5fa9c0
    .4byte 0xbb56ab03
    .4byte 0x03ccab03
    .4byte 0x8b00ddab
    .4byte 0x68bc6200
    .4byte 0x028b80ff
    .4byte 0xc70299c7
    .4byte 0x008888aa
    .4byte 0x9999bba9
    .4byte 0xaaaaccba
    .4byte 0xbbddcb10
    .4byte 0xcccc6c00
    .4byte 0xdd6afffd
    .4byte 0x17006c00
    .4byte 0xdc1700cb
    .4byte 0xbffd1700
    .4byte 0x100f1740
    .4byte 0x10579417
    .4byte 0xf82767fc
    .4byte 0x8001f013
    .4byte 0x00000180
    .4byte 0x001c0010
    .4byte 0xf0000035
    .4byte 0xf0014001
    .4byte 0x00ff0300
    .4byte 0x03008006
    .4byte 0xf000ddff
    .4byte 0x0000ccdf
    .4byte 0xf0bbcdff
    .4byte 0xffaabcdf
    .4byte 0x99abcd00
    .4byte 0x889abcdf
    .4byte 0x89ab10cd
    .4byte 0x001c0077
    .4byte 0x00000fff
    .4byte 0x00ffdd00
    .4byte 0x0ffdccf0
    .4byte 0xdcbbff00
    .4byte 0xcbaadfff
    .4byte 0x99cd00fd
    .4byte 0x88bcdcba
    .4byte 0xab68cba9
    .4byte 0x2b405090
    .4byte 0xff2b00f0
    .4byte 0xff2ffdcc
    .4byte 0xcd2b00df
    .4byte 0x4fd074d0
    .4byte 0x14008d70
    .4byte 0x1400ff55
    .4byte 0xcd1400df
    .4byte 0x00bc6400
    .4byte 0xbaab1864
    .4byte 0xb0b6f0dc
    .4byte 0xdcba984e
    .4byte 0xcba9ff05
    .4byte 0x06000ffd
    .4byte 0x5f060000
    .4byte 0x00060000
    .4byte 0x67200600
    .4byte 0x01f00600
    .4byte 0xdf59f770
    .4byte 0x00cd0600
    .4byte 0xddad00fe
    .4byte 0x55fe00dd
    .4byte 0xbbfe00cc
    .4byte 0x00aafe00
    .4byte 0xfe0099fe
    .4byte 0xfe00886a
    .4byte 0x00f0ff80
    .4byte 0xff00ffaf
    .4byte 0xff0080df
    .4byte 0xba99dddd
    .4byte 0x1988cccc
    .4byte 0xa0bbbba9
    .4byte 0x00c2308c
    .4byte 0x018000dd
    .4byte 0xf0ffdccc
    .4byte 0x40fdcbbb
    .4byte 0x6621aadf
    .4byte 0xff67000f
    .4byte 0x00fd6700
    .4byte 0x00afdc67
    .4byte 0x6700cb67
    .4byte 0xa09ef0ba
    .4byte 0xf01f7151
    .4byte 0xf00f191a
    .4byte 0xd05f50ff
    .4byte 0x00bcdfd3
    .4byte 0x00ab4106
    .4byte 0xddff9a06
    .4byte 0xda00fddf
    .4byte 0xda00dc55
    .4byte 0xbada00cb
    .4byte 0x00a9da00
    .4byte 0x899800da
    .4byte 0x78877677
    .4byte 0x76546266
    .4byte 0x00f0df30
    .4byte 0xb301ff99
    .4byte 0xbb00dddf
    .4byte 0xaacccddc
    .4byte 0x00bbbccb
    .4byte 0xaaabba99
    .4byte 0x999aa988
    .4byte 0x0fdbf094
    .4byte 0xffdb00f0
    .4byte 0xaadfdb00
    .4byte 0x61dcba3a
    .4byte 0x004522df
    .4byte 0xd801df24
    .4byte 0xd801afcd
    .4byte 0xabfc01bc
    .4byte 0x97302802
    .4byte 0x6302d811
    .4byte 0xccddff15
    .4byte 0x00bbff00
    .4byte 0xff00aaff
    .4byte 0xff00995d
    .4byte 0xf0172188
    .4byte 0xdfad81dd
    .4byte 0xf0ee3f30
    .4byte 0x02012019
    .4byte 0x3202002a
    .4byte 0x014021f0
    .4byte 0xcba91587
    .4byte 0xdf2302cd
    .4byte 0x92ff2302
    .4byte 0x27528023
    .4byte 0x66766789
    .4byte 0x00877898
    .4byte 0x98898777
    .4byte 0xa9987688
    .4byte 0x87619900
    .4byte 0x7622aaa9
    .4byte 0x10ba5098
    .4byte 0x3c006203
    .4byte 0x87622111
    .4byte 0x12221100
    .4byte 0x12222176
    .4byte 0x12220061
    .4byte 0x62666111
    .4byte 0x77001111
    .4byte 0x88111166
    .4byte 0x74221167
    .4byte 0xa1400199
    .4byte 0xdd032073
    .4byte 0x9abc07a0
    .4byte 0xab667800
    .4byte 0x9a116789
    .4byte 0x30164878
    .4byte 0x80116703
    .4byte 0x77116607
    .4byte 0x9aba9800
    .4byte 0x89a98766
    .4byte 0x98760511
    .4byte 0x00876178
    .4byte 0x1c007628
    .4byte 0x0077613d
    .4byte 0x00640003
    .4byte 0xbc6b0201
    .4byte 0xab406b02
    .4byte 0x779a6b02
    .4byte 0x6689aa98
    .4byte 0x78998707
    .4byte 0x7d007611
    .4byte 0xf1f02740
    .4byte 0xbc01b095
    .4byte 0x89a4039a
    .4byte 0x00786400
    .4byte 0x00674664
    .4byte 0x87611664
    .4byte 0x7e000310
    .4byte 0x0310ff76
    .4byte 0x0b110311
    .4byte 0x1f111711
    .4byte 0x03104b13
    .4byte 0x10ff5713
    .4byte 0xf0983303
    .4byte 0xf3a08101
    .4byte 0x62bfb16a
    .4byte 0xf58f228b
    .4byte 0x0b505404
    .4byte 0x03010310
    .4byte 0x11f50066
    .4byte 0x20facd00
    .4byte 0x600a0003
    .4byte 0x0003100b
    .4byte 0xf300aaf3
    .4byte 0xf300b799
    .4byte 0x00b50088
    .4byte 0xf70016f7
    .4byte 0x03101800
    .4byte 0x011f11d0
    .4byte 0xe30199db
    .4byte 0xbcba9888
    .4byte 0xa9877700
    .4byte 0x987666ab
    .4byte 0x61110b9a
    .4byte 0x03009987
    .4byte 0x03031089
    .4byte 0x03a95fc7
    .4byte 0x670098c7
    .4byte 0x39215d51
    .4byte 0x03206700
    .4byte 0x50f790ef
    .4byte 0xfdf601f3
    .4byte 0xd0f00350
    .4byte 0x0350ec30
    .4byte 0xb001f0fe
    .4byte 0xf177c427
    .4byte 0x100f013c
    .4byte 0x780a0103
    .4byte 0x300b50c8
    .4byte 0x039abb03
    .4byte 0x22679a23
    .4byte 0x67612201
    .4byte 0x26111112
    .4byte 0x10e00300
    .4byte 0x911f1107
    .4byte 0x89987723
    .4byte 0x87106688
    .4byte 0xcd017778
    .4byte 0x26776166
    .4byte 0x6611220f
    .4byte 0x00d50022
    .4byte 0x011f4128
    .4byte 0x01bc561b
    .4byte 0x1b01ab1b
    .4byte 0x111b019a
    .4byte 0x00e27813
    .4byte 0x00fa1103
    .4byte 0x9a167620
    .4byte 0xad89c805
    .4byte 0x0278c805
    .4byte 0x88026788
    .4byte 0x00981e01
    .4byte 0x0310aa17
    .4byte 0x773f4188
    .4byte 0x01663f01
    .4byte 0x01bd223f
    .4byte 0x7300213f
    .4byte 0x40000320
    .4byte 0x51220310
    .4byte 0x2e03bf2f
    .4byte 0x130310dc
    .4byte 0x10035033
    .4byte 0x2407510f
    .4byte 0x0300f567
    .4byte 0x03506f12
    .4byte 0x00770f10
    .4byte 0x7f008877
    .4byte 0x87009955
    .4byte 0xbb2f04aa
    .4byte 0x04cc3704
    .4byte 0x04dd543f
    .4byte 0x1a04df47
    .4byte 0xbba804aa
    .4byte 0x8788009a
    .4byte 0x9899abcc
    .4byte 0xaa20bcdd
    .4byte 0xba1701a9
    .4byte 0xcbccdfff
    .4byte 0xdc4b04a2
    .4byte 0x11fd3d01
    .4byte 0x16e71011
    .4byte 0x61161114
    .4byte 0x0061ed10
    .4byte 0xad767605
    .4byte 0x10870700
    .4byte 0x030012c3
    .4byte 0x02673203
    .4byte 0x03677500
    .4byte 0x00872300
    .4byte 0x070016cb
    .4byte 0xbf031022
    .4byte 0xf6267201
    .4byte 0x1047851b
    .4byte 0x41475503
    .4byte 0x780600a3
    .4byte 0x10060067
    .4byte 0x204b0043
    .4byte 0x9aba664f
    .4byte 0xa9678810
    .4byte 0x99986700
    .4byte 0x87006789
    .4byte 0x76167888
    .4byte 0x6f678877
    .4byte 0x00940161
    .4byte 0x9f307783
    .4byte 0xa4100150
    .4byte 0x51e1ab00
    .4byte 0x23e213c3
    .4byte 0x616787eb
    .4byte 0xb8550461
    .4byte 0x00669113
    .4byte 0x20d23014
    .4byte 0x7616112d
    .4byte 0x524710e0
    .4byte 0x61b321ae
    .4byte 0x11677111
    .4byte 0x0f10664a
    .4byte 0x2d007611
    .4byte 0x87fc0076
    .4byte 0xdc01116f
    .4byte 0x20a94700
    .4byte 0x10780103
    .4byte 0x70370303
    .4byte 0x941fd7ba
    .4byte 0x880310ff
    .4byte 0x00ba9887
    .4byte 0xcba99899
    .4byte 0xdcbaa9aa
    .4byte 0xcbbabb01
    .4byte 0xdccbccfd
    .4byte 0x07fb5901
    .4byte 0x155a0683
    .4byte 0xe61bf1cf
    .4byte 0x0600ab63
    .4byte 0x9a2aab02
    .4byte 0x781b0189
    .4byte 0x01671b01
    .4byte 0x14c41617
    .4byte 0x89d713e3
    .4byte 0x3b026667
    .4byte 0x04996677
    .4byte 0x0098617c
    .4byte 0x117c0410
    .4byte 0x3f7e0276
    .4byte 0x45157661
    .4byte 0x0f501ff1
    .4byte 0x1f612321
    .4byte 0x21fb0340
    .4byte 0x5119001f
    .4byte 0xf12a201f
    .4byte 0x0b10611f
    .4byte 0x008e1fa1
    .4byte 0x87666603
    .4byte 0x23314300
    .4byte 0xffa91f71
    .4byte 0x43d8f353
    .4byte 0x4bf81355
    .4byte 0x43f5cff8
    .4byte 0x0b004335
    .4byte 0xf7fa42fa
    .4byte 0x10031097
    .4byte 0xaa03070b
    .4byte 0xa8996303
    .4byte 0x02884702
    .4byte 0x960277a2
    .4byte 0x0a267866
    .4byte 0x26781612
    .4byte 0x41123b11
    .4byte 0x113a673f
    .4byte 0x05370199
    .4byte 0x773f31bc
    .4byte 0xfe663f01
    .4byte 0x12053f81
    .4byte 0x3fd13722
    .4byte 0xe7034022
    .4byte 0xfa613f41
    .4byte 0x26100d11
    .4byte 0x3fc13ff1
    .4byte 0x01660f00
    .4byte 0x775576a4
    .4byte 0x0022a212
    .4byte 0x5f00662b
    .4byte 0xcc430077
    .4byte 0x8b051314
    .4byte 0x0300aa98
    .4byte 0x8988b706
    .4byte 0x13e313ff
    .4byte 0x954391ff
    .4byte 0x10fb304f
    .4byte 0x952a2103
    .4byte 0x4f22fe03
    .4byte 0x4f131f17
    .4byte 0x03855713
    .4byte 0x1f084f12
    .4byte 0x00887b89
    .4byte 0x43082793
    .4byte 0x163703e5
    .4byte 0x5b023703
    .4byte 0x99d200bf
    .4byte 0x06000607
    .4byte 0xea20c924
    .4byte 0x262649c2
    .4byte 0xf130617f
    .4byte 0x03200f00
    .4byte 0x2f111960
    .4byte 0x2b020041
    .4byte 0x102f14f8
    .4byte 0x474f016b
    .4byte 0x77014078
    .4byte 0xa9078887
    .4byte 0x98777678
    .4byte 0x6a10d013
    .4byte 0x20ce2f20
    .4byte 0x11331003
    .4byte 0x723ff676
    .4byte 0xcc07104f
    .4byte 0xdd7c07ba
    .4byte 0xd3008407
    .4byte 0x04bcb704
    .4byte 0x04bfcdb7
    .4byte 0x5706dfb7
    .4byte 0x5b07b118
    .4byte 0x17221800
    .4byte 0xa1ee6f24
    .4byte 0x033b2127
    .4byte 0x27186132
    .4byte 0x27026714
    .4byte 0x2f02af67
    .4byte 0x9a873478
    .4byte 0x1f719b05
    .4byte 0xa8110130
    .4byte 0x000500e7
    .4byte 0x11290704
    .4byte 0x125f1878
    .4byte 0xf862931a
    .4byte 0xd90127d1
    .4byte 0x03203240
    .4byte 0x16666931
    .4byte 0x01667e61
    .4byte 0x40383069
    .4byte 0x10ef30eb
    .4byte 0x981fc11c
    .4byte 0x041f01df
    .4byte 0x865166c0
    .4byte 0x27210350
    .4byte 0x57971b91
    .4byte 0xf75f78ff
    .4byte 0xf16ba357
    .4byte 0x134fa31f
    .4byte 0x146b1423
    .4byte 0x4752d773
    .4byte 0x0a783607
    .4byte 0xe70a89e7
    .4byte 0x05201fe1
    .4byte 0x476718f8
    .4byte 0xa01a413f
    .4byte 0x664292d3
    .4byte 0x11ee6666
    .4byte 0x10952505
    .4byte 0x0d006103
    .4byte 0x40004e23
    .4byte 0x7733f016
    .4byte 0x3ff03302
    .4byte 0x8777c155
    .4byte 0x771f7877
    .4byte 0x9c076676
    .4byte 0x01e07620
    .4byte 0x96043b57
    .4byte 0x0350cb6f
    .4byte 0x07764b57
    .4byte 0xd73b5717
    .4byte 0xf3135037
    .4byte 0x4a522f1d
    .4byte 0x25119df4
    .4byte 0x2300dfdc
    .4byte 0xf067cc15
    .4byte 0x1f1a23f0
    .4byte 0x7b932678
    .4byte 0x73b19754
    .4byte 0xd0bb74f7
    .4byte 0x0836001b
    .4byte 0xa304671f
    .4byte 0xaf22ef55
    .4byte 0x771f07a2
    .4byte 0x78882707
    .4byte 0x77fc0088
    .4byte 0x4601667a
    .4byte 0xbf139405
    .4byte 0x01670150
    .4byte 0x773f7812
    .4byte 0x31861178
    .4byte 0x41652180
    .4byte 0xd3ca54a2
    .4byte 0x1970dfd4
    .4byte 0x0066c5e2
    .4byte 0x217a0003
    .4byte 0x0367b1d7
    .4byte 0x776607b7
    .4byte 0x03766677
    .4byte 0x6012260c
    .4byte 0x0014f81d
    .4byte 0xbf787d08
    .4byte 0x1b267b11
    .4byte 0xbfba9761
    .4byte 0x09ba4e07
    .4byte 0x919f2d33
    .4byte 0x031b2683
    .4byte 0x1fef55bd
    .4byte 0x0a622678
    .4byte 0x0b0c0557
    .4byte 0x1b671b5f
    .4byte 0xb71efe6f
    .4byte 0xc71ebf1e
    .4byte 0xdf498fed
    .4byte 0x32076751
    .4byte 0xdf05fa77
    .4byte 0xd704030b
    .4byte 0xa510ff3a
    .4byte 0x66420116
    .4byte 0x774201bf
    .4byte 0xbc753fd1
    .4byte 0xc90a1806
    .4byte 0xa042cd20
    .4byte 0x112865f7
    .4byte 0x4925f14b
    .4byte 0x9703611f
    .4byte 0x12200a45
    .4byte 0x02d514ff
    .4byte 0x15070d9e
    .4byte 0xb02f24f9
    .4byte 0x073f0133
    .4byte 0xaf17d7ac
    .4byte 0x02773ff1
    .4byte 0x4411fda2
    .4byte 0x3b413a0a
    .4byte 0x088338d7
    .4byte 0x1601a992
    .4byte 0x583bd1ba
    .4byte 0xff031083
    .4byte 0x7f0dea09
    .4byte 0x2c00e008
    .4byte 0x432143f1
    .4byte 0x7fb9330e
    .4byte 0x0fa7d2e7
    .4byte 0x66a406a2
    .4byte 0x00232b66
    .4byte 0xd4031094
    .4byte 0x3f110b00
    .4byte 0x673f0116
    .4byte 0x76778919
    .4byte 0x01bc00eb
    .4byte 0x783ff12f
    .4byte 0x0177e224
    .4byte 0xfff7507b
    .4byte 0x33d40350
    .4byte 0x5f4a9042
    .4byte 0x16508d11
    .4byte 0xfe045f17
    .4byte 0x185f02d7
    .4byte 0xc40177d7
    .4byte 0x0444a166
    .4byte 0xcf3c2131
    .4byte 0x01807c57
    .4byte 0x99022221
    .4byte 0x6775779b
    .4byte 0x87064500
    .4byte 0x98776667
    .4byte 0x4b3557f8
    .4byte 0xa70982a9
    .4byte 0xfdcccbba
    .4byte 0x26a80e22
    .4byte 0x673f00ba
    .4byte 0x472b47fb
    .4byte 0x0b883f4b
    .4byte 0x0bab993f
    .4byte 0x3f0baa3f
    .4byte 0xcc3f0bbb
    .4byte 0xf7123f5b
    .4byte 0x00c311d7
    .4byte 0x3600ff36
    .4byte 0x0093110f
    .4byte 0xfe1f6f36
    .4byte 0xe7deba7b
    .4byte 0x8f060334
    .4byte 0x0350f7e9
    .4byte 0x7f781f1b
    .4byte 0x33e91377
    .4byte 0x018ff2f3
    .4byte 0x50e7f34f
    .4byte 0xffd12811
    .4byte 0xe958cd93
    .4byte 0x8e158135
    .4byte 0x5b5b01f0
    .4byte 0xa711fc39
    .4byte 0x769f05ba
    .4byte 0x3934e601
    .4byte 0x02660120
    .4byte 0x873161ea
    .4byte 0x04710277
    .4byte 0xa9a9989f
    .4byte 0x986fc206
    .4byte 0x6f01c206
    .4byte 0x4dcc1176
    .4byte 0xd6463339
    .4byte 0x2724ffbf
    .4byte 0xdf4c9f55
    .4byte 0xeb22bf96
    .4byte 0x2b65ef8c
    .4byte 0x22fa3f55
    .4byte 0x420300b7
    .4byte 0x012215bf
    .4byte 0x3e01783e
    .4byte 0x3e01be67
    .4byte 0x00d72d16
    .4byte 0x150710ab
    .4byte 0x16dd024f
    .4byte 0x004101ff
    .4byte 0xf63ef6f7
    .4byte 0xf13fb177
    .4byte 0x1644101b
    .4byte 0x3ff1f6b9
    .4byte 0x40503ff1
    .4byte 0x0316f719
    .4byte 0x61982461
    .4byte 0x010310e1
    .4byte 0x613f2158
    .4byte 0x03788897
    .4byte 0x3ff1ffb2
    .4byte 0x53123f81
    .4byte 0x27e45b12
    .4byte 0x6f150300
    .4byte 0x55fd3be1
    .4byte 0xc17f5263
    .4byte 0x100b943f
    .4byte 0x783f0107
    .4byte 0x0f813fa1
    .4byte 0x12626728
    .4byte 0x00222611
    .4byte 0x0b00df07
    .4byte 0x00773f31
    .4byte 0x8105f9f7
    .4byte 0x522f2123
    .4byte 0x8235ff5b
    .4byte 0xd218131b
    .4byte 0x4e000130
    .4byte 0x871f0320
    .4byte 0x1fda0710
    .4byte 0x11031066
    .4byte 0xc6038003
    .4byte 0x98660287
    .4byte 0x5f420af5
    .4byte 0x00633f5f
    .4byte 0x21057807
    .4byte 0x601f0189
    .4byte 0x311ff178
    .4byte 0xdcbbba1f
    .4byte 0xaa04a999
    .4byte 0x999888cb
    .4byte 0xa9886f06
    .4byte 0x0c2200f7
    .4byte 0x030744a3
    .4byte 0x074fcddb
    .4byte 0x01f0e217
    .4byte 0x60e137fb
    .4byte 0x419b9303
    .4byte 0x61a74e37
    .4byte 0x9f939b43
    .4byte 0x761310ba
    .4byte 0x98040e03
    .4byte 0x00166b00
    .4byte 0x766566f7
    .4byte 0xa6008d05
    .4byte 0x96048887
    .4byte 0x77cd0078
    .4byte 0x0a280267
    .4byte 0x664c0a43
    .4byte 0xa965d814
    .4byte 0x0cbfe70e
    .4byte 0xd41d8790
    .4byte 0x49218d43
    .4byte 0x5912b514
    .4byte 0x35ac4e2c
    .4byte 0xd90e6167
    .4byte 0x0d800561
    .4byte 0xf06187f4
    .4byte 0x1b217003
    .4byte 0xe7106b2b
    .4byte 0xa9879876
    .4byte 0x88899901
    .4byte 0x789aa9a9
    .4byte 0x6733a90f
    .4byte 0x00070587
    .4byte 0x006767ff
    .4byte 0x09030024
    .4byte 0x98767889
    .4byte 0x88613e04
    .4byte 0x00804109
    .4byte 0x9aaa7725
    .4byte 0xabba8899
    .4byte 0xa999aa00
    .4byte 0xa9aabbbb
    .4byte 0xbbcc03cb
    .4byte 0xccdddcba
    .4byte 0xc3dd4b9a
    .4byte 0x583f22fe
    .4byte 0x667bcdaf
    .4byte 0x08aa003f
    .4byte 0x67b308af
    .4byte 0x7f63166f
    .4byte 0x08610330
    .4byte 0x16fb1ad6
    .4byte 0xb51fc1f8
    .4byte 0x0c767426
    .4byte 0x773e2b7e
    .4byte 0x0d667908
    .4byte 0x1f01fd93
    .4byte 0x7005490c
    .4byte 0xbe3e1ff1
    .4byte 0xd1675400
    .4byte 0x6a0bbf1f
    .4byte 0x008a0461
    .4byte 0x0a1f011c
    .4byte 0x001f91af
    .4byte 0x98760f03
    .4byte 0x62038999
    .4byte 0x03101ff1
    .4byte 0x10aa8d01
    .4byte 0xec068876
    .4byte 0xaa080799
    .4byte 0x89bae705
    .4byte 0xbba9e705
    .4byte 0xbb1f01aa
    .4byte 0x7f2301bb
    .4byte 0xdd4f5acc
    .4byte 0x572351a3
    .4byte 0x500f514b
    .4byte 0x7ea7580b
    .4byte 0x44e30267
    .4byte 0x071f018f
    .4byte 0x071f4157
    .4byte 0x00f56163
    .4byte 0x001f111b
    .4byte 0x76d000c4
    .4byte 0x0e76b700
    .4byte 0x1501eaa1
    .4byte 0x18121f91
    .4byte 0x67220016
    .4byte 0xc5761b02
    .4byte 0x3e010711
    .4byte 0x02788766
    .4byte 0x3a04895f
    .4byte 0x001f11ff
    .4byte 0x1ecf1e24
    .4byte 0x03df4e6e
    .4byte 0x33650729
    .4byte 0x22610d29
    .4byte 0xfd086112
    .4byte 0x41771f01
    .4byte 0x7877361f
    .4byte 0x1f03ba04
    .4byte 0x025f2c16
    .4byte 0x76058942
    .4byte 0x779aa987
    .4byte 0x01991f31
    .4byte 0x0188671f
    .4byte 0x61590a1f
    .4byte 0x021f0166
    .4byte 0x501f61bb
    .4byte 0xa91f1167
    .4byte 0xba981f01
    .4byte 0x876faaaa
    .4byte 0x17014402
    .4byte 0x096313cc
    .4byte 0x00ab28c2
    .4byte 0x08cb5590
    .4byte 0x7e08dc7e
    .4byte 0xff7e08fd
    .4byte 0x0190c209
    .4byte 0x09dddd2b
    .4byte 0xffdcdfc9
    .4byte 0x9bff7aff
    .4byte 0x1203107b
    .4byte 0x8786045e
    .4byte 0xf0982601
    .4byte 0xe32d3201
    .4byte 0xe3ad3b01
    .4byte 0x76789a99
    .4byte 0x89abaa00
    .4byte 0x9abcbb87
    .4byte 0xcdcc0098
    .4byte 0xdfdda9ab
    .4byte 0xff01babc
    .4byte 0xffcbcdff
    .4byte 0x3b06dff0
    .4byte 0x98fdff02
    .4byte 0x086789aa
    .4byte 0x089f67f4
    .4byte 0x00cb78f4
    .4byte 0x0d2f0e07
    .4byte 0x488f7be3
    .4byte 0x021679af
    .4byte 0x04341225
    .4byte 0x87a72e9b
    .4byte 0x7ff80066
    .4byte 0x24f80077
    .4byte 0x165a012b
    .4byte 0x11a812e9
    .4byte 0x647a0273
    .4byte 0x07560061
    .4byte 0x128778f7
    .4byte 0x2f9a983d
    .4byte 0x4302ba98
    .4byte 0x22ce0acb
    .4byte 0x000b9207
    .4byte 0x40dd7ddb
    .4byte 0xed6224db
    .4byte 0x9f9bfe7f
    .4byte 0xfe0b00c3
    .4byte 0xa60f8750
    .4byte 0xa9ae0f98
    .4byte 0x00aaabcd
    .4byte 0xbbbcdfba
    .4byte 0xcccdffcb
    .4byte 0xdff0dc05
    .4byte 0x5100fddd
    .4byte 0x558b00ff
    .4byte 0x878b0076
    .4byte 0x00988b00
    .4byte 0x0b0fa9db
    .4byte 0xd700ba59
    .4byte 0x080b0fcb
    .4byte 0x60ddcd83
    .4byte 0x840387ff
    .4byte 0x11689abb
    .4byte 0x0310c31d
    .4byte 0x3efb0b40
    .4byte 0x283d1892
    .4byte 0x2f7f5923
    .4byte 0x060298af
    .4byte 0x1ee9ff30
    .4byte 0x31db576b
    .4byte 0x07011107
    .4byte 0x8e039911
    .4byte 0x98ad14a9
    .4byte 0x0187d801
    .4byte 0x319987d8
    .4byte 0xbb57ea03
    .4byte 0xef080711
    .4byte 0xcda306df
    .4byte 0xabbca306
    .4byte 0x06aba306
    .4byte 0x56009aa3
    .4byte 0x155e009a
    .4byte 0xf5897fcb
    .4byte 0xf001f06f
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0f001
    .4byte 0x01f001f0
    .4byte 0x00000190
    .4byte 0x00180010
    .4byte 0xba987600
    .4byte 0xcba987cc
    .4byte 0xba9800dd
    .4byte 0xcba9ffdc
    .4byte 0x0083fffd
    .4byte 0xfdcb0006
    .4byte 0x0600000f
    .4byte 0xf0d90320
    .4byte 0xf001a001
    .4byte 0x25000300
    .4byte 0x0600dff0
    .4byte 0x0600cd55
    .4byte 0xab0600bc
    .4byte 0x009a0600
    .4byte 0x00894006
    .4byte 0xccdd7806
    .4byte 0x00ccfddc
    .4byte 0xbbdccbbb
    .4byte 0xaacbbaaa
    .4byte 0xbaa99900
    .4byte 0xa9988899
    .4byte 0x87770088
    .4byte 0x76667798
    .4byte 0x33006687
    .4byte 0xf0ff7662
    .4byte 0x00ff000f
    .4byte 0xddffffff
    .4byte 0xccfffddf
    .4byte 0xdddccd00
    .4byte 0xcccbbcbb
    .4byte 0xbaab00aa
    .4byte 0xa99a99bb
    .4byte 0x891388aa
    .4byte 0x68509998
    .4byte 0x03000fff
    .4byte 0xdd006900
    .4byte 0xccff0ffd
    .4byte 0x00ffffdc
    .4byte 0xddfdcbbb
    .4byte 0xccdcbaaa
    .4byte 0x008860e5
    .4byte 0x00460020
    .4byte 0xcd2000df
    .4byte 0xbc5c2000
    .4byte 0x00ab2000
    .4byte 0x009f3020
    .4byte 0x00fff018
    .4byte 0xddff00dd
    .4byte 0xccdff0cc
    .4byte 0xcdffbb00
    .4byte 0xbcdfaabb
    .4byte 0xcd9906aa
    .4byte 0x008899ab
    .4byte 0x00201056
    .4byte 0x20f200fb
    .4byte 0x11fb10ef
    .4byte 0x0f0b0103
    .4byte 0xf2f01311
    .4byte 0x008c30c0
    .4byte 0xddff0f6b
    .4byte 0x0078fffd
    .4byte 0x67111677
    .4byte 0x16111676
    .4byte 0x11166100
    .4byte 0x61611111
    .4byte 0x76111511
    .4byte 0x67070036
    .4byte 0x00780700
    .4byte 0xf0887203
    .4byte 0xf137f13c
    .4byte 0x00789a37
    .4byte 0x00906706
    .4byte 0x01cc3606
    .4byte 0xcbaaab3f
    .4byte 0x999a00dc
    .4byte 0x8889cbba
    .4byte 0x7800baa9
    .4byte 0x67a99877
    .4byte 0x03988766
    .4byte 0x87763336
    .4byte 0x3f012333
    .4byte 0xfd528b00
    .4byte 0x00dc8c00
    .4byte 0x01cccb8b
    .4byte 0x01abaa3f
    .4byte 0x3f01993f
    .4byte 0x773f0188
    .4byte 0x23103f31
    .4byte 0xdd1b11b0
    .4byte 0x4f002300
    .4byte 0xcbbbbbff
    .4byte 0x00aadd37
    .4byte 0xbb8e0127
    .4byte 0xcb00cf30
    .4byte 0xdd158421
    .4byte 0x2000ddfd
    .4byte 0xbb2000cc
    .4byte 0xab0a3c01
    .4byte 0x30a9999a
    .4byte 0x3f11f0ab
    .4byte 0xffff08df
    .4byte 0x0200cddf
    .4byte 0x01cdddbc
    .4byte 0xbcccabbc
    .4byte 0x01bb99ab
    .4byte 0x2011d53f
    .4byte 0x00dd9b11
    .4byte 0x3b01cc08
    .4byte 0x573201bb
    .4byte 0x993b01aa
    .4byte 0x01883b01
    .4byte 0x60faf044
    .4byte 0x100f428f
    .4byte 0x66789a8f
    .4byte 0x33e60023
    .4byte 0x000310d5
    .4byte 0xf30066f2
    .4byte 0x88fb0077
    .4byte 0x99400301
    .4byte 0x12aa0b01
    .4byte 0x23987621
    .4byte 0xa987630a
    .4byte 0x67a80236
    .4byte 0xf077a802
    .4byte 0x57109401
    .4byte 0x67205f10
    .4byte 0xaa367788
    .4byte 0x67889900
    .4byte 0x7899aabb
    .4byte 0xaabb01cc
    .4byte 0xbbccdd89
    .4byte 0x63e6019a
    .4byte 0x01cc00ab
    .4byte 0x33cdff53
    .4byte 0x3e003700
    .4byte 0x0600cb55
    .4byte 0xfd0600dc
    .4byte 0x920fe742
    .4byte 0xfb11f6e7
    .4byte 0x0b12c710
    .4byte 0x018901d0
    .4byte 0x16a300c9
    .4byte 0x7789ab00
    .4byte 0x889aba67
    .4byte 0xaba90078
    .4byte 0xba988999
    .4byte 0x87089aaa
    .4byte 0x00abbba9
    .4byte 0x2221bc53
    .4byte 0x329f0085
    .4byte 0x00369876
    .4byte 0x10006764
    .4byte 0x64007865
    .4byte 0x9adc2000
    .4byte 0x00ab6400
    .4byte 0x67870064
    .4byte 0x78983366
    .4byte 0x87006367
    .4byte 0x76767889
    .4byte 0x00878998
    .4byte 0x98998761
    .4byte 0xa9987611
    .4byte 0xba03009f
    .4byte 0x72030031
    .4byte 0x20031007
    .4byte 0xfc034086
    .4byte 0x07521b32
    .4byte 0x0b100310
    .4byte 0x0c000320
    .4byte 0xab00bbbc
    .4byte 0xaaaaab89
    .4byte 0x0122339a
    .4byte 0x12336111
    .4byte 0x00231111
    .4byte 0x0710d803
    .4byte 0x02660310
    .4byte 0x11960289
    .4byte 0x11301678
    .4byte 0xb0d1f061
    .4byte 0xcba99901
    .4byte 0x008840bb
    .4byte 0xa98777d0
    .4byte 0x00766699
    .4byte 0x61118898
    .4byte 0x61117787
    .4byte 0x4200764b
    .4byte 0x4d002363
    .4byte 0x02020223
    .4byte 0xd700d077
    .4byte 0x00672000
    .4byte 0x63222620
    .4byte 0x11120a87
    .4byte 0x1f008763
    .4byte 0x88270087
    .4byte 0x889abc0a
    .4byte 0x661b0177
    .4byte 0xb7222301
    .4byte 0x00212b01
    .4byte 0x11771073
    .4byte 0x03203601
    .4byte 0x11f77311
    .4byte 0x1083117b
    .4byte 0xba2a0103
    .4byte 0x0f100350
    .4byte 0x53fd7f93
    .4byte 0x10035083
    .4byte 0xd11b710f
    .4byte 0x9823311f
    .4byte 0xa9549401
    .4byte 0x00ba8000
    .4byte 0x8000aa80
    .4byte 0x78489abb
    .4byte 0x1267ab01
    .4byte 0x89122e01
    .4byte 0x23333b67
    .4byte 0x03503fb0
    .4byte 0x00ac7373
    .4byte 0x4d030024
    .4byte 0x26520123
    .4byte 0x026341cc
    .4byte 0xfd027842
    .4byte 0xa9998900
    .4byte 0x133389aa
    .4byte 0x00626811
    .4byte 0x210310c6
    .4byte 0x11130310
    .4byte 0x46310111
    .4byte 0x67333111
    .4byte 0x00032014
    .4byte 0x87667764
    .4byte 0x76336788
    .4byte 0x13367702
    .4byte 0x00356661
    .4byte 0x00a08520
    .4byte 0x08008603
    .4byte 0x11188896
    .4byte 0x189b0a98
    .4byte 0x87038811
    .4byte 0x66870377
    .4byte 0x02876620
    .4byte 0x216776e1
    .4byte 0x37416632
    .4byte 0x11363e00
    .4byte 0x10333321
    .4byte 0x019a5503
    .4byte 0x5c01895c
    .4byte 0x675c0178
    .4byte 0x26022000
    .4byte 0x11763222
    .4byte 0x63031021
    .4byte 0x6113871a
    .4byte 0x5f012401
    .4byte 0x985f01a9
    .4byte 0x32667802
    .4byte 0x00226788
    .4byte 0x31761103
    .4byte 0x03106351
    .4byte 0x01330f13
    .4byte 0x73032047
    .4byte 0x735f01bf
    .4byte 0x03105b01
    .4byte 0x5b916341
    .4byte 0x03105fd1
    .4byte 0xf305cc41
    .4byte 0xf0ffdcdd
    .4byte 0xc01c00ff
    .4byte 0x01d05f15
    .4byte 0xbccbabcd
    .4byte 0xdc00bcdf
    .4byte 0xddcdffbc
    .4byte 0xfadff0bc
    .4byte 0x04043701
    .4byte 0xc3147f41
    .4byte 0x01bb4611
    .4byte 0x00bdcc47
    .4byte 0xa135dd08
    .4byte 0x3f802b04
    .4byte 0x00cd0f14
    .4byte 0x15df7f5b
    .4byte 0x1060f385
    .4byte 0xd04fa04a
    .4byte 0xf09f9301
    .4byte 0x25007001
    .4byte 0x73cbf3ab
    .4byte 0x887631cb
    .4byte 0x87610167
    .4byte 0x87611678
    .4byte 0x42910567
    .4byte 0x87032026
    .4byte 0x01113367
    .4byte 0x0480118c
    .4byte 0x2266116e
    .4byte 0x33613112
    .4byte 0x08006340
    .4byte 0x77617776
    .4byte 0x61018887
    .4byte 0x11987767
    .4byte 0xdf026616
    .4byte 0x11762601
    .4byte 0x31762211
    .4byte 0x6340a402
    .4byte 0x87764701
    .4byte 0x8887aa98
    .4byte 0x78bc0380
    .4byte 0x67898876
    .4byte 0x00af7761
    .4byte 0x55006655
    .4byte 0x2091f011
    .4byte 0x00df45c7
    .4byte 0xdbf5b007
    .4byte 0x10df5578
    .4byte 0x99999a07
    .4byte 0x888902aa
    .4byte 0x77789988
    .4byte 0x00665200
    .4byte 0x33367766
    .4byte 0x23366622
    .4byte 0x33161214
    .4byte 0x0366d003
    .4byte 0x216789cc
    .4byte 0xab006663
    .4byte 0x23367822
    .4byte 0x2360b300
    .4byte 0xc300bb00
    .4byte 0x61116777
    .4byte 0x03774566
    .4byte 0x777676a3
    .4byte 0x13660402
    .4byte 0x136668ec
    .4byte 0x117e06f5
    .4byte 0x7776bb13
    .4byte 0x00666416
    .4byte 0x3393264d
    .4byte 0x232c0023
    .4byte 0x67631311
    .4byte 0x13d60323
    .4byte 0x10940376
    .4byte 0x0310eb2e
    .4byte 0x2f10b606
    .4byte 0x98030088
    .4byte 0xf3003b00
    .4byte 0x76031081
    .4byte 0x87663198
    .4byte 0x753701a9
    .4byte 0x01d60298
    .4byte 0x66d32335
    .4byte 0x00772b01
    .4byte 0x008840a4
    .4byte 0x9abb99ac
    .4byte 0x01aaaa99
    .4byte 0x999a99a9
    .4byte 0xf5898898
    .4byte 0x5b35fd5b
    .4byte 0xbfe33f77
    .4byte 0x13a7e7f1
    .4byte 0xd7f003a0
    .4byte 0x0340f513
    .4byte 0x1310a723
    .4byte 0x08894e08
    .4byte 0x4e08894e
    .4byte 0xc6018941
    .4byte 0x222223b8
    .4byte 0xd1b80486
    .4byte 0x0400f000
    .4byte 0x33830433
    .4byte 0x06046431
    .4byte 0x03101260
    .4byte 0x678b3f11
    .4byte 0x00881125
    .4byte 0x66115778
    .4byte 0x32555796
    .4byte 0x35366300
    .4byte 0x1118bb88
    .4byte 0x19982066
    .4byte 0x1688b403
    .4byte 0x04aa8611
    .4byte 0xba861168
    .4byte 0xbb03008b
    .4byte 0x88860115
    .4byte 0x266233a8
    .4byte 0x00a30382
    .4byte 0x34321113
    .4byte 0x35332113
    .4byte 0x56661100
    .4byte 0x56881145
    .4byte 0x8a112f11
    .4byte 0x008b3701
    .4byte 0x31071003
    .4byte 0x8003403b
    .4byte 0x42320b06
    .4byte 0x43339876
    .4byte 0x00884276
    .4byte 0x44337703
    .4byte 0x11370164
    .4byte 0x22c301a0
    .4byte 0xaa771f15
    .4byte 0x81887789
    .4byte 0xaa99cf03
    .4byte 0x98aaaabb
    .4byte 0x875fb406
    .4byte 0xe162bc06
    .4byte 0x47d7063f
    .4byte 0xf6db133b
    .4byte 0x0130c39b
    .4byte 0x67893755
    .4byte 0xdd227616
    .4byte 0x7851e806
    .4byte 0x07892407
    .4byte 0x98789a24
    .4byte 0xa902bd04
    .4byte 0xba9abcbb
    .4byte 0x872308ab
    .4byte 0xc0023350
    .4byte 0x77810666
    .4byte 0x309a9876
    .4byte 0xc1068788
    .4byte 0xa9aab706
    .4byte 0xbb0fcdcb
    .4byte 0x51dfdcba
    .4byte 0x114b1153
    .4byte 0xe06f1167
    .4byte 0xb722af12
    .4byte 0xbbbb0800
    .4byte 0x03cc9acc
    .4byte 0xddabcccc
    .4byte 0x5307cddd
    .4byte 0x30f40310
    .4byte 0x02cf5117
    .4byte 0x2667059b
    .4byte 0x3333fb05
    .4byte 0x630300aa
    .4byte 0x0576e700
    .4byte 0x1706878e
    .4byte 0x5f099998
    .4byte 0x480211a9
    .4byte 0x33993206
    .4byte 0x63055302
    .4byte 0x76ba9977
    .4byte 0x0787d800
    .4byte 0xba9808bc
    .4byte 0xeb10fdcb
    .4byte 0x02778888
    .4byte 0x78999916
    .4byte 0xbc05aa36
    .4byte 0x7705c6bb
    .4byte 0xdd896a00
    .4byte 0x20f301dd
    .4byte 0xbc7ecd6b
    .4byte 0x67522757
    .4byte 0x5b14fb97
    .4byte 0x27f12b96
    .4byte 0x02004000
    .4byte 0x311123d3
    .4byte 0x00333336
    .4byte 0x66366763
    .4byte 0x76677876
    .4byte 0x03888723
    .4byte 0x878777c1
    .4byte 0x4b05a700
    .4byte 0x22226100
    .4byte 0x62231166
    .4byte 0x63110816
    .4byte 0x4d031663
    .4byte 0xa8871116
    .4byte 0x03988103
    .4byte 0xec029889
    .4byte 0x9b89a987
    .4byte 0x63321b03
    .4byte 0x8f050300
    .4byte 0x072b0033
    .4byte 0x0232706b
    .4byte 0x13110057
    .4byte 0x6677887d
    .4byte 0x33f1c031
    .4byte 0x6677cfb9
    .4byte 0x67881112
    .4byte 0x8b162354
    .4byte 0x225e0613
    .4byte 0xaa636a01
    .4byte 0x76789a00
    .4byte 0x87899999
    .4byte 0x88883688
    .4byte 0x4d10230a
    .4byte 0x04a90231
    .4byte 0x13451190
    .4byte 0x11115e06
    .4byte 0x67050016
    .4byte 0x360f0300
    .4byte 0x20611113
    .4byte 0xa0d23710
    .4byte 0x0c170001
    .4byte 0x66611666
    .4byte 0x59163406
    .4byte 0x760b6777
    .4byte 0x00167888
    .4byte 0x0c0213d0
    .4byte 0x0ac5e304
    .4byte 0x16400093
    .4byte 0x16042316
    .4byte 0x70c70466
    .4byte 0xe0630011
    .4byte 0x63771001
    .4byte 0x17778788
    .4byte 0x04767778
    .4byte 0x2e00612c
    .4byte 0x0f1020c0
    .4byte 0x61bf57bf
    .4byte 0x87110800
    .4byte 0xca010310
    .4byte 0xcb118b21
    .4byte 0x913fdbea
    .4byte 0xbc07108b
    .4byte 0x00cda701
    .4byte 0x46fddf14
    .4byte 0xf3ee0b5f
    .4byte 0x6401f0f9
    .4byte 0xf05f510f
    .4byte 0x09ea4f21
    .4byte 0x00bb0bd7
    .4byte 0x1200990a
    .4byte 0x771a0088
    .4byte 0x008721f2
    .4byte 0x00f207eb
    .4byte 0x02322303
    .4byte 0xa930337f
    .4byte 0x032f078a
    .4byte 0x9888875b
    .4byte 0x62210878
    .4byte 0xb5273133
    .4byte 0x01111332
    .4byte 0x11134322
    .4byte 0x01134433
    .4byte 0x03008a69
    .4byte 0x01433331
    .4byte 0xde04445f
    .4byte 0x0701a052
    .4byte 0x31fac055
    .4byte 0x66333313
    .4byte 0x66631402
    .4byte 0x0068a866
    .4byte 0x88008b03
    .4byte 0x8abb8378
    .4byte 0x008a8317
    .4byte 0x78832378
    .4byte 0x37862337
    .4byte 0x77333700
    .4byte 0x26332333
    .4byte 0x23210f16
    .4byte 0xc7074446
    .4byte 0x33106405
    .4byte 0x09ec3810
    .4byte 0x3003207e
    .4byte 0x0904310f
    .4byte 0x6677e90c
    .4byte 0x66734403
    .4byte 0x00633411
    .4byte 0x227a0086
    .4byte 0xa7493411
    .4byte 0x15111224
    .4byte 0x4457cb6a
    .4byte 0x02434c01
    .4byte 0x031033e0
    .4byte 0x0600f403
    .4byte 0x9876bb13
    .4byte 0xa9982b13
    .4byte 0x0310979c
    .4byte 0x51631bff
    .4byte 0x950f1067
    .4byte 0x3742f12b
    .4byte 0xd0af93a0
    .4byte 0x0a0cfe27
    .4byte 0x360d2e1d
    .4byte 0x462d001c
    .4byte 0x270d3ea0
    .4byte 0xde07deba
    .4byte 0x0ddd370d
    .4byte 0xa721203f
    .4byte 0xcca1148a
    .4byte 0x5b0cfd7b
    .4byte 0xa7f7d31b
    .4byte 0x08dd1000
    .4byte 0xfe7b0d1b
    .4byte 0x1ee05d38
    .4byte 0x3b1ccf10
    .4byte 0x7f503bf0
    .4byte 0x39bc430e
    .4byte 0x3757689a
    .4byte 0x0f960f12
    .4byte 0x4b012236
    .4byte 0x667d0185
    .4byte 0x03131113
    .4byte 0x37136641
    .4byte 0x120e27af
    .4byte 0x8776172b
    .4byte 0xd603508f
    .4byte 0xe77bf66f
    .4byte 0x7bf62780
    .4byte 0x77772bb5
    .4byte 0x64038202
    .4byte 0x01c0832b
    .4byte 0x117726f4
    .4byte 0x66771322
    .4byte 0x88130026
    .4byte 0x67336777
    .4byte 0x07fe6136
    .4byte 0x0deb0eae
    .4byte 0x179903b3
    .4byte 0x04171e6b
    .4byte 0x67288779
    .4byte 0x67a80363
    .4byte 0x67780a00
    .4byte 0x336bf916
    .4byte 0x4c12e813
    .4byte 0x55400170
    .4byte 0x7d046661
    .4byte 0x1132670a
    .4byte 0x76f10261
    .4byte 0xd066d303
    .4byte 0x7112ec07
    .4byte 0x620b0061
    .4byte 0xdd327777
    .4byte 0x0804fc03
    .4byte 0x04450816
    .4byte 0x661406c3
    .4byte 0x0487fc0b
    .4byte 0x31161622
    .4byte 0x08220463
    .4byte 0x95d32b14
    .4byte 0x3322e6c2
    .4byte 0x00ba9b0a
    .4byte 0x9b00a938
    .4byte 0x180388c7
    .4byte 0x6387611a
    .4byte 0x13dfef0b
    .4byte 0x158fd757
    .4byte 0xcccbbabb
    .4byte 0x5bdbdf0d
    .4byte 0x2a013fb1
    .4byte 0x2cd31dfc
    .4byte 0x91c35cbf
    .4byte 0x0062183f
    .4byte 0x28237767
    .4byte 0xc2016322
    .4byte 0x21b20721
    .4byte 0x110d6624
    .4byte 0x09772321
    .4byte 0x333f1105
    .4byte 0x6602570b
    .4byte 0x88888663
    .4byte 0x86430b86
    .4byte 0x228aa900
    .4byte 0x1168a962
    .4byte 0x36892061
    .4byte 0x86630310
    .4byte 0x00661689
    .4byte 0x88116888
    .4byte 0x89111668
    .4byte 0x683f01b9
    .4byte 0x7c0fb800
    .4byte 0x222101c0
    .4byte 0x11108603
    .4byte 0xea034111
    .4byte 0x11337777
    .4byte 0x378a8710
    .4byte 0x31780700
    .4byte 0x77401233
    .4byte 0x77411e20
    .4byte 0x88731177
    .4byte 0x73318800
    .4byte 0x873378a8
    .4byte 0x7777008a
    .4byte 0x881478a8
    .4byte 0x144a78aa
    .4byte 0x71111605
    .4byte 0x06274901
    .4byte 0x4401573d
    .4byte 0x11556334
    .4byte 0x99016434
    .4byte 0x33113477
    .4byte 0x05060300
    .4byte 0x06030021
    .4byte 0x894001dd
    .4byte 0x11168215
    .4byte 0x32670533
    .4byte 0x2b2c0876
    .4byte 0x140e1376
    .4byte 0x43c30b13
    .4byte 0x3721d003
    .4byte 0x3301db77
    .4byte 0x03903741
    .4byte 0x2d0307a9
    .4byte 0x801714b3
    .4byte 0x2335ef09
    .4byte 0x23333332
    .4byte 0x35660021
    .4byte 0x55622115
    .4byte 0x76512111
    .4byte 0x16760b01
    .4byte 0x1432121a
    .4byte 0x048d7500
    .4byte 0x33666370
    .4byte 0xd8044c14
    .4byte 0x80370777
    .4byte 0x8711dd04
    .4byte 0x22552111
    .4byte 0x36621011
    .4byte 0x22cb0822
    .4byte 0x59367634
    .4byte 0x77411a23
    .4byte 0xa40a9407
    .4byte 0x4b0f9966
    .4byte 0x9a761100
    .4byte 0x7ba76167
    .4byte 0x97622c16
    .4byte 0x0179ff0a
    .4byte 0x766b02e5
    .4byte 0x6b028646
    .4byte 0x57111334
    .4byte 0x19015d01
    .4byte 0x22440431
    .4byte 0x00113332
    .4byte 0x0044415c
    .4byte 0x64417776
    .4byte 0x64118877
    .4byte 0x14876605
    .4byte 0x37161411
    .4byte 0x70932476
    .4byte 0x04930463
    .4byte 0xba1007a3
    .4byte 0x28999888
    .4byte 0xb8069999
    .4byte 0x88f30288
    .4byte 0x13405336
    .4byte 0x7899f717
    .4byte 0x899a3666
    .4byte 0xab367714
    .4byte 0x0faa870f
    .4byte 0x49baa987
    .4byte 0xab020faa
    .4byte 0xbb66089a
    .4byte 0x74570213
    .4byte 0x08031033
    .4byte 0xb9230f9f
    .4byte 0xb999239f
    .4byte 0xbbfdcb3b
    .4byte 0x02c3fbbf
    .4byte 0x0340562a
    .4byte 0x40dbff7e
    .4byte 0x672a0803
    .4byte 0x83ab31f4
    .4byte 0xcb9767f0
    .4byte 0x53549483
    .4byte 0x371e8899
    .4byte 0x67db0a78
    .4byte 0x67880d67
    .4byte 0x3b241616
    .4byte 0x0423d901
    .4byte 0x2e0a8057
    .4byte 0x68877611
    .4byte 0x3f777713
    .4byte 0xee001367
    .4byte 0x8e27a501
    .4byte 0x0140e725
    .4byte 0x1efdaa93
    .4byte 0x2035001f
    .4byte 0x32881b13
    .4byte 0x612d308a
    .4byte 0x06f1e601
    .4byte 0x00d2276e
    .4byte 0x76031017
    .4byte 0x941c3136
    .4byte 0x1f6607f5
    .4byte 0x1f3756b2
    .4byte 0x1f4622c7
    .4byte 0x20482636
    .4byte 0xfc016322
    .4byte 0x63666163
    .4byte 0xa008ca76
    .4byte 0x9887730f
    .4byte 0x40a90300
    .4byte 0x03ac9903
    .4byte 0xe706a93f
    .4byte 0x08ef0698
    .4byte 0xb07677ae
    .4byte 0x3a616e03
    .4byte 0xaa533473
    .4byte 0xb0dcbbba
    .4byte 0x01cbc70e
    .4byte 0x88bf01b7
    .4byte 0xbf7666a9
    .4byte 0x7b61e703
    .4byte 0xd3bb97eb
    .4byte 0x11be2be7
    .4byte 0xf587093f
    .4byte 0x7f113fd1
    .4byte 0xf2019311
    .4byte 0x663f0133
    .4byte 0x66053f01
    .4byte 0x15366788
    .4byte 0x15127e02
    .4byte 0xd722c20c
    .4byte 0x68986418
    .4byte 0xa3038613
    .4byte 0x0b665f66
    .4byte 0x66171138
    .4byte 0xdd486a97
    .4byte 0x180001f0
    .4byte 0x0015513d
    .4byte 0x11205003
    .4byte 0x417b0345
    .4byte 0x10e90f00
    .4byte 0x15c40703
    .4byte 0xcf0361f1
    .4byte 0x4f057211
    .4byte 0x0977722e
    .4byte 0xab2b349f
    .4byte 0x5dc0ee03
    .4byte 0x02176431
    .4byte 0x773f31dc
    .4byte 0x982b0587
    .4byte 0x740bd221
    .4byte 0x1da95e0f
    .4byte 0x0b6444db
    .4byte 0x8720761b
    .4byte 0x88430c99
    .4byte 0x77889888
    .4byte 0x6b0f9945
    .4byte 0x02467899
    .4byte 0x030034d7
    .4byte 0xaa134410
    .4byte 0x99998c0b
    .4byte 0x0083cba9
    .4byte 0x7777ba1c
    .4byte 0x4a05b987
    .4byte 0x62633f01
    .4byte 0x03007703
    .4byte 0xd8976311
    .4byte 0x734311fb
    .4byte 0x424311b9
    .4byte 0x877c0dd7
    .4byte 0x03880f33
    .4byte 0x5b997447
    .4byte 0x0b4a009e
    .4byte 0x5907cb19
    .4byte 0x9900bcdc
    .4byte 0x89871378
    .4byte 0x81987337
    .4byte 0x37a97c04
    .4byte 0x78ba8733
    .4byte 0x8960bb0f
    .4byte 0x3c131f03
    .4byte 0xabcbaaab
    .4byte 0x89ab14a9
    .4byte 0x77cc0b88
    .4byte 0xbc661a0b
    .4byte 0x016c03d6
    .4byte 0x7a011673
    .4byte 0x017a0111
    .4byte 0x110033e3
    .4byte 0x22377457
    .4byte 0x007a7445
    .4byte 0x27743422
    .4byte 0x44733322
    .4byte 0xe0084241
    .4byte 0x64311134
    .4byte 0x7a990436
    .4byte 0x199d1466
    .4byte 0x140330e3
    .4byte 0x1300339f
    .4byte 0x4a148233
    .4byte 0x23636612
    .4byte 0x11f70911
    .4byte 0x55888701
    .4byte 0x68998733
    .4byte 0x83420310
    .4byte 0x62989e00
    .4byte 0xfb0d9987
    .4byte 0x1bba6098
    .4byte 0x98031077
    .4byte 0xa8ccccba
    .4byte 0xddddcb16
    .4byte 0x10ffcb00
    .4byte 0xbb83d803
    .4byte 0xcc0706bf
    .4byte 0x3f080308
    .4byte 0x0338e107
    .4byte 0xfbf50190
    .4byte 0x7767bc81
    .4byte 0x66888778
    .4byte 0x06a70067
    .4byte 0x61666336
    .4byte 0x42750333
    .4byte 0x14ff61f8
    .4byte 0xf3c002a7
    .4byte 0xf001f0da
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0fc
    .4byte 0xf001f001
    .4byte 0x7001f001
    .4byte 0x00000001
    .4byte 0x001c0010
    .4byte 0xabcdef00
    .4byte 0xbcddef89
    .4byte 0xdef0209a
    .4byte 0xabcd03d0
    .4byte 0x00cdef00
    .4byte 0x444467ac
    .4byte 0x44667844
    .4byte 0x46781111
    .4byte 0x78140320
    .4byte 0x00071067
    .4byte 0x67896464
    .4byte 0x77894676
    .4byte 0x0067760a
    .4byte 0xf001e000
    .4byte 0xa8ef0300
    .4byte 0x00de0600
    .4byte 0x18a0cd06
    .4byte 0x00000fff
    .4byte 0x00ffeeef
    .4byte 0x0ffeddde
    .4byte 0xedcccd00
    .4byte 0xdcbbbcff
    .4byte 0x3ef0e8fe
    .4byte 0x2b000140
    .4byte 0x212b00ff
    .4byte 0x87206442
    .4byte 0x42030022
    .4byte 0x64876444
    .4byte 0x98764400
    .4byte 0x88876466
    .4byte 0x88760077
    .4byte 0x78878877
    .4byte 0x88019866
    .4byte 0x9aa91167
    .4byte 0x03002678
    .4byte 0x03103640
    .4byte 0x6789abba
    .4byte 0x9a15bba9
    .4byte 0x08009878
    .4byte 0x76080087
    .4byte 0x63000800
    .4byte 0x63788766
    .4byte 0x00787633
    .4byte 0x67763112
    .4byte 0x36663111
    .4byte 0x33311100
    .4byte 0x33111123
    .4byte 0x03309c22
    .4byte 0x78f01221
    .4byte 0x02007f50
    .4byte 0x00000ffe
    .4byte 0x66641111
    .4byte 0x00441111
    .4byte 0x44111344
    .4byte 0x44413664
    .4byte 0x44466400
    .4byte 0x66676444
    .4byte 0x78760064
    .4byte 0x89877677
    .4byte 0x98058888
    .4byte 0xfdcba987
    .4byte 0x10fc6700
    .4byte 0x0300a007
    .4byte 0x0f03000e
    .4byte 0x0fdcba98
    .4byte 0xedcba904
    .4byte 0xde00ba00
    .4byte 0x46007611
    .4byte 0x67876144
    .4byte 0x20887646
    .4byte 0x03004267
    .4byte 0x16787622
    .4byte 0x89008011
    .4byte 0x11167711
    .4byte 0x08136761
    .4byte 0x11416111
    .4byte 0x31116100
    .4byte 0x11660423
    .4byte 0x00624661
    .4byte 0x0066625a
    .4byte 0x66117876
    .4byte 0x11168767
    .4byte 0x0076162c
    .4byte 0x98f0761a
    .4byte 0xeef09910
    .4byte 0xdd5b01ad
    .4byte 0xa0cc6201
    .4byte 0xee330118
    .4byte 0xdd563301
    .4byte 0x01cc5f01
    .4byte 0x5ff1bb5f
    .4byte 0x31138be1
    .4byte 0x66001222
    .4byte 0x11410190
    .4byte 0x00f30114
    .4byte 0x66666464
    .4byte 0x77763333
    .4byte 0x141bb0a8
    .4byte 0x00440a11
    .4byte 0x7776641a
    .4byte 0x88000180
    .4byte 0xedcb8788
    .4byte 0x10dd000f
    .4byte 0x00060065
    .4byte 0x06006c10
    .4byte 0x801301a0
    .4byte 0x0024403d
    .4byte 0x64222203
    .4byte 0x01142444
    .4byte 0x11646644
    .4byte 0x00337621
    .4byte 0x2732fc03
    .4byte 0x2f120350
    .4byte 0x0b20d700
    .4byte 0xf0004312
    .4byte 0xd701bc6c
    .4byte 0x01160300
    .4byte 0x680300d6
    .4byte 0x0b00aa44
    .4byte 0x67b20246
    .4byte 0x0278b202
    .4byte 0x110089a2
    .4byte 0x11876211
    .4byte 0x00987661
    .4byte 0x89876311
    .4byte 0x78987614
    .4byte 0x78220288
    .4byte 0x9d028764
    .4byte 0x09789a98
    .4byte 0x89aba988
    .4byte 0x16780910
    .4byte 0x33088101
    .4byte 0x00369876
    .4byte 0x87636603
    .4byte 0x2300a948
    .4byte 0x030046ba
    .4byte 0x00a98767
    .4byte 0x7789a9ab
    .4byte 0x889aa987
    .4byte 0x99290295
    .4byte 0x77360288
    .4byte 0x00666700
    .4byte 0x0011425e
    .4byte 0x67891676
    .4byte 0x14eb0231
    .4byte 0xf7026440
    .4byte 0x66677816
    .4byte 0x77006716
    .4byte 0x66266777
    .4byte 0x0c213677
    .4byte 0x21367622
    .4byte 0x9e015200
    .4byte 0x111c1178
    .4byte 0xd6006331
    .4byte 0x27020310
    .4byte 0x00804421
    .4byte 0x223314e1
    .4byte 0x42441142
    .4byte 0x4611421a
    .4byte 0x8a002f03
    .4byte 0x31030033
    .4byte 0x63fb0195
    .4byte 0x61b30264
    .4byte 0x00110c00
    .4byte 0x0300b492
    .4byte 0x12030089
    .4byte 0x0300bca3
    .4byte 0x02da66cc
    .4byte 0x64971038
    .4byte 0x06000700
    .4byte 0xed0600dc
    .4byte 0xfe060080
    .4byte 0xa999999a
    .4byte 0xaa00aaab
    .4byte 0xbbbbbcba
    .4byte 0x01cddccb
    .4byte 0xddedddcc
    .4byte 0x01feeedd
    .4byte 0xff0f32e4
    .4byte 0xc8210602
    .4byte 0x3601bcde
    .4byte 0xb313eeab
    .4byte 0x0600cb13
    .4byte 0x111f1178
    .4byte 0x14060027
    .4byte 0xb0f9f1d4
    .4byte 0x2b02ef01
    .4byte 0xcd2b02de
    .4byte 0xeedc00bb
    .4byte 0xddcbaabc
    .4byte 0xba0099ab
    .4byte 0xa9889acc
    .4byte 0x037789bb
    .4byte 0x6678aa98
    .4byte 0x54029987
    .4byte 0xfe008703
    .4byte 0xedddefff
    .4byte 0x00ccdeef
    .4byte 0xbbccdedc
    .4byte 0xaabbddcb
    .4byte 0xaaccba00
    .4byte 0x99bba999
    .4byte 0xaa982a88
    .4byte 0x30f07522
    .4byte 0x2000ee20
    .4byte 0xbbcd00dd
    .4byte 0xaabccccb
    .4byte 0xab0dbbba
    .4byte 0x01aaa999
    .4byte 0xf0c93357
    .4byte 0x00aa6902
    .4byte 0x6900ff69
    .4byte 0xde6900ef
    .4byte 0x82cd6900
    .4byte 0x9abc6900
    .4byte 0x02edee88
    .4byte 0x02b5dcaf
    .4byte 0xaf02cbaf
    .4byte 0x00aaef00
    .4byte 0xf80099f7
    .4byte 0x0001885f
    .4byte 0x90080177
    .4byte 0x105b12ab
    .4byte 0x7d9603f5
    .4byte 0x02360000
    .4byte 0x00080077
    .4byte 0xaafb004f
    .4byte 0x9956fb00
    .4byte 0x0088fb00
    .4byte 0xfb0077fb
    .4byte 0x8a14c311
    .4byte 0xaa110201
    .4byte 0x994f00aa
    .4byte 0x84884f00
    .4byte 0x98774f00
    .4byte 0x680166ba
    .4byte 0x02ea4114
    .4byte 0x017c012f
    .4byte 0x8b9487b6
    .4byte 0x9a2b00ab
    .4byte 0x892b00ab
    .4byte 0x00782b00
    .4byte 0x2b00672b
    .4byte 0x40eaff10
    .4byte 0x00ff20de
    .4byte 0xde00cdde
    .4byte 0xabde00bc
    .4byte 0x9ade00a8
    .4byte 0x00eeff40
    .4byte 0xdefedd20
    .4byte 0xcd7503a2
    .4byte 0xaabc7503
    .4byte 0x99ff00aa
    .4byte 0x88ff00a8
    .4byte 0x00f0a100
    .4byte 0x0ffeefaa
    .4byte 0xeddef000
    .4byte 0xdccdefff
    .4byte 0xbcde00fe
    .4byte 0xabcdedcb
    .4byte 0xbc01dcba
    .4byte 0xabcba99a
    .4byte 0x7f00ee89
    .4byte 0x7f00dd55
    .4byte 0xbb7f00cc
    .4byte 0x00aa7f00
    .4byte 0x0099577f
    .4byte 0x7f00887f
    .4byte 0xf07f1077
    .4byte 0xaffb60fb
    .4byte 0x40003201
    .4byte 0xef1044eb
    .4byte 0xf311fa00
    .4byte 0x66432313
    .4byte 0x9abdff11
    .4byte 0xdb356778
    .4byte 0xdd3dcb15
    .4byte 0x532b02bc
    .4byte 0x203f045f
    .4byte 0x8411004e
    .4byte 0xbb8c1188
    .4byte 0x9700dddc
    .4byte 0x0fddcdde
    .4byte 0xeeddeffe
    .4byte 0xb310ab00
    .4byte 0x4c055d12
    .4byte 0x00899a2a
    .4byte 0x27009aa8
    .4byte 0xbc2700ab
    .4byte 0xabcddc10
    .4byte 0xeebc8402
    .4byte 0xcd00defe
    .4byte 0xddef0fff
    .4byte 0x69333678
    .4byte 0x037a0011
    .4byte 0x07001127
    .4byte 0x7e004113
    .4byte 0x7a00445c
    .4byte 0x10870064
    .4byte 0x763f0483
    .4byte 0x6601aa88
    .4byte 0xaa6e0199
    .4byte 0xd2bb7a03
    .4byte 0x670067e3
    .4byte 0x78781466
    .4byte 0x00893677
    .4byte 0x9a678889
    .4byte 0xab78999a
    .4byte 0x789aab00
    .4byte 0x89abbcbc
    .4byte 0xb700b5dd
    .4byte 0x10b700ee
    .4byte 0x30001137
    .4byte 0x6c380041
    .4byte 0x01031046
    .4byte 0x1b016713
    .4byte 0x89cbdc03
    .4byte 0x002b01d0
    .4byte 0x67150f42
    .4byte 0x000fecba
    .4byte 0x00fcba02
    .4byte 0x01fdcb00
    .4byte 0x74e20e1b
    .4byte 0x035f458f
    .4byte 0x6714619c
    .4byte 0xc0676305
    .4byte 0x6305be15
    .4byte 0x87776636
    .4byte 0x667f3623
    .4byte 0x73247f04
    .4byte 0x0b007784
    .4byte 0x0b145383
    .4byte 0x13680300
    .4byte 0x8b148314
    .4byte 0xaa0c00bb
    .4byte 0x78599aba
    .4byte 0x0289fe01
    .4byte 0x117f04fe
    .4byte 0xd2034061
    .4byte 0xef040120
    .4byte 0x766b0061
    .4byte 0x67a80077
    .4byte 0x76441400
    .4byte 0x88764467
    .4byte 0x64113246
    .4byte 0x7c06ee15
    .4byte 0x34041111
    .4byte 0x06786011
    .4byte 0x111e0185
    .4byte 0x11677888
    .4byte 0x87778803
    .4byte 0x04667799
    .4byte 0x1697001d
    .4byte 0x01641136
    .4byte 0x26252445
    .4byte 0x83994f50
    .4byte 0x78889f04
    .4byte 0x00777666
    .4byte 0x54400020
    .4byte 0x641c0064
    .4byte 0x0264b105
    .4byte 0x3d1176bb
    .4byte 0xc1047666
    .4byte 0xef01a903
    .4byte 0x04225604
    .4byte 0x1411735e
    .4byte 0x07031095
    .4byte 0x0099111a
    .4byte 0x192f070f
    .4byte 0x026433a9
    .4byte 0x113f07eb
    .4byte 0xbb038041
    .4byte 0x00311300
    .4byte 0x06bf153e
    .4byte 0xb60600ae
    .4byte 0x10ff03a0
    .4byte 0x34c20613
    .4byte 0x3037325f
    .4byte 0x136fc403
    .4byte 0xeb1f1163
    .4byte 0xa7257f12
    .4byte 0x059a1fa1
    .4byte 0x0302621f
    .4byte 0x21000300
    .4byte 0x23116633
    .4byte 0x00137763
    .4byte 0x66876363
    .4byte 0x67987663
    .4byte 0x461f0183
    .4byte 0x46764111
    .4byte 0x1b018b03
    .4byte 0x00148724
    .4byte 0x17111603
    .4byte 0x086633a4
    .4byte 0x36633678
    .4byte 0x98231f01
    .4byte 0x23672d78
    .4byte 0x0089fe00
    .4byte 0x612901fe
    .4byte 0x613a1f01
    .4byte 0x90ad1616
    .4byte 0x771f0103
    .4byte 0x2066e700
    .4byte 0x4c006777
    .4byte 0x61411136
    .4byte 0x03108023
    .4byte 0x33114112
    .4byte 0xc5316663
    .4byte 0xbe023601
    .4byte 0x26a98778
    .4byte 0x65013605
    .4byte 0xf9011354
    .4byte 0x87031012
    .4byte 0x8998b802
    .4byte 0x66366710
    .4byte 0x41337f00
    .4byte 0x06e98766
    .4byte 0x706f07f7
    .4byte 0x13002203
    .4byte 0x3e006632
    .4byte 0x075b02dd
    .4byte 0xe20700da
    .4byte 0x131003a0
    .4byte 0xe06812ba
    .4byte 0x4342b776
    .4byte 0xdef04b92
    .4byte 0x0a166611
    .4byte 0x46764411
    .4byte 0x04678601
    .4byte 0x049b78ce
    .4byte 0x108989d6
    .4byte 0x671e0193
    .4byte 0x3406b318
    .4byte 0x76132280
    .4byte 0x63464166
    .4byte 0x67076676
    .4byte 0x78776332
    .4byte 0x57020a01
    .4byte 0x61329f14
    .4byte 0xf50b9787
    .4byte 0x010000bd
    .4byte 0x03a88882
    .4byte 0x2a03992a
    .4byte 0xcbe203aa
    .4byte 0xdd2fdef0
    .4byte 0xeed807dd
    .4byte 0xdf237504
    .4byte 0x2353c010
    .4byte 0xddeb11ad
    .4byte 0x03ee1403
    .4byte 0x003d461b
    .4byte 0x94e8b704
    .4byte 0x046be017
    .4byte 0x1c04ed1c
    .4byte 0x01dcbcfe
    .4byte 0xeddd0fed
    .4byte 0x04ee00fe
    .4byte 0xd005fc77
    .4byte 0x01f093a5
    .4byte 0x30080170
    .4byte 0x1414c600
    .4byte 0x36631100
    .4byte 0x16761411
    .4byte 0x04647411
    .4byte 0x0289192b
    .4byte 0xf41261a3
    .4byte 0x16086411
    .4byte 0x09766141
    .4byte 0x6778871f
    .4byte 0x67877600
    .4byte 0x36767676
    .4byte 0x1c089b63
    .4byte 0x10024633
    .4byte 0xba610c03
    .4byte 0x9f575a53
    .4byte 0xef000350
    .4byte 0xf756f396
    .4byte 0x2358a713
    .4byte 0x89405e03
    .4byte 0x44895e03
    .4byte 0x11887764
    .4byte 0x11e7219c
    .4byte 0x10a30376
    .4byte 0x11e00803
    .4byte 0x7b01ba13
    .4byte 0x097f1164
    .4byte 0x1397038b
    .4byte 0x20663703
    .4byte 0xec077723
    .4byte 0x46467766
    .4byte 0x14660c11
    .4byte 0x48037714
    .4byte 0x2266420a
    .4byte 0x98bc2995
    .4byte 0x88070078
    .4byte 0x03870f00
    .4byte 0x117604d9
    .4byte 0x23622661
    .4byte 0xa71631a4
    .4byte 0x03366e02
    .4byte 0x0211668e
    .4byte 0x107b2387
    .4byte 0x09777103
    .4byte 0x00c731eb
    .4byte 0xa9876103
    .4byte 0x98605602
    .4byte 0x13050340
    .4byte 0x76337777
    .4byte 0xaa663466
    .4byte 0x0e025f04
    .4byte 0x770a0666
    .4byte 0x07bb60ba
    .4byte 0x98880879
    .4byte 0x87aaaaa9
    .4byte 0x9a999810
    .4byte 0x63896009
    .4byte 0xba009887
    .4byte 0xcba99876
    .4byte 0x02baa987
    .4byte 0xcbba98dc
    .4byte 0x3906a9ed
    .4byte 0x3906afba
    .4byte 0x984502a9
    .4byte 0x7b99d902
    .4byte 0xbf1a1ff6
    .4byte 0x616102a5
    .4byte 0x16638700
    .4byte 0x01147f81
    .4byte 0x64441c7f
    .4byte 0xbb580398
    .4byte 0x0003d0af
    .4byte 0x4f98ecef
    .4byte 0x07150340
    .4byte 0x005f8116
    .4byte 0xb5789845
    .4byte 0x20895204
    .4byte 0x31ef15db
    .4byte 0x0031e703
    .4byte 0x66331ddc
    .4byte 0x14c30133
    .4byte 0x33eb1ad4
    .4byte 0x63585f01
    .4byte 0x01635f01
    .4byte 0x46d103ea
    .4byte 0x671b6314
    .4byte 0x1f291112
    .4byte 0x09894220
    .4byte 0x144f008e
    .4byte 0x01898998
    .4byte 0x5f01985f
    .4byte 0x76201187
    .4byte 0x21a71136
    .4byte 0x22163113
    .4byte 0x035f01c5
    .4byte 0x771167ce
    .4byte 0x00884905
    .4byte 0x0310a0c3
    .4byte 0x32030077
    .4byte 0x32888763
    .4byte 0x9998760f
    .4byte 0x61170633
    .4byte 0x3173266b
    .4byte 0x175caa5f
    .4byte 0xaaab00bb
    .4byte 0x21996401
    .4byte 0xab00aa64
    .4byte 0xaa999877
    .4byte 0x00888766
    .4byte 0x88776399
    .4byte 0x998876a9
    .4byte 0x9987ba00
    .4byte 0xaa98cbaa
    .4byte 0x51dc5fbb
    .4byte 0xa523ab5f
    .4byte 0x63911f35
    .4byte 0x0b157fd7
    .4byte 0x7d0350e2
    .4byte 0x89537337
    .4byte 0xcb046467
    .4byte 0x10146044
    .4byte 0x44470a03
    .4byte 0x46466789
    .4byte 0x679607a1
    .4byte 0xbc78b603
    .4byte 0x2b01899a
    .4byte 0x61ab0090
    .4byte 0x87bf1a87
    .4byte 0x59787614
    .4byte 0x64f70076
    .4byte 0xc61a2b04
    .4byte 0x9c0a8866
    .4byte 0x000708f6
    .4byte 0xfaf30609
    .4byte 0x3011aabf
    .4byte 0xb4aafb14
    .4byte 0x08ba0305
    .4byte 0x89e7006b
    .4byte 0x9a783e07
    .4byte 0x67678900
    .4byte 0x36367889
    .4byte 0x32670078
    .4byte 0x14144411
    .4byte 0x44006664
    .4byte 0x66773644
    .4byte 0xdc883666
    .4byte 0x4c06bf0a
    .4byte 0x0b0b1536
    .4byte 0x8852002e
    .4byte 0x13230067
    .4byte 0x12236333
    .4byte 0x06bd6311
    .4byte 0x4f056670
    .4byte 0x32272e17
    .4byte 0x0331e90b
    .4byte 0xda2474b5
    .4byte 0x0aa711bf
    .4byte 0x8a007816
    .4byte 0xcad71289
    .4byte 0xba7a01bf
    .4byte 0x10ba0202
    .4byte 0x0739150b
    .4byte 0x4f09d5a2
    .4byte 0x0aecbfba
    .4byte 0x2e09fdbf
    .4byte 0xfc9e040e
    .4byte 0xd7f43b44
    .4byte 0xe31bf383
    .4byte 0xf3939fde
    .4byte 0x46716677
    .4byte 0x7f186b23
    .4byte 0x11468338
    .4byte 0xfa680198
    .4byte 0xf603b300
    .4byte 0x60153606
    .4byte 0x0231d110
    .4byte 0x13c56349
    .4byte 0x13a703f5
    .4byte 0x8b071311
    .4byte 0xb9e30061
    .4byte 0x1321eb05
    .4byte 0xb0a404c3
    .4byte 0x08616301
    .4byte 0xe40cca25
    .4byte 0x4466c507
    .4byte 0x0d417e06
    .4byte 0x664041b8
    .4byte 0x1646e008
    .4byte 0x16246611
    .4byte 0x33671100
    .4byte 0x26761113
    .4byte 0xaa0d8612
    .4byte 0x26221133
    .4byte 0x0180b197
    .4byte 0x63332831
    .4byte 0x0778280d
    .4byte 0x644167b9
    .4byte 0x4126221f
    .4byte 0x03107000
    .4byte 0x0320bc07
    .4byte 0x07808700
    .4byte 0x769876ab
    .4byte 0x62876446
    .4byte 0x8764430b
    .4byte 0x32170732
    .4byte 0x43019307
    .4byte 0xae07aa57
    .4byte 0x88030099
    .4byte 0x93379b97
    .4byte 0x05d87732
    .4byte 0xff631ecf
    .4byte 0xba2d976d
    .4byte 0x8c441146
    .4byte 0x7766ec01
    .4byte 0x0fed0466
    .4byte 0x7d877825
    .4byte 0x2f3f5187
    .4byte 0x910b80e7
    .4byte 0x1126083f
    .4byte 0x20934a03
    .4byte 0x23667803
    .4byte 0x0187415b
    .4byte 0x08bc0843
    .4byte 0x12466144
    .4byte 0x11129d0e
    .4byte 0x01326c21
    .4byte 0x63e50c29
    .4byte 0xd703cf06
    .4byte 0x31203413
    .4byte 0x61290033
    .4byte 0x24631177
    .4byte 0x22ee0886
    .4byte 0x01611144
    .4byte 0x13630151
    .4byte 0x63170187
    .4byte 0x06333363
    .4byte 0x017d07cb
    .4byte 0x4300a33f
    .4byte 0x110b0044
    .4byte 0x8c087776
    .4byte 0x465e2c01
    .4byte 0x11117f01
    .4byte 0x001f053f
    .4byte 0x33121032
    .4byte 0x151819e8
    .4byte 0x2101702a
    .4byte 0x63315131
    .4byte 0x05764141
    .4byte 0x776664b7
    .4byte 0x3f086111
    .4byte 0x1c303157
    .4byte 0x42370142
    .4byte 0xd9273f41
    .4byte 0x67233f01
    .4byte 0x63fe0743
    .4byte 0x48077644
    .4byte 0x775fdb08
    .4byte 0x0a996f15
    .4byte 0xb73f0137
    .4byte 0x0ab737bf
    .4byte 0x3f41fa2f
    .4byte 0x03501f14
    .4byte 0xe60a2714
    .4byte 0xbcfd3378
    .4byte 0xc6029a40
    .4byte 0x9aabcdab
    .4byte 0xbc00dd99
    .4byte 0xdddeaaab
    .4byte 0x02efbcbc
    .4byte 0xf0bdddde
    .4byte 0x770feeef
    .4byte 0x3f8b95ff
    .4byte 0x5704889a
    .4byte 0xcbf41b99
    .4byte 0xdd25fc0c
    .4byte 0xffe002ee
    .4byte 0xff3f0bee
    .4byte 0xaa153f4b
    .4byte 0x5c008989
    .4byte 0xab4d049a
    .4byte 0xbc555700
    .4byte 0x01dd5f00
    .4byte 0x8701ee78
    .4byte 0x389c01ff
    .4byte 0x12012667
    .4byte 0xef067d02
    .4byte 0xc0446711
    .4byte 0x0300c101
    .4byte 0x64164467
    .4byte 0x67276678
    .4byte 0x77d60376
    .4byte 0x04780332
    .4byte 0x4a7706e3
    .4byte 0xa90b0698
    .4byte 0xaafb039a
    .4byte 0xc0bbd209
    .4byte 0x9f007313
    .4byte 0x444464dd
    .4byte 0x66227624
    .4byte 0x67db0346
    .4byte 0xef029967
    .4byte 0x049943aa
    .4byte 0x789aaaeb
    .4byte 0x1b8809cc
    .4byte 0x3f2be643
    .4byte 0xf9057b46
    .4byte 0x3c001498
    .4byte 0xafcbfb4e
    .4byte 0x0bdcf50e
    .4byte 0xe207fe42
    .4byte 0x3fdb436b
    .4byte 0xfd062600
    .4byte 0xfccba976
    .4byte 0x03000710
    .4byte 0x0300bf0e
    .4byte 0x1136000f
    .4byte 0xf847213b
    .4byte 0x5e43b8ff
    .4byte 0x1f4ae087
    .4byte 0x97529767
    .4byte 0x67877764
    .4byte 0x76663061
    .4byte 0x26362226
    .4byte 0x63661661
    .4byte 0x77136113
    .4byte 0x77881200
    .4byte 0xbc001600
    .4byte 0x0b61443f
    .4byte 0x037c2443
    .4byte 0x163806e9
    .4byte 0x800700c0
    .4byte 0x1678d50f
    .4byte 0x66677787
    .4byte 0x02677c78
    .4byte 0x113f024f
    .4byte 0x60094343
    .4byte 0xab266201
    .4byte 0x0331b802
    .4byte 0xfc0661f8
    .4byte 0x0f3c0676
    .4byte 0x2403ecbf
    .4byte 0x1914f217
    .4byte 0x07960b21
    .4byte 0xb78777c7
    .4byte 0x09886600
    .4byte 0x87ab03a8
    .4byte 0xa5068c08
    .4byte 0x6260f807
    .4byte 0xa312fc03
    .4byte 0x41166678
    .4byte 0x16120067
    .4byte 0x33122414
    .4byte 0x05e72244
    .4byte 0x5b760224
    .4byte 0x024421eb
    .4byte 0x03df03e4
    .4byte 0x44132d0b
    .4byte 0x0b448200
    .4byte 0x6603109f
    .4byte 0x64072700
    .4byte 0x44413342
    .4byte 0x43217f19
    .4byte 0x50df7c02
    .4byte 0xed4b4103
    .4byte 0xf6f4031d
    .4byte 0xef5d5339
    .4byte 0x7bef93ac
    .4byte 0x4167618b
    .4byte 0x871b115f
    .4byte 0x67110300
    .4byte 0x19a0a317
    .4byte 0x5e01780b
    .4byte 0x46776489
    .4byte 0x00616e64
    .4byte 0x672f01d2
    .4byte 0x7f0b6306
    .4byte 0x3b630906
    .4byte 0x5f213367
    .4byte 0x2b07f013
    .4byte 0x116f0a44
    .4byte 0x0067655f
    .4byte 0x46830923
    .4byte 0x61770163
    .4byte 0x6108af06
    .4byte 0x04166677
    .4byte 0x467866fe
    .4byte 0x1013343c
    .4byte 0xd08d112a
    .4byte 0x33d41c01
    .4byte 0x13632536
    .4byte 0x31169c07
    .4byte 0x11415f01
    .4byte 0x07417f5f
    .4byte 0x217000a8
    .4byte 0x185f51d3
    .4byte 0x411310f3
    .4byte 0x0667705f
    .4byte 0x21da0343
    .4byte 0x1667885f
    .4byte 0x76770021
    .4byte 0x63662416
    .4byte 0x04fa2433
    .4byte 0x145f2116
    .4byte 0x0167210e
    .4byte 0x5f01225f
    .4byte 0x13360d62
    .4byte 0x78516444
    .4byte 0x4111a776
    .4byte 0x4b21ff5f
    .4byte 0x0350571e
    .4byte 0x03100f10
    .4byte 0x03f04b51
    .4byte 0x12ed0330
    .4byte 0x208d055f
    .4byte 0x1f034103
    .4byte 0x0b99a80b
    .4byte 0x88881fa8
    .4byte 0x07570d87
    .4byte 0x7553f979
    .4byte 0x847b107b
    .4byte 0xa999cb6e
    .4byte 0x500378cb
    .4byte 0x87207767
    .4byte 0x98560ea9
    .4byte 0x87633323
    .4byte 0x6312220c
    .4byte 0xfb77cf77
    .4byte 0x0088885f
    .4byte 0x9999ab88
    .4byte 0xaaaabc99
    .4byte 0xbbcdaa01
    .4byte 0xddddbbbb
    .4byte 0xee573f04
    .4byte 0x6bff2007
    .4byte 0x6b10eebf
    .4byte 0x3f30bffb
    .4byte 0xfb231ff2
    .4byte 0x006370c3
    .4byte 0x00aaed96
    .4byte 0x00abbb3c
    .4byte 0x4300bc3c
    .4byte 0xee4300dd
    .4byte 0xc35b4300
    .4byte 0x4eae2ef0
    .4byte 0x011317b7
    .4byte 0x66676177
    .4byte 0x78760061
    .4byte 0x89877677
    .4byte 0x98738788
    .4byte 0xf38dcf68
    .4byte 0x9936138a
    .4byte 0xc30a7702
    .4byte 0x7b046668
    .4byte 0x06777206
    .4byte 0x6616664f
    .4byte 0x11a705e5
    .4byte 0x630310aa
    .4byte 0x46731d87
    .4byte 0x0bf7b709
    .4byte 0x06e6234e
    .4byte 0x11031050
    .4byte 0x01804913
    .4byte 0x317ff811
    .4byte 0x4e2fe015
    .4byte 0x8a108e10
    .4byte 0x03004527
    .4byte 0x12f8310f
    .4byte 0x10aa1069
    .4byte 0x34891213
    .4byte 0x76226232
    .4byte 0x1222781e
    .4byte 0x41b63b24
    .4byte 0x14000140
    .4byte 0x35008721
    .4byte 0x41666141
    .4byte 0x47168306
    .4byte 0x16a04f06
    .4byte 0x270a421b
    .4byte 0x44876442
    .4byte 0x07465066
    .4byte 0xee13462f
    .4byte 0x78998877
    .4byte 0xaa998802
    .4byte 0x16aa7889
    .4byte 0x783d9a07
    .4byte 0x31131626
    .4byte 0x017f0bdf
    .4byte 0xdb0177db
    .4byte 0x98d50680
    .4byte 0x87626122
    .4byte 0x00e32112
    .4byte 0xdb640a03
    .4byte 0xffdcba6f
    .4byte 0x1f726306
    .4byte 0x8b8741f0
    .4byte 0x0143bf63
    .4byte 0xbcde9a5e
    .4byte 0x670681bc
    .4byte 0x9abc9aab
    .4byte 0xc209899a
    .4byte 0xc2097850
    .4byte 0x46c20967
    .4byte 0xa7464678
    .4byte 0x0614370a
    .4byte 0x1b6444e3
    .4byte 0x01620122
    .4byte 0x90038061
    .4byte 0x33333636
    .4byte 0x1f132232
    .4byte 0x61322221
    .4byte 0x2b0a055f
    .4byte 0x0c86031b
    .4byte 0xd713e08b
    .4byte 0x3f110965
    .4byte 0x13331121
    .4byte 0x07615323
    .4byte 0xbf073168
    .4byte 0x931d3331
    .4byte 0x13240300
    .4byte 0x61a30144
    .4byte 0x34900136
    .4byte 0x61110b32
    .4byte 0x88162124
    .4byte 0x000a1943
    .4byte 0x1d19853b
    .4byte 0xab114441
    .4byte 0x069a1c06
    .4byte 0x09896b24
    .4byte 0xba9c0bcc
    .4byte 0x08a9fc09
    .4byte 0xbf4b1619
    .4byte 0x1c613303
    .4byte 0xf001f03f
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01008001
    .4byte 0x00200010
    .4byte 0xf000002a
    .4byte 0x03000f01
    .4byte 0xfe0300ff
    .4byte 0xee0800bd
    .4byte 0x0b100300
    .4byte 0x01e001f0
    .4byte 0x000200f0
    .4byte 0xef0000ef
    .4byte 0xdef000de
    .4byte 0xef00cd00
    .4byte 0xdef0bccd
    .4byte 0x50ab58bc
    .4byte 0x4b10ff1c
    .4byte 0xeedd0400
    .4byte 0xcc0000ff
    .4byte 0xbb0ffedd
    .4byte 0xff07edcc
    .4byte 0xfedcbbaa
    .4byte 0x4c4046f0
    .4byte 0xef772b00
    .4byte 0x19f02b00
    .4byte 0x00ff2060
    .4byte 0x703ff020
    .4byte 0x41009f01
    .4byte 0x16f0eef0
    .4byte 0xdf401c40
    .4byte 0x362001f0
    .4byte 0xdd5b0081
    .4byte 0xccdefffe
    .4byte 0xf01ff0ed
    .4byte 0xffb023b1
    .4byte 0x01600360
    .4byte 0xcba98767
    .4byte 0x98764600
    .4byte 0x876443ba
    .4byte 0x656300a9
    .4byte 0x5533a987
    .4byte 0x5305a986
    .4byte 0x55a98766
    .4byte 0x00550b00
    .4byte 0x59f0fa17
    .4byte 0x4f014fa0
    .4byte 0x5a01ec30
    .4byte 0xdd5a01ee
    .4byte 0xcc5a01a8
    .4byte 0x01bb5a01
    .4byte 0xabcdaa5a
    .4byte 0x60999a35
    .4byte 0xff5fb18b
    .4byte 0x01ef5f01
    .4byte 0xf0de7f5f
    .4byte 0xf02bb056
    .4byte 0xf023901d
    .4byte 0x00190017
    .4byte 0x7701808b
    .4byte 0xf0edddef
    .4byte 0x00dcccde
    .4byte 0x9abba987
    .4byte 0x89aba987
    .4byte 0x03008640
    .4byte 0x789ba987
    .4byte 0x9a40a987
    .4byte 0x89ab0300
    .4byte 0x9abcba98
    .4byte 0xcbaa9900
    .4byte 0xbcddefab
    .4byte 0x0702839a
    .4byte 0xabcdef9a
    .4byte 0x2003a089
    .4byte 0xabcd0017
    .4byte 0x36646678
    .4byte 0x44086678
    .4byte 0x00646714
    .4byte 0x44433403
    .4byte 0x34446700
    .4byte 0x64446746
    .4byte 0x46780067
    .4byte 0x67897776
    .4byte 0x33008887
    .4byte 0x33777763
    .4byte 0x00888763
    .4byte 0x87887611
    .4byte 0x76787614
    .4byte 0x67764401
    .4byte 0x66776464
    .4byte 0x44000600
    .4byte 0x44678866
    .4byte 0x01788876
    .4byte 0x87789888
    .4byte 0x0167a999
    .4byte 0x6336054b
    .4byte 0x0066a987
    .4byte 0x0b004403
    .4byte 0xaa7301a0
    .4byte 0x789a7b01
    .4byte 0x00644446
    .4byte 0x66666789
    .4byte 0x7777789a
    .4byte 0x8889ab00
    .4byte 0x989aab88
    .4byte 0x899a0088
    .4byte 0x78897787
    .4byte 0x78006676
    .4byte 0x34336367
    .4byte 0x00641113
    .4byte 0x66441344
    .4byte 0x36664446
    .4byte 0x77666700
    .4byte 0x88777867
    .4byte 0x88880167
    .4byte 0x99873678
    .4byte 0x00520089
    .4byte 0x36336789
    .4byte 0x11367666
    .4byte 0x13633302
    .4byte 0x00661111
    .4byte 0x00964103
    .4byte 0x00223103
    .4byte 0x03102407
    .4byte 0x08980c00
    .4byte 0x87667899
    .4byte 0x88762600
    .4byte 0x64631967
    .4byte 0x00cd0087
    .4byte 0x1087640c
    .4byte 0x89a90014
    .4byte 0x9a987631
    .4byte 0xba009987
    .4byte 0xa98876bc
    .4byte 0x167766cb
    .4byte 0x0011ba98
    .4byte 0x9c004114
    .4byte 0x5598bd00
    .4byte 0x880b0077
    .4byte 0x01ed1300
    .4byte 0x0380dc67
    .4byte 0x6101ec56
    .4byte 0x0e0300fd
    .4byte 0x0bb2d741
    .4byte 0xcf0195f0
    .4byte 0x0600cdef
    .4byte 0xab0600bc
    .4byte 0x00a80310
    .4byte 0x5e019a02
    .4byte 0x78520189
    .4byte 0x78029abc
    .4byte 0x6789ab67
    .4byte 0x89f41046
    .4byte 0x13446701
    .4byte 0x11346789
    .4byte 0xb0aabff1
    .4byte 0x8b03de01
    .4byte 0xbc8b03cd
    .4byte 0x00ab8b03
    .4byte 0x9aedcbaa
    .4byte 0x89dcba99
    .4byte 0x78af00a8
    .4byte 0x00679b00
    .4byte 0xdddef0a3
    .4byte 0xcdefed00
    .4byte 0xbcdedccc
    .4byte 0xcdcb0cbb
    .4byte 0xd511aaab
    .4byte 0x9888dd01
    .4byte 0x004f01c9
    .4byte 0x637666e9
    .4byte 0x02cdef28
    .4byte 0xaabc326d
    .4byte 0xf1002400
    .4byte 0x2400889a
    .4byte 0x24009077
    .4byte 0x2d02ed66
    .4byte 0xef0ffedc
    .4byte 0xffedcb00
    .4byte 0xeedcbade
    .4byte 0xcba900cd
    .4byte 0xba98bcdd
    .4byte 0x12caabcc
    .4byte 0x89a20137
    .4byte 0xdd3600ee
    .4byte 0xafcc3600
    .4byte 0x00bb3600
    .4byte 0x3600aa36
    .4byte 0xdb113d11
    .4byte 0x666ae601
    .4byte 0x4300a313
    .4byte 0x00430000
    .4byte 0x57004300
    .4byte 0xa90800ba
    .4byte 0x00980800
    .4byte 0x115a0308
    .4byte 0x2b93c02a
    .4byte 0x78f003d0
    .4byte 0x67666246
    .4byte 0x2222110a
    .4byte 0x66af0167
    .4byte 0x8026bb01
    .4byte 0x66670300
    .4byte 0x77783342
    .4byte 0x89350756
    .4byte 0xd1565678
    .4byte 0x02aba253
    .4byte 0x5a01a8a3
    .4byte 0x775a0188
    .4byte 0x89665a01
    .4byte 0x55560067
    .4byte 0x35555678
    .4byte 0x35005567
    .4byte 0x33556733
    .4byte 0x25567811
    .4byte 0xe3021113
    .4byte 0xf10088cd
    .4byte 0x90f10077
    .4byte 0x439ae301
    .4byte 0x42230d02
    .4byte 0x11007876
    .4byte 0x11677642
    .4byte 0xd6567641
    .4byte 0x2b00eb94
    .4byte 0xdc2b00ed
    .4byte 0x0f222b00
    .4byte 0x5f01d555
    .4byte 0x00001e00
    .4byte 0x1e00f01e
    .4byte 0x551e00ef
    .4byte 0xcd1e00de
    .4byte 0x00bc1e00
    .4byte 0x1e00ab1e
    .4byte 0xbb8b0095
    .4byte 0xba5601cb
    .4byte 0x01a95601
    .4byte 0x01985456
    .4byte 0x56018756
    .4byte 0x65db0176
    .4byte 0x34661a78
    .4byte 0x611bf165
    .4byte 0x0603ed1b
    .4byte 0xf1f1f7dc
    .4byte 0x03505732
    .4byte 0x25bcbe01
    .4byte 0x310800af
    .4byte 0x3731ea0b
    .4byte 0x72002b50
    .4byte 0xaa7a0099
    .4byte 0x82bb8200
    .4byte 0xddcd8a00
    .4byte 0x02dddccc
    .4byte 0x05bcee12
    .4byte 0xa315ff7a
    .4byte 0xb311ab11
    .4byte 0xabcbbb11
    .4byte 0x01aa9924
    .4byte 0x01debbcb
    .4byte 0x85ddefd3
    .4byte 0xeeee1f04
    .4byte 0xe30178fe
    .4byte 0x00860389
    .4byte 0x789aba9a
    .4byte 0x789abbaa
    .4byte 0xa402bb6a
    .4byte 0x01785601
    .4byte 0xfe037866
    .4byte 0x16670089
    .4byte 0x44463333
    .4byte 0x46211111
    .4byte 0x33030014
    .4byte 0x00364111
    .4byte 0x33460203
    .4byte 0x44466414
    .4byte 0x16440404
    .4byte 0x02637666
    .4byte 0x4f036365
    .4byte 0x00894b03
    .4byte 0x9aa87663
    .4byte 0xaaa87644
    .4byte 0xbb4a05a8
    .4byte 0x00ccdb00
    .4byte 0x3344dde3
    .4byte 0x66313300
    .4byte 0x77143466
    .4byte 0x46660077
    .4byte 0x67778888
    .4byte 0x88009999
    .4byte 0x99aaaa67
    .4byte 0x00bbbb78
    .4byte 0xcddd89aa
    .4byte 0x76339abb
    .4byte 0x13a98700
    .4byte 0x11987661
    .4byte 0x87641c11
    .4byte 0x05031014
    .4byte 0x87120488
    .4byte 0x76640a67
    .4byte 0x1b007898
    .4byte 0xaab60099
    .4byte 0xa97401ae
    .4byte 0x01a97c01
    .4byte 0x01360184
    .4byte 0x01e8fe43
    .4byte 0x0053114b
    .4byte 0x330499ff
    .4byte 0x119999aa
    .4byte 0x01aabbbc
    .4byte 0xbabbbbe9
    .4byte 0xba00ad02
    .4byte 0xcbdddeec
    .4byte 0x3eeeeffd
    .4byte 0x97050edc
    .4byte 0xc3b55ef1
    .4byte 0x03505f31
    .4byte 0x6302aacc
    .4byte 0xaa0a00bb
    .4byte 0x01995f02
    .4byte 0x9a0d8803
    .4byte 0x03113678
    .4byte 0x230310af
    .4byte 0x26630d01
    .4byte 0xbf002201
    .4byte 0x01997889
    .4byte 0x84651333
    .4byte 0x1177b700
    .4byte 0xbe026311
    .4byte 0x12046776
    .4byte 0x36787636
    .4byte 0x77676d14
    .4byte 0x46469802
    .4byte 0x02368766
    .4byte 0x11003660
    .4byte 0x11149876
    .4byte 0x01138761
    .4byte 0x16776111
    .4byte 0x04776311
    .4byte 0x78670089
    .4byte 0x89367766
    .4byte 0x36347877
    .4byte 0x14c70498
    .4byte 0x030067ff
    .4byte 0x41101146
    .4byte 0xbe041644
    .4byte 0x11111112
    .4byte 0x330350b6
    .4byte 0x4d000400
    .4byte 0x05b60444
    .4byte 0x314c114f
    .4byte 0x61314c00
    .4byte 0x03105400
    .4byte 0x66036611
    .4byte 0x77761166
    .4byte 0x34cb1477
    .4byte 0xdb14f8d3
    .4byte 0x0320e724
    .4byte 0xda01e214
    .4byte 0x11316667
    .4byte 0x00334444
    .4byte 0x32111103
    .4byte 0x31100340
    .4byte 0x4a001266
    .4byte 0x87664133
    .4byte 0xe402336e
    .4byte 0x90fca701
    .4byte 0x02b31303
    .4byte 0x11dd0e96
    .4byte 0x00a60267
    .4byte 0x4501ff24
    .4byte 0x13007201
    .4byte 0xfccb3fcd
    .4byte 0x00050740
    .4byte 0x01f00f15
    .4byte 0xaf130bb5
    .4byte 0xcc0330a5
    .4byte 0xbcbb0b05
    .4byte 0x01bb5a01
    .4byte 0x01aa505a
    .4byte 0x2b03995a
    .4byte 0x15567888
    .4byte 0x35a703a5
    .4byte 0x13360b05
    .4byte 0x03365a01
    .4byte 0xaa6700cb
    .4byte 0x9956789a
    .4byte 0x56587899
    .4byte 0x01563906
    .4byte 0x7603005f
    .4byte 0x44021156
    .4byte 0x66445676
    .4byte 0x88020687
    .4byte 0x00667820
    .4byte 0x66453504
    .4byte 0x01b71587
    .4byte 0x5f01155f
    .4byte 0x11875b01
    .4byte 0x046b0187
    .4byte 0x26874005
    .4byte 0x89888923
    .4byte 0x01999867
    .4byte 0x3678789a
    .4byte 0x00676333
    .4byte 0x00367c03
    .4byte 0xa00300f8
    .4byte 0x116f0401
    .4byte 0x0d76335f
    .4byte 0x65336678
    .4byte 0x0310c101
    .4byte 0x82150461
    .4byte 0x76110310
    .4byte 0x01416666
    .4byte 0x02cf535f
    .4byte 0x780300d7
    .4byte 0x10540153
    .4byte 0x16de1103
    .4byte 0xba16c077
    .4byte 0x67890204
    .4byte 0x66333322
    .4byte 0x33331102
    .4byte 0x50211114
    .4byte 0x10896503
    .4byte 0x66416603
    .4byte 0x87771f05
    .4byte 0xcb7f4608
    .4byte 0xf3130390
    .4byte 0x0314fb13
    .4byte 0xeb936311
    .4byte 0x80fff363
    .4byte 0x11275001
    .4byte 0x0406008b
    .4byte 0x006f054b
    .4byte 0xff581924
    .4byte 0x08185728
    .4byte 0x0e9801f0
    .4byte 0x018020f0
    .4byte 0x67f4e757
    .4byte 0x009f45ea
    .4byte 0x98a601c3
    .4byte 0x01a9ae01
    .4byte 0x01cbbab6
    .4byte 0xdc6603be
    .4byte 0xee3e04dd
    .4byte 0xcb143e04
    .4byte 0xd314ee6c
    .4byte 0x00dd9f50
    .4byte 0xee939a98
    .4byte 0xabcd0bdd
    .4byte 0x5b00eeff
    .4byte 0x105bf0ff
    .4byte 0x8789021f
    .4byte 0x989aba98
    .4byte 0x00a99a04
    .4byte 0xbabcdcba
    .4byte 0xcbcdedcb
    .4byte 0xddfedd01
    .4byte 0xee0feedd
    .4byte 0x08ffdc08
    .4byte 0xf0eba0c9
    .4byte 0xa6c23001
    .4byte 0x60033023
    .4byte 0x56c2046b
    .4byte 0x66ca0477
    .4byte 0x0334a901
    .4byte 0x140310c3
    .4byte 0x140b00b8
    .4byte 0x1b101310
    .4byte 0x67882537
    .4byte 0x4003d441
    .4byte 0x03884e02
    .4byte 0x4e02981a
    .4byte 0x08833688
    .4byte 0x677667d7
    .4byte 0x58023466
    .4byte 0x63640300
    .4byte 0xcf015c08
    .4byte 0xc2047636
    .4byte 0x128b9877
    .4byte 0x13467806
    .4byte 0x18119303
    .4byte 0xaa0b5287
    .4byte 0x079a1d07
    .4byte 0x1d079a1d
    .4byte 0x781d0789
    .4byte 0x67430291
    .4byte 0x36c30336
    .4byte 0xd3061633
    .4byte 0x78633600
    .4byte 0x89136777
    .4byte 0x13660378
    .4byte 0x11136788
    .4byte 0xc2030a00
    .4byte 0x66b90280
    .4byte 0x44418766
    .4byte 0x445e7644
    .4byte 0x02110300
    .4byte 0x030330e4
    .4byte 0x667f009b
    .4byte 0x078302e8
    .4byte 0x985b2086
    .4byte 0xa9987d07
    .4byte 0x88ab02ba
    .4byte 0x77bba998
    .4byte 0xb2663301
    .4byte 0x05441b05
    .4byte 0xa90a0323
    .4byte 0x88b40677
    .4byte 0xbbaa9912
    .4byte 0xaaaa0200
    .4byte 0x80bb0c05
    .4byte 0x89aa1405
    .4byte 0x78997788
    .4byte 0x52667177
    .4byte 0x3783f633
    .4byte 0xfffdcb9f
    .4byte 0x003f2705
    .4byte 0x5367f1ff
    .4byte 0x707777cd
    .4byte 0x012f7203
    .4byte 0x070a9646
    .4byte 0x77076655
    .4byte 0x10c70333
    .4byte 0x07db2303
    .4byte 0x67670187
    .4byte 0xd4097301
    .4byte 0x031c0087
    .4byte 0x64420860
    .4byte 0x73077787
    .4byte 0x02621188
    .4byte 0x64249987
    .4byte 0x13008887
    .4byte 0x6101c077
    .4byte 0x64210101
    .4byte 0x76221113
    .4byte 0x2335661a
    .4byte 0x39015f01
    .4byte 0x66380177
    .4byte 0x67666500
    .4byte 0x67111565
    .4byte 0x5f01ea55
    .4byte 0xff00ab4a
    .4byte 0xab5f01ab
    .4byte 0xc0415f91
    .4byte 0x82015f01
    .4byte 0x16667811
    .4byte 0x00848961
    .4byte 0x77889a4b
    .4byte 0x16f60416
    .4byte 0x23672f88
    .4byte 0x01125f01
    .4byte 0x00cf035f
    .4byte 0x195b1153
    .4byte 0x01333334
    .4byte 0x66035057
    .4byte 0x98430487
    .4byte 0x66776900
    .4byte 0x5b00ca07
    .4byte 0x0098abcc
    .4byte 0x98bccbaa
    .4byte 0x88ccba99
    .4byte 0x776f06b2
    .4byte 0x3600dc07
    .4byte 0xf80333a9
    .4byte 0xfb02aa88
    .4byte 0xaafb0299
    .4byte 0x01bbfb02
    .4byte 0xc1ffcc5f
    .4byte 0xf197735f
    .4byte 0xf2e7135f
    .4byte 0x99e3b7ae
    .4byte 0x9e1ff90b
    .4byte 0x67897911
    .4byte 0x0b108f57
    .4byte 0x17100390
    .4byte 0x63662055
    .4byte 0x44440906
    .4byte 0x20446466
    .4byte 0x9f0b6544
    .4byte 0x46343355
    .4byte 0x64332155
    .4byte 0x78760209
    .4byte 0xba036556
    .4byte 0x6555670c
    .4byte 0x01490266
    .4byte 0x9044872f
    .4byte 0x56779fcb
    .4byte 0x87761500
    .4byte 0x874d8898
    .4byte 0xa998e200
    .4byte 0xd328bb02
    .4byte 0x1c9fabbb
    .4byte 0x01643336
    .4byte 0x09df11db
    .4byte 0xa256665f
    .4byte 0x0967570a
    .4byte 0x78897872
    .4byte 0x0067850b
    .4byte 0x13247777
    .4byte 0x12346441
    .4byte 0x35764412
    .4byte 0x65554c06
    .4byte 0x2b87ba11
    .4byte 0x4f037778
    .4byte 0x98570388
    .4byte 0x03052705
    .4byte 0x662a0a80
    .4byte 0x41124677
    .4byte 0x09f94666
    .4byte 0x06df19e3
    .4byte 0x089f2b84
    .4byte 0x0a783152
    .4byte 0x05875fc8
    .4byte 0x550a76ac
    .4byte 0x9f3bc736
    .4byte 0x77157b0d
    .4byte 0xbb49896a
    .4byte 0x00228f29
    .4byte 0x9f5b429c
    .4byte 0x98761f56
    .4byte 0x81240067
    .4byte 0x6403903b
    .4byte 0x74230113
    .4byte 0x28041488
    .4byte 0xaa0320cf
    .4byte 0x89998b0b
    .4byte 0x781600a0
    .4byte 0x7867fe03
    .4byte 0x5b114667
    .4byte 0x46180667
    .4byte 0x03102b0c
    .4byte 0x03040067
    .4byte 0x87410ada
    .4byte 0x23013467
    .4byte 0x63382633
    .4byte 0x8c171670
    .4byte 0x650c0300
    .4byte 0x11146663
    .4byte 0x36970381
    .4byte 0x67766334
    .4byte 0x16a40324
    .4byte 0x07246611
    .4byte 0xe20722ba
    .4byte 0x38362810
    .4byte 0xa4073611
    .4byte 0x0200a646
    .4byte 0x04448887
    .4byte 0x11333364
    .4byte 0x64890264
    .4byte 0x00674277
    .4byte 0x46116603
    .4byte 0x36770666
    .4byte 0x1367111d
    .4byte 0x9f026700
    .4byte 0x0b116300
    .4byte 0x2404dd00
    .4byte 0x10310340
    .4byte 0x00042003
    .4byte 0xbe076302
    .4byte 0x11876408
    .4byte 0x41630841
    .4byte 0x11356664
    .4byte 0x0cbf0741
    .4byte 0x140d31dd
    .4byte 0x601c0841
    .4byte 0x04030066
    .4byte 0x4677448a
    .4byte 0x66004464
    .4byte 0x44664143
    .4byte 0x5c764463
    .4byte 0x11240733
    .4byte 0x2f004309
    .4byte 0x88760300
    .4byte 0xfed7c7a5
    .4byte 0x99fe6605
    .4byte 0x00889702
    .4byte 0x00777f0c
    .4byte 0x7f97f214
    .4byte 0xb513147b
    .4byte 0x1b8bfbb3
    .4byte 0xe20cd57f
    .4byte 0x04bc9b22
    .4byte 0x7308abab
    .4byte 0x81bc079a
    .4byte 0x7878ca0d
    .4byte 0x67677776
    .4byte 0x5606b90d
    .4byte 0x35411135
    .4byte 0xff01d100
    .4byte 0x00555211
    .4byte 0x0300660b
    .4byte 0xd1174567
    .4byte 0x07325621
    .4byte 0x031011fe
    .4byte 0x10eb0341
    .4byte 0x56236603
    .4byte 0x66570513
    .4byte 0x1d046466
    .4byte 0x8840ca00
    .4byte 0x2146d500
    .4byte 0x21144242
    .4byte 0x11665306
    .4byte 0x3b015623
    .4byte 0x0e77f103
    .4byte 0x88667878
    .4byte 0x5f117f23
    .4byte 0x28632801
    .4byte 0x98016555
    .4byte 0x665e0966
    .4byte 0x66074411
    .4byte 0x66225611
    .4byte 0x9519c731
    .4byte 0x663b6401
    .4byte 0x17710267
    .4byte 0x610310ec
    .4byte 0x08100310
    .4byte 0x03106244
    .4byte 0x01332266
    .4byte 0x51533227
    .4byte 0x66030076
    .4byte 0x11440300
    .4byte 0x07e80152
    .4byte 0x31111653
    .4byte 0x00e70155
    .4byte 0x085f4126
    .4byte 0x41466634
    .4byte 0x66447f08
    .4byte 0x66431133
    .4byte 0x87970177
    .4byte 0x33003111
    .4byte 0x7655311f
    .4byte 0xdbe7cf17
    .4byte 0xdff75f81
    .4byte 0x00fd5f81
    .4byte 0xf79b1208
    .4byte 0x08737183
    .4byte 0xa9b07f6c
    .4byte 0x1ac0bd0d
    .4byte 0xdd870ce0
    .4byte 0xeeeffedd
    .4byte 0xf00f25ee
    .4byte 0x6567e423
    .4byte 0x0c76730c
    .4byte 0x0c88577b
    .4byte 0x8b0c9983
    .4byte 0x0dc50daa
    .4byte 0x6a380eee
    .4byte 0x1a040a88
    .4byte 0xdf0baaab
    .4byte 0xbc9f01bb
    .4byte 0xaba71188
    .4byte 0x43545789
    .4byte 0x90664667
    .4byte 0x4441a101
    .4byte 0x4644df0b
    .4byte 0x11c01333
    .4byte 0x130300a7
    .4byte 0x43333564
    .4byte 0x33551b64
    .4byte 0x18650655
    .4byte 0x9b039aef
    .4byte 0x440a333f
    .4byte 0x0b9aa986
    .4byte 0xeb00abdf
    .4byte 0xde00a0bc
    .4byte 0x515901cd
    .4byte 0x33135566
    .4byte 0x1d555624
    .4byte 0x04555577
    .4byte 0xcc895500
    .4byte 0x8b05c805
    .4byte 0x9b0bab77
    .4byte 0x4599a706
    .4byte 0x53076250
    .4byte 0x34df8b21
    .4byte 0x3e568763
    .4byte 0x19066553
    .4byte 0x54102c04
    .4byte 0xe71bdb03
    .4byte 0xe7fbfaa9
    .4byte 0x03707f66
    .4byte 0x7f0623b1
    .4byte 0x11220b46
    .4byte 0x004b1fe5
    .4byte 0x66430a03
    .4byte 0x66d70334
    .4byte 0x7748df03
    .4byte 0x6488e703
    .4byte 0x67616c00
    .4byte 0x31442e44
    .4byte 0x05314b07
    .4byte 0x07a20bf0
    .4byte 0x667067c1
    .4byte 0xe703f713
    .4byte 0x8876790e
    .4byte 0x87166244
    .4byte 0xff074689
    .4byte 0x063e0a67
    .4byte 0x764046af
    .4byte 0x6763ef0b
    .4byte 0x46631343
    .4byte 0x00164420
    .4byte 0x467877fd
    .4byte 0x07ec6664
    .4byte 0xd0bf22ae
    .4byte 0x18008701
    .4byte 0x87636312
    .4byte 0x63167717
    .4byte 0x0b41d30b
    .4byte 0x027703db
    .4byte 0x06664179
    .4byte 0x11644267
    .4byte 0xbb037661
    .4byte 0x025718f7
    .4byte 0x00ff0067
    .4byte 0x1a0c780b
    .4byte 0x2004221c
    .4byte 0x084106c2
    .4byte 0x16678820
    .4byte 0x14ba0611
    .4byte 0x145f0882
    .4byte 0x11133366
    .4byte 0xd8110200
    .4byte 0xaf2a7214
    .4byte 0x00fb1344
    .4byte 0x441334bb
    .4byte 0x0014433b
    .4byte 0x00340518
    .4byte 0x29444101
    .4byte 0x98336500
    .4byte 0x082204ba
    .4byte 0x01a9870b
    .4byte 0x7e03205a
    .4byte 0x40131063
    .4byte 0x12a31b03
    .4byte 0x10039084
    .4byte 0x40f0ec13
    .4byte 0x654b5f07
    .4byte 0x678fc21f
    .4byte 0xe0466665
    .4byte 0xde074b1f
    .4byte 0x67330310
    .4byte 0x80346556
    .4byte 0x89662801
    .4byte 0x9a778778
    .4byte 0x88980089
    .4byte 0x63233564
    .4byte 0x43165561
    .4byte 0xb3076444
    .4byte 0x09510764
    .4byte 0x019d7720
    .4byte 0x0c886649
    .4byte 0x074715d4
    .4byte 0x9b00987a
    .4byte 0x055f41c0
    .4byte 0x1666776f
    .4byte 0x00456787
    .4byte 0x32677612
    .4byte 0x34367612
    .4byte 0x5f011559
    .4byte 0x055f0188
    .4byte 0x0066411c
    .4byte 0xd710c2f3
    .4byte 0x678901a0
    .4byte 0xf10b1135
    .4byte 0x45068233
    .4byte 0x78776635
    .4byte 0x565f0156
    .4byte 0x415f7183
    .4byte 0x65511164
    .4byte 0x5b115f31
    .4byte 0x030310c2
    .4byte 0x55554693
    .4byte 0x87750876
    .4byte 0x007b16e2
    .4byte 0x163f0058
    .4byte 0xf7099911
    .4byte 0x67781b99
    .4byte 0x006b1114
    .4byte 0x7215110e
    .4byte 0x11400310
    .4byte 0x3111e407
    .4byte 0x51116665
    .4byte 0x13442505
    .4byte 0x5c054631
    .4byte 0x5d030045
    .4byte 0x345fe133
    .4byte 0x0f188c06
    .4byte 0x06530310
    .4byte 0x9b049d77
    .4byte 0xf40334a9
    .4byte 0x0f1d5b19
    .4byte 0xfa170dba
    .4byte 0x232d0390
    .4byte 0xc4151b00
    .4byte 0x00530340
    .4byte 0x3508636c
    .4byte 0x03653331
    .4byte 0x5656652b
    .4byte 0x0aa300f9
    .4byte 0xf0e31a46
    .4byte 0xdd9f9b01
    .4byte 0xdda70fee
    .4byte 0x01f00c3b
    .4byte 0xf41b2800
    .4byte 0xee1f5343
    .4byte 0x87481c08
    .4byte 0x88984a05
    .4byte 0x9999d808
    .4byte 0xaaba2699
    .4byte 0xbbbb260f
    .4byte 0x2102c07b
    .4byte 0x6b03aadd
    .4byte 0xef1606de
    .4byte 0xdbf07203
    .4byte 0x0fb0bcbf
    .4byte 0x560acd5b
    .4byte 0xeebbab0f
    .4byte 0xcd07dddd
    .4byte 0xddeeeeff
    .4byte 0x1f8c8b00
    .4byte 0x04a8a407
    .4byte 0xf0049ae8
    .4byte 0xbc5806ab
    .4byte 0xdc05baaa
    .4byte 0xedcbbbcd
    .4byte 0x00fe5f00
    .4byte 0xb70cfd5f
    .4byte 0xb7dca73f
    .4byte 0xb3b7bfbb
    .4byte 0x00dd5f96
    .4byte 0x06de4480
    .4byte 0xababcd58
    .4byte 0x899a6b06
    .4byte 0x8989ab0a
    .4byte 0x67d50d78
    .4byte 0x1278b914
    .4byte 0x13244646
    .4byte 0x084678c3
    .4byte 0x443446a3
    .4byte 0x0a9f0876
    .4byte 0x7f08773f
    .4byte 0x66016766
    .4byte 0x32363363
    .4byte 0xc7036313
    .4byte 0x03b40bd1
    .4byte 0xf40187cf
    .4byte 0x0a146788
    .4byte 0xd7158617
    .4byte 0x41131113
    .4byte 0x01704b03
    .4byte 0x95088263
    .4byte 0x36666134
    .4byte 0x61a51f13
    .4byte 0x66076640
    .4byte 0x31113363
    .4byte 0x03803346
    .4byte 0x1664426e
    .4byte 0x63334222
    .4byte 0x44624403
    .4byte 0x1b434611
    .4byte 0xc6ca01cc
    .4byte 0x3f103b00
    .4byte 0x15113341
    .4byte 0x896f0320
    .4byte 0x1c330cde
    .4byte 0x400e673f
    .4byte 0x2410a50f
    .4byte 0x61336316
    .4byte 0x00672213
    .4byte 0x4166772a
    .4byte 0x4fe01a34
    .4byte 0x13770a63
    .4byte 0x2ba30743
    .4byte 0x0fbf02e7
    .4byte 0x663314f5
    .4byte 0x673b0346
    .4byte 0x88783b03
    .4byte 0x994f0c8f
    .4byte 0x5903aa98
    .4byte 0x7b15af05
    .4byte 0xa952c607
    .4byte 0x00bae60b
    .4byte 0x0b87cb67
    .4byte 0x05cc78fb
    .4byte 0x99a404d0
    .4byte 0x08b40c36
    .4byte 0xdacb779d
    .4byte 0x7b1aa801
    .4byte 0x054c06cd
    .4byte 0x3e050f36
    .4byte 0x4605abff
    .4byte 0xed4e05fe
    .4byte 0xb6dc5605
    .4byte 0x075ff14f
    .4byte 0x99a99aab
    .4byte 0x01b407bc
    .4byte 0xe113095f
    .4byte 0xc3235fe1
    .4byte 0x67648203
    .4byte 0x53033335
    .4byte 0xea04554a
    .4byte 0x50128766
    .4byte 0x64d90976
    .4byte 0x55cb1887
    .4byte 0x09771556
    .4byte 0x21bf04d9
    .4byte 0x5678055f
    .4byte 0x0f671113
    .4byte 0x340d46b1
    .4byte 0xa6081160
    .4byte 0x11515f41
    .4byte 0x00643314
    .4byte 0x46555661
    .4byte 0x12266764
    .4byte 0xaf056441
    .4byte 0x11326764
    .4byte 0x00fb0464
    .4byte 0x63321113
    .4byte 0x62322136
    .4byte 0x52346608
    .4byte 0x315f0143
    .4byte 0x19e11611
    .4byte 0x036f4968
    .4byte 0x88777781
    .4byte 0x52620289
    .4byte 0x995f019a
    .4byte 0x5141e713
    .4byte 0x56544f05
    .4byte 0x24e71776
    .4byte 0x00464201
    .4byte 0x89cf2372
    .4byte 0x13116710
    .4byte 0x67551608
    .4byte 0x552a6767
    .4byte 0x22d30626
    .4byte 0x08335f51
    .4byte 0x455f555c
    .4byte 0x0a666e06
    .4byte 0x0c9f0a2e
    .4byte 0x1c431c3b
    .4byte 0xea0aa04b
    .4byte 0xa9ca07ab
    .4byte 0xa9875553
    .4byte 0xa98a06b3
    .4byte 0xca02eb13
    .4byte 0xf20b88aa
    .4byte 0x15d85b18
    .4byte 0xfdc723fb
    .4byte 0x5ff1db3b
    .4byte 0xd69adcba
    .4byte 0xfe087402
    .4byte 0x88530777
    .4byte 0x410c4a0c
    .4byte 0x010390ab
    .4byte 0x5603bcbc
    .4byte 0xeeecbacd
    .4byte 0xf3ffdd7f
    .4byte 0x6b13cb7f
    .4byte 0x13f3201c
    .4byte 0x12f0c1bf
    .4byte 0xffde9ff0
    .4byte 0x160190df
    .4byte 0x3355424c
    .4byte 0x66551113
    .4byte 0x56bd0135
    .4byte 0xb8016666
    .4byte 0x76646705
    .4byte 0x3c0e4677
    .4byte 0x81bb0b36
    .4byte 0x61142201
    .4byte 0x45146111
    .4byte 0x46050300
    .4byte 0x36466111
    .4byte 0x0b56c002
    .4byte 0x0310f8c8
    .4byte 0x5f00181f
    .4byte 0x018054f0
    .4byte 0x00122644
    .4byte 0x22354411
    .4byte 0x33354441
    .4byte 0x55444401
    .4byte 0x56646663
    .4byte 0x00a15800
    .4byte 0x03007748
    .4byte 0x63113678
    .4byte 0x40c05fa6
    .4byte 0x6703900b
    .4byte 0x67334344
    .4byte 0x22330064
    .4byte 0x22333446
    .4byte 0x33093467
    .4byte 0x10446723
    .4byte 0x00434307
    .4byte 0x0c444fa0
    .4byte 0x03236637
    .4byte 0x80420f3b
    .4byte 0x01140201
    .4byte 0x61331444
    .4byte 0x00444664
    .4byte 0x6413e6cb
    .4byte 0x2c000180
    .4byte 0x73061133
    .4byte 0x44468e06
    .4byte 0x776d0666
    .4byte 0x7e0b1187
    .4byte 0x17824311
    .4byte 0x144444bc
    .4byte 0x190d3466
    .4byte 0x00315114
    .4byte 0x9f20319f
    .4byte 0x00633346
    .4byte 0x7906d54b
    .4byte 0x00773f0d
    .4byte 0x83038730
    .4byte 0x022d0d76
    .4byte 0x46763364
    .4byte 0xfa1b3114
    .4byte 0x00415f64
    .4byte 0x0300616f
    .4byte 0x1f212e00
    .4byte 0xb6053200
    .4byte 0x8828288e
    .4byte 0x5f006636
    .4byte 0x03406312
    .4byte 0xac07f931
    .4byte 0xbe1a6600
    .4byte 0xb802040d
    .4byte 0xa9038888
    .4byte 0x0036782e
    .4byte 0x07206703
    .4byte 0xd713cf03
    .4byte 0xabcb04a9
    .4byte 0x0ebba989
    .4byte 0x06cbaa77
    .4byte 0x611333ab
    .4byte 0x00ea1266
    .4byte 0x00a14103
    .4byte 0x0317416f
    .4byte 0x44416667
    .4byte 0x46562707
    .4byte 0x0d67e20a
    .4byte 0x8b0dcb83
    .4byte 0x7f988306
    .4byte 0x170714ba
    .4byte 0x621204d3
    .4byte 0x6e5b5153
    .4byte 0xe50b1017
    .4byte 0x335e0300
    .4byte 0x66334f01
    .4byte 0x01357906
    .4byte 0x00555002
    .4byte 0x68005603
    .4byte 0x42322355
    .4byte 0x23aa0f81
    .4byte 0x56553356
    .4byte 0x56f80946
    .4byte 0x42030122
    .4byte 0x38214703
    .4byte 0x62b4235b
    .4byte 0xf003535a
    .4byte 0x30570b66
    .4byte 0x0740210e
    .4byte 0x03108042
    .4byte 0x64333331
    .4byte 0x1d653554
    .4byte 0x09656676
    .4byte 0x0d1003dc
    .4byte 0xa35ddca3
    .4byte 0x13171795
    .4byte 0x11ef0941
    .4byte 0xf2880320
    .4byte 0x01f0ff31
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0fc01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x00011001
    .4byte 0x00140010
    .4byte 0x76666300
    .4byte 0x63433146
    .4byte 0x45330036
    .4byte 0x46431466
    .4byte 0x66001466
    .4byte 0x77346767
    .4byte 0x00667878
    .4byte 0x77888988
    .4byte 0x88877899
    .4byte 0x11544400
    .4byte 0x44533331
    .4byte 0x53110064
    .4byte 0x53116666
    .4byte 0x33005676
    .4byte 0x46236763
    .4byte 0x00115632
    .4byte 0x11134667
    .4byte 0x11116778
    .4byte 0xe000002a
    .4byte 0x0300f001
    .4byte 0xde0600ef
    .4byte 0xcd060080
    .4byte 0xffff0000
    .4byte 0xee00ff00
    .4byte 0xddeef0fe
    .4byte 0x00ddefed
    .4byte 0xccdedccc
    .4byte 0xbbcdcbbb
    .4byte 0xbcbaaa00
    .4byte 0xaba999aa
    .4byte 0x98882a99
    .4byte 0x000f3010
    .4byte 0x0400ff03
    .4byte 0x00ff00ee
    .4byte 0x0ffedd00
    .4byte 0xed00ccf0
    .4byte 0xdcbbefff
    .4byte 0x3baadefe
    .4byte 0x3f00edcb
    .4byte 0x278001b0
    .4byte 0xf0270000
    .4byte 0x2530807d
    .4byte 0xeef000ff
    .4byte 0x3def00ee
    .4byte 0x1bf0dddd
    .4byte 0x02006f40
    .4byte 0xf0ee6a00
    .4byte 0x3d20961d
    .4byte 0x5f00ee00
    .4byte 0x005ff0dd
    .4byte 0xef50ffdb
    .4byte 0x00de5b00
    .4byte 0xdef0cd5b
    .4byte 0xa0bc75cc
    .4byte 0x00030037
    .4byte 0x36100036
    .4byte 0x400800dc
    .4byte 0xbc0800cb
    .4byte 0xcd78899a
    .4byte 0x678910ab
    .4byte 0xab0300bc
    .4byte 0x0056789a
    .4byte 0x5678999a
    .4byte 0x67899889
    .4byte 0x785a0183
    .4byte 0x77777667
    .4byte 0x03d02b31
    .4byte 0x303b11f1
    .4byte 0x103b1003
    .4byte 0x9abcdd03
    .4byte 0x20e04720
    .4byte 0x5047004b
    .4byte 0x63554503
    .4byte 0x56005565
    .4byte 0x54666444
    .4byte 0x02556444
    .4byte 0x44764334
    .4byte 0x03003433
    .4byte 0x44870064
    .4byte 0x45987634
    .4byte 0x99208764
    .4byte 0x871b0077
    .4byte 0x87766667
    .4byte 0x87777801
    .4byte 0x76788998
    .4byte 0x64407a00
    .4byte 0x89448200
    .4byte 0x78664467
    .4byte 0x76444600
    .4byte 0x89876656
    .4byte 0x00774067
    .4byte 0x89a98819
    .4byte 0x00ba9988
    .4byte 0xcba9879a
    .4byte 0xba9876ab
    .4byte 0x0710bc60
    .4byte 0x679a0600
    .4byte 0x08643335
    .4byte 0x65444567
    .4byte 0x78660300
    .4byte 0x46660066
    .4byte 0x56777789
    .4byte 0x8820889a
    .4byte 0x78300067
    .4byte 0x88776778
    .4byte 0x6b001440
    .4byte 0x88753134
    .4byte 0x76003334
    .4byte 0x76544478
    .4byte 0x00645578
    .4byte 0x65667887
    .4byte 0x76776787
    .4byte 0x8878981c
    .4byte 0x76105a00
    .4byte 0x45567e10
    .4byte 0x56766400
    .4byte 0x56634334
    .4byte 0x33130034
    .4byte 0x43111255
    .4byte 0x11001246
    .4byte 0x11134541
    .4byte 0x21787833
    .4byte 0x6b027777
    .4byte 0x99998788
    .4byte 0x00a09c30
    .4byte 0x3b006433
    .4byte 0x89876544
    .4byte 0x76551043
    .4byte 0xbc930088
    .4byte 0x00a98877
    .4byte 0x987766cb
    .4byte 0x876644ba
    .4byte 0x4444a902
    .4byte 0x00669876
    .4byte 0x46007708
    .4byte 0x44677656
    .4byte 0x289a6556
    .4byte 0x57116789
    .4byte 0x885f0177
    .4byte 0x9a00bccb
    .4byte 0xabccba99
    .4byte 0x02cba9aa
    .4byte 0xba98bbbc
    .4byte 0x0300cddc
    .4byte 0x556405dd
    .4byte 0x00769876
    .4byte 0x3f007737
    .4byte 0x47008841
    .4byte 0xdcba9999
    .4byte 0x405802aa
    .4byte 0xdd6002bb
    .4byte 0xba0feddd
    .4byte 0x010e5fdc
    .4byte 0xaf010fa7
    .4byte 0xbb01b701
    .4byte 0x1f220600
    .4byte 0xef01608e
    .4byte 0x8611bcdd
    .4byte 0xd3620810
    .4byte 0xbcde29f0
    .4byte 0x00ab0600
    .4byte 0x00aa9a06
    .4byte 0xaabb20b7
    .4byte 0x789a9b11
    .4byte 0x039a9abc
    .4byte 0x8989ab78
    .4byte 0x19019a78
    .4byte 0x56009600
    .4byte 0x44454678
    .4byte 0x08314556
    .4byte 0x11345664
    .4byte 0x76330300
    .4byte 0xbc009056
    .4byte 0xbb006667
    .4byte 0x76777777
    .4byte 0x66788810
    .4byte 0x67449801
    .4byte 0x14004644
    .4byte 0x34566556
    .4byte 0x00467667
    .4byte 0x14667833
    .4byte 0x13456731
    .4byte 0x45674100
    .4byte 0x33464111
    .4byte 0x34410111
    .4byte 0x11611113
    .4byte 0x00012011
    .4byte 0x33141141
    .4byte 0x44455455
    .4byte 0x66764506
    .4byte 0xf8003336
    .4byte 0x00310300
    .4byte 0x11367713
    .4byte 0x54331133
    .4byte 0x33116501
    .4byte 0x31116543
    .4byte 0x43000320
    .4byte 0x34334111
    .4byte 0x00454311
    .4byte 0x44443334
    .4byte 0x34666613
    .4byte 0xddf2137e
    .4byte 0xe3f201f0
    .4byte 0xeb800380
    .4byte 0xb0890600
    .4byte 0x60780600
    .4byte 0x9a0f0003
    .4byte 0x00877788
    .4byte 0x76667789
    .4byte 0x65556678
    .4byte 0x10556720
    .4byte 0x563444ef
    .4byte 0x33053444
    .4byte 0x11334456
    .4byte 0x0111cb00
    .4byte 0x01bc546e
    .4byte 0x7e01ab76
    .4byte 0x8986019a
    .4byte 0xdb01a043
    .4byte 0x11f80031
    .4byte 0x31567764
    .4byte 0x45676315
    .4byte 0x010f8601
    .4byte 0x2700ff8e
    .4byte 0x2700fe55
    .4byte 0xdc2700ed
    .4byte 0x01cb2700
    .4byte 0xef21c0b6
    .4byte 0xefcc6303
    .4byte 0xdebbbbcd
    .4byte 0xaaaabc00
    .4byte 0x9999abcd
    .4byte 0x7c02a8bc
    .4byte 0x9a8402ab
    .4byte 0x67898c02
    .4byte 0x04555555
    .4byte 0x2a04dd2a
    .4byte 0xbb2a04cc
    .4byte 0x01966a00
    .4byte 0x0099abfb
    .4byte 0x6a00886a
    .4byte 0x50668212
    .4byte 0xbb5f00cc
    .4byte 0xbaaa5f00
    .4byte 0x9900eedc
    .4byte 0x88ddcba9
    .4byte 0x00ccba98
    .4byte 0xbba98777
    .4byte 0xaa987666
    .4byte 0x8765550a
    .4byte 0xab5b0099
    .4byte 0xb29a5b00
    .4byte 0x00895b00
    .4byte 0x77bf015b
    .4byte 0x565b0067
    .4byte 0x34678900
    .4byte 0x34667854
    .4byte 0x9600aa54
    .4byte 0xff96000f
    .4byte 0x00fe9600
    .4byte 0x0096ed96
    .4byte 0x0065dc96
    .4byte 0x08006508
    .4byte 0xeba93f00
    .4byte 0xff3353c4
    .4byte 0x00dc0300
    .4byte 0x4822cb03
    .4byte 0x23fd3312
    .4byte 0xe04f11d7
    .4byte 0x11db5301
    .4byte 0x9a6a024b
    .4byte 0x92fcf113
    .4byte 0x21070173
    .4byte 0x113f1137
    .4byte 0xaa4f1147
    .4byte 0xcddd04cb
    .4byte 0x02eedcbb
    .4byte 0x3ddeffbe
    .4byte 0x4c014678
    .4byte 0x3d037423
    .4byte 0x009ad800
    .4byte 0x00ab50e0
    .4byte 0xf000bce8
    .4byte 0xddcbbbcd
    .4byte 0x89320082
    .4byte 0x789abba9
    .4byte 0x9a78ca03
    .4byte 0xcc781f03
    .4byte 0x7b103f84
    .4byte 0x46000467
    .4byte 0x46970280
    .4byte 0x45764434
    .4byte 0x65103333
    .4byte 0x03101134
    .4byte 0x33347613
    .4byte 0x44644301
    .4byte 0x99764433
    .4byte 0x98089303
    .4byte 0x00789aa9
    .4byte 0xa987787e
    .4byte 0x0189ab3a
    .4byte 0x0023243a
    .4byte 0x6313bc03
    .4byte 0x11220145
    .4byte 0x13446643
    .4byte 0x05430033
    .4byte 0x44556734
    .4byte 0x44fc0344
    .4byte 0x66547901
    .4byte 0x05771702
    .4byte 0x631188df
    .4byte 0x76206354
    .4byte 0x874e0098
    .4byte 0x77643313
    .4byte 0x64431300
    .4byte 0x53344666
    .4byte 0x43460055
    .4byte 0x44675554
    .4byte 0x01a05554
    .4byte 0x7201766a
    .4byte 0x78889987
    .4byte 0x99980a98
    .4byte 0xc100a989
    .4byte 0xcb9a01ba
    .4byte 0x006711d7
    .4byte 0x0600ec03
    .4byte 0x017f11ee
    .4byte 0x8fa7f37e
    .4byte 0xeeee0300
    .4byte 0xa3af05fe
    .4byte 0xa601f0b1
    .4byte 0x03b0ec93
    .4byte 0x5795d352
    .4byte 0x610002bd
    .4byte 0x0433441f
    .4byte 0x11436633
    .4byte 0x338b0333
    .4byte 0x11130444
    .4byte 0x00334532
    .4byte 0x40311303
    .4byte 0x43610342
    .4byte 0x45443345
    .4byte 0x46770855
    .4byte 0x67035433
    .4byte 0x10114664
    .4byte 0x00453411
    .4byte 0x11113403
    .4byte 0x34442054
    .4byte 0x66130310
    .4byte 0x2a544456
    .4byte 0xc3231131
    .4byte 0x63030041
    .4byte 0x00330330
    .4byte 0x33333164
    .4byte 0x64344176
    .4byte 0x54558700
    .4byte 0x15678876
    .4byte 0x66413811
    .4byte 0x1f042e00
    .4byte 0x66532e00
    .4byte 0x65450056
    .4byte 0x33466776
    .4byte 0x00917863
    .4byte 0x00356703
    .4byte 0x7764412f
    .4byte 0x87402100
    .4byte 0x13765500
    .4byte 0x13655411
    .4byte 0x55443302
    .4byte 0x01444466
    .4byte 0x6600553b
    .4byte 0x77666677
    .4byte 0x04446777
    .4byte 0x46788811
    .4byte 0x46a60114
    .4byte 0x67781187
    .4byte 0x343c0026
    .4byte 0x47044676
    .4byte 0x67870084
    .4byte 0x05111114
    .4byte 0x75879957
    .4byte 0x016807a9
    .4byte 0x66450290
    .4byte 0x0245da00
    .4byte 0x783100db
    .4byte 0x77113156
    .4byte 0x147c3436
    .4byte 0xbb8727f1
    .4byte 0x1f11f403
    .4byte 0xcdef9712
    .4byte 0x2703cc40
    .4byte 0xabcdbcbb
    .4byte 0x05a8bbaa
    .4byte 0x6e05aa66
    .4byte 0x88760599
    .4byte 0x14004567
    .4byte 0x34467811
    .4byte 0x00678933
    .4byte 0x789a3336
    .4byte 0x89ab3667
    .4byte 0xaa667801
    .4byte 0xa9456789
    .4byte 0x98410300
    .4byte 0x43319e06
    .4byte 0x02314566
    .4byte 0x6443045e
    .4byte 0x00644677
    .4byte 0x107776ee
    .4byte 0x06657898
    .4byte 0x76543473
    .4byte 0x11140098
    .4byte 0x41148761
    .4byte 0x13509876
    .4byte 0x06111004
    .4byte 0x7643363f
    .4byte 0x66671878
    .4byte 0x06330687
    .4byte 0x6789885f
    .4byte 0x61009940
    .4byte 0x53333678
    .4byte 0x13023567
    .4byte 0x11113651
    .4byte 0x11030031
    .4byte 0x20d200da
    .4byte 0x04004403
    .4byte 0x00113701
    .4byte 0x5512332e
    .4byte 0x83016676
    .4byte 0x03101144
    .4byte 0x1c018051
    .4byte 0x44446761
    .4byte 0x2d667641
    .4byte 0x5f074366
    .4byte 0x30471643
    .4byte 0x7b147803
    .4byte 0x068e02f0
    .4byte 0x26cb3267
    .4byte 0x333313df
    .4byte 0x0300e257
    .4byte 0x0330ce08
    .4byte 0x00541344
    .4byte 0x67116403
    .4byte 0xd3046544
    .4byte 0x03548777
    .4byte 0x0350dfe3
    .4byte 0x13ba9706
    .4byte 0x149b12fb
    .4byte 0x1313140b
    .4byte 0x0350d8e3
    .4byte 0x14edf313
    .4byte 0x66438603
    .4byte 0x66056666
    .4byte 0x64313435
    .4byte 0x0233aa00
    .4byte 0x0231751e
    .4byte 0x2003071a
    .4byte 0xe7054403
    .4byte 0xf76b0131
    .4byte 0xc8f88318
    .4byte 0xde020140
    .4byte 0xf4de02ef
    .4byte 0x0001403b
    .4byte 0xeedddddd
    .4byte 0xdeeeeeee
    .4byte 0xffffff1d
    .4byte 0x5f4467f4
    .4byte 0xf457f303
    .4byte 0x6734a067
    .4byte 0x45fb0344
    .4byte 0x56765554
    .4byte 0x219401d4
    .4byte 0x0808879c
    .4byte 0xa9080898
    .4byte 0xabcb04aa
    .4byte 0x03dcbbba
    .4byte 0x0198dd82
    .4byte 0xa9defcba
    .4byte 0x07effdcb
    .4byte 0xd3f0682b
    .4byte 0x89c70983
    .4byte 0xdd9acf09
    .4byte 0xabcb23cd
    .4byte 0xffbc9104
    .4byte 0x05b704ee
    .4byte 0xf754d993
    .4byte 0x0565a702
    .4byte 0x77e303aa
    .4byte 0x55ba0587
    .4byte 0xa9c20598
    .4byte 0x05baca05
    .4byte 0xbb00cbd2
    .4byte 0x4701dd57
    .4byte 0x0e4701fd
    .4byte 0x8b074e01
    .4byte 0x1300e3f3
    .4byte 0x36533221
    .4byte 0x00523222
    .4byte 0x33423466
    .4byte 0x33434644
    .4byte 0x33164303
    .4byte 0x01131311
    .4byte 0x60580348
    .4byte 0x01070233
    .4byte 0x766688e2
    .4byte 0x08809988
    .4byte 0x44649986
    .4byte 0x44638876
    .4byte 0x41776500
    .4byte 0x41666546
    .4byte 0x55660366
    .4byte 0x46777641
    .4byte 0x9f021e03
    .4byte 0x08111429
    .4byte 0xd60a13ef
    .4byte 0xd1036744
    .4byte 0x07454634
    .4byte 0x33db0419
    .4byte 0x31118c04
    .4byte 0x11233400
    .4byte 0x43455443
    .4byte 0x66650044
    .4byte 0x77765544
    .4byte 0x87286655
    .4byte 0x996b0888
    .4byte 0x87aa7308
    .4byte 0xabba0199
    .4byte 0x76555333
    .4byte 0x94180043
    .4byte 0x6676aa04
    .4byte 0x01772301
    .4byte 0x58878823
    .4byte 0x87f50788
    .4byte 0x0c00a102
    .4byte 0xa800fcba
    .4byte 0x010f0300
    .4byte 0x5e06ff27
    .4byte 0x10cbaafe
    .4byte 0x01aaedcc
    .4byte 0xbba99937
    .4byte 0x98880ecb
    .4byte 0x77fabaaa
    .4byte 0xee0823ba
    .4byte 0x06774444
    .4byte 0x44676668
    .4byte 0x66446109
    .4byte 0x76ca0785
    .4byte 0x17533111
    .4byte 0x710455cb
    .4byte 0x8256552b
    .4byte 0x2c01767b
    .4byte 0x157b2287
    .4byte 0x02997c1f
    .4byte 0xd211068b
    .4byte 0x047fca7b
    .4byte 0x0154639a
    .4byte 0x56644344
    .4byte 0x05766455
    .4byte 0x7687076a
    .4byte 0x1a988767
    .4byte 0x1468030b
    .4byte 0x97647067
    .4byte 0x96eb53db
    .4byte 0x66678983
    .4byte 0x2e0acc77
    .4byte 0x6733ff19
    .4byte 0xeb33f404
    .4byte 0x03a03446
    .4byte 0xeb0366eb
    .4byte 0x67888777
    .4byte 0x5c0a8244
    .4byte 0x88766366
    .4byte 0x88e20577
    .4byte 0x990300ac
    .4byte 0x0189a209
    .4byte 0x77d90946
    .4byte 0x5203cb67
    .4byte 0x7633b704
    .4byte 0x04767001
    .4byte 0x007710af
    .4byte 0x54566777
    .4byte 0x44545666
    .4byte 0x44551103
    .4byte 0x04983111
    .4byte 0xa8871349
    .4byte 0x01ab9607
    .4byte 0x3201ab32
    .4byte 0x0099879a
    .4byte 0x887689a9
    .4byte 0x77637898
    .4byte 0xad018753
    .4byte 0x36170913
    .4byte 0x16230663
    .4byte 0x99460253
    .4byte 0x88466678
    .4byte 0x1377770c
    .4byte 0x0c311167
    .4byte 0x03643191
    .4byte 0x06c3025f
    .4byte 0x33333455
    .4byte 0x20670055
    .4byte 0x447e4403
    .4byte 0x63097513
    .4byte 0xcf5a5801
    .4byte 0x33010300
    .4byte 0x00ba65a9
    .4byte 0x870b0a57
    .4byte 0x87920298
    .4byte 0x89386b11
    .4byte 0x1c1a1577
    .4byte 0xbb931c8b
    .4byte 0xbb75cbaa
    .4byte 0x08086207
    .4byte 0x04771e04
    .4byte 0x97426626
    .4byte 0xfe4358aa
    .4byte 0x07ed5a07
    .4byte 0x6a07dc62
    .4byte 0x006776cb
    .4byte 0xb8dff154
    .4byte 0xa0005603
    .4byte 0xa1430b09
    .4byte 0x10333e01
    .4byte 0x64456603
    .4byte 0x5b2e0934
    .4byte 0x77360966
    .4byte 0x43129505
    .4byte 0x05c32798
    .4byte 0xdf04be24
    .4byte 0x16da0263
    .4byte 0x20da1227
    .4byte 0x11ab0501
    .4byte 0x33af0bab
    .4byte 0x0134720b
    .4byte 0x690946b5
    .4byte 0x01824b15
    .4byte 0x11766601
    .4byte 0x52154311
    .4byte 0x0806c933
    .4byte 0x42118417
    .4byte 0x63320300
    .4byte 0x61407809
    .4byte 0x63310800
    .4byte 0x62211144
    .4byte 0xc301666e
    .4byte 0x16ef8b03
    .4byte 0x1383f8eb
    .4byte 0xdd20cbbf
    .4byte 0xfe4204ed
    .4byte 0x0fffeeee
    .4byte 0xfdf71cff
    .4byte 0xa413f02b
    .4byte 0x047c049f
    .4byte 0x4039f07b
    .4byte 0x11130601
    .4byte 0x00433113
    .4byte 0x44a101ff
    .4byte 0x551c0aa0
    .4byte 0x67660d01
    .4byte 0xca776764
    .4byte 0xef057a0c
    .4byte 0xa7038764
    .4byte 0x445e0e45
    .4byte 0x63334400
    .4byte 0x61114544
    .4byte 0x11360346
    .4byte 0x44466761
    .4byte 0x03002c06
    .4byte 0x88a2029d
    .4byte 0x010c0334
    .4byte 0x430310d3
    .4byte 0x53091601
    .4byte 0x05333434
    .4byte 0x0b54449f
    .4byte 0x6755355a
    .4byte 0x82014c0b
    .4byte 0x891e039a
    .4byte 0x20fd2709
    .4byte 0x10df1503
    .4byte 0x1117100f
    .4byte 0x665b01fb
    .4byte 0x0080b712
    .4byte 0x44674303
    .4byte 0x44463134
    .4byte 0x67313300
    .4byte 0x78334366
    .4byte 0x34460177
    .4byte 0x46467889
    .4byte 0x666c0277
    .4byte 0x08c60346
    .4byte 0x03538796
    .4byte 0x757203e3
    .4byte 0x6555431b
    .4byte 0xba04ef23
    .4byte 0x4a431387
    .4byte 0xe303a503
    .4byte 0xec0380dc
    .4byte 0x00ba0400
    .4byte 0x03909600
    .4byte 0x005554a7
    .4byte 0x313355e5
    .4byte 0x12430054
    .4byte 0x12435331
    .4byte 0x42042333
    .4byte 0x23211111
    .4byte 0x6622af00
    .4byte 0x0d5b00cf
    .4byte 0x0c34879d
    .4byte 0x202a00cc
    .4byte 0xbf4f2403
    .4byte 0x03340b03
    .4byte 0x10f314d8
    .4byte 0x60474447
    .4byte 0xff131003
    .4byte 0x777c0310
    .4byte 0xaf137bfc
    .4byte 0x439eab8b
    .4byte 0xab5be761
    .4byte 0x96479eee
    .4byte 0x11be0703
    .4byte 0xaf081e05
    .4byte 0x14660330
    .4byte 0x1c431346
    .4byte 0xa32c64a4
    .4byte 0xf1ff8888
    .4byte 0xf001f0d1
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0fe
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x0001f001
    .4byte 0x00000000
    .4byte 0x00140010
    .4byte 0xedcba900
    .4byte 0xdcba980f
    .4byte 0x03d0e8fe
    .4byte 0x06001750
    .4byte 0xdc031000
    .4byte 0x007c00fe
    .4byte 0x03200600
    .4byte 0x13100b10
    .4byte 0x00001e00
    .4byte 0xf00170aa
    .4byte 0x00ff0300
    .4byte 0x0600ef06
    .4byte 0x0600a0de
    .4byte 0xbc0600cd
    .4byte 0x0ffff000
    .4byte 0xeeeff000
    .4byte 0xdddeeffe
    .4byte 0xcdde00ed
    .4byte 0xbccddccc
    .4byte 0xbc00cbbb
    .4byte 0xabbaaaab
    .4byte 0x0ca9999a
    .4byte 0x9888999a
    .4byte 0x52003810
    .4byte 0x10c0fe00
    .4byte 0xdc4e005b
    .4byte 0xcbff0fed
    .4byte 0xeefe00dc
    .4byte 0xddedcbba
    .4byte 0xdc39baa9
    .4byte 0x106090cc
    .4byte 0x00600001
    .4byte 0x5c2b00ee
    .4byte 0xcc3000dd
    .4byte 0x01f03010
    .4byte 0x00ff2510
    .4byte 0xeeeeff01
    .4byte 0xddddeeff
    .4byte 0x40c31bf0
    .4byte 0xed98006f
    .4byte 0xf0eeefff
    .4byte 0x233d201d
    .4byte 0x6400ee00
    .4byte 0x10fedddd
    .4byte 0x10e3b0d3
    .4byte 0x00effff0
    .4byte 0xdeffdecf
    .4byte 0xefcd06dd
    .4byte 0xf0bccccd
    .4byte 0x009b109b
    .4byte 0x0f9b0088
    .4byte 0x1f01bb00
    .4byte 0x00321122
    .4byte 0x43111344
    .4byte 0x11111544
    .4byte 0x11144400
    .4byte 0x11135443
    .4byte 0x03008042
    .4byte 0x11115432
    .4byte 0x00113322
    .4byte 0x66323311
    .4byte 0x65a98764
    .4byte 0x76031080
    .4byte 0x8776ba98
    .4byte 0x8710cba9
    .4byte 0x0300ba98
    .4byte 0x8876baaa
    .4byte 0x64a9990f
    .4byte 0x111f1187
    .4byte 0x405a204f
    .4byte 0x0f10c103
    .4byte 0xbcdd0370
    .4byte 0x30de679a
    .4byte 0xce780003
    .4byte 0xcd6799ab
    .4byte 0x009089ab
    .4byte 0x50467903
    .4byte 0x63443303
    .4byte 0x45440067
    .4byte 0x54667875
    .4byte 0x65008876
    .4byte 0x54875444
    .4byte 0x00754433
    .4byte 0x87643244
    .4byte 0x98763433
    .4byte 0x87643400
    .4byte 0x33467799
    .4byte 0x67880062
    .4byte 0x78997666
    .4byte 0x98008777
    .4byte 0x98988889
    .4byte 0x00887789
    .4byte 0x87667899
    .4byte 0x76446789
    .4byte 0x44567902
    .4byte 0x00666676
    .4byte 0x98087723
    .4byte 0x0188889a
    .4byte 0x9aba99ae
    .4byte 0xcbaaa90a
    .4byte 0xbc1702ab
    .4byte 0x00cc0330
    .4byte 0x111467ab
    .4byte 0x33346764
    .4byte 0x03106640
    .4byte 0x36666678
    .4byte 0x77207789
    .4byte 0x672c0046
    .4byte 0x789999aa
    .4byte 0x98899900
    .4byte 0x64443689
    .4byte 0x33140087
    .4byte 0x21139876
    .4byte 0x33049876
    .4byte 0x44998763
    .4byte 0x76660300
    .4byte 0x779a9804
    .4byte 0xfd01a987
    .4byte 0x008089aa
    .4byte 0x67898876
    .4byte 0x46798777
    .4byte 0x79766600
    .4byte 0x78644445
    .4byte 0x44340045
    .4byte 0x41333367
    .4byte 0x11003467
    .4byte 0x11335731
    .4byte 0x00787821
    .4byte 0x89887777
    .4byte 0x98878888
    .4byte 0x76999910
    .4byte 0x87648300
    .4byte 0x53049a98
    .4byte 0x53998875
    .4byte 0x44320800
    .4byte 0x98987602
    .4byte 0x00cba999
    .4byte 0x00a8ba48
    .4byte 0xb600a9b6
    .4byte 0x88b60098
    .4byte 0x66004467
    .4byte 0x46567887
    .4byte 0x28556776
    .4byte 0x0e016446
    .4byte 0x771a0167
    .4byte 0x8908abcb
    .4byte 0x02bcba88
    .4byte 0xaaabcb74
    .4byte 0xbcba9800
    .4byte 0xcba988bc
    .4byte 0x6e0190cd
    .4byte 0x430065dd
    .4byte 0xa9876677
    .4byte 0x98777804
    .4byte 0x140099ba
    .4byte 0xba0199aa
    .4byte 0xcbaaaadc
    .4byte 0xbc01cbed
    .4byte 0xeddddd0f
    .4byte 0x92e3120f
    .4byte 0x127112ff
    .4byte 0x0150803f
    .4byte 0x13365467
    .4byte 0x00466646
    .4byte 0x66776713
    .4byte 0x14677833
    .4byte 0x46784104
    .4byte 0xbb005311
    .4byte 0x34005553
    .4byte 0x13456311
    .4byte 0x10116311
    .4byte 0x00211111
    .4byte 0x13113103
    .4byte 0x54540411
    .4byte 0x01553334
    .4byte 0x01874450
    .4byte 0x87466677
    .4byte 0x01364367
    .4byte 0x1234027b
    .4byte 0x16411111
    .4byte 0x00670300
    .4byte 0x46433455
    .4byte 0x44445456
    .4byte 0x33443501
    .4byte 0x31133134
    .4byte 0x20803300
    .4byte 0xa999aa01
    .4byte 0xaaaabb89
    .4byte 0xbbcd7905
    .4byte 0x370379ab
    .4byte 0x44370379
    .4byte 0x88370389
    .4byte 0x17018899
    .4byte 0x66006677
    .4byte 0x76444667
    .4byte 0x86311346
    .4byte 0x53330330
    .4byte 0xb0016776
    .4byte 0x4f883211
    .4byte 0x67591188
    .4byte 0xf0ddf256
    .4byte 0xa0c3c301
    .4byte 0xc603a603
    .4byte 0x9ac603ab
    .4byte 0x005c02ff
    .4byte 0x00a8890a
    .4byte 0x03807903
    .4byte 0x88870089
    .4byte 0x66007789
    .4byte 0x44667877
    .4byte 0x80446766
    .4byte 0x3334c300
    .4byte 0x13334634
    .4byte 0x01466021
    .4byte 0x110701bb
    .4byte 0xbbcba998
    .4byte 0xaa9e01a8
    .4byte 0x01999e01
    .4byte 0x7643899e
    .4byte 0x44789800
    .4byte 0x32678875
    .4byte 0x46781075
    .4byte 0xbb390243
    .4byte 0x55ffeddc
    .4byte 0x99f003aa
    .4byte 0x0388f003
    .4byte 0x300087f0
    .4byte 0x30007654
    .4byte 0x43300064
    .4byte 0xddef3000
    .4byte 0xdecccc01
    .4byte 0xcdbbbbcc
    .4byte 0xbc410401
    .4byte 0x99ab5402
    .4byte 0x029a8889
    .4byte 0x78990435
    .4byte 0x00896667
    .4byte 0x02fedcfc
    .4byte 0xedcbddde
    .4byte 0x8e02cccd
    .4byte 0xdb31f0bb
    .4byte 0x5a021d01
    .4byte 0x76776a00
    .4byte 0x66007888
    .4byte 0xffedcccc
    .4byte 0x50dcbbbb
    .4byte 0xddd301ee
    .4byte 0x89ccbf02
    .4byte 0xbb2aa988
    .4byte 0x67600378
    .4byte 0x02466003
    .4byte 0xbc01deff
    .4byte 0xabcdabbb
    .4byte 0x1a029aaa
    .4byte 0x885b00aa
    .4byte 0x00775b00
    .4byte 0x5b00665b
    .4byte 0x78650534
    .4byte 0x02431466
    .4byte 0x12020f0a
    .4byte 0x1a02fe55
    .4byte 0xdc9b03ed
    .4byte 0x02cb8302
    .4byte 0x64ba377a
    .4byte 0xda020800
    .4byte 0xb553b4a9
    .4byte 0x0003101f
    .4byte 0x88777665
    .4byte 0x87666444
    .4byte 0x44433408
    .4byte 0x54035076
    .4byte 0x76004445
    .4byte 0x87665543
    .4byte 0x7c644523
    .4byte 0x63cb7387
    .4byte 0x1373a4e3
    .4byte 0x78e303cf
    .4byte 0x7b11d5de
    .4byte 0x00ff0800
    .4byte 0x0800ff08
    .4byte 0x6a0800f0
    .4byte 0x02080000
    .4byte 0xbe029abe
    .4byte 0x9abe029a
    .4byte 0xab9a00ab
    .4byte 0x00bcab00
    .4byte 0xf200cdea
    .4byte 0xff00be02
    .4byte 0x654678de
    .4byte 0x07646787
    .4byte 0x76788764
    .4byte 0x00110176
    .4byte 0x405b0128
    .4byte 0xbc0503ab
    .4byte 0xcddcbaaa
    .4byte 0xedcb28bb
    .4byte 0x209a0900
    .4byte 0x899abc36
    .4byte 0x78060098
    .4byte 0x103f64cc
    .4byte 0x89679907
    .4byte 0x49027860
    .4byte 0x45679f03
    .4byte 0x00467655
    .4byte 0x45644444
    .4byte 0x15764431
    .4byte 0x76331100
    .4byte 0x64411113
    .4byte 0x53110133
    .4byte 0xaba99976
    .4byte 0x81510079
    .4byte 0x79ab5601
    .4byte 0x89aba987
    .4byte 0x20e85b03
    .4byte 0x145b0387
    .4byte 0x0702cd23
    .4byte 0x00556731
    .4byte 0x35562111
    .4byte 0x35672333
    .4byte 0x78333302
    .4byte 0x02536566
    .4byte 0x9a73662f
    .4byte 0x6f11bf02
    .4byte 0x43989204
    .4byte 0x5a009b04
    .4byte 0x44348704
    .4byte 0x03007764
    .4byte 0x01806666
    .4byte 0x43535624
    .4byte 0x43556744
    .4byte 0x66784400
    .4byte 0x77897646
    .4byte 0x98870067
    .4byte 0x88987888
    .4byte 0xa9418999
    .4byte 0x76bafe03
    .4byte 0x05cbaa98
    .4byte 0x10dc6a2e
    .4byte 0xee020003
    .4byte 0x01ff9a01
    .4byte 0xd3c5ffa2
    .4byte 0xee0310a7
    .4byte 0xcf05feee
    .4byte 0xc8d3250f
    .4byte 0xbf0301f0
    .4byte 0x37036665
    .4byte 0x20345431
    .4byte 0xbd024343
    .4byte 0x44664443
    .4byte 0x77440065
    .4byte 0x88667666
    .4byte 0x77418777
    .4byte 0x43885704
    .4byte 0x03631111
    .4byte 0xc713b88c
    .4byte 0x00c60364
    .4byte 0x11071003
    .4byte 0x130c3176
    .4byte 0x01448763
    .4byte 0x53ff047c
    .4byte 0xdb038067
    .4byte 0x65111346
    .4byte 0x02513346
    .4byte 0x64344667
    .4byte 0xf4046776
    .4byte 0x00465278
    .4byte 0x2b201603
    .4byte 0xcb041111
    .4byte 0x23442844
    .4byte 0x03341803
    .4byte 0x77664624
    .4byte 0x77677700
    .4byte 0x78777667
    .4byte 0x44028046
    .4byte 0x44546677
    .4byte 0xd4315366
    .4byte 0x10061f26
    .4byte 0x43320343
    .4byte 0x34410700
    .4byte 0x53111300
    .4byte 0x56431134
    .4byte 0x48008076
    .4byte 0x14466776
    .4byte 0x01114676
    .4byte 0x11366611
    .4byte 0x10234611
    .4byte 0x12232028
    .4byte 0x46660310
    .4byte 0xffef4233
    .4byte 0xfbf5b701
    .4byte 0x97770770
    .4byte 0x77423bf6
    .4byte 0xbbe7eb53
    .4byte 0x12fb13e0
    .4byte 0xde031073
    .4byte 0xcdabcccc
    .4byte 0xbbbbbb05
    .4byte 0xbb07aabc
    .4byte 0xc8bb0799
    .4byte 0x33062b06
    .4byte 0xa8006788
    .4byte 0x20134678
    .4byte 0xf4008943
    .4byte 0x4667789a
    .4byte 0x788900ab
    .4byte 0x6799aa66
    .4byte 0x03849934
    .4byte 0x46798840
    .4byte 0x43e31334
    .4byte 0x36780176
    .4byte 0x56798764
    .4byte 0x80e92576
    .4byte 0x87769403
    .4byte 0x76631388
    .4byte 0x31130488
    .4byte 0x04138763
    .4byte 0x0c431110
    .4byte 0x44338876
    .4byte 0x2400e900
    .4byte 0x98017667
    .4byte 0xa9877879
    .4byte 0x1b068979
    .4byte 0xbba99802
    .4byte 0x0536789a
    .4byte 0x112e161b
    .4byte 0x11fa0041
    .4byte 0x13000390
    .4byte 0x08117700
    .4byte 0x67876631
    .4byte 0x33673a00
    .4byte 0x03408043
    .4byte 0x66787641
    .4byte 0x10888761
    .4byte 0x02764177
    .4byte 0x7777765b
    .4byte 0xe303d731
    .4byte 0x73530350
    .4byte 0xa302ab2b
    .4byte 0xbf100326
    .4byte 0x040300e0
    .4byte 0x330310ab
    .4byte 0x34567823
    .4byte 0xfb136555
    .4byte 0xaba5009a
    .4byte 0x03433003
    .4byte 0x0350bde3
    .4byte 0x00700263
    .4byte 0x007b2206
    .4byte 0x1f99ed06
    .4byte 0x3223f6f3
    .4byte 0x1621025f
    .4byte 0x00643391
    .4byte 0x111902a7
    .4byte 0x03644133
    .4byte 0x6676610d
    .4byte 0x67003e03
    .4byte 0x77621111
    .4byte 0xc4432211
    .4byte 0x03305742
    .4byte 0x02433133
    .4byte 0x0046648e
    .4byte 0x34665555
    .4byte 0x34466666
    .4byte 0x086f08ec
    .4byte 0xf0bd12a3
    .4byte 0xdf12c1f2
    .4byte 0xef78fffe
    .4byte 0x20106109
    .4byte 0x01103be4
    .4byte 0x01dddddd
    .4byte 0xeeeeeeee
    .4byte 0x00ffffef
    .4byte 0x0300f127
    .4byte 0x2b9267d4
    .4byte 0xbcdd67f4
    .4byte 0xa65d0133
    .4byte 0x0287c401
    .4byte 0x086798ab
    .4byte 0xba3b05a0
    .4byte 0xcb980196
    .4byte 0xabab059a
    .4byte 0x0301b305
    .4byte 0x0a01aadd
    .4byte 0xef0a01de
    .4byte 0x01ff8603
    .4byte 0x01baff03
    .4byte 0x0351f003
    .4byte 0xbb05b315
    .4byte 0xab91049a
    .4byte 0xbc910482
    .4byte 0xcddeeeff
    .4byte 0xa2dd8600
    .4byte 0x00deb100
    .4byte 0x5567ef86
    .4byte 0x4b662703
    .4byte 0x77e30366
    .4byte 0x98370887
    .4byte 0x63125b12
    .4byte 0xcb6b02ae
    .4byte 0x51ddbb00
    .4byte 0xf78f1a67
    .4byte 0x0020008b
    .4byte 0x34020766
    .4byte 0x14654414
    .4byte 0x026203cd
    .4byte 0x03334417
    .4byte 0x758b0337
    .4byte 0x00930f07
    .4byte 0x01433118
    .4byte 0x003611de
    .4byte 0x85870403
    .4byte 0x36670320
    .4byte 0x3a066431
    .4byte 0x52240776
    .4byte 0x98220287
    .4byte 0x66882202
    .4byte 0x40980b36
    .4byte 0x64a90166
    .4byte 0x63876435
    .4byte 0x87640056
    .4byte 0x78766762
    .4byte 0x87027642
    .4byte 0x33678967
    .4byte 0x13840211
    .4byte 0x56799900
    .4byte 0x67788913
    .4byte 0x67780a35
    .4byte 0xc2035567
    .4byte 0x760b0566
    .4byte 0x34344410
    .4byte 0x2443b301
    .4byte 0x43023111
    .4byte 0x64333344
    .4byte 0x772a0166
    .4byte 0x887a0882
    .4byte 0x99987766
    .4byte 0x83aabe06
    .4byte 0x33bb2a01
    .4byte 0x11764442
    .4byte 0x20ca0443
    .4byte 0x07066676
    .4byte 0x98777677
    .4byte 0x88870b88
    .4byte 0x6c099999
    .4byte 0xbb4003aa
    .4byte 0xeddd0073
    .4byte 0xdcccbaaa
    .4byte 0xbb2fa999
    .4byte 0xba1b09cb
    .4byte 0x5f668909
    .4byte 0x633663f6
    .4byte 0x930b96f3
    .4byte 0x00b317b7
    .4byte 0x04f09906
    .4byte 0x99bf2720
    .4byte 0xabcd03a0
    .4byte 0x3710391a
    .4byte 0xbb076789
    .4byte 0x55434615
    .4byte 0x0343a503
    .4byte 0xea004303
    .4byte 0x55cb03ad
    .4byte 0x0366cb13
    .4byte 0x334318cb
    .4byte 0x640a4717
    .4byte 0x03778987
    .4byte 0xff028842
    .4byte 0x98760799
    .4byte 0x18878999
    .4byte 0x01c80460
    .4byte 0x10765976
    .4byte 0xd3066603
    .4byte 0x7887d605
    .4byte 0x6706d804
    .4byte 0x46666346
    .4byte 0xd004c504
    .4byte 0x231ad541
    .4byte 0x01bb2b4a
    .4byte 0x1601aa0e
    .4byte 0x48cb0999
    .4byte 0x787b0189
    .4byte 0x89560664
    .4byte 0x00d61467
    .4byte 0x66a7296b
    .4byte 0x17677b07
    .4byte 0x44c0097b
    .4byte 0x41590098
    .4byte 0x01251366
    .4byte 0x333444e0
    .4byte 0x17054477
    .4byte 0x12000360
    .4byte 0x27b70166
    .4byte 0xd79327df
    .4byte 0x13065c00
    .4byte 0xaa9700bb
    .4byte 0xaf0a5700
    .4byte 0x01858301
    .4byte 0x643233e2
    .4byte 0x988d0676
    .4byte 0xa94e0601
    .4byte 0xcbba1507
    .4byte 0x032ae807
    .4byte 0xfb987806
    .4byte 0xe81a6c00
    .4byte 0xac0b5722
    .4byte 0x19fe2308
    .4byte 0x352308f7
    .4byte 0x180498dc
    .4byte 0x00ba4008
    .4byte 0x8100a960
    .4byte 0x41118704
    .4byte 0xe3108755
    .4byte 0x43002333
    .4byte 0x33233464
    .4byte 0x4d556644
    .4byte 0x449b0633
    .4byte 0x11ef0066
    .4byte 0xee0a3302
    .4byte 0x4b003541
    .4byte 0x78988756
    .4byte 0x48eb0336
    .4byte 0x43ee0446
    .4byte 0x78fc0887
    .4byte 0x11703446
    .4byte 0xa5006500
    .4byte 0x6643e800
    .4byte 0x03ec1676
    .4byte 0x10ef09df
    .4byte 0x03004403
    .4byte 0x2111ca00
    .4byte 0x126b0482
    .4byte 0x12467898
    .4byte 0x98341a05
    .4byte 0x77361a05
    .4byte 0x56008d01
    .4byte 0x08411367
    .4byte 0x31137666
    .4byte 0x11436f00
    .4byte 0x41113041
    .4byte 0x0d212304
    .4byte 0x63346676
    .4byte 0x36146702
    .4byte 0x06116642
    .4byte 0x780b1168
    .4byte 0x01112267
    .4byte 0xfb01ddc3
    .4byte 0x13e2b305
    .4byte 0xa4e526db
    .4byte 0xddcbbc27
    .4byte 0x78eec70a
    .4byte 0x370d0d0f
    .4byte 0x00bc9a07
    .4byte 0x76675501
    .4byte 0x46434600
    .4byte 0x34443664
    .4byte 0x54360076
    .4byte 0x76367646
    .4byte 0x56017767
    .4byte 0x67887887
    .4byte 0xbf0b8998
    .4byte 0x8998881f
    .4byte 0x5bf47744
    .4byte 0x5c047f54
    .4byte 0x10fc5704
    .4byte 0x3059c001
    .4byte 0x16911b01
    .4byte 0x56290125
    .4byte 0x76550044
    .4byte 0x64434467
    .4byte 0x12033376
    .4byte 0x12236441
    .4byte 0x011e0231
    .4byte 0x11130847
    .4byte 0x15054564
    .4byte 0x8f654445
    .4byte 0x87761a0b
    .4byte 0x03860c76
    .4byte 0x0252019b
    .4byte 0xfa06864b
    .4byte 0x99999987
    .4byte 0x6c060300
    .4byte 0x99773088
    .4byte 0xb2013808
    .4byte 0x43678934
    .4byte 0x46783200
    .4byte 0x36782231
    .4byte 0x52132014
    .4byte 0x6662c903
    .4byte 0x18435776
    .4byte 0x07576444
    .4byte 0x61160672
    .4byte 0x331b3667
    .4byte 0x03107763
    .4byte 0x0b88e603
    .4byte 0xa8031483
    .4byte 0x17314f17
    .4byte 0x0f003557
    .4byte 0x03333356
    .4byte 0x53365643
    .4byte 0x2c0b6744
    .4byte 0x07eccf59
    .4byte 0x020320ca
    .4byte 0x0310bbdf
    .4byte 0x87bc0a00
    .4byte 0xbc02a972
    .4byte 0x1e059702
    .4byte 0x03109a44
    .4byte 0x33460478
    .4byte 0x3044679a
    .4byte 0x02567803
    .4byte 0x5679ab35
    .4byte 0xa30d6736
    .4byte 0xe3098046
    .4byte 0x87676343
    .4byte 0x47454343
    .4byte 0x64d20076
    .4byte 0xe3004431
    .4byte 0x0a00ef03
    .4byte 0xb314877f
    .4byte 0x431a4b5f
    .4byte 0x639f0310
    .4byte 0x0b25b733
    .4byte 0x5377a7e0
    .4byte 0x78de07bf
    .4byte 0x679aabcd
    .4byte 0xdf07bc40
    .4byte 0x6789aaab
    .4byte 0x7919999a
    .4byte 0x2c029946
    .4byte 0x78788003
    .4byte 0xb7ff2c01
    .4byte 0x2703a0df
    .4byte 0x4e1f58d7
    .4byte 0x95272e23
    .4byte 0xffb1f1e3
    .4byte 0x01f00fec
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x000001e0
    .4byte 0x00140010
    .4byte 0xdcba9808
    .4byte 0xa90350fe
    .4byte 0xed00ddcb
    .4byte 0xdcccbbba
    .4byte 0x00bbaaaa
    .4byte 0xaa9999cb
    .4byte 0x998888ba
    .4byte 0x0000a915
    .4byte 0x000f0170
    .4byte 0x0300fe03
    .4byte 0x0800ed56
    .4byte 0xcb0800dc
    .4byte 0x01700810
    .4byte 0x0300aaf0
    .4byte 0xef0600ff
    .4byte 0x00de0600
    .4byte 0x0080cd06
    .4byte 0xf000bc06
    .4byte 0xeff00fff
    .4byte 0xeffeee00
    .4byte 0xdeedddde
    .4byte 0xdccc00cd
    .4byte 0xcbbbbccd
    .4byte 0xaa00abbc
    .4byte 0x999aabba
    .4byte 0x20999aa9
    .4byte 0x57f09888
    .4byte 0xedcbff00
    .4byte 0xbaee05ff
    .4byte 0x00ddeedc
    .4byte 0x6090cc8f
    .4byte 0x000110ca
    .4byte 0x00ee0060
    .4byte 0x3000dd27
    .4byte 0x7fb0c0cc
    .4byte 0x00ff2590
    .4byte 0xffeeeeff
    .4byte 0xddddee18
    .4byte 0x6f501bf0
    .4byte 0x19edfff0
    .4byte 0xf0eeefff
    .4byte 0x003d201d
    .4byte 0x726400ee
    .4byte 0xb06410dd
    .4byte 0xffe30001
    .4byte 0xde5b00ef
    .4byte 0xddeff000
    .4byte 0xccdeffcd
    .4byte 0x9bf0dfbc
    .4byte 0x11bb9b70
    .4byte 0xa001f024
    .4byte 0x1043114f
    .4byte 0x2a10ff03
    .4byte 0x5b91ce10
    .4byte 0x22109201
    .4byte 0x5a204f01
    .4byte 0x10c10340
    .4byte 0xdd03700f
    .4byte 0xde679abc
    .4byte 0x78000330
    .4byte 0x6799abce
    .4byte 0x9089abcd
    .4byte 0x46790300
    .4byte 0x44330350
    .4byte 0x44006763
    .4byte 0x66787646
    .4byte 0x01898767
    .4byte 0x98876664
    .4byte 0x20764444
    .4byte 0x00334003
    .4byte 0x87643403
    .4byte 0x00367799
    .4byte 0x67884111
    .4byte 0x78996644
    .4byte 0xaa776600
    .4byte 0x9a887789
    .4byte 0x99880089
    .4byte 0xa9887899
    .4byte 0x87006789
    .4byte 0x76467998
    .4byte 0x00664688
    .4byte 0x77679987
    .4byte 0x88779a98
    .4byte 0x889aa900
    .4byte 0x999aba99
    .4byte 0xabcb00aa
    .4byte 0xbcdcbbab
    .4byte 0xdd00dcba
    .4byte 0xcdcba9bc
    .4byte 0x203467ab
    .4byte 0x03407633
    .4byte 0x66667866
    .4byte 0x77890036
    .4byte 0x889a4677
    .4byte 0xab426788
    .4byte 0xaaaa4500
    .4byte 0x3f0089aa
    .4byte 0x00465098
    .4byte 0x7310436b
    .4byte 0x44998763
    .4byte 0x66030094
    .4byte 0x874f0076
    .4byte 0xba984f00
    .4byte 0x77789a00
    .4byte 0x88899987
    .4byte 0x99980088
    .4byte 0x89887888
    .4byte 0x87006777
    .4byte 0x76466678
    .4byte 0x00444467
    .4byte 0x33467863
    .4byte 0x33446743
    .4byte 0x78883304
    .4byte 0x20307777
    .4byte 0x87009999
    .4byte 0x76aaa988
    .4byte 0x01aa9887
    .4byte 0x99887664
    .4byte 0x20876443
    .4byte 0xba9800c3
    .4byte 0xaaa9cbbb
    .4byte 0xaa2abaaa
    .4byte 0x894f0299
    .4byte 0x00782600
    .4byte 0x00a56747
    .4byte 0x47104647
    .4byte 0x0e016446
    .4byte 0x011a0167
    .4byte 0x89abcb77
    .4byte 0x02bcba88
    .4byte 0xabcb0074
    .4byte 0xbcba98aa
    .4byte 0x00a888bc
    .4byte 0x600287bc
    .4byte 0x76430064
    .4byte 0xa90a8766
    .4byte 0x02987777
    .4byte 0xf702a9ef
    .4byte 0xff0288ba
    .4byte 0x01cbedcb
    .4byte 0xedddddbc
    .4byte 0x83110f78
    .4byte 0x91119f91
    .4byte 0x24467592
    .4byte 0x34630031
    .4byte 0x34644233
    .4byte 0x76106643
    .4byte 0x06014334
    .4byte 0x36367763
    .4byte 0x34676400
    .4byte 0x23467667
    .4byte 0x34670c78
    .4byte 0x58018723
    .4byte 0x87444101
    .4byte 0x76640182
    .4byte 0x63446787
    .4byte 0x00429500
    .4byte 0x12667764
    .4byte 0x11677661
    .4byte 0x77644100
    .4byte 0x64443334
    .4byte 0x33332834
    .4byte 0x00440360
    .4byte 0x64344444
    .4byte 0x76020181
    .4byte 0x77666646
    .4byte 0x001d0146
    .4byte 0x78888767
    .4byte 0x77878746
    .4byte 0x76774600
    .4byte 0x64666776
    .4byte 0x44760a64
    .4byte 0x2b104333
    .4byte 0x441e0144
    .4byte 0x87646604
    .4byte 0x031064a9
    .4byte 0xba229876
    .4byte 0x87d00076
    .4byte 0x0300ba98
    .4byte 0x01ba47aa
    .4byte 0x8764a922
    .4byte 0x01f05f33
    .4byte 0x83e901f0
    .4byte 0x0303a0c3
    .4byte 0xc603abc6
    .4byte 0x5c02ff9a
    .4byte 0x890a00a8
    .4byte 0x80790300
    .4byte 0x88998903
    .4byte 0xb7017740
    .4byte 0x66787766
    .4byte 0x67506644
    .4byte 0x0046bc00
    .4byte 0x333346d0
    .4byte 0x0310c033
    .4byte 0x98431302
    .4byte 0x88bbccba
    .4byte 0xaabba915
    .4byte 0x00999300
    .4byte 0x72028993
    .4byte 0x111001c0
    .4byte 0x6446780c
    .4byte 0xaa346787
    .4byte 0x01f06601
    .4byte 0x7601ff6e
    .4byte 0xdd7e01ee
    .4byte 0xccbf0099
    .4byte 0x01300076
    .4byte 0x0043aade
    .4byte 0xddef0030
    .4byte 0xccdecccc
    .4byte 0xcd05bbbb
    .4byte 0xbcaaaabb
    .4byte 0x02abe401
    .4byte 0x899a000c
    .4byte 0x78997778
    .4byte 0x89006667
    .4byte 0xdc444667
    .4byte 0x00dddefe
    .4byte 0xcccdedcb
    .4byte 0xbbbcdcba
    .4byte 0x04db31c0
    .4byte 0x8899a955
    .4byte 0x00899887
    .4byte 0x78887677
    .4byte 0xedcccc66
    .4byte 0x00bbff3a
    .4byte 0x11d31164
    .4byte 0x640089db
    .4byte 0x6400b078
    .4byte 0x00640067
    .4byte 0xcdefa980
    .4byte 0xdeab02bb
    .4byte 0xcd9aaabc
    .4byte 0x80bcb002
    .4byte 0x99ab4002
    .4byte 0x899a7778
    .4byte 0x0f039567
    .4byte 0x5f004446
    .4byte 0x0f360043
    .4byte 0xfe553600
    .4byte 0x00ed3600
    .4byte 0x3600dc36
    .4byte 0x4f9b00cb
    .4byte 0xa98302ba
    .4byte 0xf53f0044
    .4byte 0x10bf731b
    .4byte 0x3600bf03
    .4byte 0x7563950f
    .4byte 0x7317306b
    .4byte 0x11e363cb
    .4byte 0x0160e677
    .4byte 0xe303cf13
    .4byte 0x7b11de78
    .4byte 0xadff0800
    .4byte 0x00ff0800
    .4byte 0x0800f008
    .4byte 0x02dd8a04
    .4byte 0x029a55be
    .4byte 0xbe029abe
    .4byte 0xab9a009a
    .4byte 0xbc02ab00
    .4byte 0xcdddcbaa
    .4byte 0xdd3f05bb
    .4byte 0xdeffed18
    .4byte 0x20026521
    .4byte 0xd0767678
    .4byte 0x74331101
    .4byte 0xbc0503ab
    .4byte 0x0bdcbaaa
    .4byte 0xedcbcbcd
    .4byte 0x209a0900
    .4byte 0x99fc0036
    .4byte 0xcc780600
    .4byte 0x07103f64
    .4byte 0x56136789
    .4byte 0xa97d0384
    .4byte 0x03887787
    .4byte 0x06887727
    .4byte 0x87664464
    .4byte 0x029c0234
    .4byte 0x33018782
    .4byte 0x99764333
    .4byte 0x2906aba9
    .4byte 0xba89ab02
    .4byte 0x0079abcb
    .4byte 0x03aa8947
    .4byte 0xc2019a5b
    .4byte 0xbcdb00ab
    .4byte 0xf0cd0300
    .4byte 0x0310c313
    .4byte 0x0f121702
    .4byte 0x64667833
    .4byte 0x2f024340
    .4byte 0x77889a66
    .4byte 0x991aab77
    .4byte 0x43018888
    .4byte 0x0099cb13
    .4byte 0x44008807
    .4byte 0x44777776
    .4byte 0x00666666
    .4byte 0x44444666
    .4byte 0x44434446
    .4byte 0x03006770
    .4byte 0x17140f14
    .4byte 0x98788898
    .4byte 0xa93e0280
    .4byte 0xba9a9887
    .4byte 0xaa2d9876
    .4byte 0xdcee02cb
    .4byte 0x02000310
    .4byte 0x794b01ee
    .4byte 0x064a01ff
    .4byte 0x10a7b337
    .4byte 0x06eeee03
    .4byte 0x0fff3e50
    .4byte 0x01f0d325
    .4byte 0x5bf5b796
    .4byte 0xeaef0310
    .4byte 0x5bf51701
    .4byte 0x00770770
    .4byte 0x0f01669f
    .4byte 0x01346444
    .4byte 0x43972313
    .4byte 0x33073064
    .4byte 0x0b008144
    .4byte 0x77889846
    .4byte 0x24008867
    .4byte 0x321f0380
    .4byte 0x22114467
    .4byte 0x11281346
    .4byte 0x11030021
    .4byte 0x46660310
    .4byte 0x64310011
    .4byte 0x44643113
    .4byte 0x64031112
    .4byte 0x76433234
    .4byte 0x30d00432
    .4byte 0x76431c03
    .4byte 0x152c0531
    .4byte 0x44080433
    .4byte 0x43331867
    .4byte 0x004f0366
    .4byte 0x46676303
    .4byte 0x7764340e
    .4byte 0x02970567
    .4byte 0x44e304fe
    .4byte 0x1112761c
    .4byte 0x01106803
    .4byte 0x46346301
    .4byte 0x84033450
    .4byte 0x678c0346
    .4byte 0x40887877
    .4byte 0x88050078
    .4byte 0x43311389
    .4byte 0x32111344
    .4byte 0x641d0043
    .4byte 0x015a0066
    .4byte 0x8887035f
    .4byte 0x99987766
    .4byte 0x9303cf05
    .4byte 0x83bbba3e
    .4byte 0x13bbe7eb
    .4byte 0x107312fb
    .4byte 0xcc00de03
    .4byte 0xbbcdabcc
    .4byte 0xe4bcbbbb
    .4byte 0x2a036b05
    .4byte 0x88776b45
    .4byte 0x4678e313
    .4byte 0x03644324
    .4byte 0x009a762b
    .4byte 0x2089ab71
    .4byte 0x2a016678
    .4byte 0x6789aa34
    .4byte 0x79a93934
    .4byte 0xe303ad00
    .4byte 0x76367d02
    .4byte 0x87544d06
    .4byte 0x04769905
    .4byte 0x040064cc
    .4byte 0x762d6333
    .4byte 0x87fa0488
    .4byte 0x0300fb11
    .4byte 0x40ea0089
    .4byte 0x79c70279
    .4byte 0x79aa9877
    .4byte 0xaba90e88
    .4byte 0x53029979
    .4byte 0x07269b12
    .4byte 0x41220224
    .4byte 0x31112346
    .4byte 0x80210300
    .4byte 0x46110300
    .4byte 0x67111114
    .4byte 0x11220736
    .4byte 0x00324678
    .4byte 0x022a15ce
    .4byte 0x0340a129
    .4byte 0x61ea0641
    .4byte 0x02778987
    .4byte 0x7688364e
    .4byte 0x7c003b06
    .4byte 0x000350a9
    .4byte 0x00b8aa63
    .4byte 0x2b03ab63
    .4byte 0x6f14ff25
    .4byte 0x6d444679
    .4byte 0x13038033
    .4byte 0x740064f3
    .4byte 0x00763716
    .4byte 0x9f10af7d
    .4byte 0x630350a9
    .4byte 0x06007002
    .4byte 0x06007b22
    .4byte 0xbf13ed7f
    .4byte 0x23f6e753
    .4byte 0xab831348
    .4byte 0x53155791
    .4byte 0x99060082
    .4byte 0x89a999aa
    .4byte 0x8079da04
    .4byte 0xbc798604
    .4byte 0xab79aabb
    .4byte 0x899906aa
    .4byte 0x2789999a
    .4byte 0x873a020f
    .4byte 0x08a608ec
    .4byte 0xf0bd12a3
    .4byte 0xdf12c1f2
    .4byte 0xef78fffe
    .4byte 0x20106109
    .4byte 0x01103be4
    .4byte 0x01dddddd
    .4byte 0xeeeeeeee
    .4byte 0x00ffffef
    .4byte 0x0300f327
    .4byte 0xcb9267d4
    .4byte 0xbcdd67f4
    .4byte 0xd7065802
    .4byte 0x4687641a
    .4byte 0xbc016006
    .4byte 0x893b15a9
    .4byte 0xcba99800
    .4byte 0xdcbaa99a
    .4byte 0x21ba65ab
    .4byte 0xeda70903
    .4byte 0xef0a01de
    .4byte 0xff6e8603
    .4byte 0x0301bf19
    .4byte 0x150351f0
    .4byte 0x9abb05b3
    .4byte 0xcbcddd0a
    .4byte 0xbc9104ab
    .4byte 0xadcd3a09
    .4byte 0x00dd8600
    .4byte 0x1d11deb1
    .4byte 0x0864bd01
    .4byte 0xe3039e37
    .4byte 0x68148777
    .4byte 0x63125b12
    .4byte 0xb8cb6b02
    .4byte 0x51ddbb00
    .4byte 0xf72f1567
    .4byte 0x6700008b
    .4byte 0x032403cb
    .4byte 0x02468717
    .4byte 0x5808674b
    .4byte 0xa96d4f08
    .4byte 0x03009a02
    .4byte 0x040b0088
    .4byte 0xac129ab4
    .4byte 0x051226d0
    .4byte 0xe71877d7
    .4byte 0x43678934
    .4byte 0x19091160
    .4byte 0x11163f02
    .4byte 0x2a888789
    .4byte 0x54087899
    .4byte 0x26d00567
    .4byte 0x0023e700
    .4byte 0x11776432
    .4byte 0x11663211
    .4byte 0x44331101
    .4byte 0x22333111
    .4byte 0x3360c602
    .4byte 0x86078412
    .4byte 0x78888834
    .4byte 0x03774036
    .4byte 0x88766675
    .4byte 0x29633367
    .4byte 0x52037777
    .4byte 0x63072566
    .4byte 0x06ab0366
    .4byte 0x34437646
    .4byte 0x07bf0744
    .4byte 0x33484493
    .4byte 0x6644bb04
    .4byte 0x7777e604
    .4byte 0x44672a77
    .4byte 0x00440e09
    .4byte 0x51294665
    .4byte 0x5802a098
    .4byte 0x89020798
    .4byte 0x78984467
    .4byte 0x13244620
    .4byte 0x422334b9
    .4byte 0x11001444
    .4byte 0x41464321
    .4byte 0x15446331
    .4byte 0x17644232
    .4byte 0x440423df
    .4byte 0xfd081411
    .4byte 0x1105c300
    .4byte 0xe700df00
    .4byte 0x7a000380
    .4byte 0xcd3a0187
    .4byte 0x9f105a18
    .4byte 0x6b03aa34
    .4byte 0x0034b409
    .4byte 0x094470a7
    .4byte 0x041b0703
    .4byte 0x66464603
    .4byte 0xc004e7f0
    .4byte 0x03a0bf27
    .4byte 0x391aabcd
    .4byte 0xea069712
    .4byte 0x18d100d0
    .4byte 0xb50843b8
    .4byte 0x36786443
    .4byte 0x87cb63ab
    .4byte 0x0088cb03
    .4byte 0xbb0033ae
    .4byte 0x36c63603
    .4byte 0x993e033d
    .4byte 0xfd039998
    .4byte 0xf2771400
    .4byte 0x472ac707
    .4byte 0x87080300
    .4byte 0xdc137799
    .4byte 0x04764167
    .4byte 0x4666639f
    .4byte 0x74243343
    .4byte 0xab0206a4
    .4byte 0xccdd2b3a
    .4byte 0x99980ba8
    .4byte 0x987a0192
    .4byte 0x66ae0078
    .4byte 0xab7b0a9a
    .4byte 0x7877890b
    .4byte 0x99f402aa
    .4byte 0x42040802
    .4byte 0x01787624
    .4byte 0x01666761
    .4byte 0xfe666765
    .4byte 0x0f06d204
    .4byte 0x03405718
    .4byte 0x58111200
    .4byte 0xd4887e00
    .4byte 0x07261806
    .4byte 0xbbda03cc
    .4byte 0x76aa5300
    .4byte 0x109800ea
    .4byte 0x87520219
    .4byte 0x02764709
    .4byte 0x02a198ce
    .4byte 0x8610a9ce
    .4byte 0xbbbcddcb
    .4byte 0x16e71e17
    .4byte 0x082e07ef
    .4byte 0x2278990a
    .4byte 0x18ac0b57
    .4byte 0x07ab5a23
    .4byte 0x40079aec
    .4byte 0x08cb2d02
    .4byte 0x08afba40
    .4byte 0x6b00a940
    .4byte 0x02820487
    .4byte 0x10033063
    .4byte 0x5702b00f
    .4byte 0x23000198
    .4byte 0x164367a4
    .4byte 0x66460011
    .4byte 0x77671346
    .4byte 0x780d3367
    .4byte 0x05643667
    .4byte 0x33470193
    .4byte 0x66410320
    .4byte 0x1111ff00
    .4byte 0x02112111
    .4byte 0x0b315848
    .4byte 0x270b661f
    .4byte 0x77871312
    .4byte 0x07674676
    .4byte 0x46774694
    .4byte 0x33092a09
    .4byte 0x0300d836
    .4byte 0x0543d805
    .4byte 0x44be15d3
    .4byte 0x44054346
    .4byte 0x33422344
    .4byte 0x00331606
    .4byte 0x88772030
    .4byte 0x7776d310
    .4byte 0xaa779887
    .4byte 0x04667802
    .4byte 0xd30764c8
    .4byte 0x64450264
    .4byte 0x013b0bdf
    .4byte 0x4603ddc3
    .4byte 0xdb13b305
    .4byte 0x27a4e526
    .4byte 0xddcbbc13
    .4byte 0x0feec70a
    .4byte 0x07370d0d
    .4byte 0x7632cda8
    .4byte 0x0a64c205
    .4byte 0x76346667
    .4byte 0x01104640
    .4byte 0x46776787
    .4byte 0x88017898
    .4byte 0x99899967
    .4byte 0x70079978
    .4byte 0xf47744ff
    .4byte 0x047f545b
    .4byte 0x1057045c
    .4byte 0xe78cfd01
    .4byte 0x03a0ff5f
    .4byte 0x5f577726
    .4byte 0xc72cc34c
    .4byte 0x9c008394
    .4byte 0x24ae7f01
    .4byte 0x87147783
    .4byte 0x01f30266
    .4byte 0x87560707
    .4byte 0x3e0e9958
    .4byte 0x0a7a0299
    .4byte 0x63798853
    .4byte 0x019803cd
    .4byte 0x023667f3
    .4byte 0x77030036
    .4byte 0x04fd0310
    .4byte 0x129f160f
    .4byte 0x17971a33
    .4byte 0x43931222
    .4byte 0x43074b07
    .4byte 0x44433646
    .4byte 0xcf595b12
    .4byte 0x20e94700
    .4byte 0x45df1503
    .4byte 0x0600cce3
    .4byte 0x9402bbcc
    .4byte 0x77a200aa
    .4byte 0x00669600
    .4byte 0xdb06449e
    .4byte 0x2a05b244
    .4byte 0x10320544
    .4byte 0x02873603
    .4byte 0x760076c4
    .4byte 0x64648878
    .4byte 0x27448767
    .4byte 0x03084643
    .4byte 0x02006444
    .4byte 0x0f081f09
    .4byte 0x14ab00ff
    .4byte 0x2aeb59b3
    .4byte 0x54cf4443
    .4byte 0x251736d3
    .4byte 0x77a7e00b
    .4byte 0x7b001f56
    .4byte 0x9aabcd78
    .4byte 0x00bc5067
    .4byte 0x5407ab78
    .4byte 0x4679999a
    .4byte 0x47079965
    .4byte 0x78783c03
    .4byte 0x0366bc01
    .4byte 0x0134786e
    .4byte 0x048b19c0
    .4byte 0x337f0037
    .4byte 0x23034663
    .4byte 0x13467642
    .4byte 0x2cd30341
    .4byte 0x3633305b
    .4byte 0x0300f350
    .4byte 0x66443667
    .4byte 0x776702a6
    .4byte 0x8788570d
    .4byte 0x6209eb0d
    .4byte 0x2201a876
    .4byte 0x66071076
    .4byte 0x76776b01
    .4byte 0x88983777
    .4byte 0xe413680d
    .4byte 0xf13805aa
    .4byte 0xff01f0ce
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0f801
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x00000000
    .4byte 0x00140010
    .4byte 0x00000000
    .4byte 0xf00000ff
    .4byte 0x03f0c0ef
    .4byte 0xff001710
    .4byte 0x6799abce
    .4byte 0x89abcd12
    .4byte 0x46790300
    .4byte 0x02890330
    .4byte 0x9abcdd67
    .4byte 0x0800de78
    .4byte 0x0800f2ef
    .4byte 0x01502300
    .4byte 0xdeff4740
    .4byte 0xa0cd0600
    .4byte 0x00bc0600
    .4byte 0xff00ab06
    .4byte 0xff000fff
    .4byte 0xeefeeeee
    .4byte 0x00eddddd
    .4byte 0xdcccccdd
    .4byte 0xcbbbbbcc
    .4byte 0xaaaabb00
    .4byte 0x9999aaba
    .4byte 0x89990aa9
    .4byte 0x3c509888
    .4byte 0xfe03000f
    .4byte 0xed030080
    .4byte 0xdcfff00f
    .4byte 0xee00effe
    .4byte 0xdddeedcb
    .4byte 0x65cddcba
    .4byte 0x505f80cc
    .4byte 0x00ee0064
    .4byte 0x2c00dd2c
    .4byte 0x10edcc30
    .4byte 0x0001f035
    .4byte 0x00fffff0
    .4byte 0xeeeeeff0
    .4byte 0xdddddeff
    .4byte 0x601cf0c6
    .4byte 0xfeddff43
    .4byte 0x1ff0e720
    .4byte 0x000f2dff
    .4byte 0x0000b200
    .4byte 0xf060d0b2
    .4byte 0xa0e8e3d0
    .4byte 0x002d0037
    .4byte 0x36100036
    .4byte 0x00fedccc
    .4byte 0xedcbbb00
    .4byte 0x8766640f
    .4byte 0x44448800
    .4byte 0x64447876
    .4byte 0x10674087
    .4byte 0x87646603
    .4byte 0x00767778
    .4byte 0x88888998
    .4byte 0x99999aa9
    .4byte 0x6799aa01
    .4byte 0x46887664
    .4byte 0x00801800
    .4byte 0x66449823
    .4byte 0x7766a987
    .4byte 0x779a9800
    .4byte 0x889a9988
    .4byte 0x99880788
    .4byte 0x01877778
    .4byte 0x206b001f
    .4byte 0xa3f1fc03
    .4byte 0x8a010310
    .4byte 0x9b319741
    .4byte 0x4679abb1
    .4byte 0x5b104440
    .4byte 0x64987646
    .4byte 0xa9008767
    .4byte 0xba987876
    .4byte 0x05a98877
    .4byte 0x988765cb
    .4byte 0xaa6e00ba
    .4byte 0x9a020300
    .4byte 0x42333667
    .4byte 0x89800078
    .4byte 0x76666700
    .4byte 0x7777789a
    .4byte 0x9900c0ab
    .4byte 0x99999800
    .4byte 0x89aaa988
    .4byte 0x66271085
    .4byte 0x00649987
    .4byte 0xaf007693
    .4byte 0xba998700
    .4byte 0xbbaa989a
    .4byte 0xbba9009a
    .4byte 0xdcbaabcc
    .4byte 0x0198bcdd
    .4byte 0x0067cda3
    .4byte 0x560340b8
    .4byte 0x54004467
    .4byte 0x76667846
    .4byte 0x00778945
    .4byte 0x889a4467
    .4byte 0x99ab6678
    .4byte 0x87778900
    .4byte 0x76899988
    .4byte 0x9a982c87
    .4byte 0x00a9e600
    .4byte 0x5503208a
    .4byte 0x87008076
    .4byte 0x88bba987
    .4byte 0xa0bcba98
    .4byte 0x10987600
    .4byte 0x788889e7
    .4byte 0x89139a88
    .4byte 0xce008767
    .4byte 0x48009a76
    .4byte 0x44400300
    .4byte 0x87780320
    .4byte 0x98899977
    .4byte 0xa90d018c
    .4byte 0x93008799
    .4byte 0x54ba4b00
    .4byte 0x544b0084
    .4byte 0x11988764
    .4byte 0x00ba9833
    .4byte 0xbba9cbbb
    .4byte 0xabbabaaa
    .4byte 0xbba99900
    .4byte 0xab98899a
    .4byte 0x88782099
    .4byte 0xaa870201
    .4byte 0xaa764679
    .4byte 0x11640300
    .4byte 0x2401dc0f
    .4byte 0xba0800cb
    .4byte 0xa90800ac
    .4byte 0x00980800
    .4byte 0xdd060108
    .4byte 0xcba90a87
    .4byte 0x430056ed
    .4byte 0x88770177
    .4byte 0xba987710
    .4byte 0xaacbf300
    .4byte 0xdc00ba99
    .4byte 0xedcbaabb
    .4byte 0x5bdcbbcd
    .4byte 0xbaff11fe
    .4byte 0xc601c701
    .4byte 0x02060000
    .4byte 0xa332d59b
    .4byte 0x03ff1492
    .4byte 0x0803ff08
    .4byte 0x186c02f0
    .4byte 0xa2efff00
    .4byte 0x9a0600fb
    .4byte 0x44204444
    .4byte 0x44840144
    .4byte 0x43323446
    .4byte 0x21646700
    .4byte 0x41446763
    .4byte 0x00665444
    .4byte 0x0300140f
    .4byte 0x76030011
    .4byte 0x87771e88
    .4byte 0x01340176
    .4byte 0x10212240
    .4byte 0x67036607
    .4byte 0x66447644
    .4byte 0x00b70166
    .4byte 0x8000dee4
    .4byte 0x10ed9600
    .4byte 0x100350ab
    .4byte 0x0f060013
    .4byte 0x530710ff
    .4byte 0xf003903b
    .4byte 0xf201f001
    .4byte 0x230320d7
    .4byte 0x0390eaf3
    .4byte 0xca00c310
    .4byte 0x89680299
    .4byte 0xa0780a00
    .4byte 0x80670300
    .4byte 0x78897803
    .4byte 0x78008877
    .4byte 0x67876667
    .4byte 0xd8764446
    .4byte 0xd2006c12
    .4byte 0x40f31055
    .4byte 0xcba964f7
    .4byte 0x98bbbc02
    .4byte 0x12aaabba
    .4byte 0xa91c87ee
    .4byte 0xe9018899
    .4byte 0xf000fe02
    .4byte 0x44356788
    .4byte 0x019e0287
    .4byte 0x6e01f066
    .4byte 0x457601ff
    .4byte 0x989321ee
    .4byte 0xde01ccba
    .4byte 0x602602bb
    .4byte 0x000300ab
    .4byte 0xdecccc7b
    .4byte 0xbb02bbbc
    .4byte 0xaaaaabcd
    .4byte 0xab9802bc
    .4byte 0x9f029940
    .4byte 0x99777789
    .4byte 0x66206678
    .4byte 0xcc1f0289
    .4byte 0xbbdeffed
    .4byte 0xcdeedc00
    .4byte 0xbcddcbaa
    .4byte 0xccba1099
    .4byte 0x9a3a00ab
    .4byte 0x55aa9887
    .4byte 0x89430099
    .4byte 0x04793d01
    .4byte 0x7204fe72
    .4byte 0x7204ed55
    .4byte 0xcb7204dc
    .4byte 0x00ba7204
    .4byte 0x00a955b2
    .4byte 0xb20098b2
    .4byte 0xeea75198
    .4byte 0x0499e300
    .4byte 0x02cc89ce
    .4byte 0x67470240
    .4byte 0x6a8802ba
    .4byte 0x008002ba
    .4byte 0x3600fe36
    .4byte 0xdc3600ed
    .4byte 0x003b13fe
    .4byte 0x023b0336
    .4byte 0x124403cb
    .4byte 0x00bbb47f
    .4byte 0x122722fb
    .4byte 0x109a112f
    .4byte 0x540a4103
    .4byte 0x0f110310
    .4byte 0x6646670a
    .4byte 0x87660376
    .4byte 0xbf986603
    .4byte 0xd5a9ce00
    .4byte 0x6087416f
    .4byte 0x826fd501
    .4byte 0x3567026f
    .4byte 0xc313ddef
    .4byte 0x029abe02
    .4byte 0x9e009abe
    .4byte 0x4701ab5c
    .4byte 0x020b01bc
    .4byte 0xff7115be
    .4byte 0x007855de
    .4byte 0x480167ab
    .4byte 0x89730378
    .4byte 0x9a543c02
    .4byte 0x00abc700
    .4byte 0x9c00bccf
    .4byte 0xed31cbcd
    .4byte 0x03c303ef
    .4byte 0xdcabcdc7
    .4byte 0x00980301
    .4byte 0x81ee9906
    .4byte 0x670e00e7
    .4byte 0x9a60aaaa
    .4byte 0xc9037a03
    .4byte 0x78aaaa98
    .4byte 0xba991788
    .4byte 0x46840367
    .4byte 0xa9028403
    .4byte 0x6525d704
    .4byte 0xab1b0187
    .4byte 0xbb7701aa
    .4byte 0xdc0e5703
    .4byte 0x10abcddd
    .4byte 0x011b144b
    .4byte 0x009ecdca
    .4byte 0x0199dd66
    .4byte 0x14a711a3
    .4byte 0x89031089
    .4byte 0x54566716
    .4byte 0x14766704
    .4byte 0x44cf1167
    .4byte 0x13245455
    .4byte 0x88030099
    .4byte 0x04772605
    .4byte 0x66660049
    .4byte 0x77444677
    .4byte 0x44544567
    .4byte 0x13442202
    .4byte 0xcf03a9c7
    .4byte 0x88029a98
    .4byte 0x99a98898
    .4byte 0xbadb01a9
    .4byte 0xcbba04ad
    .4byte 0x10dcce00
    .4byte 0xff0b4303
    .4byte 0xf07b0600
    .4byte 0x0310a7d3
    .4byte 0xcf15c715
    .4byte 0xf05911ff
    .4byte 0xaa000001
    .4byte 0xbb89abaa
    .4byte 0x7900abbb
    .4byte 0x79abcbcd
    .4byte 0x31abccdd
    .4byte 0x0b00cc79
    .4byte 0xaa899f06
    .4byte 0xf2b00299
    .4byte 0x9f04f400
    .4byte 0x91009f15
    .4byte 0x03208764
    .4byte 0x98760054
    .4byte 0x99877667
    .4byte 0x98408778
    .4byte 0x88991e00
    .4byte 0x33346467
    .4byte 0x44664600
    .4byte 0x56776734
    .4byte 0x67780e44
    .4byte 0x96026544
    .4byte 0x1365fd04
    .4byte 0x11110076
    .4byte 0x13111131
    .4byte 0x435e4443
    .4byte 0x2056fb01
    .4byte 0x02000613
    .4byte 0x67f60302
    .4byte 0x03767835
    .4byte 0x453503f1
    .4byte 0x00670300
    .4byte 0x06784061
    .4byte 0x7776771e
    .4byte 0x01646677
    .4byte 0x63347766
    .4byte 0x04346644
    .4byte 0x87640c20
    .4byte 0x1a018877
    .4byte 0x98878305
    .4byte 0x04677639
    .4byte 0x0013042d
    .4byte 0x01878774
    .4byte 0x887607d0
    .4byte 0x02a9a987
    .4byte 0x05ab22a3
    .4byte 0x01a960eb
    .4byte 0x6754072c
    .4byte 0x78788999
    .4byte 0x67789907
    .4byte 0x6c028977
    .4byte 0x9bf75772
    .4byte 0x12f712da
    .4byte 0x5702ee57
    .4byte 0x07ab9b07
    .4byte 0x00c9bc9b
    .4byte 0x990305fb
    .4byte 0xa99b07ba
    .4byte 0x82e40089
    .4byte 0x7864c300
    .4byte 0x03766466
    .4byte 0x9a2787b5
    .4byte 0x671f1688
    .4byte 0x10561666
    .4byte 0x006e0003
    .4byte 0x57898744
    .4byte 0x789a9844
    .4byte 0xe6054569
    .4byte 0x00991a02
    .4byte 0x058998d2
    .4byte 0xcf11839f
    .4byte 0x987544a9
    .4byte 0x10c313ba
    .4byte 0xab01b903
    .4byte 0x02f2059a
    .4byte 0xbc83157e
    .4byte 0x908b159a
    .4byte 0x78ab2202
    .4byte 0x34670c05
    .4byte 0x67284311
    .4byte 0x41032014
    .4byte 0x67110300
    .4byte 0x22230044
    .4byte 0x43244678
    .4byte 0x642e6789
    .4byte 0x794b0066
    .4byte 0x03304b00
    .4byte 0xe6433707
    .4byte 0x2e02ef02
    .4byte 0x8888df03
    .4byte 0x35014907
    .4byte 0x46983276
    .4byte 0x16014302
    .4byte 0x640067a9
    .4byte 0xe302bd78
    .4byte 0x25140289
    .4byte 0x13070033
    .4byte 0x0340bbc3
    .4byte 0x56d602bf
    .4byte 0xf7104f93
    .4byte 0x03107727
    .4byte 0xda013f00
    .4byte 0x4a00ba7b
    .4byte 0x3f105b22
    .4byte 0x17fe4b03
    .4byte 0x78a818a5
    .4byte 0x01e8049a
    .4byte 0x01730453
    .4byte 0x334446a7
    .4byte 0x23170183
    .4byte 0x13346678
    .4byte 0x5f535b13
    .4byte 0xcb8e01aa
    .4byte 0x02bb2704
    .4byte 0x0201aaa3
    .4byte 0xa901af99
    .4byte 0xee8b0888
    .4byte 0x94184615
    .4byte 0x2f187df2
    .4byte 0xffefff1e
    .4byte 0x1c00f308
    .4byte 0x0110fbe3
    .4byte 0x09dd6fdd
    .4byte 0xffc9080c
    .4byte 0x49098905
    .4byte 0xd7210b98
    .4byte 0x67ae03ba
    .4byte 0xae030318
    .4byte 0x0066df10
    .4byte 0x00a977d6
    .4byte 0xdf0088d6
    .4byte 0xaa260499
    .4byte 0xccc00744
    .4byte 0xdc000328
    .4byte 0x5f087544
    .4byte 0x98771401
    .4byte 0xa9a700a2
    .4byte 0xcbba0f05
    .4byte 0xdee600ed
    .4byte 0xef0300ac
    .4byte 0x03ffea00
    .4byte 0x007b093f
    .4byte 0xe796d0f0
    .4byte 0x05dd7715
    .4byte 0xcdddde7f
    .4byte 0x04ef45cb
    .4byte 0xeeffff52
    .4byte 0x19ef8b10
    .4byte 0x7f10d963
    .4byte 0x0064df03
    .4byte 0x77cf0376
    .4byte 0x50760087
    .4byte 0xa9760098
    .4byte 0xdeba7600
    .4byte 0xcb0ebbcd
    .4byte 0x27ddddef
    .4byte 0xf7af5663
    .4byte 0x0024004b
    .4byte 0x34180334
    .4byte 0x341d0542
    .4byte 0x09029564
    .4byte 0xae007776
    .4byte 0x99030988
    .4byte 0xaa5e6b05
    .4byte 0x10bbaa00
    .4byte 0x33360414
    .4byte 0x784c094f
    .4byte 0x59777635
    .4byte 0xaa55063c
    .4byte 0x50fecb17
    .4byte 0x73048003
    .4byte 0xccbbbaed
    .4byte 0x07aaabdc
    .4byte 0x999acbbb
    .4byte 0x15cf07aa
    .4byte 0xfe01705f
    .4byte 0x2d27a7f5
    .4byte 0x5b99f786
    .4byte 0xfb166b31
    .4byte 0xb5892603
    .4byte 0x5978070b
    .4byte 0x5767015b
    .4byte 0x11450300
    .4byte 0x86029373
    .4byte 0x9e0477a9
    .4byte 0x0f154666
    .4byte 0x643ec719
    .4byte 0x00ea0577
    .4byte 0x00c30703
    .4byte 0x77ae060b
    .4byte 0x66ae06a0
    .4byte 0x67441704
    .4byte 0x0a323444
    .4byte 0x12333446
    .4byte 0x00130300
    .4byte 0x02b52203
    .4byte 0x601b3246
    .4byte 0x00896300
    .4byte 0x07207903
    .4byte 0x78e3c5af
    .4byte 0x0267f303
    .4byte 0x247b14dc
    .4byte 0x600b003b
    .4byte 0x09e80289
    .4byte 0x89ab9917
    .4byte 0x05978998
    .4byte 0x01a9441b
    .4byte 0x8001a980
    .4byte 0xd6015e03
    .4byte 0x02899a20
    .4byte 0x988878b0
    .4byte 0x07d66789
    .4byte 0xba1e1399
    .4byte 0x23aafe09
    .4byte 0x778d099c
    .4byte 0x8776660e
    .4byte 0x00bc0566
    .4byte 0x65ab179f
    .4byte 0x292606c4
    .4byte 0xeddcbac7
    .4byte 0xbcdcaf05
    .4byte 0xcbba981c
    .4byte 0xab034307
    .4byte 0x89986f29
    .4byte 0x70019a43
    .4byte 0x888789ab
    .4byte 0xad0ab903
    .4byte 0x018609da
    .4byte 0xc01489e7
    .4byte 0x00678c00
    .4byte 0x05ff8848
    .4byte 0x10db55ae
    .4byte 0x05710003
    .4byte 0x46bc08b7
    .4byte 0x607e06e4
    .4byte 0x101e03cb
    .4byte 0x9865ba03
    .4byte 0x03b5a999
    .4byte 0x1b0098b7
    .4byte 0x03773318
    .4byte 0x7a00664a
    .4byte 0x8370ab56
    .4byte 0xdd8300ee
    .4byte 0xc7678300
    .4byte 0x1b08959a
    .4byte 0xe80bbb0f
    .4byte 0xab2808bb
    .4byte 0x9a780c00
    .4byte 0xa7199403
    .4byte 0xdb169b1a
    .4byte 0x90a99889
    .4byte 0xa9989706
    .4byte 0x4698ec00
    .4byte 0x01807766
    .4byte 0x32776683
    .4byte 0x22664442
    .4byte 0x5f092246
    .4byte 0x16134441
    .4byte 0x441e037b
    .4byte 0x9c009956
    .4byte 0x77490188
    .4byte 0x7c284101
    .4byte 0x16776664
    .4byte 0x6592056b
    .4byte 0x03710987
    .4byte 0x764c461f
    .4byte 0x6464a007
    .4byte 0x6c016c42
    .4byte 0x78157566
    .4byte 0x60007766
    .4byte 0x78a80767
    .4byte 0x795f8e02
    .4byte 0x01898f00
    .4byte 0x05030079
    .4byte 0x01ef04fe
    .4byte 0x01465784
    .4byte 0xab01bba2
    .4byte 0x09e603cd
    .4byte 0xebeb03ff
    .4byte 0xeb731723
    .4byte 0x07fe8b07
    .4byte 0x8b070f8b
    .4byte 0x06ffeb03
    .4byte 0x94720287
    .4byte 0x93831208
    .4byte 0x133f9813
    .4byte 0x5e3b0d33
    .4byte 0xff6f03ee
    .4byte 0xdaf95600
    .4byte 0x17230100
    .4byte 0x23038533
    .4byte 0x43776443
    .4byte 0x20410a00
    .4byte 0x67641603
    .4byte 0x43e00042
    .4byte 0x5f0c9302
    .4byte 0xaa11ec67
    .4byte 0x4a03d600
    .4byte 0x02ce1554
    .4byte 0xc588769b
    .4byte 0x0b02a606
    .4byte 0x06238766
    .4byte 0xb0592463
    .4byte 0x100100f3
    .4byte 0x06170024
    .4byte 0x02777768
    .4byte 0x6bd604db
    .4byte 0x36cb0498
    .4byte 0x1600657f
    .4byte 0x40075745
    .4byte 0x5601be03
    .4byte 0x00f75146
    .4byte 0x0203605c
    .4byte 0x76eb07a7
    .4byte 0x113100fe
    .4byte 0x206f2cfb
    .4byte 0x250b4203
    .4byte 0xdc060063
    .4byte 0x9a5a049b
    .4byte 0x06b608cc
    .4byte 0xa71b890e
    .4byte 0x28e5fe02
    .4byte 0x026b5377
    .4byte 0x0778987a
    .4byte 0xc00c672e
    .4byte 0x426a00cb
    .4byte 0x437554b7
    .4byte 0x2751875f
    .4byte 0x74fe279b
    .4byte 0xea20fe0f
    .4byte 0xd7bc01ef
    .4byte 0x08ef9a13
    .4byte 0xcc0678a3
    .4byte 0xbb679aab
    .4byte 0x93000b19
    .4byte 0xf406b299
    .4byte 0x054c0288
    .4byte 0x027667da
    .4byte 0x16ad66c6
    .4byte 0x31126682
    .4byte 0x40031064
    .4byte 0xb304649f
    .4byte 0x071f11c7
    .4byte 0x798877a3
    .4byte 0x2e035f0c
    .4byte 0x01d63203
    .4byte 0x7950012e
    .4byte 0x0d798709
    .4byte 0xbaa70348
    .4byte 0x34469a00
    .4byte 0x34466441
    .4byte 0x7602a843
    .4byte 0x75330054
    .4byte 0x5677b107
    .4byte 0x67761c46
    .4byte 0x014f2846
    .4byte 0x79ea0654
    .4byte 0x7b32aa87
    .4byte 0x794b0179
    .4byte 0x0989760a
    .4byte 0x1303997a
    .4byte 0x23988762
    .4byte 0x4c9b1863
    .4byte 0x0340db5f
    .4byte 0x01653609
    .4byte 0x76fb077b
    .4byte 0x25180308
    .4byte 0x7b079951
    .4byte 0x872f0788
    .4byte 0xc3077688
    .4byte 0x205c08ff
    .4byte 0x1c2b10ac
    .4byte 0xf073f687
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf801f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x000001d0
    .4byte 0x00140010
    .4byte 0xcddeff00
    .4byte 0xddefffab
    .4byte 0xfff000bc
    .4byte 0xff00ddde
    .4byte 0x0000eeef
    .4byte 0x00effff0
    .4byte 0x08deff00
    .4byte 0xcdeff000
    .4byte 0xcbbc0600
    .4byte 0x99ab00cd
    .4byte 0x89abcddc
    .4byte 0xab14cded
    .4byte 0x0340ee79
    .4byte 0xcc0f00dd
    .4byte 0x9abc12dc
    .4byte 0x001c00bb
    .4byte 0xff016000
    .4byte 0x34000070
    .4byte 0x06003b90
    .4byte 0x0fff00ab
    .4byte 0xeeff0000
    .4byte 0xddee00fe
    .4byte 0xdd0f00ed
    .4byte 0xccfedccc
    .4byte 0xed00cbbb
    .4byte 0xdcbaaabb
    .4byte 0x06a999aa
    .4byte 0x988999cb
    .4byte 0x203f80ba
    .4byte 0x00820f01
    .4byte 0xeff0fe80
    .4byte 0x8f00edee
    .4byte 0xcdee18dc
    .4byte 0x301fd0cc
    .4byte 0xfe000023
    .4byte 0xed0300ba
    .4byte 0x01f00810
    .4byte 0x00ff8a10
    .4byte 0xf00cee74
    .4byte 0xf0ddddef
    .4byte 0x00a8201b
    .4byte 0x68009aee
    .4byte 0x0a20fedd
    .4byte 0x00f001e0
    .4byte 0x00bfefb3
    .4byte 0xb300deb3
    .4byte 0xe7c01df0
    .4byte 0x2d001890
    .4byte 0x006c3600
    .4byte 0xea003610
    .4byte 0x00ea0000
    .4byte 0xd0ddeffc
    .4byte 0x06000f91
    .4byte 0x9906009a
    .4byte 0x409abcef
    .4byte 0x780a0089
    .4byte 0x99abccbc
    .4byte 0x0b0080cc
    .4byte 0x7899abbb
    .4byte 0x0089abaa
    .4byte 0x79aa9967
    .4byte 0x79a98846
    .4byte 0x98874600
    .4byte 0x88766789
    .4byte 0x20787e99
    .4byte 0x10032067
    .4byte 0x20035073
    .4byte 0xf00310b7
    .4byte 0x464200b1
    .4byte 0x03409201
    .4byte 0x00dd6789
    .4byte 0xd201a810
    .4byte 0x9ad20189
    .4byte 0x7644db11
    .4byte 0x64890498
    .4byte 0x009aa987
    .4byte 0x0076ab03
    .4byte 0x87bcba98
    .4byte 0x98cdcba9
    .4byte 0xdddcba00
    .4byte 0xdeedcba9
    .4byte 0xfedc00ba
    .4byte 0x444567ef
    .4byte 0x46007844
    .4byte 0x67895444
    .4byte 0x009a7666
    .4byte 0xab777778
    .4byte 0xbc888889
    .4byte 0x99999a00
    .4byte 0xaaaaabcd
    .4byte 0xbbbc0add
    .4byte 0x3b3054bb
    .4byte 0x9a3b009a
    .4byte 0xbba9870a
    .4byte 0x9a42009a
    .4byte 0xa0ab4200
    .4byte 0x00bc4200
    .4byte 0x7788cd42
    .4byte 0x78009887
    .4byte 0x67887666
    .4byte 0xa0876444
    .4byte 0x00770300
    .4byte 0x7789660b
    .4byte 0x9a004467
    .4byte 0xab667888
    .4byte 0x01778999
    .4byte 0x899999a9
    .4byte 0x00aaaaa9
    .4byte 0xabbb0037
    .4byte 0xbccba988
    .4byte 0xba2a9887
    .4byte 0xdc4b00cc
    .4byte 0x00cd8740
    .4byte 0x78029876
    .4byte 0x89a98777
    .4byte 0x99600088
    .4byte 0xabaaa902
    .4byte 0x019999aa
    .4byte 0x01b4880e
    .4byte 0xce00870e
    .4byte 0x00bb93a0
    .4byte 0x29baaa93
    .4byte 0x3a02bbbb
    .4byte 0xdc2e00dd
    .4byte 0xab500077
    .4byte 0x00fe0600
    .4byte 0x06000fcb
    .4byte 0x006e1100
    .4byte 0x1722f306
    .4byte 0x73111f52
    .4byte 0xbcdd0330
    .4byte 0x87014601
    .4byte 0x218f11e1
    .4byte 0xff4b1153
    .4byte 0x01754679
    .4byte 0xe000d569
    .4byte 0x00ab5000
    .4byte 0x9b02bc58
    .4byte 0x0fb801cd
    .4byte 0xfedcbcdd
    .4byte 0x57f0ff11
    .4byte 0x0ff27f32
    .4byte 0x3103d0c3
    .4byte 0x99abcea3
    .4byte 0xf1971167
    .4byte 0xa33188a3
    .4byte 0x01998764
    .4byte 0x7678999f
    .4byte 0x679a981a
    .4byte 0x89000310
    .4byte 0x89890078
    .4byte 0x9a890099
    .4byte 0x006303ba
    .4byte 0x0176ba14
    .4byte 0x0164652c
    .4byte 0xaacb0138
    .4byte 0x77200066
    .4byte 0x88132a01
    .4byte 0x2501ba99
    .4byte 0x2f119aa9
    .4byte 0x88086701
    .4byte 0x0078899a
    .4byte 0x89766745
    .4byte 0x54466711
    .4byte 0x6744cf01
    .4byte 0x1fd70144
    .4byte 0xf2444466
    .4byte 0x1201f0be
    .4byte 0x52034047
    .4byte 0x0360e857
    .4byte 0x0300afd2
    .4byte 0x78038067
    .4byte 0x88007889
    .4byte 0x876778a9
    .4byte 0x1a466798
    .4byte 0x02468876
    .4byte 0x76760003
    .4byte 0x01640320
    .4byte 0x76468766
    .4byte 0x02cb9877
    .4byte 0xccba0844
    .4byte 0x3a02aaab
    .4byte 0x00aa9899
    .4byte 0x9a988899
    .4byte 0x99988789
    .4byte 0xa9757802
    .4byte 0x02645789
    .4byte 0x11d564ea
    .4byte 0xf05f0157
    .4byte 0x01ff6701
    .4byte 0xcf01efc7
    .4byte 0xd601de5c
    .4byte 0x12f200cd
    .4byte 0xcc2f03ab
    .4byte 0xcdef00cc
    .4byte 0xbcdebbbb
    .4byte 0x00caaaaa
    .4byte 0x771b5286
    .4byte 0x99b0029a
    .4byte 0x08cce800
    .4byte 0xbbefffed
    .4byte 0xcbaaaa01
    .4byte 0x99cd34ed
    .4byte 0x3b003001
    .4byte 0x9a2a01ab
    .4byte 0x1b01ca76
    .4byte 0xcd9a3301
    .4byte 0x01bc8803
    .4byte 0x01d2abcf
    .4byte 0xcb5f02d7
    .4byte 0x89ba8100
    .4byte 0x75783802
    .4byte 0x01b30066
    .4byte 0xff971350
    .4byte 0x00fee000
    .4byte 0xe304aacc
    .4byte 0x89720199
    .4byte 0x02787a01
    .4byte 0x10d567e6
    .4byte 0xfe360003
    .4byte 0x04ed3600
    .4byte 0xea00dcaa
    .4byte 0xea00cb40
    .4byte 0x887546ba
    .4byte 0x651644a9
    .4byte 0xe6009887
    .4byte 0x408fd498
    .4byte 0x12ff00cf
    .4byte 0xf1031037
    .4byte 0xc56fb16a
    .4byte 0x1073017b
    .4byte 0x0f017003
    .4byte 0xffffedcb
    .4byte 0xaf14a714
    .4byte 0x90d41810
    .4byte 0xddddde00
    .4byte 0xeeeeefdd
    .4byte 0xffff38ee
    .4byte 0x5f800130
    .4byte 0xfedd9722
    .4byte 0xeedd35ef
    .4byte 0xc8016400
    .4byte 0xbbe700cc
    .4byte 0xaa68ee00
    .4byte 0xee00cf11
    .4byte 0x78060089
    .4byte 0x9a10aabc
    .4byte 0x7c04cd88
    .4byte 0xaabcddcc
    .4byte 0xf902bb42
    .4byte 0xddddcbaa
    .4byte 0xabee4701
    .4byte 0x00edea00
    .4byte 0x0600dcea
    .4byte 0x130e00cd
    .4byte 0x1113a5eb
    .4byte 0xbc9705bc
    .4byte 0x0f4703fe
    .4byte 0x00c15a10
    .4byte 0x64d202b8
    .4byte 0x4457899a
    .4byte 0x44208604
    .4byte 0x9a74029a
    .4byte 0xab546678
    .4byte 0x66778901
    .4byte 0x77889abc
    .4byte 0x887a5f00
    .4byte 0xb7126601
    .4byte 0x4b040360
    .4byte 0xedff43cb
    .4byte 0x11bb13ff
    .4byte 0xf3039022
    .4byte 0xf1e73463
    .4byte 0x15013042
    .4byte 0x16ff74a7
    .4byte 0x20c9f563
    .4byte 0x31049901
    .4byte 0x99009988
    .4byte 0x888887a9
    .4byte 0x00877698
    .4byte 0x76648878
    .4byte 0x54447767
    .4byte 0x1903455c
    .4byte 0x00f90444
    .4byte 0x46b320af
    .4byte 0x79990744
    .4byte 0x03884446
    .4byte 0x02cd043c
    .4byte 0x678903c9
    .4byte 0x77898764
    .4byte 0x27009904
    .4byte 0x64d3028a
    .4byte 0xda048876
    .4byte 0x763b0087
    .4byte 0x45776419
    .4byte 0xec240600
    .4byte 0x44027676
    .4byte 0x99aba902
    .4byte 0x24bba99a
    .4byte 0x88799adf
    .4byte 0x1010e402
    .4byte 0x2e02a203
    .4byte 0x0e00789a
    .4byte 0x8b43675b
    .4byte 0x00031054
    .4byte 0x0f20644d
    .4byte 0x009a0300
    .4byte 0x00444402
    .4byte 0x879e055d
    .4byte 0x3c766700
    .4byte 0x72009876
    .4byte 0x49050300
    .4byte 0x76783903
    .4byte 0x88764401
    .4byte 0x78764487
    .4byte 0xfe7fe614
    .4byte 0x03808b21
    .4byte 0x0310f354
    .4byte 0x03907f52
    .4byte 0xf7eaaff6
    .4byte 0x148b569b
    .4byte 0x8704ee87
    .4byte 0xccd407dd
    .4byte 0xbbd30586
    .4byte 0x15cdddcb
    .4byte 0xcdf30202
    .4byte 0xccc4008b
    .4byte 0x2b038767
    .4byte 0x14c40598
    .4byte 0x7703d563
    .4byte 0x0166be04
    .4byte 0x035044f3
    .4byte 0x82a305aa
    .4byte 0x9887b204
    .4byte 0x039889aa
    .4byte 0x00bfa972
    .4byte 0xdf01ba08
    .4byte 0x0310e321
    .4byte 0xcb342f36
    .4byte 0x9a3b0b04
    .4byte 0x006713dc
    .4byte 0xfe6f1303
    .4byte 0x18017c10
    .4byte 0x70af54d3
    .4byte 0x13004503
    .4byte 0x93166446
    .4byte 0x99691001
    .4byte 0x03106d01
    .4byte 0xaa3f42a9
    .4byte 0x278f0076
    .4byte 0xd0019987
    .4byte 0x69067789
    .4byte 0x3f06a511
    .4byte 0xa914258b
    .4byte 0xbc02aacb
    .4byte 0x520c0499
    .4byte 0xc313febf
    .4byte 0xc328cf13
    .4byte 0x73107f00
    .4byte 0x0f037313
    .4byte 0x00fe6dcd
    .4byte 0x56811108
    .4byte 0x7d010300
    .4byte 0x4a8405a9
    .4byte 0xcb5305ba
    .4byte 0xab43009a
    .4byte 0x84bc4300
    .4byte 0x87785804
    .4byte 0x88074678
    .4byte 0x01864667
    .4byte 0x766446f1
    .4byte 0x000f2278
    .4byte 0x54144503
    .4byte 0x13009875
    .4byte 0x440f50a9
    .4byte 0x47008d55
    .4byte 0x04998776
    .4byte 0xa9c0051f
    .4byte 0x0289c005
    .4byte 0xaaaaba10
    .4byte 0x789aed04
    .4byte 0x00edc300
    .4byte 0x0003205f
    .4byte 0x6300aa63
    .4byte 0x04ba0d05
    .4byte 0xbbbb2ad1
    .4byte 0x3064ef00
    .4byte 0x4e025403
    .4byte 0x00674b76
    .4byte 0x009a46d2
    .4byte 0x5b019a6e
    .4byte 0x61fb9712
    .4byte 0x2603a0b7
    .4byte 0x03d72163
    .4byte 0x031867c6
    .4byte 0x4455e600
    .4byte 0x00660700
    .4byte 0xe60077e6
    .4byte 0x5ee60088
    .4byte 0xaae60099
    .4byte 0x3b560705
    .4byte 0x2a010320
    .4byte 0x2a01b0cb
    .4byte 0x001f11dc
    .4byte 0x0fedfee6
    .4byte 0xdcef3bff
    .4byte 0x7b03c803
    .4byte 0xd3f00310
    .4byte 0x2442007f
    .4byte 0x1604de99
    .4byte 0x3b04ddef
    .4byte 0x04f3ddee
    .4byte 0x14570947
    .4byte 0x00ab2467
    .4byte 0x047b9700
    .4byte 0x5719fba7
    .4byte 0x3f507022
    .4byte 0x3f011912
    .4byte 0x402b11a9
    .4byte 0x16995e03
    .4byte 0x242378e8
    .4byte 0x7f135702
    .4byte 0x0b568323
    .4byte 0x54679954
    .4byte 0x18763b08
    .4byte 0xce4f5843
    .4byte 0x01504f16
    .4byte 0x88035664
    .4byte 0x1f101310
    .4byte 0x87771c89
    .4byte 0x00cb0578
    .4byte 0x6701124a
    .4byte 0x55009044
    .4byte 0x09028844
    .4byte 0x77888878
    .4byte 0x88776706
    .4byte 0x78044688
    .4byte 0x0788db01
    .4byte 0x98778764
    .4byte 0x00c30264
    .4byte 0x32970276
    .4byte 0xc308cbaa
    .4byte 0xeddc9302
    .4byte 0x0bde4208
    .4byte 0xcdcccba9
    .4byte 0x22781f02
    .4byte 0xc840011f
    .4byte 0xd7263701
    .4byte 0x9709bbcd
    .4byte 0x9a8999aa
    .4byte 0x64665717
    .4byte 0x0614ab13
    .4byte 0x77bd0377
    .4byte 0x52007760
    .4byte 0x9999d304
    .4byte 0x40aa9877
    .4byte 0xbb4301aa
    .4byte 0x87677766
    .4byte 0xfc069576
    .4byte 0x19004677
    .4byte 0x78190067
    .4byte 0x41f91900
    .4byte 0x28f606e0
    .4byte 0x3103509f
    .4byte 0x050fee2b
    .4byte 0xdcfe0962
    .4byte 0x8e02cccd
    .4byte 0xaef3dcbb
    .4byte 0x18e3baeb
    .4byte 0x89aa0340
    .4byte 0x20790300
    .4byte 0xbad74907
    .4byte 0x66cd3746
    .4byte 0x08db0193
    .4byte 0x3c08cb3c
    .4byte 0x3c388ecc
    .4byte 0x00ababcc
    .4byte 0x00af1306
    .4byte 0xcc6077de
    .4byte 0x670a4409
    .4byte 0x9abbbb99
    .4byte 0xaaaa0989
    .4byte 0x79117899
    .4byte 0x670a8889
    .4byte 0xa303a96a
    .4byte 0x07881747
    .4byte 0x37017717
    .4byte 0x5101f066
    .4byte 0xd7123b11
    .4byte 0xedbc3e06
    .4byte 0xcd01deee
    .4byte 0xddeedddc
    .4byte 0x0b06cccb
    .4byte 0x02dcbb2f
    .4byte 0x8907cbb7
    .4byte 0xf003ae09
    .4byte 0x099d5a00
    .4byte 0x199888a7
    .4byte 0x08ee059f
    .4byte 0x03017787
    .4byte 0x87086662
    .4byte 0x4455eb04
    .4byte 0x660b0064
    .4byte 0x00df21f5
    .4byte 0x130b1003
    .4byte 0x270088b3
    .4byte 0xff180a87
    .4byte 0xa717ca03
    .4byte 0x03209f02
    .4byte 0xa7059f01
    .4byte 0x100a4b00
    .4byte 0x66810595
    .4byte 0x66fe0277
    .4byte 0x08defe06
    .4byte 0x17ef7a1a
    .4byte 0x11234807
    .4byte 0xdcdf134b
    .4byte 0x67cbf600
    .4byte 0x015301cd
    .4byte 0x02ee004e
    .4byte 0x013d2778
    .4byte 0x8f97f538
    .4byte 0x0320b31a
    .4byte 0x04aa1378
    .4byte 0xda00a953
    .4byte 0xd715987a
    .4byte 0xed157794
    .4byte 0x0366b700
    .4byte 0xaa7d7746
    .4byte 0x65092418
    .4byte 0x97203302
    .4byte 0x0498a705
    .4byte 0x87883d69
    .4byte 0x22162c0a
    .4byte 0xa203df10
    .4byte 0xb23b1344
    .4byte 0x08eeb608
    .4byte 0xcd530bb6
    .4byte 0xbbef04cc
    .4byte 0xaba9880c
    .4byte 0x00f603aa
    .4byte 0xf488993b
    .4byte 0x1f781ff8
    .4byte 0xc2010f12
    .4byte 0xcdcb01bb
    .4byte 0x5c03fdf0
    .4byte 0x0348c000
    .4byte 0x0120db23
    .4byte 0x040f8604
    .4byte 0x532cff86
    .4byte 0xdf105b1c
    .4byte 0xf3b7eaf6
    .4byte 0x739c3394
    .4byte 0x84d6f367
    .4byte 0xbceb0533
    .4byte 0x1babfe01
    .4byte 0x99f1007e
    .4byte 0x89fe01a8
    .4byte 0x0b79fe01
    .4byte 0x855479f7
    .4byte 0x01799835
    .4byte 0x77ae01e4
    .4byte 0x04660d07
    .4byte 0xab24fa9f
    .4byte 0x0350bb26
    .4byte 0xfb1ba753
    .4byte 0x54bf0445
    .4byte 0x19177768
    .4byte 0x16789423
    .4byte 0x999888dc
    .4byte 0x998e03be
    .4byte 0x13101903
    .4byte 0x2102d663
    .4byte 0xe8870902
    .4byte 0x339adb05
    .4byte 0x00550c00
    .4byte 0x66667603
    .4byte 0x77877600
    .4byte 0x88987777
    .4byte 0xce029588
    .4byte 0x6a03bcbb
    .4byte 0xaac307ab
    .4byte 0xa93ec307
    .4byte 0x066f0c77
    .4byte 0x106b2a16
    .4byte 0x77f70a03
    .4byte 0x66f70aae
    .4byte 0x1144ba07
    .4byte 0x104f148f
    .4byte 0x46257903
    .4byte 0x66070054
    .4byte 0xdd270266
    .4byte 0x82f80716
    .4byte 0x58032067
    .4byte 0x19831383
    .4byte 0xeeeeed43
    .4byte 0xdb18cd57
    .4byte 0xed7003ed
    .4byte 0x37110f1a
    .4byte 0x0ddf0300
    .4byte 0x99450307
    .4byte 0x0e021b0c
    .4byte 0x1d38ba2a
    .4byte 0x20fff608
    .4byte 0x37d3f103
    .4byte 0xf89f8797
    .4byte 0xf001f0bb
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0fc01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x00018001
    .4byte 0x00140010
    .4byte 0xe000002a
    .4byte 0x0300f001
    .4byte 0xde0600ef
    .4byte 0xcd0600a8
    .4byte 0x000f18a0
    .4byte 0x000ffe11
    .4byte 0xfeedde00
    .4byte 0xeddccd00
    .4byte 0xcccc0c0f
    .4byte 0x3ef0fedc
    .4byte 0x00004ad0
    .4byte 0x003600af
    .4byte 0x00ed2810
    .4byte 0x50311008
    .4byte 0x8a0f0003
    .4byte 0x00002030
    .4byte 0xee2b00ff
    .4byte 0x00dd5d00
    .4byte 0xccdeff00
    .4byte 0xcccdeef0
    .4byte 0xacddef00
    .4byte 0x5accde88
    .4byte 0x1c409488
    .4byte 0x3b00ee00
    .4byte 0xcc3300dd
    .4byte 0xf00f20ed
    .4byte 0xc8ef7600
    .4byte 0x1adeedcc
    .4byte 0x00dcccc8
    .4byte 0xff2010a3
    .4byte 0x00ee3d00
    .4byte 0xddddef0f
    .4byte 0xccccdefe
    .4byte 0x00cded23
    .4byte 0xc888ac98
    .4byte 0xd7d00320
    .4byte 0xde720090
    .4byte 0xfed700fe
    .4byte 0xffacdef0
    .4byte 0xb3f00310
    .4byte 0x78100180
    .4byte 0x03200f61
    .4byte 0x0750af50
    .4byte 0x8cde0001
    .4byte 0xcccd8888
    .4byte 0x8c470310
    .4byte 0xcc88af00
    .4byte 0x007c00ef
    .4byte 0x40070083
    .4byte 0xaa0310ac
    .4byte 0xccddca88
    .4byte 0xdcaa02a8
    .4byte 0xdcaac8cc
    .4byte 0x81ed1900
    .4byte 0xddef9e10
    .4byte 0xedf0fedc
    .4byte 0x1180fc00
    .4byte 0x44488803
    .4byte 0x4458cc54
    .4byte 0x55ccc500
    .4byte 0xccccc885
    .4byte 0x10cc40ca
    .4byte 0xdddddebb
    .4byte 0x00eeefed
    .4byte 0xfffffeee
    .4byte 0xdc880fff
    .4byte 0xc8ccde0b
    .4byte 0xed1001dc
    .4byte 0x03001801
    .4byte 0xde3a00b9
    .4byte 0xc3000201
    .4byte 0xf000cb10
    .4byte 0xee032e00
    .4byte 0xedcaaacc
    .4byte 0x00eb00cc
    .4byte 0xccca0003
    .4byte 0xccaaa888
    .4byte 0x0088accc
    .4byte 0xde888a8f
    .4byte 0xdcdd9800
    .4byte 0xeedd05dd
    .4byte 0x00deeeed
    .4byte 0x3f01ef4d
    .4byte 0x3f01f04b
    .4byte 0x7800aa00
    .4byte 0x000310c8
    .4byte 0x888c0c0b
    .4byte 0xae00edc8
    .4byte 0xfedc3301
    .4byte 0xedddde04
    .4byte 0x2a00efff
    .4byte 0xcd30eff0
    .4byte 0x001a01dd
    .4byte 0xefaaaabf
    .4byte 0x208c40cd
    .4byte 0xdcdef0d3
    .4byte 0x01ef00cd
    .4byte 0xfeffdeed
    .4byte 0x00eeeffe
    .4byte 0xc3008f80
    .4byte 0x12cacc00
    .4byte 0x00030003
    .4byte 0x400e020b
    .4byte 0x00160200
    .4byte 0x0ff00ffe
    .4byte 0x2502d70f
    .4byte 0x01ed6601
    .4byte 0x0700dc66
    .4byte 0x47126301
    .4byte 0x714f12e4
    .4byte 0xaa135243
    .4byte 0x88f6008a
    .4byte 0xf710d8cc
    .4byte 0x00dd3731
    .4byte 0x0083007b
    .4byte 0x12ffefff
    .4byte 0x10232113
    .4byte 0x202f42b3
    .4byte 0xf03b1033
    .4byte 0xf2aa6101
    .4byte 0x3f000c02
    .4byte 0xbb10c320
    .4byte 0x0700c888
    .4byte 0x0f00b4ca
    .4byte 0x010310cc
    .4byte 0x24028845
    .4byte 0x00e9ed88
    .4byte 0x10f1000b
    .4byte 0x3e010ffa
    .4byte 0x5801a80f
    .4byte 0x5702887c
    .4byte 0x67010700
    .4byte 0x6711b800
    .4byte 0xde03ffee
    .4byte 0xdddeeff0
    .4byte 0x004801ef
    .4byte 0x00c84102
    .4byte 0x8c8c8802
    .4byte 0xf201a888
    .4byte 0x0300554d
    .4byte 0xbc01cc44
    .4byte 0x01ff8f00
    .4byte 0x00ff400e
    .4byte 0xeedcfe3a
    .4byte 0x00dcedde
    .4byte 0xc8dccddd
    .4byte 0x85c88ccc
    .4byte 0x88888801
    .4byte 0x88858854
    .4byte 0x10ea1f12
    .4byte 0x00470103
    .4byte 0x77108c77
    .4byte 0x8c62008c
    .4byte 0x0a02c857
    .4byte 0x887501ca
    .4byte 0x03207f01
    .4byte 0x8853d002
    .4byte 0x01c82402
    .4byte 0x008ac810
    .4byte 0xb6bc020d
    .4byte 0x00ac0f12
    .4byte 0xaa036047
    .4byte 0x17006702
    .4byte 0xaaac16de
    .4byte 0xf0be10ca
    .4byte 0xdd012802
    .4byte 0x17029f0f
    .4byte 0xd351ca00
    .4byte 0x0350cf00
    .4byte 0x23f1db10
    .4byte 0x8c01b0a4
    .4byte 0xca887710
    .4byte 0xdccc0300
    .4byte 0x008700d8
    .4byte 0x0700888f
    .4byte 0xcaa80300
    .4byte 0x018a69ed
    .4byte 0xffcb0121
    .4byte 0xfeee6e02
    .4byte 0x128e4f01
    .4byte 0xc8cdeebd
    .4byte 0xd3200300
    .4byte 0x608a8700
    .4byte 0x00e302c8
    .4byte 0xededcdce
    .4byte 0xfe7fdeef
    .4byte 0x8b200301
    .4byte 0x52015712
    .4byte 0xa732b321
    .4byte 0x50c0fb11
    .4byte 0xcd0bb203
    .4byte 0x8c88545c
    .4byte 0x00844058
    .4byte 0x8c855403
    .4byte 0x00845558
    .4byte 0x855888aa
    .4byte 0xaa5a88cc
    .4byte 0xac88cd0a
    .4byte 0xdd8202cc
    .4byte 0xa8ded602
    .4byte 0x00ee0340
    .4byte 0x0600ffa6
    .4byte 0x3eedcaee
    .4byte 0x1603dddd
    .4byte 0xe723e823
    .4byte 0xbf42c001
    .4byte 0x3603db0f
    .4byte 0x220f2704
    .4byte 0xf0971233
    .4byte 0xf8123804
    .4byte 0x0fd401af
    .4byte 0x00ac2310
    .4byte 0x10f300ef
    .4byte 0xfc0320eb
    .4byte 0x97520fd1
    .4byte 0x54420350
    .4byte 0xff5303f4
    .4byte 0xaa5daacc
    .4byte 0x03ca0b01
    .4byte 0x221f02ff
    .4byte 0x3d02dcc3
    .4byte 0x3d02ed65
    .4byte 0x0ffe6604
    .4byte 0x00f00701
    .4byte 0x13ef4a86
    .4byte 0x240fedb3
    .4byte 0x0600cc77
    .4byte 0x0201bfcc
    .4byte 0x840b11cc
    .4byte 0x119723d7
    .4byte 0xf2ef9237
    .4byte 0xefff2ae0
    .4byte 0x00ded400
    .4byte 0x4200cdd4
    .4byte 0x00ef79ac
    .4byte 0x10af0370
    .4byte 0xef57014f
    .4byte 0x5bfc02de
    .4byte 0xf05300ef
    .4byte 0x4b405350
    .4byte 0x006b15f0
    .4byte 0xc225eb12
    .4byte 0x8e02c790
    .4byte 0x884f02a8
    .4byte 0x0300cb01
    .4byte 0xaa5f0282
    .4byte 0xcacd888a
    .4byte 0xa7ccdf01
    .4byte 0x02aaf733
    .4byte 0x02ca8858
    .4byte 0x026e0123
    .4byte 0x01fe5522
    .4byte 0x0300ed3a
    .4byte 0xca0f00dc
    .4byte 0x039d1d10
    .4byte 0x00ffcade
    .4byte 0x01d35003
    .4byte 0xfc23cd6d
    .4byte 0x400800ff
    .4byte 0x83c3f377
    .4byte 0x239b03c3
    .4byte 0x0003101b
    .4byte 0x008c663e
    .4byte 0xee4700d7
    .4byte 0x06e700dd
    .4byte 0xff41000f
    .4byte 0xc8ac2703
    .4byte 0x01accded
    .4byte 0x4a0595e1
    .4byte 0x4555888c
    .4byte 0x0f2700fe
    .4byte 0x02ea2700
    .4byte 0x061100ff
    .4byte 0xee05a82c
    .4byte 0xa88405a8
    .4byte 0xcc84019a
    .4byte 0x051615dd
    .4byte 0x5d00ff45
    .4byte 0xcc440045
    .4byte 0xca45588c
    .4byte 0xa83dc88c
    .4byte 0x04f811dc
    .4byte 0x05d6046a
    .4byte 0x0320a82b
    .4byte 0x44884407
    .4byte 0xf0024584
    .4byte 0xfc020100
    .4byte 0x058b14f4
    .4byte 0x02400047
    .4byte 0x5e03cd2b
    .4byte 0x01e4dcac
    .4byte 0x00031014
    .4byte 0x00ed8886
    .4byte 0x40edde6a
    .4byte 0xede103de
    .4byte 0xdccaacee
    .4byte 0x84a508ed
    .4byte 0x2d10dcca
    .4byte 0x4dcddcc8
    .4byte 0xeea202dd
    .4byte 0x007000cc
    .4byte 0x0e01fe1c
    .4byte 0x03e603eb
    .4byte 0x0fa7008d
    .4byte 0x010f5005
    .4byte 0xa77736a0
    .4byte 0x04000712
    .4byte 0x36eef02b
    .4byte 0x14032206
    .4byte 0x73c7ffe7
    .4byte 0x5c010340
    .4byte 0xeb11e311
    .4byte 0x84051321
    .4byte 0x882fc744
    .4byte 0xee0300ff
    .4byte 0x1ff2dd00
    .4byte 0x5c014780
    .4byte 0x276f93f6
    .4byte 0x161b3264
    .4byte 0x2f14f007
    .4byte 0x19feb300
    .4byte 0x06ddeedd
    .4byte 0xc8b71221
    .4byte 0xbdd723cc
    .4byte 0x058ab364
    .4byte 0x009f0212
    .4byte 0x00d600b4
    .4byte 0x04b74f14
    .4byte 0x0330fe1a
    .4byte 0xe3a83714
    .4byte 0x003a673f
    .4byte 0x8a03ab67
    .4byte 0xee3604ef
    .4byte 0x00ff3e04
    .4byte 0x7803007d
    .4byte 0x06fe02ee
    .4byte 0x105c01db
    .4byte 0x555ccd67
    .4byte 0x004304fc
    .4byte 0x1603606b
    .4byte 0x47db016f
    .4byte 0x26ffed00
    .4byte 0xd324efff
    .4byte 0xf7e3fedc
    .4byte 0xbfc82f00
    .4byte 0x17c83202
    .4byte 0xf65a03c3
    .4byte 0x13874063
    .4byte 0x378407e3
    .4byte 0x4400aced
    .4byte 0x100f9601
    .4byte 0x439c22c7
    .4byte 0x4ff6ff0c
    .4byte 0x1df051d1
    .4byte 0x73e020c0
    .4byte 0x5f800190
    .4byte 0x23ce1ff0
    .4byte 0xaaf3107f
    .4byte 0x43fa028a
    .4byte 0xcc071003
    .4byte 0x260b13f5
    .4byte 0x051314af
    .4byte 0x6e010f8a
    .4byte 0xfa6e010f
    .4byte 0x73478b03
    .4byte 0x12027747
    .4byte 0x02ed2700
    .4byte 0x03b8fe1b
    .4byte 0xb1380f2f
    .4byte 0xa3030180
    .4byte 0x01ccdd8a
    .4byte 0xddee88aa
    .4byte 0x02ffc88c
    .4byte 0x3f22ebbf
    .4byte 0x63037b34
    .4byte 0x0f5301f0
    .4byte 0x4b10af25
    .4byte 0x000320fb
    .4byte 0x143b140b
    .4byte 0xff4c3097
    .4byte 0x37304b52
    .4byte 0x000350d1
    .4byte 0x6817f013
    .4byte 0x09deeeee
    .4byte 0x00cd4077
    .4byte 0xaacdacae
    .4byte 0x01ccaa55
    .4byte 0x8a885548
    .4byte 0x03555448
    .4byte 0x88541c76
    .4byte 0x43db0855
    .4byte 0xcc030067
    .4byte 0x7b038d8a
    .4byte 0x03dcccaa
    .4byte 0xcac803c4
    .4byte 0x05b5ec00
    .4byte 0x5803cd35
    .4byte 0x13a86413
    .4byte 0x1b00aadc
    .4byte 0x0310c858
    .4byte 0x031208dd
    .4byte 0xdeeddcf0
    .4byte 0xa8445400
    .4byte 0x855444ca
    .4byte 0x554400dc
    .4byte 0x8558ca85
    .4byte 0x07faa888
    .4byte 0x031e0757
    .4byte 0x00aa03c8
    .4byte 0xaa27dc01
    .4byte 0xedde17ff
    .4byte 0xdc8800ed
    .4byte 0x3e193502
    .4byte 0x18eb0f16
    .4byte 0x000310d7
    .4byte 0xbb06aa1f
    .4byte 0x422322aa
    .4byte 0x030f4127
    .4byte 0xdeeefe3c
    .4byte 0x6b08edde
    .4byte 0x086618d0
    .4byte 0x0a000f6e
    .4byte 0xccacccfe
    .4byte 0x04aaed2f
    .4byte 0x3002aa1b
    .4byte 0x0a059718
    .4byte 0xb6fde700
    .4byte 0x27cf9417
    .4byte 0x0163135e
    .4byte 0x8a0300b8
    .4byte 0x5adc5791
    .4byte 0x0f82003d
    .4byte 0x4813b311
    .4byte 0xedcccb11
    .4byte 0xee6b009a
    .4byte 0x187e00dd
    .4byte 0x9d09cc65
    .4byte 0x1611fdac
    .4byte 0x4e03b714
    .4byte 0x2b017e04
    .4byte 0x03a80320
    .4byte 0xef11c25f
    .4byte 0xdcaa1f58
    .4byte 0xf9148ade
    .4byte 0xf904a1dd
    .4byte 0xfff904ee
    .4byte 0x05fffff0
    .4byte 0x04de68ea
    .4byte 0xcc7214e3
    .4byte 0xc8cc2405
    .4byte 0xcd8c04dd
    .4byte 0x048ccddc
    .4byte 0xc1efcca3
    .4byte 0xb8072600
    .4byte 0x5448acee
    .4byte 0x990320c8
    .4byte 0xcacd2737
    .4byte 0xa3087f01
    .4byte 0x6702ed8c
    .4byte 0x7600ee6b
    .4byte 0x38ff9726
    .4byte 0x3e0bdceb
    .4byte 0x0b851e07
    .4byte 0x58fedc5b
    .4byte 0xc50300c4
    .4byte 0xf0ffdf7b
    .4byte 0xeb3332ff
    .4byte 0x01704730
    .4byte 0xf1df200a
    .4byte 0xff01b013
    .4byte 0x27045b14
    .4byte 0x1cf32f14
    .4byte 0xe7c401f0
    .4byte 0x6904eb24
    .4byte 0xefcd0394
    .4byte 0xcd7307de
    .4byte 0xcaacc304
    .4byte 0xaacb06bf
    .4byte 0x972b2709
    .4byte 0x99087c08
    .4byte 0xe8006708
    .4byte 0xefa908a6
    .4byte 0x88de8301
    .4byte 0x6f024f0b
    .4byte 0x0310e5cc
    .4byte 0x94025e05
    .4byte 0xf726aaaa
    .4byte 0xde63498a
    .4byte 0x0b000310
    .4byte 0x04ec09de
    .4byte 0x04271536
    .4byte 0xfe00ed7f
    .4byte 0xeddcddca
    .4byte 0x57caccdc
    .4byte 0xca2b00dc
    .4byte 0x07a82700
    .4byte 0x05b30432
    .4byte 0xef258bf9
    .4byte 0x04fefedc
    .4byte 0x8a00ed58
    .4byte 0xff5f3509
    .4byte 0x16ee0709
    .4byte 0xbc5ff483
    .4byte 0x004310cf
    .4byte 0xaca5006e
    .4byte 0xcda45888
    .4byte 0xa40545ca
    .4byte 0x55548cde
    .4byte 0x19859601
    .4byte 0x8702f5ef
    .4byte 0xa31a7207
    .4byte 0x00cad13c
    .4byte 0x182aa503
    .4byte 0x167d00dc
    .4byte 0xc000caaa
    .4byte 0xc3f3bb93
    .4byte 0x00a2aa00
    .4byte 0x61108a48
    .4byte 0x36c8acc8
    .4byte 0xdd64ccde
    .4byte 0xe316b807
    .4byte 0x4c02dded
    .4byte 0xca7daac8
    .4byte 0x8202c108
    .4byte 0x9c03730a
    .4byte 0x07ee832b
    .4byte 0x2b04ff3e
    .4byte 0xea0b8b1d
    .4byte 0xc3e7af7d
    .4byte 0xdf011929
    .4byte 0x886fff32
    .4byte 0x62030310
    .4byte 0x130f208a
    .4byte 0xf05ffd17
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0ff01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xff01f001
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf001f0ff
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x01f0ff01
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0x01f001f0
    .4byte 0xf0fe01f0
    .4byte 0xf001f001
    .4byte 0xf001f001
    .4byte 0x0001f001
    .4byte 0x00000001

	.global gUnknown_0860108C
gUnknown_0860108C:  @ 0x0860108C
	.incbin "baserom.gba", 0x60108C, 0x1B08

	.global gUnknown_08602B94
gUnknown_08602B94:  @ 0x08602B94
	.incbin "baserom.gba", 0x602B94, 0xFBC

	.global gUnknown_08603B50
gUnknown_08603B50:  @ 0x08603B50
	.incbin "baserom.gba", 0x603B50, 0x200

	.global gUnknown_08603D50
gUnknown_08603D50:  @ 0x08603D50
	.incbin "baserom.gba", 0x603D50, 0x248

	.global gUnknown_08603F98
gUnknown_08603F98:  @ 0x08603F98
	.incbin "baserom.gba", 0x603F98, 0x278

	.global gUnknown_08604210
gUnknown_08604210:  @ 0x08604210
	.incbin "baserom.gba", 0x604210, 0xDC4

	.global gUnknown_08604FD4
gUnknown_08604FD4:  @ 0x08604FD4
@ Replacing .incbin "baserom.gba", 0x604FD4, 0xE20
    .4byte gUnknown_08604210 + 0x21
    .4byte gUnknown_08604210 + 0x45
    .4byte gUnknown_08604210 + 0x45
    .4byte gUnknown_08604210 + 0x81
    .4byte gUnknown_08604210 + 0xd5
    .4byte gUnknown_08604210 + 0x141
    .4byte gUnknown_08604210 + 0x1c5
    .4byte gUnknown_08604210 + 0x249
    .4byte gUnknown_08604210 + 0x2cd
    .4byte gUnknown_08604210 + 0x351
    .4byte gUnknown_08604210 + 0x3d5
    .4byte gUnknown_08604210 + 0x459
    .4byte gUnknown_08604210 + 0x4dd
    .4byte gUnknown_08604210 + 0x561
    .4byte gUnknown_08604210 + 0x5e5
    .4byte gUnknown_08604210 + 0x651
    .4byte gUnknown_08604210 + 0x6a5
    .4byte gUnknown_08604210 + 0x6e1
    .4byte gUnknown_08604210 + 0x705
    .4byte gUnknown_08604210 + 0x71d
    .4byte gUnknown_08604210 + 0x741
    .4byte gUnknown_08604210 + 0x77d
    .4byte gUnknown_08604210 + 0x7d1
    .4byte gUnknown_08604210 + 0x83d
    .4byte gUnknown_08604210 + 0x8c1
    .4byte gUnknown_08604210 + 0x9c9
    .4byte gUnknown_08604210 + 0xa4d
    .4byte gUnknown_08604210 + 0xad1
    .4byte gUnknown_08604210 + 0xb55
    .4byte gUnknown_08604210 + 0xbd9
    .4byte 0x80000000
    .4byte 0x50000000
    .4byte 0x0014000a
    .4byte 0x0000000a
    .4byte 0x50000000
    .4byte 0xffdc000a
    .4byte 0x0000000a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x000a0000
    .4byte 0x00000005
    .4byte 0x50000000
    .4byte 0x0014000c
    .4byte 0x0000000a
    .4byte 0x40000000
    .4byte 0xffe60000
    .4byte 0x00000005
    .4byte 0x40000000
    .4byte 0xffdc000c
    .4byte 0x0000000a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00000000
    .4byte 0x00000003
    .4byte 0x50000000
    .4byte 0x000a0002
    .4byte 0x00000006
    .4byte 0x50000000
    .4byte 0x0014000e
    .4byte 0x0000000a
    .4byte 0x40000000
    .4byte 0xfff00000
    .4byte 0x00000003
    .4byte 0x40000000
    .4byte 0xffe60002
    .4byte 0x00000006
    .4byte 0x40000000
    .4byte 0xffdc000e
    .4byte 0x0000000a
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff70000
    .4byte 0x00000001
    .4byte 0x50000000
    .4byte 0x00010002
    .4byte 0x00000004
    .4byte 0x50000000
    .4byte 0x000b0004
    .4byte 0x00000006
    .4byte 0x50000000
    .4byte 0x00140006
    .4byte 0x00000008
    .4byte 0x40000000
    .4byte 0xfff90000
    .4byte 0x00000001
    .4byte 0x40000000
    .4byte 0xffef0002
    .4byte 0x00000004
    .4byte 0x40000000
    .4byte 0xffe50004
    .4byte 0x00000006
    .4byte 0x40000000
    .4byte 0xffdc0006
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffed0000
    .4byte 0x0000fffe
    .4byte 0x50000000
    .4byte 0xfff70002
    .4byte 0x00000001
    .4byte 0x50000000
    .4byte 0x00010004
    .4byte 0x00000004
    .4byte 0x50000000
    .4byte 0x000a0006
    .4byte 0x00000006
    .4byte 0x50000000
    .4byte 0x00140008
    .4byte 0x00000008
    .4byte 0x40000000
    .4byte 0x00030000
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0xfff90002
    .4byte 0x00000001
    .4byte 0x40000000
    .4byte 0xffef0004
    .4byte 0x00000004
    .4byte 0x40000000
    .4byte 0xffe60006
    .4byte 0x00000006
    .4byte 0x40000000
    .4byte 0xffdc0008
    .4byte 0x00000008
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffe60000
    .4byte 0x0000fffc
    .4byte 0x50000000
    .4byte 0xfff00002
    .4byte 0x0000ffff
    .4byte 0x50000000
    .4byte 0xfffa0004
    .4byte 0x00000002
    .4byte 0x50000000
    .4byte 0x00030006
    .4byte 0x00000004
    .4byte 0x50000000
    .4byte 0x000d0008
    .4byte 0x00000006
    .4byte 0x40000000
    .4byte 0x000a0000
    .4byte 0x0000fffc
    .4byte 0x40000000
    .4byte 0x00000002
    .4byte 0x0000ffff
    .4byte 0x40000000
    .4byte 0xfff60004
    .4byte 0x00000002
    .4byte 0x40000000
    .4byte 0xffed0006
    .4byte 0x00000004
    .4byte 0x40000000
    .4byte 0xffe30008
    .4byte 0x00000006
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffdf0000
    .4byte 0x0000fffa
    .4byte 0x50000000
    .4byte 0xffe90002
    .4byte 0x0000fffd
    .4byte 0x50000000
    .4byte 0xfff30004
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfffc0006
    .4byte 0x00000002
    .4byte 0x50000000
    .4byte 0x00060008
    .4byte 0x00000004
    .4byte 0x40000000
    .4byte 0x00110000
    .4byte 0x0000fffa
    .4byte 0x40000000
    .4byte 0x00070002
    .4byte 0x0000fffd
    .4byte 0x40000000
    .4byte 0xfffd0004
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xfff40006
    .4byte 0x00000002
    .4byte 0x40000000
    .4byte 0xffea0008
    .4byte 0x00000004
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffd90000
    .4byte 0x0000fff5
    .4byte 0x50000000
    .4byte 0xffe30002
    .4byte 0x0000fffa
    .4byte 0x50000000
    .4byte 0xffee0004
    .4byte 0x0000fffe
    .4byte 0x50000000
    .4byte 0xfff70006
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00010008
    .4byte 0x00000003
    .4byte 0x40000000
    .4byte 0x00170000
    .4byte 0x0000fff5
    .4byte 0x40000000
    .4byte 0x000d0002
    .4byte 0x0000fffa
    .4byte 0x40000000
    .4byte 0x00020004
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0xfff90006
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffef0008
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffd20000
    .4byte 0x0000ffee
    .4byte 0x50000000
    .4byte 0xffdc0002
    .4byte 0x0000fff4
    .4byte 0x50000000
    .4byte 0xffe60004
    .4byte 0x0000fff9
    .4byte 0x50000000
    .4byte 0xffef0006
    .4byte 0x0000fffd
    .4byte 0x50000000
    .4byte 0xfff90008
    .4byte 0x00000001
    .4byte 0x40000000
    .4byte 0x001e0000
    .4byte 0x0000ffee
    .4byte 0x40000000
    .4byte 0x00140002
    .4byte 0x0000fff4
    .4byte 0x40000000
    .4byte 0x000a0004
    .4byte 0x0000fff9
    .4byte 0x40000000
    .4byte 0x00010006
    .4byte 0x0000fffd
    .4byte 0x40000000
    .4byte 0xfff70008
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffce0000
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0xffd50002
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0xffdf0004
    .4byte 0x0000fff6
    .4byte 0x50000000
    .4byte 0xffe80006
    .4byte 0x0000fffa
    .4byte 0x50000000
    .4byte 0xfff20008
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0x00220000
    .4byte 0x0000ffe9
    .4byte 0x40000000
    .4byte 0x001b0002
    .4byte 0x0000fff1
    .4byte 0x40000000
    .4byte 0x00110004
    .4byte 0x0000fff7
    .4byte 0x40000000
    .4byte 0x00080006
    .4byte 0x0000fffb
    .4byte 0x40000000
    .4byte 0xfffe0008
    .4byte 0x0000ffff
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffe0
    .4byte 0x50000000
    .4byte 0xffce0002
    .4byte 0x0000ffe8
    .4byte 0x50000000
    .4byte 0xffd60004
    .4byte 0x0000fff0
    .4byte 0x50000000
    .4byte 0xffe10006
    .4byte 0x0000fff6
    .4byte 0x50000000
    .4byte 0xffeb0008
    .4byte 0x0000fffa
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffe0
    .4byte 0x40000000
    .4byte 0x00220002
    .4byte 0x0000ffe8
    .4byte 0x40000000
    .4byte 0x001a0004
    .4byte 0x0000fff0
    .4byte 0x40000000
    .4byte 0x000f0006
    .4byte 0x0000fff6
    .4byte 0x40000000
    .4byte 0x00050008
    .4byte 0x0000fffa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffcd0000
    .4byte 0x0000ffdb
    .4byte 0x50000000
    .4byte 0xffcc0002
    .4byte 0x0000ffe3
    .4byte 0x50000000
    .4byte 0xffd20004
    .4byte 0x0000ffec
    .4byte 0x50000000
    .4byte 0xffdd0006
    .4byte 0x0000fff3
    .4byte 0x50000000
    .4byte 0xffe70008
    .4byte 0x0000fff8
    .4byte 0x40000000
    .4byte 0x00230000
    .4byte 0x0000ffdb
    .4byte 0x40000000
    .4byte 0x00240002
    .4byte 0x0000ffe3
    .4byte 0x40000000
    .4byte 0x001e0004
    .4byte 0x0000ffec
    .4byte 0x40000000
    .4byte 0x00130006
    .4byte 0x0000fff3
    .4byte 0x40000000
    .4byte 0x00090008
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40001
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffcc0002
    .4byte 0x0000ffda
    .4byte 0x50000000
    .4byte 0xffcc0004
    .4byte 0x0000ffe5
    .4byte 0x50000000
    .4byte 0xffd30006
    .4byte 0x0000ffed
    .4byte 0x50000000
    .4byte 0xffdc0008
    .4byte 0x0000fff3
    .4byte 0x00008000
    .4byte 0x00240001
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x00240002
    .4byte 0x0000ffda
    .4byte 0x40000000
    .4byte 0x00240004
    .4byte 0x0000ffe5
    .4byte 0x40000000
    .4byte 0x001d0006
    .4byte 0x0000ffed
    .4byte 0x40000000
    .4byte 0x00140008
    .4byte 0x0000fff3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40003
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffcc0004
    .4byte 0x0000ffda
    .4byte 0x50000000
    .4byte 0xffcc0006
    .4byte 0x0000ffe5
    .4byte 0x50000000
    .4byte 0xffd30008
    .4byte 0x0000ffee
    .4byte 0x00008000
    .4byte 0x00240003
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x00240004
    .4byte 0x0000ffda
    .4byte 0x40000000
    .4byte 0x00240006
    .4byte 0x0000ffe5
    .4byte 0x40000000
    .4byte 0x001d0008
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40005
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffcc0006
    .4byte 0x0000ffda
    .4byte 0x50000000
    .4byte 0xffcd0008
    .4byte 0x0000ffe5
    .4byte 0x00008000
    .4byte 0x00240005
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x00240006
    .4byte 0x0000ffda
    .4byte 0x40000000
    .4byte 0x00230008
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40007
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffcc0008
    .4byte 0x0000ffda
    .4byte 0x00008000
    .4byte 0x00240007
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x00240008
    .4byte 0x0000ffda
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40009
    .4byte 0x0000ffd5
    .4byte 0x00008000
    .4byte 0x00240009
    .4byte 0x0000ffd4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff8001f
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0x00240000
    .4byte 0x0000ffc0
    .4byte 0x00008000
    .4byte 0xffd40000
    .4byte 0x0000ffc0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00220000
    .4byte 0x0000ffb7
    .4byte 0x10008000
    .4byte 0x00240002
    .4byte 0x0000ffc1
    .4byte 0x40000000
    .4byte 0xffce0000
    .4byte 0x0000ffb7
    .4byte 0x00008000
    .4byte 0xffd40002
    .4byte 0x0000ffc1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x001b0000
    .4byte 0x0000ffb1
    .4byte 0x50000000
    .4byte 0x00220002
    .4byte 0x0000ffb7
    .4byte 0x10008000
    .4byte 0x00240004
    .4byte 0x0000ffc1
    .4byte 0x40000000
    .4byte 0xffd50000
    .4byte 0x0000ffb1
    .4byte 0x40000000
    .4byte 0xffce0002
    .4byte 0x0000ffb7
    .4byte 0x00008000
    .4byte 0xffd40004
    .4byte 0x0000ffc1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00130000
    .4byte 0x0000ffae
    .4byte 0x50000000
    .4byte 0x001b0002
    .4byte 0x0000ffb1
    .4byte 0x50000000
    .4byte 0x00220004
    .4byte 0x0000ffb7
    .4byte 0x10008000
    .4byte 0x00240006
    .4byte 0x0000ffc1
    .4byte 0x40000000
    .4byte 0xffdd0000
    .4byte 0x0000ffae
    .4byte 0x40000000
    .4byte 0xffd50002
    .4byte 0x0000ffb1
    .4byte 0x40000000
    .4byte 0xffce0004
    .4byte 0x0000ffb7
    .4byte 0x00008000
    .4byte 0xffd40006
    .4byte 0x0000ffc1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x000a0000
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0x00130002
    .4byte 0x0000ffae
    .4byte 0x50000000
    .4byte 0x001b0004
    .4byte 0x0000ffb1
    .4byte 0x50000000
    .4byte 0x00220006
    .4byte 0x0000ffb7
    .4byte 0x10008000
    .4byte 0x00240008
    .4byte 0x0000ffc1
    .4byte 0x40000000
    .4byte 0xffe60000
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0xffdd0002
    .4byte 0x0000ffae
    .4byte 0x40000000
    .4byte 0xffd50004
    .4byte 0x0000ffb1
    .4byte 0x40000000
    .4byte 0xffce0006
    .4byte 0x0000ffb7
    .4byte 0x00008000
    .4byte 0xffd40008
    .4byte 0x0000ffc1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00010000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0x000a0002
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0x00130004
    .4byte 0x0000ffae
    .4byte 0x50000000
    .4byte 0x001b0006
    .4byte 0x0000ffb1
    .4byte 0x50000000
    .4byte 0x00220008
    .4byte 0x0000ffb7
    .4byte 0x40000000
    .4byte 0xffef0000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0xffe60002
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0xffdd0004
    .4byte 0x0000ffae
    .4byte 0x40000000
    .4byte 0xffd50006
    .4byte 0x0000ffb1
    .4byte 0x40000000
    .4byte 0xffce0008
    .4byte 0x0000ffb7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffed0000
    .4byte 0x0000ffa4
    .4byte 0x50000000
    .4byte 0xfff60002
    .4byte 0x0000ffa6
    .4byte 0x50000000
    .4byte 0xffff0004
    .4byte 0x0000ffa8
    .4byte 0x50000000
    .4byte 0x00090006
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0x00130008
    .4byte 0x0000ffaf
    .4byte 0x40000000
    .4byte 0x00030000
    .4byte 0x0000ffa4
    .4byte 0x40000000
    .4byte 0xfffa0002
    .4byte 0x0000ffa6
    .4byte 0x40000000
    .4byte 0xfff10004
    .4byte 0x0000ffa8
    .4byte 0x40000000
    .4byte 0xffe70006
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0xffdd0008
    .4byte 0x0000ffaf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff50000
    .4byte 0x0000ffa7
    .4byte 0x50000000
    .4byte 0xfffe0002
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0x00080004
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0x00120006
    .4byte 0x0000ffae
    .4byte 0x50000000
    .4byte 0x001b0008
    .4byte 0x0000ffb1
    .4byte 0x40000000
    .4byte 0xfffb0000
    .4byte 0x0000ffa7
    .4byte 0x40000000
    .4byte 0xfff20002
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0xffe80004
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0xffde0006
    .4byte 0x0000ffae
    .4byte 0x40000000
    .4byte 0xffd50008
    .4byte 0x0000ffb1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffe50000
    .4byte 0x0000ffa1
    .4byte 0x50000000
    .4byte 0xffee0002
    .4byte 0x0000ffa3
    .4byte 0x50000000
    .4byte 0xfff70004
    .4byte 0x0000ffa5
    .4byte 0x50000000
    .4byte 0x00010006
    .4byte 0x0000ffa8
    .4byte 0x50000000
    .4byte 0x000b0008
    .4byte 0x0000ffac
    .4byte 0x40000000
    .4byte 0x000b0000
    .4byte 0x0000ffa1
    .4byte 0x40000000
    .4byte 0x00020002
    .4byte 0x0000ffa3
    .4byte 0x40000000
    .4byte 0xfff90004
    .4byte 0x0000ffa5
    .4byte 0x40000000
    .4byte 0xffef0006
    .4byte 0x0000ffa8
    .4byte 0x40000000
    .4byte 0xffe50008
    .4byte 0x0000ffac
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffdb0000
    .4byte 0x0000ff9a
    .4byte 0x50000000
    .4byte 0xffe40002
    .4byte 0x0000ff9f
    .4byte 0x50000000
    .4byte 0xffed0004
    .4byte 0x0000ffa2
    .4byte 0x50000000
    .4byte 0xfff70006
    .4byte 0x0000ffa5
    .4byte 0x50000000
    .4byte 0x00010008
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0x00150000
    .4byte 0x0000ff9a
    .4byte 0x40000000
    .4byte 0x000c0002
    .4byte 0x0000ff9f
    .4byte 0x40000000
    .4byte 0x00030004
    .4byte 0x0000ffa2
    .4byte 0x40000000
    .4byte 0xfff90006
    .4byte 0x0000ffa5
    .4byte 0x40000000
    .4byte 0xffef0008
    .4byte 0x0000ffa9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffd10000
    .4byte 0x0000ff92
    .4byte 0x50000000
    .4byte 0xffda0002
    .4byte 0x0000ff99
    .4byte 0x50000000
    .4byte 0xffe30004
    .4byte 0x0000ff9e
    .4byte 0x50000000
    .4byte 0xffed0006
    .4byte 0x0000ffa1
    .4byte 0x50000000
    .4byte 0xfff70008
    .4byte 0x0000ffa5
    .4byte 0x40000000
    .4byte 0x001f0000
    .4byte 0x0000ff92
    .4byte 0x40000000
    .4byte 0x00160002
    .4byte 0x0000ff99
    .4byte 0x40000000
    .4byte 0x000d0004
    .4byte 0x0000ff9e
    .4byte 0x40000000
    .4byte 0x00030006
    .4byte 0x0000ffa1
    .4byte 0x40000000
    .4byte 0xfff90008
    .4byte 0x0000ffa5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xffce0000
    .4byte 0x0000ff87
    .4byte 0x50000000
    .4byte 0xffd10002
    .4byte 0x0000ff90
    .4byte 0x50000000
    .4byte 0xffd90004
    .4byte 0x0000ff98
    .4byte 0x50000000
    .4byte 0xffe30006
    .4byte 0x0000ff9c
    .4byte 0x50000000
    .4byte 0xffed0008
    .4byte 0x0000ffa0
    .4byte 0x40000000
    .4byte 0x00220000
    .4byte 0x0000ff87
    .4byte 0x40000000
    .4byte 0x001f0002
    .4byte 0x0000ff90
    .4byte 0x40000000
    .4byte 0x00170004
    .4byte 0x0000ff98
    .4byte 0x40000000
    .4byte 0x000d0006
    .4byte 0x0000ff9c
    .4byte 0x40000000
    .4byte 0x00030008
    .4byte 0x0000ffa0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40001
    .4byte 0x0000ff80
    .4byte 0x50000000
    .4byte 0xffcc0002
    .4byte 0x0000ff86
    .4byte 0x50000000
    .4byte 0xffcf0004
    .4byte 0x0000ff91
    .4byte 0x50000000
    .4byte 0xffd60006
    .4byte 0x0000ff99
    .4byte 0x50000000
    .4byte 0xffe00008
    .4byte 0x0000ff9d
    .4byte 0x00008000
    .4byte 0x00240001
    .4byte 0x0000ff80
    .4byte 0x40000000
    .4byte 0x00240002
    .4byte 0x0000ff86
    .4byte 0x40000000
    .4byte 0x00210004
    .4byte 0x0000ff91
    .4byte 0x40000000
    .4byte 0x001a0006
    .4byte 0x0000ff99
    .4byte 0x40000000
    .4byte 0x00100008
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40003
    .4byte 0x0000ff80
    .4byte 0x50000000
    .4byte 0xffcc0004
    .4byte 0x0000ff86
    .4byte 0x50000000
    .4byte 0xffce0006
    .4byte 0x0000ff91
    .4byte 0x50000000
    .4byte 0xffd60008
    .4byte 0x0000ff97
    .4byte 0x00008000
    .4byte 0x00240003
    .4byte 0x0000ff80
    .4byte 0x40000000
    .4byte 0x00240004
    .4byte 0x0000ff86
    .4byte 0x40000000
    .4byte 0x00220006
    .4byte 0x0000ff91
    .4byte 0x40000000
    .4byte 0x001a0008
    .4byte 0x0000ff97
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40005
    .4byte 0x0000ff80
    .4byte 0x50000000
    .4byte 0xffcc0006
    .4byte 0x0000ff86
    .4byte 0x50000000
    .4byte 0xffce0008
    .4byte 0x0000ff91
    .4byte 0x00008000
    .4byte 0x00240005
    .4byte 0x0000ff80
    .4byte 0x40000000
    .4byte 0x00240006
    .4byte 0x0000ff86
    .4byte 0x40000000
    .4byte 0x00220008
    .4byte 0x0000ff91
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10008000
    .4byte 0xffd40009
    .4byte 0x0000ff80
    .4byte 0x00008000
    .4byte 0x00240009
    .4byte 0x0000ff80
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_08605DF4
gUnknown_08605DF4:  @ 0x08605DF4
	.incbin "baserom.gba", 0x605DF4, 0x7C    @ 0x605E70 - 0x605DF4

	.global Img_BoltingBg_A
Img_BoltingBg_A:  @ 0x08605E70
	.incbin "baserom.gba", 0x605E70, 0xBD0    @ 0x606A40 - 0x605E70

	.global Img_BoltingBg_B
Img_BoltingBg_B:  @ 0x08606A40
	.incbin "baserom.gba", 0x606A40, 0x106C    @ 0x607AAC - 0x606A40

	.global Img_BoltingBg_C
Img_BoltingBg_C:  @ 0x08607AAC
	.incbin "baserom.gba", 0x607AAC, 0xD8C    @ 0x608838 - 0x607AAC

	.global Pal_BoltingBg
Pal_BoltingBg:  @ 0x08608838
	.incbin "baserom.gba", 0x608838, 0x60    @ 0x608898 - 0x608838

	.global Tsa_BoltingBg_A
Tsa_BoltingBg_A:  @ 0x08608898
	.incbin "baserom.gba", 0x608898, 0x194    @ 0x608A2C - 0x608898

	.global Tsa_BoltingBg_B
Tsa_BoltingBg_B:  @ 0x08608A2C
	.incbin "baserom.gba", 0x608A2C, 0x208    @ 0x608C34 - 0x608A2C

	.global Tsa_BoltingBg_C
Tsa_BoltingBg_C:  @ 0x08608C34
	.incbin "baserom.gba", 0x608C34, 0x164    @ 0x608D98 - 0x608C34

	.global Tsa_BoltingBg_D
Tsa_BoltingBg_D:  @ 0x08608D98
	.incbin "baserom.gba", 0x608D98, 0xE0    @ 0x608E78 - 0x608D98

	.global Tsa_BoltingBg_E
Tsa_BoltingBg_E:  @ 0x08608E78
	.incbin "baserom.gba", 0x608E78, 0x118    @ 0x608F90 - 0x608E78

	.global Tsa_BoltingBg_F
Tsa_BoltingBg_F:  @ 0x08608F90
	.incbin "baserom.gba", 0x608F90, 0x1AC    @ 0x60913C - 0x608F90

	.global Tsa_BoltingBg_G
Tsa_BoltingBg_G:  @ 0x0860913C
	.incbin "baserom.gba", 0x60913C, 0x120    @ 0x60925C - 0x60913C

	.global Tsa_BoltingBg_H
Tsa_BoltingBg_H:  @ 0x0860925C
	.incbin "baserom.gba", 0x60925C, 0xEC    @ 0x609348 - 0x60925C

	.global Tsa_BoltingBg_I
Tsa_BoltingBg_I:  @ 0x08609348
	.incbin "baserom.gba", 0x609348, 0xE8    @ 0x609430 - 0x609348

	.global Tsa_BoltingBg_J
Tsa_BoltingBg_J:  @ 0x08609430
	.incbin "baserom.gba", 0x609430, 0x98    @ 0x6094C8 - 0x609430

	.global Tsa_BoltingBg_K
Tsa_BoltingBg_K:  @ 0x086094C8
	.incbin "baserom.gba", 0x6094C8, 0x110C    @ 0x60A5D4 - 0x6094C8

	.global gUnknown_0860A5D4
gUnknown_0860A5D4:  @ 0x0860A5D4
	.incbin "baserom.gba", 0x60A5D4, 0x190    @ 0x60A764 - 0x60A5D4

	.global Img_FimbulvetrBg_A
Img_FimbulvetrBg_A:  @ 0x0860A764
	.incbin "baserom.gba", 0x60A764, 0x12D0    @ 0x60BA34 - 0x60A764

	.global Img_FimbulvetrBg_B
Img_FimbulvetrBg_B:  @ 0x0860BA34
	.incbin "baserom.gba", 0x60BA34, 0x18B0    @ 0x60D2E4 - 0x60BA34

	.global Img_FimbulvetrBg_C
Img_FimbulvetrBg_C:  @ 0x0860D2E4
	.incbin "baserom.gba", 0x60D2E4, 0x1444    @ 0x60E728 - 0x60D2E4

	.global Img_FimbulvetrBg_D
Img_FimbulvetrBg_D:  @ 0x0860E728
	.incbin "baserom.gba", 0x60E728, 0x1AB4    @ 0x6101DC - 0x60E728

	.global Pal_FimbulvetrBg
Pal_FimbulvetrBg:  @ 0x086101DC
	.incbin "baserom.gba", 0x6101DC, 0x20    @ 0x6101FC - 0x6101DC

	.global Tsa_FimbulvetrBg_A
Tsa_FimbulvetrBg_A:  @ 0x086101FC
	.incbin "baserom.gba", 0x6101FC, 0xA4    @ 0x6102A0 - 0x6101FC

	.global Tsa_FimbulvetrBg_B
Tsa_FimbulvetrBg_B:  @ 0x086102A0
	.incbin "baserom.gba", 0x6102A0, 0xA8    @ 0x610348 - 0x6102A0

	.global Tsa_FimbulvetrBg_C
Tsa_FimbulvetrBg_C:  @ 0x08610348
	.incbin "baserom.gba", 0x610348, 0xBC    @ 0x610404 - 0x610348

	.global Tsa_FimbulvetrBg_D
Tsa_FimbulvetrBg_D:  @ 0x08610404
	.incbin "baserom.gba", 0x610404, 0xD4    @ 0x6104D8 - 0x610404

	.global Tsa_FimbulvetrBg_E
Tsa_FimbulvetrBg_E:  @ 0x086104D8
	.incbin "baserom.gba", 0x6104D8, 0xFC    @ 0x6105D4 - 0x6104D8

	.global Tsa_FimbulvetrBg_F
Tsa_FimbulvetrBg_F:  @ 0x086105D4
	.incbin "baserom.gba", 0x6105D4, 0x140    @ 0x610714 - 0x6105D4

	.global Tsa_FimbulvetrBg_G
Tsa_FimbulvetrBg_G:  @ 0x08610714
	.incbin "baserom.gba", 0x610714, 0x198    @ 0x6108AC - 0x610714

	.global Tsa_FimbulvetrBg_H
Tsa_FimbulvetrBg_H:  @ 0x086108AC
	.incbin "baserom.gba", 0x6108AC, 0x1D4    @ 0x610A80 - 0x6108AC

	.global Tsa_FimbulvetrBg_I
Tsa_FimbulvetrBg_I:  @ 0x08610A80
	.incbin "baserom.gba", 0x610A80, 0x210    @ 0x610C90 - 0x610A80

	.global Tsa_FimbulvetrBg_J
Tsa_FimbulvetrBg_J:  @ 0x08610C90
	.incbin "baserom.gba", 0x610C90, 0x220    @ 0x610EB0 - 0x610C90

	.global Tsa_FimbulvetrBg_K
Tsa_FimbulvetrBg_K:  @ 0x08610EB0
	.incbin "baserom.gba", 0x610EB0, 0x230    @ 0x6110E0 - 0x610EB0

	.global Img_FimbulvetrBg_Tornado_A
Img_FimbulvetrBg_Tornado_A:  @ 0x086110E0
	.incbin "baserom.gba", 0x6110E0, 0x1208    @ 0x6122E8 - 0x6110E0

	.global Img_FimbulvetrBg_Tornado_B
Img_FimbulvetrBg_Tornado_B:  @ 0x086122E8
	.incbin "baserom.gba", 0x6122E8, 0x115C    @ 0x613444 - 0x6122E8

	.global Img_FimbulvetrBg_Tornado_C
Img_FimbulvetrBg_Tornado_C:  @ 0x08613444
	.incbin "baserom.gba", 0x613444, 0x1084    @ 0x6144C8 - 0x613444

	.global Img_FimbulvetrBg_Tornado_D
Img_FimbulvetrBg_Tornado_D:  @ 0x086144C8
	.incbin "baserom.gba", 0x6144C8, 0x1440    @ 0x615908 - 0x6144C8

	.global Img_FimbulvetrBg_Tornado_E
Img_FimbulvetrBg_Tornado_E:  @ 0x08615908
	.incbin "baserom.gba", 0x615908, 0x13B8    @ 0x616CC0 - 0x615908

	.global Img_FimbulvetrBg_Tornado_F
Img_FimbulvetrBg_Tornado_F:  @ 0x08616CC0
	.incbin "baserom.gba", 0x616CC0, 0x1244    @ 0x617F04 - 0x616CC0

	.global Pal_FimbulvetrBg_Tornado
Pal_FimbulvetrBg_Tornado:  @ 0x08617F04
	.incbin "baserom.gba", 0x617F04, 0x20    @ 0x617F24 - 0x617F04

	.global Tsa_FimbulvetrBg_Tornado_A
Tsa_FimbulvetrBg_Tornado_A:  @ 0x08617F24
	.incbin "baserom.gba", 0x617F24, 0x1EC    @ 0x618110 - 0x617F24

	.global Tsa_FimbulvetrBg_Tornado_B
Tsa_FimbulvetrBg_Tornado_B:  @ 0x08618110
	.incbin "baserom.gba", 0x618110, 0x1D8    @ 0x6182E8 - 0x618110

	.global Tsa_FimbulvetrBg_Tornado_C
Tsa_FimbulvetrBg_Tornado_C:  @ 0x086182E8
	.incbin "baserom.gba", 0x6182E8, 0x1C8    @ 0x6184B0 - 0x6182E8

	.global Tsa_FimbulvetrBg_Tornado_D
Tsa_FimbulvetrBg_Tornado_D:  @ 0x086184B0
	.incbin "baserom.gba", 0x6184B0, 0x234    @ 0x6186E4 - 0x6184B0

	.global Tsa_FimbulvetrBg_Tornado_E
Tsa_FimbulvetrBg_Tornado_E:  @ 0x086186E4
	.incbin "baserom.gba", 0x6186E4, 0x248    @ 0x61892C - 0x6186E4

	.global Tsa_FimbulvetrBg_Tornado_F
Tsa_FimbulvetrBg_Tornado_F:  @ 0x0861892C
	.incbin "baserom.gba", 0x61892C, 0x290    @ 0x618BBC - 0x61892C

	.global Img_FimbulvetrSprites_Snow
Img_FimbulvetrSprites_Snow:  @ 0x08618BBC
	.incbin "baserom.gba", 0x618BBC, 0x20FC

	.global gUnknown_0861ACB8
gUnknown_0861ACB8:  @ 0x0861ACB8
@ Replacing .incbin "baserom.gba", 0x61ACB8, 0x6C
    .4byte Img_FimbulvetrSprites_Snow + 0x352
    .4byte Img_FimbulvetrSprites_Snow + 0x3ca
    .4byte Img_FimbulvetrSprites_Snow + 0x4c6
    .4byte Img_FimbulvetrSprites_Snow + 0x5da
    .4byte Img_FimbulvetrSprites_Snow + 0x706
    .4byte Img_FimbulvetrSprites_Snow + 0x84a
    .4byte Img_FimbulvetrSprites_Snow + 0x976
    .4byte Img_FimbulvetrSprites_Snow + 0xaa2
    .4byte Img_FimbulvetrSprites_Snow + 0xbce
    .4byte Img_FimbulvetrSprites_Snow + 0xcfa
    .4byte Img_FimbulvetrSprites_Snow + 0xe1a
    .4byte Img_FimbulvetrSprites_Snow + 0xf46
    .4byte Img_FimbulvetrSprites_Snow + 0x1072
    .4byte Img_FimbulvetrSprites_Snow + 0x1192
    .4byte Img_FimbulvetrSprites_Snow + 0x12be
    .4byte Img_FimbulvetrSprites_Snow + 0x13ea
    .4byte Img_FimbulvetrSprites_Snow + 0x1516
    .4byte Img_FimbulvetrSprites_Snow + 0x1642
    .4byte Img_FimbulvetrSprites_Snow + 0x176e
    .4byte Img_FimbulvetrSprites_Snow + 0x189a
    .4byte Img_FimbulvetrSprites_Snow + 0x19ba
    .4byte Img_FimbulvetrSprites_Snow + 0x1ada
    .4byte Img_FimbulvetrSprites_Snow + 0x1c12
    .4byte Img_FimbulvetrSprites_Snow + 0x1d32
    .4byte Img_FimbulvetrSprites_Snow + 0x1e52
    .4byte Img_FimbulvetrSprites_Snow + 0x1f72
    .4byte 0x82000000

	.global gUnknown_0861AD24
gUnknown_0861AD24:  @ 0x0861AD24
@ Replacing .incbin "baserom.gba", 0x61AD24, 0x60
    .4byte Img_FimbulvetrSprites_Snow + 0x209d
    .4byte Img_FimbulvetrSprites_Snow + 0x1bf9
    .4byte 0x82000000
    .4byte Img_FimbulvetrSprites_Snow + 0x20b5
    .4byte Img_FimbulvetrSprites_Snow + 0x1bf9
    .4byte 0x82000000
    .4byte Img_FimbulvetrSprites_Snow + 0x1bf9
    .4byte Img_FimbulvetrSprites_Snow + 0x20cd
    .4byte 0x82000000
    .4byte Img_FimbulvetrSprites_Snow + 0x1bf9
    .4byte Img_FimbulvetrSprites_Snow + 0x20e5
    .4byte 0x82000000
    .4byte 0x80000000
    .4byte 0xfff00018
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xfff0001c
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_0861AD84
gUnknown_0861AD84:  @ 0x0861AD84
	.incbin "baserom.gba", 0x61AD84, 0x8

	.global gUnknown_0861AD8C
gUnknown_0861AD8C:  @ 0x0861AD8C
	.incbin "baserom.gba", 0x61AD8C, 0x8    @ 0x61AD94 - 0x61AD8C

	.global Img_0861AD94
Img_0861AD94:  @ 0x0861AD94
	.incbin "baserom.gba", 0x61AD94, 0x8C8    @ 0x61B65C - 0x61AD94

	.global Img_0861B65C
Img_0861B65C:  @ 0x0861B65C
	.incbin "baserom.gba", 0x61B65C, 0x750    @ 0x61BDAC - 0x61B65C

	.global Img_0861BDAC
Img_0861BDAC:  @ 0x0861BDAC
	.incbin "baserom.gba", 0x61BDAC, 0x9C4    @ 0x61C770 - 0x61BDAC

	.global Img_0861C770
Img_0861C770:  @ 0x0861C770
	.incbin "baserom.gba", 0x61C770, 0xB54    @ 0x61D2C4 - 0x61C770

	.global Img_0861D2C4
Img_0861D2C4:  @ 0x0861D2C4
	.incbin "baserom.gba", 0x61D2C4, 0xB08    @ 0x61DDCC - 0x61D2C4

	.global Img_0861DDCC
Img_0861DDCC:  @ 0x0861DDCC
	.incbin "baserom.gba", 0x61DDCC, 0x318    @ 0x61E0E4 - 0x61DDCC

	.global Img_0861E0E4
Img_0861E0E4:  @ 0x0861E0E4
	.incbin "baserom.gba", 0x61E0E4, 0xCB0    @ 0x61ED94 - 0x61E0E4

	.global Img_0861ED94
Img_0861ED94:  @ 0x0861ED94
	.incbin "baserom.gba", 0x61ED94, 0xA20    @ 0x61F7B4 - 0x61ED94

	.global Pal_0861F7B4
Pal_0861F7B4:  @ 0x0861F7B4
	.incbin "baserom.gba", 0x61F7B4, 0x20    @ 0x61F7D4 - 0x61F7B4

	.global Pal_0861F7D4
Pal_0861F7D4:  @ 0x0861F7D4
	.incbin "baserom.gba", 0x61F7D4, 0x20    @ 0x61F7F4 - 0x61F7D4

	.global Tsa_0861F7F4
Tsa_0861F7F4:  @ 0x0861F7F4
	.incbin "baserom.gba", 0x61F7F4, 0x124    @ 0x61F918 - 0x61F7F4

	.global Tsa_0861F918
Tsa_0861F918:  @ 0x0861F918
	.incbin "baserom.gba", 0x61F918, 0x120    @ 0x61FA38 - 0x61F918

	.global Tsa_0861FA38
Tsa_0861FA38:  @ 0x0861FA38
	.incbin "baserom.gba", 0x61FA38, 0x10C    @ 0x61FB44 - 0x61FA38

	.global Tsa_0861FB44
Tsa_0861FB44:  @ 0x0861FB44
	.incbin "baserom.gba", 0x61FB44, 0xFC    @ 0x61FC40 - 0x61FB44

	.global Tsa_0861FC40
Tsa_0861FC40:  @ 0x0861FC40
	.incbin "baserom.gba", 0x61FC40, 0xE8    @ 0x61FD28 - 0x61FC40

	.global Tsa_0861FD28
Tsa_0861FD28:  @ 0x0861FD28
	.incbin "baserom.gba", 0x61FD28, 0xE4    @ 0x61FE0C - 0x61FD28

	.global Tsa_0861FE0C
Tsa_0861FE0C:  @ 0x0861FE0C
	.incbin "baserom.gba", 0x61FE0C, 0xE4    @ 0x61FEF0 - 0x61FE0C

	.global Tsa_0861FEF0
Tsa_0861FEF0:  @ 0x0861FEF0
	.incbin "baserom.gba", 0x61FEF0, 0xDC    @ 0x61FFCC - 0x61FEF0

	.global Tsa_0861FFCC
Tsa_0861FFCC:  @ 0x0861FFCC
	.incbin "baserom.gba", 0x61FFCC, 0xE0    @ 0x6200AC - 0x61FFCC

	.global Tsa_086200AC
Tsa_086200AC:  @ 0x086200AC
	.incbin "baserom.gba", 0x6200AC, 0xF4    @ 0x6201A0 - 0x6200AC

	.global Tsa_086201A0
Tsa_086201A0:  @ 0x086201A0
	.incbin "baserom.gba", 0x6201A0, 0xF4    @ 0x620294 - 0x6201A0

	.global Tsa_08620294
Tsa_08620294:  @ 0x08620294
	.incbin "baserom.gba", 0x620294, 0x104    @ 0x620398 - 0x620294

	.global Tsa_08620398
Tsa_08620398:  @ 0x08620398
	.incbin "baserom.gba", 0x620398, 0x108    @ 0x6204A0 - 0x620398

	.global Tsa_086204A0
Tsa_086204A0:  @ 0x086204A0
	.incbin "baserom.gba", 0x6204A0, 0x118    @ 0x6205B8 - 0x6204A0

	.global Tsa_086205B8
Tsa_086205B8:  @ 0x086205B8
	.incbin "baserom.gba", 0x6205B8, 0x124    @ 0x6206DC - 0x6205B8

	.global Tsa_086206DC
Tsa_086206DC:  @ 0x086206DC
	.incbin "baserom.gba", 0x6206DC, 0x114    @ 0x6207F0 - 0x6206DC

	.global Tsa_086207F0
Tsa_086207F0:  @ 0x086207F0
	.incbin "baserom.gba", 0x6207F0, 0xB0    @ 0x6208A0 - 0x6207F0

	.global Tsa_086208A0
Tsa_086208A0:  @ 0x086208A0
	.incbin "baserom.gba", 0x6208A0, 0x108    @ 0x6209A8 - 0x6208A0

	.global Tsa_086209A8
Tsa_086209A8:  @ 0x086209A8
	.incbin "baserom.gba", 0x6209A8, 0x13C    @ 0x620AE4 - 0x6209A8

	.global Tsa_08620AE4
Tsa_08620AE4:  @ 0x08620AE4
	.incbin "baserom.gba", 0x620AE4, 0x174    @ 0x620C58 - 0x620AE4

	.global Tsa_08620C58
Tsa_08620C58:  @ 0x08620C58
	.incbin "baserom.gba", 0x620C58, 0x198    @ 0x620DF0 - 0x620C58

	.global Tsa_08620DF0
Tsa_08620DF0:  @ 0x08620DF0
	.incbin "baserom.gba", 0x620DF0, 0x174    @ 0x620F64 - 0x620DF0

	.global Tsa_08620F64
Tsa_08620F64:  @ 0x08620F64
	.incbin "baserom.gba", 0x620F64, 0x10C    @ 0x621070 - 0x620F64

	.global Tsa_08621070
Tsa_08621070:  @ 0x08621070
	.incbin "baserom.gba", 0x621070, 0xD4    @ 0x621144 - 0x621070

	.global Tsa_08621144
Tsa_08621144:  @ 0x08621144
	.incbin "baserom.gba", 0x621144, 0xA0    @ 0x6211E4 - 0x621144

	.global Tsa_086211E4
Tsa_086211E4:  @ 0x086211E4
	.incbin "baserom.gba", 0x6211E4, 0x120    @ 0x621304 - 0x6211E4

	.global Tsa_08621304
Tsa_08621304:  @ 0x08621304
	.incbin "baserom.gba", 0x621304, 0x11C    @ 0x621420 - 0x621304

	.global Tsa_08621420
Tsa_08621420:  @ 0x08621420
	.incbin "baserom.gba", 0x621420, 0x114    @ 0x621534 - 0x621420

	.global Tsa_08621534
Tsa_08621534:  @ 0x08621534
	.incbin "baserom.gba", 0x621534, 0xF8    @ 0x62162C - 0x621534

	.global Tsa_0862162C
Tsa_0862162C:  @ 0x0862162C
	.incbin "baserom.gba", 0x62162C, 0xE8    @ 0x621714 - 0x62162C

	.global Tsa_08621714
Tsa_08621714:  @ 0x08621714
	.incbin "baserom.gba", 0x621714, 0xD0    @ 0x6217E4 - 0x621714

	.global Tsa_086217E4
Tsa_086217E4:  @ 0x086217E4
	.incbin "baserom.gba", 0x6217E4, 0xC4    @ 0x6218A8 - 0x6217E4

	.global Tsa_086218A8
Tsa_086218A8:  @ 0x086218A8
	.incbin "baserom.gba", 0x6218A8, 0xB8    @ 0x621960 - 0x6218A8

	.global Img_AircaliburBg
Img_AircaliburBg:  @ 0x08621960
	.incbin "baserom.gba", 0x621960, 0x15CC

	.global Pal_AircaliburBg
Pal_AircaliburBg:  @ 0x08622F2C
	.incbin "baserom.gba", 0x622F2C, 0xC0    @ 0x622FEC - 0x622F2C

	.global Tsa_AircaliburBg_A
Tsa_AircaliburBg_A:  @ 0x08622FEC
	.incbin "baserom.gba", 0x622FEC, 0x188    @ 0x623174 - 0x622FEC

	.global Tsa_AircaliburBg_B
Tsa_AircaliburBg_B:  @ 0x08623174
	.incbin "baserom.gba", 0x623174, 0x364    @ 0x6234D8 - 0x623174

	.global Img_AircaliburSprites
Img_AircaliburSprites:  @ 0x086234D8
	.incbin "baserom.gba", 0x6234D8, 0x5C4

	.global Pal_AircaliburSprites
Pal_AircaliburSprites:  @ 0x08623A9C
	.incbin "baserom.gba", 0x623A9C, 0x15F8

	.global gUnknown_08625094
gUnknown_08625094:  @ 0x08625094
@ Replacing .incbin "baserom.gba", 0x625094, 0xB4
    .4byte Pal_AircaliburSprites + 0x153a
    .4byte Pal_AircaliburSprites + 0x155d
    .4byte Pal_AircaliburSprites + 0x15ca
    .4byte Pal_AircaliburSprites + 0x15e2
    .4byte Pal_AircaliburSprites + 0x95e
    .4byte Pal_AircaliburSprites + 0x976
    .4byte Pal_AircaliburSprites + 0x99a
    .4byte Pal_AircaliburSprites + 0x9be
    .4byte Pal_AircaliburSprites + 0x9e2
    .4byte Pal_AircaliburSprites + 0xa06
    .4byte Pal_AircaliburSprites + 0xa2a
    .4byte Pal_AircaliburSprites + 0xa4e
    .4byte Pal_AircaliburSprites + 0xa72
    .4byte Pal_AircaliburSprites + 0xa96
    .4byte Pal_AircaliburSprites + 0xaba
    .4byte Pal_AircaliburSprites + 0xade
    .4byte Pal_AircaliburSprites + 0xb02
    .4byte Pal_AircaliburSprites + 0xb26
    .4byte Pal_AircaliburSprites + 0xb4a
    .4byte Pal_AircaliburSprites + 0xb6e
    .4byte Pal_AircaliburSprites + 0x22
    .4byte Pal_AircaliburSprites + 0x45
    .4byte Pal_AircaliburSprites + 0x81
    .4byte Pal_AircaliburSprites + 0xd5
    .4byte Pal_AircaliburSprites + 0x129
    .4byte Pal_AircaliburSprites + 0x17d
    .4byte Pal_AircaliburSprites + 0x1e9
    .4byte Pal_AircaliburSprites + 0x249
    .4byte Pal_AircaliburSprites + 0x2aa
    .4byte Pal_AircaliburSprites + 0x2fe
    .4byte Pal_AircaliburSprites + 0x35e
    .4byte Pal_AircaliburSprites + 0x3e2
    .4byte Pal_AircaliburSprites + 0x442
    .4byte Pal_AircaliburSprites + 0x4a2
    .4byte Pal_AircaliburSprites + 0x502
    .4byte Pal_AircaliburSprites + 0x561
    .4byte Pal_AircaliburSprites + 0x615
    .4byte Pal_AircaliburSprites + 0x675
    .4byte Pal_AircaliburSprites + 0x711
    .4byte Pal_AircaliburSprites + 0x7b9
    .4byte Pal_AircaliburSprites + 0x825
    .4byte Pal_AircaliburSprites + 0x891
    .4byte Pal_AircaliburSprites + 0x8cd
    .4byte Pal_AircaliburSprites + 0x921
    .4byte 0x81000000

	.global gUnknown_08625148
gUnknown_08625148:  @ 0x08625148
@ Replacing .incbin "baserom.gba", 0x625148, 0x1690
    .4byte Pal_AircaliburSprites + 0x153a
    .4byte Pal_AircaliburSprites + 0x155d
    .4byte Pal_AircaliburSprites + 0x15ca
    .4byte Pal_AircaliburSprites + 0x15e2
    .4byte Pal_AircaliburSprites + 0x95e
    .4byte Pal_AircaliburSprites + 0x976
    .4byte Pal_AircaliburSprites + 0x99a
    .4byte Pal_AircaliburSprites + 0x9be
    .4byte Pal_AircaliburSprites + 0x9e2
    .4byte Pal_AircaliburSprites + 0xa06
    .4byte Pal_AircaliburSprites + 0xa2a
    .4byte Pal_AircaliburSprites + 0xa4e
    .4byte Pal_AircaliburSprites + 0xa72
    .4byte Pal_AircaliburSprites + 0xa96
    .4byte Pal_AircaliburSprites + 0xaba
    .4byte Pal_AircaliburSprites + 0xade
    .4byte Pal_AircaliburSprites + 0xb02
    .4byte Pal_AircaliburSprites + 0xb26
    .4byte Pal_AircaliburSprites + 0xb49
    .4byte Pal_AircaliburSprites + 0xb6d
    .4byte Pal_AircaliburSprites + 0xb91
    .4byte Pal_AircaliburSprites + 0xbd9
    .4byte Pal_AircaliburSprites + 0xc39
    .4byte Pal_AircaliburSprites + 0xc75
    .4byte Pal_AircaliburSprites + 0xcc9
    .4byte Pal_AircaliburSprites + 0xd1d
    .4byte Pal_AircaliburSprites + 0xd71
    .4byte Pal_AircaliburSprites + 0xddd
    .4byte Pal_AircaliburSprites + 0xe3e
    .4byte Pal_AircaliburSprites + 0xe9e
    .4byte Pal_AircaliburSprites + 0xef2
    .4byte Pal_AircaliburSprites + 0xf52
    .4byte Pal_AircaliburSprites + 0xfd6
    .4byte Pal_AircaliburSprites + 0x1036
    .4byte Pal_AircaliburSprites + 0x1096
    .4byte Pal_AircaliburSprites + 0x10f6
    .4byte Pal_AircaliburSprites + 0x1155
    .4byte Pal_AircaliburSprites + 0x11f2
    .4byte Pal_AircaliburSprites + 0x1251
    .4byte Pal_AircaliburSprites + 0x12ed
    .4byte Pal_AircaliburSprites + 0x1395
    .4byte Pal_AircaliburSprites + 0x1401
    .4byte Pal_AircaliburSprites + 0x146d
    .4byte Pal_AircaliburSprites + 0x14a9
    .4byte Pal_AircaliburSprites + 0x14fd
    .4byte 0x81000000
    .4byte 0xffff0001
    .4byte 0xff80ff23
    .4byte 0x00ddff80
    .4byte 0x80000100
    .4byte 0xffa80000
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0002
    .4byte 0xffa8ff10
    .4byte 0x00f0ffa8
    .4byte 0x80000100
    .4byte 0xffb10000
    .4byte 0x0000ffde
    .4byte 0x82000100
    .4byte 0xffb00004
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0003
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0xffb50000
    .4byte 0x0000ffdc
    .4byte 0x82000100
    .4byte 0xffb80000
    .4byte 0x0000ffe0
    .4byte 0x84000100
    .4byte 0xffb60004
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0003
    .4byte 0xff26ff4b
    .4byte 0x00b5ff26
    .4byte 0x80000100
    .4byte 0xffb80000
    .4byte 0x0000ffda
    .4byte 0x82000100
    .4byte 0xffbd0000
    .4byte 0x0000ffe0
    .4byte 0x84000100
    .4byte 0xffb90004
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x007fff23
    .4byte 0x00dd007f
    .4byte 0xffff0003
    .4byte 0xff0aff73
    .4byte 0x008dff0a
    .4byte 0xffff0003
    .4byte 0x0031fee9
    .4byte 0x01170031
    .4byte 0x80000100
    .4byte 0xffba0000
    .4byte 0x0000ffd7
    .4byte 0x82000100
    .4byte 0xffbb0004
    .4byte 0x0000fff2
    .4byte 0x84000100
    .4byte 0xffc00000
    .4byte 0x0000ffdf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0004
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0xffff0004
    .4byte 0x0037fec4
    .4byte 0x013c0037
    .4byte 0xffff0004
    .4byte 0xfef5ffa0
    .4byte 0x0060fef5
    .4byte 0xffff0004
    .4byte 0x0000fe54
    .4byte 0x01ac0000
    .4byte 0x80000100
    .4byte 0xffbe0000
    .4byte 0x0000ffd3
    .4byte 0x82000100
    .4byte 0xffc40000
    .4byte 0x0000ffde
    .4byte 0x84000100
    .4byte 0xffbd0004
    .4byte 0x0000fff5
    .4byte 0x86000100
    .4byte 0xffca0008
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x00c4ff5c
    .4byte 0x00a400c4
    .4byte 0xffff0003
    .4byte 0x003ffe98
    .4byte 0x0168003f
    .4byte 0xffff0003
    .4byte 0xfee9ffd0
    .4byte 0x0030fee9
    .4byte 0x80000100
    .4byte 0xffc00000
    .4byte 0x0000ffcf
    .4byte 0x82000100
    .4byte 0xffc80000
    .4byte 0x0000ffde
    .4byte 0x84000100
    .4byte 0xffbe0004
    .4byte 0x0000fffb
    .4byte 0x90000000
    .4byte 0xffdb0008
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x007fff23
    .4byte 0x00dd007f
    .4byte 0xffff0003
    .4byte 0x0092fe6e
    .4byte 0x01920092
    .4byte 0xffff0003
    .4byte 0xff0aff33
    .4byte 0x00cdff0a
    .4byte 0x90000000
    .4byte 0xffea0008
    .4byte 0x0000ffe9
    .4byte 0x80000100
    .4byte 0xffca0000
    .4byte 0x0000ffc8
    .4byte 0x82000100
    .4byte 0xffd60000
    .4byte 0x0000ffd9
    .4byte 0x84000100
    .4byte 0xffc80004
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0148fe78
    .4byte 0x01880148
    .4byte 0xffff0002
    .4byte 0xffa8ff10
    .4byte 0x00f0ffa8
    .4byte 0x90004000
    .4byte 0xfff3000c
    .4byte 0x0000ffe7
    .4byte 0x90000000
    .4byte 0xffd50000
    .4byte 0x0000ffbe
    .4byte 0x80000100
    .4byte 0xffde0000
    .4byte 0x0000ffd2
    .4byte 0x82000100
    .4byte 0xffce0004
    .4byte 0x00000006
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff80ff23
    .4byte 0x00ddff80
    .4byte 0xffff0003
    .4byte 0x01bbff00
    .4byte 0x010001bb
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0x80004000
    .4byte 0xfff5000c
    .4byte 0x0000ffe0
    .4byte 0x80000100
    .4byte 0xffe10000
    .4byte 0x0000ffc6
    .4byte 0x82000100
    .4byte 0xffe80000
    .4byte 0x0000ffc7
    .4byte 0x84000100
    .4byte 0xffda0004
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff36ff8d
    .4byte 0x0073ff36
    .4byte 0xffff0003
    .4byte 0x01950093
    .4byte 0xff6d0195
    .4byte 0xffff0003
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x80000100
    .4byte 0xffe90000
    .4byte 0x0000ffce
    .4byte 0x50000000
    .4byte 0xffef0010
    .4byte 0x0000ffd9
    .4byte 0x10008000
    .4byte 0xffe70012
    .4byte 0x0000ffd9
    .4byte 0x10004000
    .4byte 0xffef0050
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0xffe70052
    .4byte 0x0000ffe9
    .4byte 0x82000100
    .4byte 0xffe50000
    .4byte 0x0000ffc1
    .4byte 0x84000100
    .4byte 0xffe20004
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff36ff8d
    .4byte 0x0073ff36
    .4byte 0xffff0003
    .4byte 0x007d0157
    .4byte 0xfea9007d
    .4byte 0xffff0003
    .4byte 0x00ddff80
    .4byte 0x008000dd
    .4byte 0x80000000
    .4byte 0xffd50008
    .4byte 0x0000ffd6
    .4byte 0x80000100
    .4byte 0xfffb0000
    .4byte 0x0000ffdc
    .4byte 0x82000100
    .4byte 0xffe70000
    .4byte 0x0000ffb7
    .4byte 0x84000100
    .4byte 0xfff10004
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff1bffd9
    .4byte 0x0027ff1b
    .4byte 0xffff0003
    .4byte 0xff610116
    .4byte 0xfeeaff61
    .4byte 0xffff0003
    .4byte 0x00fcffd4
    .4byte 0x002c00fc
    .4byte 0xa0004000
    .4byte 0xffc0000c
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0xfff70000
    .4byte 0x0000ffe7
    .4byte 0x82000100
    .4byte 0xffd30000
    .4byte 0x0000ffbc
    .4byte 0x84000100
    .4byte 0xffea0004
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0003
    .4byte 0xfec50038
    .4byte 0xffc8fec5
    .4byte 0xffff0003
    .4byte 0x00fc002c
    .4byte 0xffd400fc
    .4byte 0xb0004000
    .4byte 0xffc5000c
    .4byte 0x0000fff2
    .4byte 0x80000100
    .4byte 0xfff50000
    .4byte 0x0000fffa
    .4byte 0x82000100
    .4byte 0xffcd0000
    .4byte 0x0000ffc9
    .4byte 0x84000100
    .4byte 0xffea0004
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xfef5ffa0
    .4byte 0x0060fef5
    .4byte 0xffff0003
    .4byte 0x00fc002c
    .4byte 0xffd400fc
    .4byte 0xffff0003
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0x90000000
    .4byte 0xffe10008
    .4byte 0x0000fff1
    .4byte 0x80000100
    .4byte 0xffce0000
    .4byte 0x0000ffd6
    .4byte 0x82000100
    .4byte 0xffe80004
    .4byte 0x0000ffcc
    .4byte 0x84000100
    .4byte 0xffed0000
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0003
    .4byte 0x01f80058
    .4byte 0xffd400fc
    .4byte 0xffff0003
    .4byte 0x00310117
    .4byte 0xfee90031
    .4byte 0x90000000
    .4byte 0xfff00008
    .4byte 0x0000fff1
    .4byte 0x80000100
    .4byte 0xffd60000
    .4byte 0x0000ffed
    .4byte 0x82000100
    .4byte 0xffe60004
    .4byte 0x0000ffbf
    .4byte 0x84000100
    .4byte 0xffe20004
    .4byte 0x00000001
    .4byte 0xa0008000
    .4byte 0x00280010
    .4byte 0x0000ffed
    .4byte 0x60008000
    .4byte 0x00380012
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x00230008
    .4byte 0x0000ffd6
    .4byte 0x10004000
    .4byte 0x0013007e
    .4byte 0x0000ffd7
    .4byte 0x10004000
    .4byte 0x0003005e
    .4byte 0x0000ffd6
    .4byte 0x00004000
    .4byte 0x0021005e
    .4byte 0x0000ffd8
    .4byte 0x90000000
    .4byte 0x001d0008
    .4byte 0x0000ffd6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0003
    .4byte 0x011600a0
    .4byte 0xff600116
    .4byte 0xffff0003
    .4byte 0xfe080059
    .4byte 0x002c00fc
    .4byte 0x90000000
    .4byte 0x00000008
    .4byte 0x0000fff1
    .4byte 0x80000100
    .4byte 0xffdc0000
    .4byte 0x0000ffff
    .4byte 0x82000100
    .4byte 0xffd90004
    .4byte 0x0000fff7
    .4byte 0x84000100
    .4byte 0xffe60004
    .4byte 0x0000ffbf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0003
    .4byte 0x0168ffc1
    .4byte 0x003f0168
    .4byte 0xffff0003
    .4byte 0xfec40037
    .4byte 0x002c00fc
    .4byte 0x80000100
    .4byte 0xffe30000
    .4byte 0x0000000c
    .4byte 0x82000100
    .4byte 0xffdc0004
    .4byte 0x0000ffef
    .4byte 0x84000100
    .4byte 0xffe30004
    .4byte 0x0000ffc4
    .4byte 0x90000000
    .4byte 0x00100008
    .4byte 0x0000fff1
    .4byte 0x30004000
    .4byte 0x001b005e
    .4byte 0x0000ffe9
    .4byte 0x30004000
    .4byte 0x0014005e
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x001a0008
    .4byte 0x0000ffd6
    .4byte 0x00004000
    .4byte 0x001b005e
    .4byte 0x0000ffd8
    .4byte 0x10004000
    .4byte 0x000b005e
    .4byte 0x0000ffd7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0004
    .4byte 0xfed3ff93
    .4byte 0x006dfed3
    .4byte 0xffff0004
    .4byte 0x0157ff83
    .4byte 0x007d0157
    .4byte 0xffff0004
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0xffff0004
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x80000100
    .4byte 0xffe80000
    .4byte 0x0000001a
    .4byte 0x82000100
    .4byte 0xffe30004
    .4byte 0x0000ffe5
    .4byte 0x84000100
    .4byte 0x001b0013
    .4byte 0x0000fff1
    .4byte 0x86000100
    .4byte 0xffde0000
    .4byte 0x0000ffd4
    .4byte 0x00004000
    .4byte 0x0015001e
    .4byte 0x0000ffeb
    .4byte 0x10004000
    .4byte 0x0001001e
    .4byte 0x0000ffed
    .4byte 0x10004000
    .4byte 0x0015001e
    .4byte 0x0000ffe8
    .4byte 0x10004000
    .4byte 0x000e003e
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x00130013
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0004
    .4byte 0x013cff49
    .4byte 0x00b7013c
    .4byte 0xffff0004
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0004
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0xffff0004
    .4byte 0xfe6bff6e
    .4byte 0x0092fe6b
    .4byte 0x80000100
    .4byte 0xffeb0004
    .4byte 0x0000ffd7
    .4byte 0x82000100
    .4byte 0x00240013
    .4byte 0x0000fff1
    .4byte 0x84000100
    .4byte 0xffda0000
    .4byte 0x0000ffe3
    .4byte 0x86000100
    .4byte 0xffeb0004
    .4byte 0x0000001d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f5ff32
    .4byte 0x00ce00f5
    .4byte 0xffff0002
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x80000100
    .4byte 0xfff10004
    .4byte 0x0000ffcf
    .4byte 0x82000100
    .4byte 0xffd50000
    .4byte 0x0000fff7
    .4byte 0x20004000
    .4byte 0x0006001e
    .4byte 0x0000fff1
    .4byte 0x30004000
    .4byte 0xfff4007e
    .4byte 0x0000fff2
    .4byte 0x30004000
    .4byte 0xffe4005e
    .4byte 0x0000fff3
    .4byte 0x20004000
    .4byte 0x0004005e
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00f5ff32
    .4byte 0x00ce00f5
    .4byte 0xffff0002
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x80000100
    .4byte 0xfff70004
    .4byte 0x0000ffc7
    .4byte 0x82000100
    .4byte 0xffd30000
    .4byte 0x00000005
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00ebfee8
    .4byte 0x011800eb
    .4byte 0xffff0002
    .4byte 0xfec50038
    .4byte 0xffc8fec5
    .4byte 0x80000100
    .4byte 0xfffb0004
    .4byte 0x0000ffc0
    .4byte 0x82000100
    .4byte 0xffd10004
    .4byte 0x00000008
    .4byte 0x10004000
    .4byte 0xffcd001e
    .4byte 0x0000fff6
    .4byte 0x00004000
    .4byte 0xffdd001e
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00fffe45
    .4byte 0x01bb00ff
    .4byte 0xffff0002
    .4byte 0xfe08005a
    .4byte 0xffa6fe08
    .4byte 0x80000100
    .4byte 0x00000004
    .4byte 0x0000ffbc
    .4byte 0x82000100
    .4byte 0xffd10004
    .4byte 0x0000000f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffa80000
    .4byte 0x0000ffc8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff80ff23
    .4byte 0x00ddff80
    .4byte 0x80000100
    .4byte 0xffae0000
    .4byte 0x0000ffcb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff80ff23
    .4byte 0x00ddff80
    .4byte 0x80000100
    .4byte 0xffb60000
    .4byte 0x0000ffd2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff29fe8e
    .4byte 0x00ddff80
    .4byte 0x80000100
    .4byte 0xffbb0000
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x010001bb
    .4byte 0xff230080
    .4byte 0x80000100
    .4byte 0xffb80004
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x008e00f5
    .4byte 0xff0b008e
    .4byte 0x80000100
    .4byte 0xffae0004
    .4byte 0x0000ffce
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a00115
    .4byte 0xfeeb00a0
    .4byte 0x80000100
    .4byte 0xffa40004
    .4byte 0x0000ffc5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00d60172
    .4byte 0xfe8e00d6
    .4byte 0x80000100
    .4byte 0xff9a0004
    .4byte 0x0000ffbc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a00115
    .4byte 0xfeeb00a0
    .4byte 0x80000100
    .4byte 0xff8f0004
    .4byte 0x0000ffb2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x008e00f5
    .4byte 0xff0b008e
    .4byte 0x80000100
    .4byte 0xff850004
    .4byte 0x0000ffa9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00d60172
    .4byte 0xff230080
    .4byte 0x80000100
    .4byte 0xff800004
    .4byte 0x0000ffa6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff29fe8e
    .4byte 0x00ddff80
    .4byte 0x80000100
    .4byte 0xff830000
    .4byte 0x0000ffae
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0xff880000
    .4byte 0x0000ffb3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0xff8d0000
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0xff960000
    .4byte 0x0000ffcc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0xff9f0000
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff80ff23
    .4byte 0x00ddff80
    .4byte 0x80000100
    .4byte 0xffa80000
    .4byte 0x0000ffe0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffd3ff05
    .4byte 0x00fbffd3
    .4byte 0x80000100
    .4byte 0xffb00000
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90000000
    .4byte 0xffc00000
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0x80000100
    .4byte 0xffd00000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0x80000100
    .4byte 0xffdc0000
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0002
    .4byte 0xffa8ff10
    .4byte 0x00f0ffa8
    .4byte 0x80000100
    .4byte 0xffe10000
    .4byte 0x0000ffde
    .4byte 0x82000100
    .4byte 0xffe00004
    .4byte 0x0000ffe5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0003
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x80000100
    .4byte 0xffe50000
    .4byte 0x0000ffdc
    .4byte 0x82000100
    .4byte 0xffe80000
    .4byte 0x0000ffe0
    .4byte 0x84000100
    .4byte 0xffe60004
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0003
    .4byte 0xff26ff4b
    .4byte 0x00b5ff26
    .4byte 0x80000100
    .4byte 0xffe80000
    .4byte 0x0000ffda
    .4byte 0x82000100
    .4byte 0xffed0000
    .4byte 0x0000ffe0
    .4byte 0x84000100
    .4byte 0xffe90004
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x007fff23
    .4byte 0x00dd007f
    .4byte 0xffff0003
    .4byte 0xff0aff73
    .4byte 0x008dff0a
    .4byte 0xffff0003
    .4byte 0x0031fee9
    .4byte 0x01170031
    .4byte 0x80000100
    .4byte 0xffea0000
    .4byte 0x0000ffd7
    .4byte 0x82000100
    .4byte 0xffeb0004
    .4byte 0x0000fff2
    .4byte 0x84000100
    .4byte 0xfff00000
    .4byte 0x0000ffdf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0004
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0xffff0004
    .4byte 0x0037fec4
    .4byte 0x013c0037
    .4byte 0xffff0004
    .4byte 0xfef5ffa0
    .4byte 0x0060fef5
    .4byte 0xffff0004
    .4byte 0x0000fe54
    .4byte 0x01ac0000
    .4byte 0x80000100
    .4byte 0xffee0000
    .4byte 0x0000ffd3
    .4byte 0x82000100
    .4byte 0xfff40000
    .4byte 0x0000ffde
    .4byte 0x84000100
    .4byte 0xffed0004
    .4byte 0x0000fff5
    .4byte 0x86000100
    .4byte 0xfffa0008
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x00c4ff5c
    .4byte 0x00a400c4
    .4byte 0xffff0003
    .4byte 0x003ffe98
    .4byte 0x0168003f
    .4byte 0xffff0003
    .4byte 0xfee9ffd0
    .4byte 0x0030fee9
    .4byte 0x80000100
    .4byte 0xfff00000
    .4byte 0x0000ffcf
    .4byte 0x82000100
    .4byte 0xfff80000
    .4byte 0x0000ffde
    .4byte 0x84000100
    .4byte 0xffee0004
    .4byte 0x0000fffb
    .4byte 0x90000000
    .4byte 0x000b0008
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x007fff23
    .4byte 0x00dd007f
    .4byte 0xffff0003
    .4byte 0x0092fe6e
    .4byte 0x01920092
    .4byte 0xffff0003
    .4byte 0xff0aff33
    .4byte 0x00cdff0a
    .4byte 0x90000000
    .4byte 0x001a0008
    .4byte 0x0000ffe9
    .4byte 0x80000100
    .4byte 0xfffa0000
    .4byte 0x0000ffc8
    .4byte 0x82000100
    .4byte 0x00060000
    .4byte 0x0000ffd9
    .4byte 0x84000100
    .4byte 0xfff80004
    .4byte 0x00000002
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x0148fe78
    .4byte 0x01880148
    .4byte 0xffff0002
    .4byte 0xffa8ff10
    .4byte 0x00f0ffa8
    .4byte 0x90004000
    .4byte 0x0023000c
    .4byte 0x0000ffe7
    .4byte 0x90000000
    .4byte 0x00050000
    .4byte 0x0000ffbe
    .4byte 0x80000100
    .4byte 0x000e0000
    .4byte 0x0000ffd2
    .4byte 0x82000100
    .4byte 0xfffe0004
    .4byte 0x00000006
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff80ff23
    .4byte 0x00ddff80
    .4byte 0xffff0003
    .4byte 0x01bbff00
    .4byte 0x010001bb
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0x80004000
    .4byte 0x0025000c
    .4byte 0x0000ffe0
    .4byte 0x80000100
    .4byte 0x00110000
    .4byte 0x0000ffc6
    .4byte 0x82000100
    .4byte 0x00180000
    .4byte 0x0000ffc7
    .4byte 0x84000100
    .4byte 0x000a0004
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff36ff8d
    .4byte 0x0073ff36
    .4byte 0xffff0003
    .4byte 0x01920091
    .4byte 0xff6f0192
    .4byte 0xffff0003
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x80000100
    .4byte 0x00190000
    .4byte 0x0000ffce
    .4byte 0x50000000
    .4byte 0x001f0010
    .4byte 0x0000ffd9
    .4byte 0x10008000
    .4byte 0x00170012
    .4byte 0x0000ffd9
    .4byte 0x10004000
    .4byte 0x001f0050
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x00170052
    .4byte 0x0000ffe9
    .4byte 0x82000100
    .4byte 0x00150000
    .4byte 0x0000ffc1
    .4byte 0x84000100
    .4byte 0x00120004
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff36ff8d
    .4byte 0x0073ff36
    .4byte 0xffff0003
    .4byte 0x007d0157
    .4byte 0xfea9007d
    .4byte 0xffff0003
    .4byte 0x00ddff80
    .4byte 0x008000dd
    .4byte 0x80000000
    .4byte 0x00050008
    .4byte 0x0000ffd6
    .4byte 0x80000100
    .4byte 0x002b0000
    .4byte 0x0000ffdc
    .4byte 0x82000100
    .4byte 0x00170000
    .4byte 0x0000ffb7
    .4byte 0x84000100
    .4byte 0x00210004
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff1bffd9
    .4byte 0x0027ff1b
    .4byte 0xffff0003
    .4byte 0xff610116
    .4byte 0xfeeaff61
    .4byte 0xffff0003
    .4byte 0x00fcffd4
    .4byte 0x002c00fc
    .4byte 0xa0004000
    .4byte 0xfff0000c
    .4byte 0x0000ffed
    .4byte 0x80000100
    .4byte 0x00270000
    .4byte 0x0000ffe7
    .4byte 0x82000100
    .4byte 0x00030000
    .4byte 0x0000ffbc
    .4byte 0x84000100
    .4byte 0x001a0004
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0003
    .4byte 0xfec50038
    .4byte 0xffc8fec5
    .4byte 0xffff0003
    .4byte 0x00fc002c
    .4byte 0xffd400fc
    .4byte 0xb0004000
    .4byte 0xfff5000c
    .4byte 0x0000fff2
    .4byte 0x80000100
    .4byte 0x00250000
    .4byte 0x0000fffa
    .4byte 0x82000100
    .4byte 0xfffd0000
    .4byte 0x0000ffc9
    .4byte 0x84000100
    .4byte 0x001a0004
    .4byte 0x0000ffdd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xfef5ffa0
    .4byte 0x0060fef5
    .4byte 0xffff0003
    .4byte 0x00fc002c
    .4byte 0xffd400fc
    .4byte 0xffff0003
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0x90000000
    .4byte 0x00110008
    .4byte 0x0000fff1
    .4byte 0x80000100
    .4byte 0xfffe0000
    .4byte 0x0000ffd6
    .4byte 0x82000100
    .4byte 0x00180004
    .4byte 0x0000ffcc
    .4byte 0x84000100
    .4byte 0x001d0000
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0003
    .4byte 0x01f80058
    .4byte 0xffd400fc
    .4byte 0xffff0003
    .4byte 0x00310117
    .4byte 0xfee90031
    .4byte 0x90000000
    .4byte 0x00200008
    .4byte 0x0000fff1
    .4byte 0x80000100
    .4byte 0x00060000
    .4byte 0x0000ffed
    .4byte 0x82000100
    .4byte 0x00160004
    .4byte 0x0000ffbf
    .4byte 0x84000100
    .4byte 0x00120004
    .4byte 0x00000001
    .4byte 0x90000000
    .4byte 0x00430008
    .4byte 0x0000ffd6
    .4byte 0x10004000
    .4byte 0x0033007e
    .4byte 0x0000ffd7
    .4byte 0x10004000
    .4byte 0x0023005e
    .4byte 0x0000ffd6
    .4byte 0x00004000
    .4byte 0x0041005e
    .4byte 0x0000ffd8
    .4byte 0x90000000
    .4byte 0x003d0008
    .4byte 0x0000ffd6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0003
    .4byte 0x011600a0
    .4byte 0xff600116
    .4byte 0xffff0003
    .4byte 0xfe080059
    .4byte 0x002c00fc
    .4byte 0x90000000
    .4byte 0x00300008
    .4byte 0x0000fff1
    .4byte 0x80000100
    .4byte 0x000c0000
    .4byte 0x0000ffff
    .4byte 0x82000100
    .4byte 0x00090004
    .4byte 0x0000fff7
    .4byte 0x84000100
    .4byte 0x00160004
    .4byte 0x0000ffbf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0xffff0003
    .4byte 0x0168ffc1
    .4byte 0x003f0168
    .4byte 0xffff0003
    .4byte 0xfec40037
    .4byte 0x002c00fc
    .4byte 0x80000100
    .4byte 0x00130000
    .4byte 0x0000000c
    .4byte 0x82000100
    .4byte 0x000c0004
    .4byte 0x0000ffef
    .4byte 0x84000100
    .4byte 0x00130004
    .4byte 0x0000ffc4
    .4byte 0x90000000
    .4byte 0x00400008
    .4byte 0x0000fff1
    .4byte 0x30004000
    .4byte 0x0040005e
    .4byte 0x0000ffe9
    .4byte 0x30004000
    .4byte 0x0039005e
    .4byte 0x0000ffec
    .4byte 0x90000000
    .4byte 0x003f0008
    .4byte 0x0000ffd6
    .4byte 0x00004000
    .4byte 0x0040005e
    .4byte 0x0000ffd8
    .4byte 0x10004000
    .4byte 0x0030005e
    .4byte 0x0000ffd7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0004
    .4byte 0xfed3ff93
    .4byte 0x006dfed3
    .4byte 0xffff0004
    .4byte 0x0157ff83
    .4byte 0x007d0157
    .4byte 0xffff0004
    .4byte 0x0000febf
    .4byte 0x01410000
    .4byte 0xffff0004
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x80000100
    .4byte 0x00180000
    .4byte 0x0000001a
    .4byte 0x82000100
    .4byte 0x00130004
    .4byte 0x0000ffe5
    .4byte 0x84000100
    .4byte 0x004b0013
    .4byte 0x0000fff1
    .4byte 0x86000100
    .4byte 0x000e0000
    .4byte 0x0000ffd4
    .4byte 0x00004000
    .4byte 0x003c001e
    .4byte 0x0000ffeb
    .4byte 0x10004000
    .4byte 0x0028001e
    .4byte 0x0000ffed
    .4byte 0x10004000
    .4byte 0x003c001e
    .4byte 0x0000ffe8
    .4byte 0x10004000
    .4byte 0x0035003e
    .4byte 0x0000ffed
    .4byte 0x90000000
    .4byte 0x003a0013
    .4byte 0x0000ffd8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0004
    .4byte 0x013cff49
    .4byte 0x00b7013c
    .4byte 0xffff0004
    .4byte 0x0000fe00
    .4byte 0x02000000
    .4byte 0xffff0004
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0xffff0004
    .4byte 0xfe6eff6f
    .4byte 0x0091fe6e
    .4byte 0x80000100
    .4byte 0x001b0004
    .4byte 0x0000ffd7
    .4byte 0x82000100
    .4byte 0x00560013
    .4byte 0x0000fff1
    .4byte 0x84000100
    .4byte 0x000a0000
    .4byte 0x0000ffe3
    .4byte 0x86000100
    .4byte 0x001b0004
    .4byte 0x0000001d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c4ff5c
    .4byte 0x00a400c4
    .4byte 0xffff0002
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x80000100
    .4byte 0x00210004
    .4byte 0x0000ffcf
    .4byte 0x82000100
    .4byte 0x00050000
    .4byte 0x0000fff7
    .4byte 0x20004000
    .4byte 0x0027001e
    .4byte 0x0000fff2
    .4byte 0x30004000
    .4byte 0x0010007e
    .4byte 0x0000fff3
    .4byte 0x30004000
    .4byte 0x0000005e
    .4byte 0x0000fff4
    .4byte 0x20004000
    .4byte 0x0020005e
    .4byte 0x0000fff2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00c4ff5c
    .4byte 0x00a400c4
    .4byte 0xffff0002
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x80000100
    .4byte 0x00270004
    .4byte 0x0000ffc7
    .4byte 0x82000100
    .4byte 0x00030000
    .4byte 0x00000005
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00ebfee8
    .4byte 0x011800eb
    .4byte 0xffff0002
    .4byte 0xfec50038
    .4byte 0xffc8fec5
    .4byte 0x80000100
    .4byte 0x002b0004
    .4byte 0x0000ffc0
    .4byte 0x82000100
    .4byte 0x00010004
    .4byte 0x00000008
    .4byte 0x10004000
    .4byte 0xffea001e
    .4byte 0x0000fff4
    .4byte 0x00004000
    .4byte 0xfffa001e
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0x00fffe45
    .4byte 0x01bb00ff
    .4byte 0xffff0002
    .4byte 0xfe08005a
    .4byte 0xffa6fe08
    .4byte 0x80000100
    .4byte 0x00310004
    .4byte 0x0000ffbb
    .4byte 0x82000100
    .4byte 0x00000004
    .4byte 0x00000011
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50008000
    .4byte 0xffbc0019
    .4byte 0x0000ffec
    .4byte 0x70008000
    .4byte 0xffbc0019
    .4byte 0x0000ffac
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0xffff0003
    .4byte 0x002cff04
    .4byte 0x00fc002c
    .4byte 0xffff0003
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x90008000
    .4byte 0xffb80017
    .4byte 0x0000ffd4
    .4byte 0x70008000
    .4byte 0xffbc0019
    .4byte 0x0000ffbb
    .4byte 0x80000100
    .4byte 0xffba0000
    .4byte 0x0000ffc0
    .4byte 0x82000100
    .4byte 0xffbd0000
    .4byte 0x0000ffc7
    .4byte 0x84000100
    .4byte 0xffb60004
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xffb8001c
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xffb8001a
    .4byte 0x0000ffd0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_086267D8
gUnknown_086267D8:  @ 0x086267D8
@ Replacing .incbin "baserom.gba", 0x6267D8, 0xB4
    .4byte gUnknown_08625148 + 0x15d2
    .4byte gUnknown_08625148 + 0x15f5
    .4byte gUnknown_08625148 + 0x1662
    .4byte gUnknown_08625148 + 0x167a
    .4byte gUnknown_08625148 + 0x9f6
    .4byte gUnknown_08625148 + 0xa0e
    .4byte gUnknown_08625148 + 0xa32
    .4byte gUnknown_08625148 + 0xa56
    .4byte gUnknown_08625148 + 0xa7a
    .4byte gUnknown_08625148 + 0xa9e
    .4byte gUnknown_08625148 + 0xac2
    .4byte gUnknown_08625148 + 0xae6
    .4byte gUnknown_08625148 + 0xb0a
    .4byte gUnknown_08625148 + 0xb2e
    .4byte gUnknown_08625148 + 0xb52
    .4byte gUnknown_08625148 + 0xb76
    .4byte gUnknown_08625148 + 0xb9a
    .4byte gUnknown_08625148 + 0xbbe
    .4byte gUnknown_08625148 + 0xbe2
    .4byte gUnknown_08625148 + 0xc06
    .4byte gUnknown_08625148 + 0xba
    .4byte gUnknown_08625148 + 0xdd
    .4byte gUnknown_08625148 + 0x119
    .4byte gUnknown_08625148 + 0x16d
    .4byte gUnknown_08625148 + 0x1c1
    .4byte gUnknown_08625148 + 0x215
    .4byte gUnknown_08625148 + 0x281
    .4byte gUnknown_08625148 + 0x2e1
    .4byte gUnknown_08625148 + 0x342
    .4byte gUnknown_08625148 + 0x396
    .4byte gUnknown_08625148 + 0x3f6
    .4byte gUnknown_08625148 + 0x47a
    .4byte gUnknown_08625148 + 0x4da
    .4byte gUnknown_08625148 + 0x53a
    .4byte gUnknown_08625148 + 0x59a
    .4byte gUnknown_08625148 + 0x5f9
    .4byte gUnknown_08625148 + 0x6ad
    .4byte gUnknown_08625148 + 0x70d
    .4byte gUnknown_08625148 + 0x7a9
    .4byte gUnknown_08625148 + 0x851
    .4byte gUnknown_08625148 + 0x8bd
    .4byte gUnknown_08625148 + 0x929
    .4byte gUnknown_08625148 + 0x965
    .4byte gUnknown_08625148 + 0x9b9
    .4byte 0x81000000

	.global gUnknown_0862688C
gUnknown_0862688C:  @ 0x0862688C
	.incbin "baserom.gba", 0x62688C, 0xB8    @ 0x626944 - 0x62688C

	.global Img_08626944
Img_08626944:  @ 0x08626944
	.incbin "baserom.gba", 0x626944, 0xBD0    @ 0x627514 - 0x626944

	.global Img_08627514
Img_08627514:  @ 0x08627514
	.incbin "baserom.gba", 0x627514, 0xD10    @ 0x628224 - 0x627514

	.global Img_08628224
Img_08628224:  @ 0x08628224
	.incbin "baserom.gba", 0x628224, 0x125C    @ 0x629480 - 0x628224

	.global Img_08629480
Img_08629480:  @ 0x08629480
	.incbin "baserom.gba", 0x629480, 0x684    @ 0x629B04 - 0x629480

	.global Img_08629B04
Img_08629B04:  @ 0x08629B04
	.incbin "baserom.gba", 0x629B04, 0x55C    @ 0x62A060 - 0x629B04

	.global Img_0862A060
Img_0862A060:  @ 0x0862A060
	.incbin "baserom.gba", 0x62A060, 0x270    @ 0x62A2D0 - 0x62A060

	.global gUnknown_0862A2D0
gUnknown_0862A2D0:  @ 0x0862A2D0
	.incbin "baserom.gba", 0x62A2D0, 0x20

	.global gUnknown_0862A2F0
gUnknown_0862A2F0:  @ 0x0862A2F0
	.incbin "baserom.gba", 0x62A2F0, 0x20    @ 0x62A310 - 0x62A2F0

	.global Tsa_0862A310
Tsa_0862A310:  @ 0x0862A310
	.incbin "baserom.gba", 0x62A310, 0xFC    @ 0x62A40C - 0x62A310

	.global Tsa_0862A40C
Tsa_0862A40C:  @ 0x0862A40C
	.incbin "baserom.gba", 0x62A40C, 0x100    @ 0x62A50C - 0x62A40C

	.global Tsa_0862A50C
Tsa_0862A50C:  @ 0x0862A50C
	.incbin "baserom.gba", 0x62A50C, 0x104    @ 0x62A610 - 0x62A50C

	.global Tsa_0862A610
Tsa_0862A610:  @ 0x0862A610
	.incbin "baserom.gba", 0x62A610, 0xF8    @ 0x62A708 - 0x62A610

	.global Tsa_0862A708
Tsa_0862A708:  @ 0x0862A708
	.incbin "baserom.gba", 0x62A708, 0x10C    @ 0x62A814 - 0x62A708

	.global Tsa_0862A814
Tsa_0862A814:  @ 0x0862A814
	.incbin "baserom.gba", 0x62A814, 0x10C    @ 0x62A920 - 0x62A814

	.global Tsa_0862A920
Tsa_0862A920:  @ 0x0862A920
	.incbin "baserom.gba", 0x62A920, 0x120    @ 0x62AA40 - 0x62A920

	.global Tsa_0862AA40
Tsa_0862AA40:  @ 0x0862AA40
	.incbin "baserom.gba", 0x62AA40, 0x124    @ 0x62AB64 - 0x62AA40

	.global Tsa_0862AB64
Tsa_0862AB64:  @ 0x0862AB64
	.incbin "baserom.gba", 0x62AB64, 0xE8    @ 0x62AC4C - 0x62AB64

	.global Tsa_0862AC4C
Tsa_0862AC4C:  @ 0x0862AC4C
	.incbin "baserom.gba", 0x62AC4C, 0xDC    @ 0x62AD28 - 0x62AC4C

	.global Tsa_0862AD28
Tsa_0862AD28:  @ 0x0862AD28
	.incbin "baserom.gba", 0x62AD28, 0xC0    @ 0x62ADE8 - 0x62AD28

	.global Tsa_0862ADE8
Tsa_0862ADE8:  @ 0x0862ADE8
	.incbin "baserom.gba", 0x62ADE8, 0xB8    @ 0x62AEA0 - 0x62ADE8

	.global Tsa_0862AEA0
Tsa_0862AEA0:  @ 0x0862AEA0
	.incbin "baserom.gba", 0x62AEA0, 0xA8    @ 0x62AF48 - 0x62AEA0

	.global Tsa_0862AF48
Tsa_0862AF48:  @ 0x0862AF48
	.incbin "baserom.gba", 0x62AF48, 0xBC    @ 0x62B004 - 0x62AF48

	.global Tsa_0862B004
Tsa_0862B004:  @ 0x0862B004
	.incbin "baserom.gba", 0x62B004, 0xD8    @ 0x62B0DC - 0x62B004

	.global Tsa_0862B0DC
Tsa_0862B0DC:  @ 0x0862B0DC
	.incbin "baserom.gba", 0x62B0DC, 0xE0    @ 0x62B1BC - 0x62B0DC

	.global Tsa_0862B1BC
Tsa_0862B1BC:  @ 0x0862B1BC
	.incbin "baserom.gba", 0x62B1BC, 0xF0    @ 0x62B2AC - 0x62B1BC

	.global Tsa_0862B2AC
Tsa_0862B2AC:  @ 0x0862B2AC
	.incbin "baserom.gba", 0x62B2AC, 0xFC    @ 0x62B3A8 - 0x62B2AC

	.global Tsa_0862B3A8
Tsa_0862B3A8:  @ 0x0862B3A8
	.incbin "baserom.gba", 0x62B3A8, 0xF4    @ 0x62B49C - 0x62B3A8

	.global Tsa_0862B49C
Tsa_0862B49C:  @ 0x0862B49C
	.incbin "baserom.gba", 0x62B49C, 0xF8    @ 0x62B594 - 0x62B49C

	.global Tsa_0862B594
Tsa_0862B594:  @ 0x0862B594
	.incbin "baserom.gba", 0x62B594, 0xEC    @ 0x62B680 - 0x62B594

	.global Tsa_0862B680
Tsa_0862B680:  @ 0x0862B680
	.incbin "baserom.gba", 0x62B680, 0xE4    @ 0x62B764 - 0x62B680

	.global Tsa_0862B764
Tsa_0862B764:  @ 0x0862B764
	.incbin "baserom.gba", 0x62B764, 0xD8    @ 0x62B83C - 0x62B764

	.global Tsa_0862B83C
Tsa_0862B83C:  @ 0x0862B83C
	.incbin "baserom.gba", 0x62B83C, 0xD0    @ 0x62B90C - 0x62B83C

	.global Tsa_0862B90C
Tsa_0862B90C:  @ 0x0862B90C
	.incbin "baserom.gba", 0x62B90C, 0xCC    @ 0x62B9D8 - 0x62B90C

	.global Tsa_0862B9D8
Tsa_0862B9D8:  @ 0x0862B9D8
	.incbin "baserom.gba", 0x62B9D8, 0xC8    @ 0x62BAA0 - 0x62B9D8

	.global Tsa_0862BAA0
Tsa_0862BAA0:  @ 0x0862BAA0
	.incbin "baserom.gba", 0x62BAA0, 0xB4    @ 0x62BB54 - 0x62BAA0

	.global Tsa_0862BB54
Tsa_0862BB54:  @ 0x0862BB54
	.incbin "baserom.gba", 0x62BB54, 0xB4    @ 0x62BC08 - 0x62BB54

	.global Tsa_0862BC08
Tsa_0862BC08:  @ 0x0862BC08
	.incbin "baserom.gba", 0x62BC08, 0xA0    @ 0x62BCA8 - 0x62BC08

	.global Tsa_0862BCA8
Tsa_0862BCA8:  @ 0x0862BCA8
	.incbin "baserom.gba", 0x62BCA8, 0xB4    @ 0x62BD5C - 0x62BCA8

	.global Tsa_0862BD5C
Tsa_0862BD5C:  @ 0x0862BD5C
	.incbin "baserom.gba", 0x62BD5C, 0xBC    @ 0x62BE18 - 0x62BD5C

	.global Tsa_0862BE18
Tsa_0862BE18:  @ 0x0862BE18
	.incbin "baserom.gba", 0x62BE18, 0xDC    @ 0x62BEF4 - 0x62BE18

	.global Tsa_0862BEF4
Tsa_0862BEF4:  @ 0x0862BEF4
	.incbin "baserom.gba", 0x62BEF4, 0xE8    @ 0x62BFDC - 0x62BEF4

	.global Tsa_0862BFDC
Tsa_0862BFDC:  @ 0x0862BFDC
	.incbin "baserom.gba", 0x62BFDC, 0x124    @ 0x62C100 - 0x62BFDC

	.global Tsa_0862C100
Tsa_0862C100:  @ 0x0862C100
	.incbin "baserom.gba", 0x62C100, 0x120    @ 0x62C220 - 0x62C100

	.global Tsa_0862C220
Tsa_0862C220:  @ 0x0862C220
	.incbin "baserom.gba", 0x62C220, 0x10C    @ 0x62C32C - 0x62C220

	.global Tsa_0862C32C
Tsa_0862C32C:  @ 0x0862C32C
	.incbin "baserom.gba", 0x62C32C, 0x10C    @ 0x62C438 - 0x62C32C

	.global Tsa_0862C438
Tsa_0862C438:  @ 0x0862C438
	.incbin "baserom.gba", 0x62C438, 0xFC    @ 0x62C534 - 0x62C438

	.global Tsa_0862C534
Tsa_0862C534:  @ 0x0862C534
	.incbin "baserom.gba", 0x62C534, 0x100    @ 0x62C634 - 0x62C534

	.global Tsa_0862C634
Tsa_0862C634:  @ 0x0862C634
	.incbin "baserom.gba", 0x62C634, 0xFC    @ 0x62C730 - 0x62C634

	.global Tsa_0862C730
Tsa_0862C730:  @ 0x0862C730
	.incbin "baserom.gba", 0x62C730, 0xFC    @ 0x62C82C - 0x62C730

	.global Img_FluxAnimSprites_Orb
Img_FluxAnimSprites_Orb:  @ 0x0862C82C
	.incbin "baserom.gba", 0x62C82C, 0x400

	.global Img_FluxAnimSprites_Tendrils
Img_FluxAnimSprites_Tendrils:  @ 0x0862CC2C
	.incbin "baserom.gba", 0x62CC2C, 0x440

	.global Img_FluxAnimSprites_SigilVoid
Img_FluxAnimSprites_SigilVoid:  @ 0x0862D06C
	.incbin "baserom.gba", 0x62D06C, 0x3B8

	.global Pal_FluxAnimSprites
Pal_FluxAnimSprites:  @ 0x0862D424
	.incbin "baserom.gba", 0x62D424, 0x284

	.global gUnknown_0862D6A8
gUnknown_0862D6A8:  @ 0x0862D6A8
@ Replacing .incbin "baserom.gba", 0x62D6A8, 0x38
    .4byte Pal_FluxAnimSprites + 0x196
    .4byte Pal_FluxAnimSprites + 0x1ba
    .4byte Pal_FluxAnimSprites + 0x1de
    .4byte Pal_FluxAnimSprites + 0x202
    .4byte Pal_FluxAnimSprites + 0x226
    .4byte Pal_FluxAnimSprites + 0x24a
    .4byte Pal_FluxAnimSprites + 0x23
    .4byte Pal_FluxAnimSprites + 0x47
    .4byte Pal_FluxAnimSprites + 0x6b
    .4byte Pal_FluxAnimSprites + 0x8f
    .4byte Pal_FluxAnimSprites + 0xb3
    .4byte Pal_FluxAnimSprites + 0xef
    .4byte Pal_FluxAnimSprites + 0x12b
    .4byte 0x80000000

	.global gUnknown_0862D6E0
gUnknown_0862D6E0:  @ 0x0862D6E0
@ Replacing .incbin "baserom.gba", 0x62D6E0, 0x14C
    .4byte Pal_FluxAnimSprites + 0x196
    .4byte Pal_FluxAnimSprites + 0x1ba
    .4byte Pal_FluxAnimSprites + 0x1de
    .4byte Pal_FluxAnimSprites + 0x202
    .4byte Pal_FluxAnimSprites + 0x226
    .4byte Pal_FluxAnimSprites + 0x24a
    .4byte Pal_FluxAnimSprites + 0x23
    .4byte Pal_FluxAnimSprites + 0x47
    .4byte Pal_FluxAnimSprites + 0x6b
    .4byte Pal_FluxAnimSprites + 0x23
    .4byte Pal_FluxAnimSprites + 0x47
    .4byte Pal_FluxAnimSprites + 0x6b
    .4byte Pal_FluxAnimSprites + 0x24a
    .4byte Pal_FluxAnimSprites + 0x226
    .4byte Pal_FluxAnimSprites + 0x202
    .4byte Pal_FluxAnimSprites + 0x1de
    .4byte Pal_FluxAnimSprites + 0x1ba
    .4byte Pal_FluxAnimSprites + 0x196
    .4byte Pal_FluxAnimSprites + 0x26e
    .4byte 0x80000000
    .4byte 0x80000000
    .4byte 0xfff00000
    .4byte 0x0000ffd0
    .4byte 0x80000000
    .4byte 0xfff00004
    .4byte 0x0000fff8
    .4byte 0x40004000
    .4byte 0xfff00060
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xfff00008
    .4byte 0x0000ffd0
    .4byte 0x40004000
    .4byte 0xfff00018
    .4byte 0x00000018
    .4byte 0x80004000
    .4byte 0xfff0004c
    .4byte 0x00000008
    .4byte 0x80004000
    .4byte 0xfff0000c
    .4byte 0x0000fff0
    .4byte 0x40004000
    .4byte 0xfff0002c
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xfff00010
    .4byte 0x0000ffd0
    .4byte 0x40004000
    .4byte 0xfff00018
    .4byte 0x00000018
    .4byte 0x80004000
    .4byte 0xfff00014
    .4byte 0x0000fff0
    .4byte 0x80004000
    .4byte 0xfff00054
    .4byte 0x00000008
    .4byte 0x40004000
    .4byte 0xfff00054
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80004000
    .4byte 0xfff00038
    .4byte 0x0000fff0
    .4byte 0x40004000
    .4byte 0xfff00078
    .4byte 0x00000000
    .4byte 0x80004000
    .4byte 0xfff0001c
    .4byte 0x00000008
    .4byte 0x40004000
    .4byte 0xfff0005c
    .4byte 0x00000018
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_0862D82C
gUnknown_0862D82C:  @ 0x0862D82C
	.incbin "baserom.gba", 0x62D82C, 0x3F8

	.global gUnknown_0862DC24
gUnknown_0862DC24:  @ 0x0862DC24
@ Replacing .incbin "baserom.gba", 0x62DC24, 0x34
    .4byte gUnknown_0862D82C + 0x15
    .4byte gUnknown_0862D82C + 0x51
    .4byte gUnknown_0862D82C + 0x8d
    .4byte gUnknown_0862D82C + 0xc9
    .4byte gUnknown_0862D82C + 0x105
    .4byte gUnknown_0862D82C + 0x141
    .4byte gUnknown_0862D82C + 0x17d
    .4byte gUnknown_0862D82C + 0x1b9
    .4byte gUnknown_0862D82C + 0x1f5
    .4byte gUnknown_0862D82C + 0x231
    .4byte 0x7862da9b
    .4byte 0x84000045
    .4byte 0x80000000

	.global gUnknown_0862DC58
gUnknown_0862DC58:  @ 0x0862DC58
@ Replacing .incbin "baserom.gba", 0x62DC58, 0x88
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x291
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x292
    .4byte gUnknown_0862D82C + 0x26d
    .4byte gUnknown_0862D82C + 0x293
    .4byte gUnknown_0862D82C + 0x26d
    .4byte 0x1862dabc
    .4byte gUnknown_0862D82C + 0x26d
    .4byte 0x80000000

	.global gUnknown_0862DCE0
gUnknown_0862DCE0:  @ 0x0862DCE0
	.incbin "baserom.gba", 0x62DCE0, 0x2C    @ 0x62DD0C - 0x62DCE0

	.global Img_NosferatuBg_A
Img_NosferatuBg_A:  @ 0x0862DD0C
	.incbin "baserom.gba", 0x62DD0C, 0xAD0    @ 0x62E7DC - 0x62DD0C

	.global Img_NosferatuBg_B
Img_NosferatuBg_B:  @ 0x0862E7DC
	.incbin "baserom.gba", 0x62E7DC, 0xBA8    @ 0x62F384 - 0x62E7DC

	.global Img_NosferatuBg_C
Img_NosferatuBg_C:  @ 0x0862F384
	.incbin "baserom.gba", 0x62F384, 0xB58    @ 0x62FEDC - 0x62F384

	.global Img_NosferatuBg_D
Img_NosferatuBg_D:  @ 0x0862FEDC
	.incbin "baserom.gba", 0x62FEDC, 0xAB4    @ 0x630990 - 0x62FEDC

	.global Img_NosferatuBg_E
Img_NosferatuBg_E:  @ 0x08630990
	.incbin "baserom.gba", 0x630990, 0xAD0    @ 0x631460 - 0x630990

	.global Img_NosferatuBg_F
Img_NosferatuBg_F:  @ 0x08631460
	.incbin "baserom.gba", 0x631460, 0xCC4    @ 0x632124 - 0x631460

	.global Img_NosferatuBg_G
Img_NosferatuBg_G:  @ 0x08632124
	.incbin "baserom.gba", 0x632124, 0x904    @ 0x632A28 - 0x632124

	.global Img_NosferatuBg_H
Img_NosferatuBg_H:  @ 0x08632A28
	.incbin "baserom.gba", 0x632A28, 0x554    @ 0x632F7C - 0x632A28

	.global Img_NosferatuBg_I
Img_NosferatuBg_I:  @ 0x08632F7C
	.incbin "baserom.gba", 0x632F7C, 0x918    @ 0x633894 - 0x632F7C

	.global Img_NosferatuBg_J
Img_NosferatuBg_J:  @ 0x08633894
	.incbin "baserom.gba", 0x633894, 0xC34    @ 0x6344C8 - 0x633894

	.global Img_NosferatuBg_K
Img_NosferatuBg_K:  @ 0x086344C8
	.incbin "baserom.gba", 0x6344C8, 0xCA4    @ 0x63516C - 0x6344C8

	.global Img_NosferatuBg_L
Img_NosferatuBg_L:  @ 0x0863516C
	.incbin "baserom.gba", 0x63516C, 0xBF4    @ 0x635D60 - 0x63516C

	.global Img_NosferatuBg_M
Img_NosferatuBg_M:  @ 0x08635D60
	.incbin "baserom.gba", 0x635D60, 0x8E0    @ 0x636640 - 0x635D60

	.global Pal_NosferatuBg
Pal_NosferatuBg:  @ 0x08636640
	.incbin "baserom.gba", 0x636640, 0x20    @ 0x636660 - 0x636640

	.global Tsa_08636660
Tsa_08636660:  @ 0x08636660
	.incbin "baserom.gba", 0x636660, 0x130    @ 0x636790 - 0x636660

	.global Tsa_08636790
Tsa_08636790:  @ 0x08636790
	.incbin "baserom.gba", 0x636790, 0xAC    @ 0x63683C - 0x636790

	.global Tsa_0863683C
Tsa_0863683C:  @ 0x0863683C
	.incbin "baserom.gba", 0x63683C, 0xB0    @ 0x6368EC - 0x63683C

	.global Tsa_086368EC
Tsa_086368EC:  @ 0x086368EC
	.incbin "baserom.gba", 0x6368EC, 0xB8    @ 0x6369A4 - 0x6368EC

	.global Tsa_086369A4
Tsa_086369A4:  @ 0x086369A4
	.incbin "baserom.gba", 0x6369A4, 0xC0    @ 0x636A64 - 0x6369A4

	.global Tsa_08636A64
Tsa_08636A64:  @ 0x08636A64
	.incbin "baserom.gba", 0x636A64, 0xCC    @ 0x636B30 - 0x636A64

	.global Tsa_08636B30
Tsa_08636B30:  @ 0x08636B30
	.incbin "baserom.gba", 0x636B30, 0xE0    @ 0x636C10 - 0x636B30

	.global Tsa_08636C10
Tsa_08636C10:  @ 0x08636C10
	.incbin "baserom.gba", 0x636C10, 0xE8    @ 0x636CF8 - 0x636C10

	.global Tsa_08636CF8
Tsa_08636CF8:  @ 0x08636CF8
	.incbin "baserom.gba", 0x636CF8, 0x108    @ 0x636E00 - 0x636CF8

	.global Tsa_08636E00
Tsa_08636E00:  @ 0x08636E00
	.incbin "baserom.gba", 0x636E00, 0x11C    @ 0x636F1C - 0x636E00

	.global Tsa_08636F1C
Tsa_08636F1C:  @ 0x08636F1C
	.incbin "baserom.gba", 0x636F1C, 0x13C    @ 0x637058 - 0x636F1C

	.global Tsa_08637058
Tsa_08637058:  @ 0x08637058
	.incbin "baserom.gba", 0x637058, 0x150    @ 0x6371A8 - 0x637058

	.global Tsa_086371A8
Tsa_086371A8:  @ 0x086371A8
	.incbin "baserom.gba", 0x6371A8, 0x158    @ 0x637300 - 0x6371A8

	.global Tsa_08637300
Tsa_08637300:  @ 0x08637300
	.incbin "baserom.gba", 0x637300, 0x158    @ 0x637458 - 0x637300

	.global Tsa_08637458
Tsa_08637458:  @ 0x08637458
	.incbin "baserom.gba", 0x637458, 0x154    @ 0x6375AC - 0x637458

	.global Tsa_086375AC
Tsa_086375AC:  @ 0x086375AC
	.incbin "baserom.gba", 0x6375AC, 0x150    @ 0x6376FC - 0x6375AC

	.global Tsa_086376FC
Tsa_086376FC:  @ 0x086376FC
	.incbin "baserom.gba", 0x6376FC, 0x150    @ 0x63784C - 0x6376FC

	.global Tsa_0863784C
Tsa_0863784C:  @ 0x0863784C
	.incbin "baserom.gba", 0x63784C, 0x138    @ 0x637984 - 0x63784C

	.global Tsa_08637984
Tsa_08637984:  @ 0x08637984
	.incbin "baserom.gba", 0x637984, 0x12C    @ 0x637AB0 - 0x637984

	.global Tsa_08637AB0
Tsa_08637AB0:  @ 0x08637AB0
	.incbin "baserom.gba", 0x637AB0, 0x11C    @ 0x637BCC - 0x637AB0

	.global Tsa_08637BCC
Tsa_08637BCC:  @ 0x08637BCC
	.incbin "baserom.gba", 0x637BCC, 0x10C    @ 0x637CD8 - 0x637BCC

	.global Tsa_08637CD8
Tsa_08637CD8:  @ 0x08637CD8
	.incbin "baserom.gba", 0x637CD8, 0xF8    @ 0x637DD0 - 0x637CD8

	.global Tsa_08637DD0
Tsa_08637DD0:  @ 0x08637DD0
	.incbin "baserom.gba", 0x637DD0, 0xEC    @ 0x637EBC - 0x637DD0

	.global Tsa_08637EBC
Tsa_08637EBC:  @ 0x08637EBC
	.incbin "baserom.gba", 0x637EBC, 0xD0    @ 0x637F8C - 0x637EBC

	.global Tsa_08637F8C
Tsa_08637F8C:  @ 0x08637F8C
	.incbin "baserom.gba", 0x637F8C, 0xBC    @ 0x638048 - 0x637F8C

	.global Tsa_08638048
Tsa_08638048:  @ 0x08638048
	.incbin "baserom.gba", 0x638048, 0xB4    @ 0x6380FC - 0x638048

	.global Tsa_086380FC
Tsa_086380FC:  @ 0x086380FC
	.incbin "baserom.gba", 0x6380FC, 0xB0    @ 0x6381AC - 0x6380FC

	.global Tsa_086381AC
Tsa_086381AC:  @ 0x086381AC
	.incbin "baserom.gba", 0x6381AC, 0xAC    @ 0x638258 - 0x6381AC

	.global Tsa_08638258
Tsa_08638258:  @ 0x08638258
	.incbin "baserom.gba", 0x638258, 0xA8    @ 0x638300 - 0x638258

	.global Tsa_08638300
Tsa_08638300:  @ 0x08638300
	.incbin "baserom.gba", 0x638300, 0xB4    @ 0x6383B4 - 0x638300

	.global Tsa_086383B4
Tsa_086383B4:  @ 0x086383B4
	.incbin "baserom.gba", 0x6383B4, 0xC0    @ 0x638474 - 0x6383B4

	.global Tsa_08638474
Tsa_08638474:  @ 0x08638474
	.incbin "baserom.gba", 0x638474, 0xCC    @ 0x638540 - 0x638474

	.global Tsa_08638540
Tsa_08638540:  @ 0x08638540
	.incbin "baserom.gba", 0x638540, 0xC8    @ 0x638608 - 0x638540

	.global Tsa_08638608
Tsa_08638608:  @ 0x08638608
	.incbin "baserom.gba", 0x638608, 0xC8    @ 0x6386D0 - 0x638608

	.global Tsa_086386D0
Tsa_086386D0:  @ 0x086386D0
	.incbin "baserom.gba", 0x6386D0, 0xD4    @ 0x6387A4 - 0x6386D0

	.global Tsa_086387A4
Tsa_086387A4:  @ 0x086387A4
	.incbin "baserom.gba", 0x6387A4, 0xDC    @ 0x638880 - 0x6387A4

	.global Tsa_08638880
Tsa_08638880:  @ 0x08638880
	.incbin "baserom.gba", 0x638880, 0xE8    @ 0x638968 - 0x638880

	.global Tsa_08638968
Tsa_08638968:  @ 0x08638968
	.incbin "baserom.gba", 0x638968, 0xF4    @ 0x638A5C - 0x638968

	.global Tsa_08638A5C
Tsa_08638A5C:  @ 0x08638A5C
	.incbin "baserom.gba", 0x638A5C, 0x108    @ 0x638B64 - 0x638A5C

	.global Tsa_08638B64
Tsa_08638B64:  @ 0x08638B64
	.incbin "baserom.gba", 0x638B64, 0x108    @ 0x638C6C - 0x638B64

	.global Tsa_08638C6C
Tsa_08638C6C:  @ 0x08638C6C
	.incbin "baserom.gba", 0x638C6C, 0x124    @ 0x638D90 - 0x638C6C

	.global Tsa_08638D90
Tsa_08638D90:  @ 0x08638D90
	.incbin "baserom.gba", 0x638D90, 0x120    @ 0x638EB0 - 0x638D90

	.global Tsa_08638EB0
Tsa_08638EB0:  @ 0x08638EB0
	.incbin "baserom.gba", 0x638EB0, 0x11C    @ 0x638FCC - 0x638EB0

	.global Tsa_08638FCC
Tsa_08638FCC:  @ 0x08638FCC
	.incbin "baserom.gba", 0x638FCC, 0x110    @ 0x6390DC - 0x638FCC

	.global Tsa_086390DC
Tsa_086390DC:  @ 0x086390DC
	.incbin "baserom.gba", 0x6390DC, 0x10C    @ 0x6391E8 - 0x6390DC

	.global Tsa_086391E8
Tsa_086391E8:  @ 0x086391E8
	.incbin "baserom.gba", 0x6391E8, 0x100    @ 0x6392E8 - 0x6391E8

	.global Tsa_086392E8
Tsa_086392E8:  @ 0x086392E8
	.incbin "baserom.gba", 0x6392E8, 0xF0    @ 0x6393D8 - 0x6392E8

	.global Tsa_086393D8
Tsa_086393D8:  @ 0x086393D8
	.incbin "baserom.gba", 0x6393D8, 0xDC    @ 0x6394B4 - 0x6393D8

	.global Tsa_086394B4
Tsa_086394B4:  @ 0x086394B4
	.incbin "baserom.gba", 0x6394B4, 0xCC    @ 0x639580 - 0x6394B4

	.global Tsa_08639580
Tsa_08639580:  @ 0x08639580
	.incbin "baserom.gba", 0x639580, 0xB8    @ 0x639638 - 0x639580

	.global Tsa_08639638
Tsa_08639638:  @ 0x08639638
	.incbin "baserom.gba", 0x639638, 0xAC    @ 0x6396E4 - 0x639638

	.global Img_086396E4
Img_086396E4:  @ 0x086396E4
	.incbin "baserom.gba", 0x6396E4, 0x5B4    @ 0x639C98 - 0x6396E4

	.global Img_08639C98
Img_08639C98:  @ 0x08639C98
	.incbin "baserom.gba", 0x639C98, 0x6C8    @ 0x63A360 - 0x639C98

	.global Img_0863A360
Img_0863A360:  @ 0x0863A360
	.incbin "baserom.gba", 0x63A360, 0x640    @ 0x63A9A0 - 0x63A360

	.global Img_0863A9A0
Img_0863A9A0:  @ 0x0863A9A0
	.incbin "baserom.gba", 0x63A9A0, 0x608    @ 0x63AFA8 - 0x63A9A0

	.global Img_0863AFA8
Img_0863AFA8:  @ 0x0863AFA8
	.incbin "baserom.gba", 0x63AFA8, 0x660    @ 0x63B608 - 0x63AFA8

	.global Img_0863B608
Img_0863B608:  @ 0x0863B608
	.incbin "baserom.gba", 0x63B608, 0x670    @ 0x63BC78 - 0x63B608

	.global Img_0863BC78
Img_0863BC78:  @ 0x0863BC78
	.incbin "baserom.gba", 0x63BC78, 0x63C    @ 0x63C2B4 - 0x63BC78

	.global Img_0863C2B4
Img_0863C2B4:  @ 0x0863C2B4
	.incbin "baserom.gba", 0x63C2B4, 0x648    @ 0x63C8FC - 0x63C2B4

	.global Img_0863C8FC
Img_0863C8FC:  @ 0x0863C8FC
	.incbin "baserom.gba", 0x63C8FC, 0x704    @ 0x63D000 - 0x63C8FC

	.global Img_0863D000
Img_0863D000:  @ 0x0863D000
	.incbin "baserom.gba", 0x63D000, 0x7B8    @ 0x63D7B8 - 0x63D000

	.global Img_0863D7B8
Img_0863D7B8:  @ 0x0863D7B8
	.incbin "baserom.gba", 0x63D7B8, 0x7F4    @ 0x63DFAC - 0x63D7B8

	.global Img_0863DFAC
Img_0863DFAC:  @ 0x0863DFAC
	.incbin "baserom.gba", 0x63DFAC, 0x7D8    @ 0x63E784 - 0x63DFAC

	.global Img_0863E784
Img_0863E784:  @ 0x0863E784
	.incbin "baserom.gba", 0x63E784, 0x81C    @ 0x63EFA0 - 0x63E784

	.global Img_0863EFA0
Img_0863EFA0:  @ 0x0863EFA0
	.incbin "baserom.gba", 0x63EFA0, 0x780    @ 0x63F720 - 0x63EFA0

	.global Img_0863F720
Img_0863F720:  @ 0x0863F720
	.incbin "baserom.gba", 0x63F720, 0x794    @ 0x63FEB4 - 0x63F720

	.global Img_0863FEB4
Img_0863FEB4:  @ 0x0863FEB4
	.incbin "baserom.gba", 0x63FEB4, 0x734    @ 0x6405E8 - 0x63FEB4

	.global Img_086405E8
Img_086405E8:  @ 0x086405E8
	.incbin "baserom.gba", 0x6405E8, 0xAAC    @ 0x641094 - 0x6405E8

	.global Img_08641094
Img_08641094:  @ 0x08641094
	.incbin "baserom.gba", 0x641094, 0x560    @ 0x6415F4 - 0x641094

	.global Img_086415F4
Img_086415F4:  @ 0x086415F4
	.incbin "baserom.gba", 0x6415F4, 0x770    @ 0x641D64 - 0x6415F4

	.global Pal_DivineBg3
Pal_DivineBg3:  @ 0x08641D64
	.incbin "baserom.gba", 0x641D64, 0x20

	.global Pal_DivineBg
Pal_DivineBg:  @ 0x08641D84
	.incbin "baserom.gba", 0x641D84, 0x20    @ 0x641DA4 - 0x641D84

	.global Tsa_08641DA4
Tsa_08641DA4:  @ 0x08641DA4
	.incbin "baserom.gba", 0x641DA4, 0x194    @ 0x641F38 - 0x641DA4

	.global Tsa_08641F38
Tsa_08641F38:  @ 0x08641F38
	.incbin "baserom.gba", 0x641F38, 0x204    @ 0x64213C - 0x641F38

	.global Tsa_0864213C
Tsa_0864213C:  @ 0x0864213C
	.incbin "baserom.gba", 0x64213C, 0x2D0    @ 0x64240C - 0x64213C

	.global Tsa_0864240C
Tsa_0864240C:  @ 0x0864240C
	.incbin "baserom.gba", 0x64240C, 0x2D0    @ 0x6426DC - 0x64240C

	.global Tsa_086426DC
Tsa_086426DC:  @ 0x086426DC
	.incbin "baserom.gba", 0x6426DC, 0x2B0    @ 0x64298C - 0x6426DC

	.global Tsa_0864298C
Tsa_0864298C:  @ 0x0864298C
	.incbin "baserom.gba", 0x64298C, 0x2B4    @ 0x642C40 - 0x64298C

	.global Tsa_08642C40
Tsa_08642C40:  @ 0x08642C40
	.incbin "baserom.gba", 0x642C40, 0x28C    @ 0x642ECC - 0x642C40

	.global Tsa_08642ECC
Tsa_08642ECC:  @ 0x08642ECC
	.incbin "baserom.gba", 0x642ECC, 0x284    @ 0x643150 - 0x642ECC

	.global Tsa_08643150
Tsa_08643150:  @ 0x08643150
	.incbin "baserom.gba", 0x643150, 0x274    @ 0x6433C4 - 0x643150

	.global Tsa_086433C4
Tsa_086433C4:  @ 0x086433C4
	.incbin "baserom.gba", 0x6433C4, 0x294    @ 0x643658 - 0x6433C4

	.global Tsa_08643658
Tsa_08643658:  @ 0x08643658
	.incbin "baserom.gba", 0x643658, 0x288    @ 0x6438E0 - 0x643658

	.global Tsa_086438E0
Tsa_086438E0:  @ 0x086438E0
	.incbin "baserom.gba", 0x6438E0, 0x29C    @ 0x643B7C - 0x6438E0

	.global Tsa_08643B7C
Tsa_08643B7C:  @ 0x08643B7C
	.incbin "baserom.gba", 0x643B7C, 0x288    @ 0x643E04 - 0x643B7C

	.global Tsa_08643E04
Tsa_08643E04:  @ 0x08643E04
	.incbin "baserom.gba", 0x643E04, 0x27C    @ 0x644080 - 0x643E04

	.global Tsa_08644080
Tsa_08644080:  @ 0x08644080
	.incbin "baserom.gba", 0x644080, 0x230    @ 0x6442B0 - 0x644080

	.global Tsa_086442B0
Tsa_086442B0:  @ 0x086442B0
	.incbin "baserom.gba", 0x6442B0, 0x250    @ 0x644500 - 0x6442B0

	.global Tsa_08644500
Tsa_08644500:  @ 0x08644500
	.incbin "baserom.gba", 0x644500, 0x230    @ 0x644730 - 0x644500

	.global Tsa_08644730
Tsa_08644730:  @ 0x08644730
	.incbin "baserom.gba", 0x644730, 0x1F8    @ 0x644928 - 0x644730

	.global Tsa_08644928
Tsa_08644928:  @ 0x08644928
	.incbin "baserom.gba", 0x644928, 0x1E4    @ 0x644B0C - 0x644928

	.global Tsa_08644B0C
Tsa_08644B0C:  @ 0x08644B0C
	.incbin "baserom.gba", 0x644B0C, 0x19C    @ 0x644CA8 - 0x644B0C

	.global Tsa_08644CA8
Tsa_08644CA8:  @ 0x08644CA8
	.incbin "baserom.gba", 0x644CA8, 0x128    @ 0x644DD0 - 0x644CA8

	.global Tsa_08644DD0
Tsa_08644DD0:  @ 0x08644DD0
	.incbin "baserom.gba", 0x644DD0, 0xA0    @ 0x644E70 - 0x644DD0

	.global Tsa_08644E70
Tsa_08644E70:  @ 0x08644E70
	.incbin "baserom.gba", 0x644E70, 0xA8    @ 0x644F18 - 0x644E70

	.global Tsa_08644F18
Tsa_08644F18:  @ 0x08644F18
	.incbin "baserom.gba", 0x644F18, 0xA8    @ 0x644FC0 - 0x644F18

	.global Tsa_08644FC0
Tsa_08644FC0:  @ 0x08644FC0
	.incbin "baserom.gba", 0x644FC0, 0xB0    @ 0x645070 - 0x644FC0

	.global Tsa_08645070
Tsa_08645070:  @ 0x08645070
	.incbin "baserom.gba", 0x645070, 0xB8    @ 0x645128 - 0x645070

	.global Tsa_08645128
Tsa_08645128:  @ 0x08645128
	.incbin "baserom.gba", 0x645128, 0xCC    @ 0x6451F4 - 0x645128

	.global Tsa_086451F4
Tsa_086451F4:  @ 0x086451F4
	.incbin "baserom.gba", 0x6451F4, 0xCC    @ 0x6452C0 - 0x6451F4

	.global Tsa_086452C0
Tsa_086452C0:  @ 0x086452C0
	.incbin "baserom.gba", 0x6452C0, 0xD4    @ 0x645394 - 0x6452C0

	.global Tsa_08645394
Tsa_08645394:  @ 0x08645394
	.incbin "baserom.gba", 0x645394, 0xD8    @ 0x64546C - 0x645394

	.global Tsa_0864546C
Tsa_0864546C:  @ 0x0864546C
	.incbin "baserom.gba", 0x64546C, 0xDC    @ 0x645548 - 0x64546C

	.global Tsa_08645548
Tsa_08645548:  @ 0x08645548
	.incbin "baserom.gba", 0x645548, 0xDC    @ 0x645624 - 0x645548

	.global Tsa_08645624
Tsa_08645624:  @ 0x08645624
	.incbin "baserom.gba", 0x645624, 0xE4    @ 0x645708 - 0x645624

	.global Tsa_08645708
Tsa_08645708:  @ 0x08645708
	.incbin "baserom.gba", 0x645708, 0xB4    @ 0x6457BC - 0x645708

	.global Tsa_086457BC
Tsa_086457BC:  @ 0x086457BC
	.incbin "baserom.gba", 0x6457BC, 0x9C    @ 0x645858 - 0x6457BC

	.global Tsa_08645858
Tsa_08645858:  @ 0x08645858
	.incbin "baserom.gba", 0x645858, 0x9C    @ 0x6458F4 - 0x645858

	.global Tsa_086458F4
Tsa_086458F4:  @ 0x086458F4
	.incbin "baserom.gba", 0x6458F4, 0x9C    @ 0x645990 - 0x6458F4

	.global Tsa_08645990
Tsa_08645990:  @ 0x08645990
	.incbin "baserom.gba", 0x645990, 0x9C    @ 0x645A2C - 0x645990

	.global Tsa_08645A2C
Tsa_08645A2C:  @ 0x08645A2C
	.incbin "baserom.gba", 0x645A2C, 0x9C    @ 0x645AC8 - 0x645A2C

	.global Tsa_08645AC8
Tsa_08645AC8:  @ 0x08645AC8
	.incbin "baserom.gba", 0x645AC8, 0x9C    @ 0x645B64 - 0x645AC8

	.global Tsa_08645B64
Tsa_08645B64:  @ 0x08645B64
	.incbin "baserom.gba", 0x645B64, 0x9C    @ 0x645C00 - 0x645B64

	.global Tsa_08645C00
Tsa_08645C00:  @ 0x08645C00
	.incbin "baserom.gba", 0x645C00, 0x9C    @ 0x645C9C - 0x645C00

	.global Tsa_08645C9C
Tsa_08645C9C:  @ 0x08645C9C
	.incbin "baserom.gba", 0x645C9C, 0x9C    @ 0x645D38 - 0x645C9C

	.global Tsa_08645D38
Tsa_08645D38:  @ 0x08645D38
	.incbin "baserom.gba", 0x645D38, 0xA0    @ 0x645DD8 - 0x645D38

	.global Img_DivineSprites
Img_DivineSprites:  @ 0x08645DD8
	.incbin "baserom.gba", 0x645DD8, 0x16C

	.global Pal_DivineSprites
Pal_DivineSprites:  @ 0x08645F44
	.incbin "baserom.gba", 0x645F44, 0x5CC

	.global gUnknown_08646510
gUnknown_08646510:  @ 0x08646510
	.incbin "baserom.gba", 0x646510, 0x40    @ 0x646550 - 0x646510

	.global Img_EclipseBg_A
Img_EclipseBg_A:  @ 0x08646550
	.incbin "baserom.gba", 0x646550, 0x348    @ 0x646898 - 0x646550

	.global Img_EclipseBg_B
Img_EclipseBg_B:  @ 0x08646898
	.incbin "baserom.gba", 0x646898, 0x8D4    @ 0x64716C - 0x646898

	.global Img_EclipseBg_C
Img_EclipseBg_C:  @ 0x0864716C
	.incbin "baserom.gba", 0x64716C, 0x103C    @ 0x6481A8 - 0x64716C

	.global Img_EclipseBg_D
Img_EclipseBg_D:  @ 0x086481A8
	.incbin "baserom.gba", 0x6481A8, 0xC6C    @ 0x648E14 - 0x6481A8

	.global Img_EclipseBg_E
Img_EclipseBg_E:  @ 0x08648E14
	.incbin "baserom.gba", 0x648E14, 0xC1C    @ 0x649A30 - 0x648E14

	.global Img_EclipseBg_F
Img_EclipseBg_F:  @ 0x08649A30
	.incbin "baserom.gba", 0x649A30, 0xB58    @ 0x64A588 - 0x649A30

	.global Img_EclipseBg_G
Img_EclipseBg_G:  @ 0x0864A588
	.incbin "baserom.gba", 0x64A588, 0xB54    @ 0x64B0DC - 0x64A588

	.global Img_EclipseBg_H
Img_EclipseBg_H:  @ 0x0864B0DC
	.incbin "baserom.gba", 0x64B0DC, 0xAB0    @ 0x64BB8C - 0x64B0DC

	.global Img_EclipseBg_I
Img_EclipseBg_I:  @ 0x0864BB8C
	.incbin "baserom.gba", 0x64BB8C, 0xA28    @ 0x64C5B4 - 0x64BB8C

	.global Img_EclipseBg_J
Img_EclipseBg_J:  @ 0x0864C5B4
	.incbin "baserom.gba", 0x64C5B4, 0x8FC    @ 0x64CEB0 - 0x64C5B4

	.global Img_EclipseBg_K
Img_EclipseBg_K:  @ 0x0864CEB0
	.incbin "baserom.gba", 0x64CEB0, 0x8CC    @ 0x64D77C - 0x64CEB0

	.global Img_EclipseBg_L
Img_EclipseBg_L:  @ 0x0864D77C
	.incbin "baserom.gba", 0x64D77C, 0x880    @ 0x64DFFC - 0x64D77C

	.global Img_EclipseBg_M
Img_EclipseBg_M:  @ 0x0864DFFC
	.incbin "baserom.gba", 0x64DFFC, 0x794    @ 0x64E790 - 0x64DFFC

	.global Pal_EclipseBg_B
Pal_EclipseBg_B:  @ 0x0864E790
	.incbin "baserom.gba", 0x64E790, 0x20

	.global Pal_EclipseBg_C
Pal_EclipseBg_C:  @ 0x0864E7B0
	.incbin "baserom.gba", 0x64E7B0, 0x20    @ 0x64E7D0 - 0x64E7B0

	.global Tsa_EclipseBg_A
Tsa_EclipseBg_A:  @ 0x0864E7D0
	.incbin "baserom.gba", 0x64E7D0, 0x1A4    @ 0x64E974 - 0x64E7D0

	.global Tsa_EclipseBg_B
Tsa_EclipseBg_B:  @ 0x0864E974
	.incbin "baserom.gba", 0x64E974, 0xA0    @ 0x64EA14 - 0x64E974

	.global Tsa_EclipseBg_C
Tsa_EclipseBg_C:  @ 0x0864EA14
	.incbin "baserom.gba", 0x64EA14, 0xA0    @ 0x64EAB4 - 0x64EA14

	.global Tsa_EclipseBg_D
Tsa_EclipseBg_D:  @ 0x0864EAB4
	.incbin "baserom.gba", 0x64EAB4, 0xB4    @ 0x64EB68 - 0x64EAB4

	.global Tsa_EclipseBg_E
Tsa_EclipseBg_E:  @ 0x0864EB68
	.incbin "baserom.gba", 0x64EB68, 0xB4    @ 0x64EC1C - 0x64EB68

	.global Tsa_EclipseBg_F
Tsa_EclipseBg_F:  @ 0x0864EC1C
	.incbin "baserom.gba", 0x64EC1C, 0xB4    @ 0x64ECD0 - 0x64EC1C

	.global Tsa_EclipseBg_G
Tsa_EclipseBg_G:  @ 0x0864ECD0
	.incbin "baserom.gba", 0x64ECD0, 0xDC    @ 0x64EDAC - 0x64ECD0

	.global Tsa_EclipseBg_H
Tsa_EclipseBg_H:  @ 0x0864EDAC
	.incbin "baserom.gba", 0x64EDAC, 0xDC    @ 0x64EE88 - 0x64EDAC

	.global Tsa_EclipseBg_I
Tsa_EclipseBg_I:  @ 0x0864EE88
	.incbin "baserom.gba", 0x64EE88, 0x114    @ 0x64EF9C - 0x64EE88

	.global Tsa_EclipseBg_J
Tsa_EclipseBg_J:  @ 0x0864EF9C
	.incbin "baserom.gba", 0x64EF9C, 0x114    @ 0x64F0B0 - 0x64EF9C

	.global Tsa_EclipseBg_K
Tsa_EclipseBg_K:  @ 0x0864F0B0
	.incbin "baserom.gba", 0x64F0B0, 0x114    @ 0x64F1C4 - 0x64F0B0

	.global Tsa_EclipseBg_L
Tsa_EclipseBg_L:  @ 0x0864F1C4
	.incbin "baserom.gba", 0x64F1C4, 0x114    @ 0x64F2D8 - 0x64F1C4

	.global Tsa_EclipseBg_M
Tsa_EclipseBg_M:  @ 0x0864F2D8
	.incbin "baserom.gba", 0x64F2D8, 0x114    @ 0x64F3EC - 0x64F2D8

	.global Tsa_EclipseBg_N
Tsa_EclipseBg_N:  @ 0x0864F3EC
	.incbin "baserom.gba", 0x64F3EC, 0x10C    @ 0x64F4F8 - 0x64F3EC

	.global Tsa_EclipseBg_O
Tsa_EclipseBg_O:  @ 0x0864F4F8
	.incbin "baserom.gba", 0x64F4F8, 0xD8    @ 0x64F5D0 - 0x64F4F8

	.global Tsa_EclipseBg_P
Tsa_EclipseBg_P:  @ 0x0864F5D0
	.incbin "baserom.gba", 0x64F5D0, 0x110    @ 0x64F6E0 - 0x64F5D0

	.global Tsa_EclipseBg_Q
Tsa_EclipseBg_Q:  @ 0x0864F6E0
	.incbin "baserom.gba", 0x64F6E0, 0x168    @ 0x64F848 - 0x64F6E0

	.global Tsa_EclipseBg_R
Tsa_EclipseBg_R:  @ 0x0864F848
	.incbin "baserom.gba", 0x64F848, 0x1C4    @ 0x64FA0C - 0x64F848

	.global Tsa_EclipseBg_S
Tsa_EclipseBg_S:  @ 0x0864FA0C
	.incbin "baserom.gba", 0x64FA0C, 0x1C4    @ 0x64FBD0 - 0x64FA0C

	.global Tsa_EclipseBg_T
Tsa_EclipseBg_T:  @ 0x0864FBD0
	.incbin "baserom.gba", 0x64FBD0, 0x1BC    @ 0x64FD8C - 0x64FBD0

	.global Tsa_EclipseBg_U
Tsa_EclipseBg_U:  @ 0x0864FD8C
	.incbin "baserom.gba", 0x64FD8C, 0x1B0    @ 0x64FF3C - 0x64FD8C

	.global Tsa_EclipseBg_V
Tsa_EclipseBg_V:  @ 0x0864FF3C
	.incbin "baserom.gba", 0x64FF3C, 0x1B0    @ 0x6500EC - 0x64FF3C

	.global Tsa_EclipseBg_W
Tsa_EclipseBg_W:  @ 0x086500EC
	.incbin "baserom.gba", 0x6500EC, 0x1B0    @ 0x65029C - 0x6500EC

	.global Tsa_EclipseBg_X
Tsa_EclipseBg_X:  @ 0x0865029C
	.incbin "baserom.gba", 0x65029C, 0x1A4    @ 0x650440 - 0x65029C

	.global Tsa_EclipseBg_Y
Tsa_EclipseBg_Y:  @ 0x08650440
	.incbin "baserom.gba", 0x650440, 0x198    @ 0x6505D8 - 0x650440

	.global Tsa_EclipseBg_Z
Tsa_EclipseBg_Z:  @ 0x086505D8
	.incbin "baserom.gba", 0x6505D8, 0x190    @ 0x650768 - 0x6505D8

	.global Tsa_EclipseBg_AA
Tsa_EclipseBg_AA:  @ 0x08650768
	.incbin "baserom.gba", 0x650768, 0x174    @ 0x6508DC - 0x650768

	.global Img_EclipseSprites_Swirl
Img_EclipseSprites_Swirl:  @ 0x086508DC
	.incbin "baserom.gba", 0x6508DC, 0x4CC

	.global Img_EclipseSprites_08650DA8
Img_EclipseSprites_08650DA8:  @ 0x08650DA8
	.incbin "baserom.gba", 0x650DA8, 0x498

	.global Img_EclipseSprites_08651240
Img_EclipseSprites_08651240:  @ 0x08651240
	.incbin "baserom.gba", 0x651240, 0x3FC

	.global Pal_EclipseSprites
Pal_EclipseSprites:  @ 0x0865163C
	.incbin "baserom.gba", 0x65163C, 0x1A0

	.global gUnknown_086517DC
gUnknown_086517DC:  @ 0x086517DC
	.incbin "baserom.gba", 0x6517DC, 0x308

	.global gUnknown_08651AE4
gUnknown_08651AE4:  @ 0x08651AE4
	.incbin "baserom.gba", 0x651AE4, 0x2FC

	.global gUnknown_08651DE0
gUnknown_08651DE0:  @ 0x08651DE0
	.incbin "baserom.gba", 0x651DE0, 0x14

	.global Img_FenrirBg_Sigils
Img_FenrirBg_Sigils:  @ 0x08651DF4
	.incbin "baserom.gba", 0x651DF4, 0x760

	.global gUnknown_08652554
gUnknown_08652554:  @ 0x08652554
	.incbin "baserom.gba", 0x652554, 0x1E0

	.global Tsa_FenrirBg_Sigils
Tsa_FenrirBg_Sigils:  @ 0x08652734
	.incbin "baserom.gba", 0x652734, 0x214    @ 0x652948 - 0x652734

	.global Img_08652948
Img_08652948:  @ 0x08652948
	.incbin "baserom.gba", 0x652948, 0x1218    @ 0x653B60 - 0x652948

	.global Img_08653B60
Img_08653B60:  @ 0x08653B60
	.incbin "baserom.gba", 0x653B60, 0x1350    @ 0x654EB0 - 0x653B60

	.global Img_08654EB0
Img_08654EB0:  @ 0x08654EB0
	.incbin "baserom.gba", 0x654EB0, 0xE7C    @ 0x655D2C - 0x654EB0

	.global Img_08655D2C
Img_08655D2C:  @ 0x08655D2C
	.incbin "baserom.gba", 0x655D2C, 0xBC8    @ 0x6568F4 - 0x655D2C

	.global Pal_FenrirBg
Pal_FenrirBg:  @ 0x086568F4
	.incbin "baserom.gba", 0x6568F4, 0x20

	.global gUnknown_08656914
gUnknown_08656914:  @ 0x08656914
	.incbin "baserom.gba", 0x656914, 0x20    @ 0x656934 - 0x656914

	.global Tsa_08656934
Tsa_08656934:  @ 0x08656934
	.incbin "baserom.gba", 0x656934, 0xBC    @ 0x6569F0 - 0x656934

	.global Tsa_086569F0
Tsa_086569F0:  @ 0x086569F0
	.incbin "baserom.gba", 0x6569F0, 0xBC    @ 0x656AAC - 0x6569F0

	.global Tsa_08656AAC
Tsa_08656AAC:  @ 0x08656AAC
	.incbin "baserom.gba", 0x656AAC, 0xBC    @ 0x656B68 - 0x656AAC

	.global Tsa_08656B68
Tsa_08656B68:  @ 0x08656B68
	.incbin "baserom.gba", 0x656B68, 0xBC    @ 0x656C24 - 0x656B68

	.global Tsa_08656C24
Tsa_08656C24:  @ 0x08656C24
	.incbin "baserom.gba", 0x656C24, 0xBC    @ 0x656CE0 - 0x656C24

	.global Tsa_08656CE0
Tsa_08656CE0:  @ 0x08656CE0
	.incbin "baserom.gba", 0x656CE0, 0xBC    @ 0x656D9C - 0x656CE0

	.global Tsa_08656D9C
Tsa_08656D9C:  @ 0x08656D9C
	.incbin "baserom.gba", 0x656D9C, 0x104    @ 0x656EA0 - 0x656D9C

	.global Tsa_08656EA0
Tsa_08656EA0:  @ 0x08656EA0
	.incbin "baserom.gba", 0x656EA0, 0x104    @ 0x656FA4 - 0x656EA0

	.global Tsa_08656FA4
Tsa_08656FA4:  @ 0x08656FA4
	.incbin "baserom.gba", 0x656FA4, 0x104    @ 0x6570A8 - 0x656FA4

	.global Tsa_086570A8
Tsa_086570A8:  @ 0x086570A8
	.incbin "baserom.gba", 0x6570A8, 0x104    @ 0x6571AC - 0x6570A8

	.global Tsa_086571AC
Tsa_086571AC:  @ 0x086571AC
	.incbin "baserom.gba", 0x6571AC, 0x104    @ 0x6572B0 - 0x6571AC

	.global Tsa_086572B0
Tsa_086572B0:  @ 0x086572B0
	.incbin "baserom.gba", 0x6572B0, 0x104    @ 0x6573B4 - 0x6572B0

	.global Tsa_086573B4
Tsa_086573B4:  @ 0x086573B4
	.incbin "baserom.gba", 0x6573B4, 0x140    @ 0x6574F4 - 0x6573B4

	.global Tsa_086574F4
Tsa_086574F4:  @ 0x086574F4
	.incbin "baserom.gba", 0x6574F4, 0x144    @ 0x657638 - 0x6574F4

	.global Tsa_08657638
Tsa_08657638:  @ 0x08657638
	.incbin "baserom.gba", 0x657638, 0x144    @ 0x65777C - 0x657638

	.global Tsa_0865777C
Tsa_0865777C:  @ 0x0865777C
	.incbin "baserom.gba", 0x65777C, 0x144    @ 0x6578C0 - 0x65777C

	.global Tsa_086578C0
Tsa_086578C0:  @ 0x086578C0
	.incbin "baserom.gba", 0x6578C0, 0x144    @ 0x657A04 - 0x6578C0

	.global Tsa_08657A04
Tsa_08657A04:  @ 0x08657A04
	.incbin "baserom.gba", 0x657A04, 0x144    @ 0x657B48 - 0x657A04

	.global Tsa_08657B48
Tsa_08657B48:  @ 0x08657B48
	.incbin "baserom.gba", 0x657B48, 0x180    @ 0x657CC8 - 0x657B48

	.global Tsa_08657CC8
Tsa_08657CC8:  @ 0x08657CC8
	.incbin "baserom.gba", 0x657CC8, 0x184    @ 0x657E4C - 0x657CC8

	.global Tsa_08657E4C
Tsa_08657E4C:  @ 0x08657E4C
	.incbin "baserom.gba", 0x657E4C, 0x184    @ 0x657FD0 - 0x657E4C

	.global Tsa_08657FD0
Tsa_08657FD0:  @ 0x08657FD0
	.incbin "baserom.gba", 0x657FD0, 0x160    @ 0x658130 - 0x657FD0

	.global Tsa_08658130
Tsa_08658130:  @ 0x08658130
	.incbin "baserom.gba", 0x658130, 0x160    @ 0x658290 - 0x658130

	.global Tsa_08658290
Tsa_08658290:  @ 0x08658290
	.incbin "baserom.gba", 0x658290, 0x160    @ 0x6583F0 - 0x658290

	.global Tsa_086583F0
Tsa_086583F0:  @ 0x086583F0
	.incbin "baserom.gba", 0x6583F0, 0x1A4    @ 0x658594 - 0x6583F0

	.global Tsa_08658594
Tsa_08658594:  @ 0x08658594
	.incbin "baserom.gba", 0x658594, 0x1A4    @ 0x658738 - 0x658594

	.global Tsa_08658738
Tsa_08658738:  @ 0x08658738
	.incbin "baserom.gba", 0x658738, 0x1A4    @ 0x6588DC - 0x658738

	.global Tsa_086588DC
Tsa_086588DC:  @ 0x086588DC
	.incbin "baserom.gba", 0x6588DC, 0x170    @ 0x658A4C - 0x6588DC

	.global Tsa_08658A4C
Tsa_08658A4C:  @ 0x08658A4C
	.incbin "baserom.gba", 0x658A4C, 0x170    @ 0x658BBC - 0x658A4C

	.global Tsa_08658BBC
Tsa_08658BBC:  @ 0x08658BBC
	.incbin "baserom.gba", 0x658BBC, 0x170    @ 0x658D2C - 0x658BBC

	.global Tsa_08658D2C
Tsa_08658D2C:  @ 0x08658D2C
	.incbin "baserom.gba", 0x658D2C, 0x1A4    @ 0x658ED0 - 0x658D2C

	.global Tsa_08658ED0
Tsa_08658ED0:  @ 0x08658ED0
	.incbin "baserom.gba", 0x658ED0, 0x1A4    @ 0x659074 - 0x658ED0

	.global Tsa_08659074
Tsa_08659074:  @ 0x08659074
	.incbin "baserom.gba", 0x659074, 0x1A4    @ 0x659218 - 0x659074

	.global Tsa_08659218
Tsa_08659218:  @ 0x08659218
	.incbin "baserom.gba", 0x659218, 0x174    @ 0x65938C - 0x659218

	.global Tsa_0865938C
Tsa_0865938C:  @ 0x0865938C
	.incbin "baserom.gba", 0x65938C, 0x174    @ 0x659500 - 0x65938C

	.global Tsa_08659500
Tsa_08659500:  @ 0x08659500
	.incbin "baserom.gba", 0x659500, 0x174    @ 0x659674 - 0x659500

	.global Tsa_08659674
Tsa_08659674:  @ 0x08659674
	.incbin "baserom.gba", 0x659674, 0x1B0    @ 0x659824 - 0x659674

	.global Tsa_08659824
Tsa_08659824:  @ 0x08659824
	.incbin "baserom.gba", 0x659824, 0x1B0    @ 0x6599D4 - 0x659824

	.global Tsa_086599D4
Tsa_086599D4:  @ 0x086599D4
	.incbin "baserom.gba", 0x6599D4, 0x1B0    @ 0x659B84 - 0x6599D4

	.global Tsa_08659B84
Tsa_08659B84:  @ 0x08659B84
	.incbin "baserom.gba", 0x659B84, 0x174    @ 0x659CF8 - 0x659B84

	.global Tsa_08659CF8
Tsa_08659CF8:  @ 0x08659CF8
	.incbin "baserom.gba", 0x659CF8, 0x174    @ 0x659E6C - 0x659CF8

	.global Tsa_08659E6C
Tsa_08659E6C:  @ 0x08659E6C
	.incbin "baserom.gba", 0x659E6C, 0x174    @ 0x659FE0 - 0x659E6C

	.global Tsa_08659FE0
Tsa_08659FE0:  @ 0x08659FE0
	.incbin "baserom.gba", 0x659FE0, 0x1B4    @ 0x65A194 - 0x659FE0

	.global Tsa_0865A194
Tsa_0865A194:  @ 0x0865A194
	.incbin "baserom.gba", 0x65A194, 0x1B4    @ 0x65A348 - 0x65A194

	.global Tsa_0865A348
Tsa_0865A348:  @ 0x0865A348
	.incbin "baserom.gba", 0x65A348, 0x1B4    @ 0x65A4FC - 0x65A348

	.global Tsa_0865A4FC
Tsa_0865A4FC:  @ 0x0865A4FC
	.incbin "baserom.gba", 0x65A4FC, 0x178    @ 0x65A674 - 0x65A4FC

	.global Tsa_0865A674
Tsa_0865A674:  @ 0x0865A674
	.incbin "baserom.gba", 0x65A674, 0x178    @ 0x65A7EC - 0x65A674

	.global Tsa_0865A7EC
Tsa_0865A7EC:  @ 0x0865A7EC
	.incbin "baserom.gba", 0x65A7EC, 0x178    @ 0x65A964 - 0x65A7EC

	.global Tsa_0865A964
Tsa_0865A964:  @ 0x0865A964
	.incbin "baserom.gba", 0x65A964, 0x258    @ 0x65ABBC - 0x65A964

	.global Tsa_0865ABBC
Tsa_0865ABBC:  @ 0x0865ABBC
	.incbin "baserom.gba", 0x65ABBC, 0x208    @ 0x65ADC4 - 0x65ABBC

	.global Tsa_0865ADC4
Tsa_0865ADC4:  @ 0x0865ADC4
	.incbin "baserom.gba", 0x65ADC4, 0x178    @ 0x65AF3C - 0x65ADC4

	.global Img_FenrirSprites
Img_FenrirSprites:  @ 0x0865AF3C
	.incbin "baserom.gba", 0x65AF3C, 0xB7C

	.global Pal_FenrirSprites_A
Pal_FenrirSprites_A:  @ 0x0865BAB8
	.incbin "baserom.gba", 0x65BAB8, 0x20

	.global Pal_FenrirSprites_B
Pal_FenrirSprites_B:  @ 0x0865BAD8
	.incbin "baserom.gba", 0x65BAD8, 0xCA4

	.global gUnknown_0865C77C
gUnknown_0865C77C:  @ 0x0865C77C
@ Replacing .incbin "baserom.gba", 0x65C77C, 0x2C
    .4byte Pal_FenrirSprites_B + 0x736
    .4byte Pal_FenrirSprites_B + 0x706
    .4byte Pal_FenrirSprites_B + 0x76
    .4byte Pal_FenrirSprites_B + 0x46
    .4byte Pal_FenrirSprites_B + 0x22
    .4byte Pal_FenrirSprites_B + 0x46
    .4byte Pal_FenrirSprites_B + 0x76
    .4byte Pal_FenrirSprites_B + 0x706
    .4byte Pal_FenrirSprites_B + 0x736
    .4byte 0x2865c766
    .4byte 0x80000000

	.global gUnknown_0865C7A8
gUnknown_0865C7A8:  @ 0x0865C7A8
@ Replacing .incbin "baserom.gba", 0x65C7A8, 0x2C
    .4byte Pal_FenrirSprites_B + 0x78a
    .4byte Pal_FenrirSprites_B + 0x766
    .4byte Pal_FenrirSprites_B + 0xe2
    .4byte Pal_FenrirSprites_B + 0xbe
    .4byte Pal_FenrirSprites_B + 0xa6
    .4byte Pal_FenrirSprites_B + 0xbe
    .4byte Pal_FenrirSprites_B + 0xe2
    .4byte Pal_FenrirSprites_B + 0x766
    .4byte Pal_FenrirSprites_B + 0x78a
    .4byte 0x2865c766
    .4byte 0x80000000

	.global gUnknown_0865C7D4
gUnknown_0865C7D4:  @ 0x0865C7D4
	.incbin "baserom.gba", 0x65C7D4, 0xEC    @ 0x65C8C0 - 0x65C7D4

	.global Img_0865C8C0
Img_0865C8C0:  @ 0x0865C8C0
	.incbin "baserom.gba", 0x65C8C0, 0x55C    @ 0x65CE1C - 0x65C8C0

	.global Img_0865CE1C
Img_0865CE1C:  @ 0x0865CE1C
	.incbin "baserom.gba", 0x65CE1C, 0x67C    @ 0x65D498 - 0x65CE1C

	.global Img_0865D498
Img_0865D498:  @ 0x0865D498
	.incbin "baserom.gba", 0x65D498, 0x64C    @ 0x65DAE4 - 0x65D498

	.global Img_0865DAE4
Img_0865DAE4:  @ 0x0865DAE4
	.incbin "baserom.gba", 0x65DAE4, 0x7B4    @ 0x65E298 - 0x65DAE4

	.global Img_0865E298
Img_0865E298:  @ 0x0865E298
	.incbin "baserom.gba", 0x65E298, 0x708    @ 0x65E9A0 - 0x65E298

	.global Img_0865E9A0
Img_0865E9A0:  @ 0x0865E9A0
	.incbin "baserom.gba", 0x65E9A0, 0x51C    @ 0x65EEBC - 0x65E9A0

	.global Img_0865EEBC
Img_0865EEBC:  @ 0x0865EEBC
	.incbin "baserom.gba", 0x65EEBC, 0x900    @ 0x65F7BC - 0x65EEBC

	.global Img_0865F7BC
Img_0865F7BC:  @ 0x0865F7BC
	.incbin "baserom.gba", 0x65F7BC, 0x9B4    @ 0x660170 - 0x65F7BC

	.global Img_08660170
Img_08660170:  @ 0x08660170
	.incbin "baserom.gba", 0x660170, 0x974    @ 0x660AE4 - 0x660170

	.global Img_08660AE4
Img_08660AE4:  @ 0x08660AE4
	.incbin "baserom.gba", 0x660AE4, 0x9D4    @ 0x6614B8 - 0x660AE4

	.global Img_086614B8
Img_086614B8:  @ 0x086614B8
	.incbin "baserom.gba", 0x6614B8, 0x1004    @ 0x6624BC - 0x6614B8

	.global Img_086624BC
Img_086624BC:  @ 0x086624BC
	.incbin "baserom.gba", 0x6624BC, 0xE50    @ 0x66330C - 0x6624BC

	.global Img_0866330C
Img_0866330C:  @ 0x0866330C
	.incbin "baserom.gba", 0x66330C, 0xAE4    @ 0x663DF0 - 0x66330C

	.global Img_08663DF0
Img_08663DF0:  @ 0x08663DF0
	.incbin "baserom.gba", 0x663DF0, 0xBA8    @ 0x664998 - 0x663DF0

	.global Img_08664998
Img_08664998:  @ 0x08664998
	.incbin "baserom.gba", 0x664998, 0xB9C    @ 0x665534 - 0x664998

	.global Img_08665534
Img_08665534:  @ 0x08665534
	.incbin "baserom.gba", 0x665534, 0xAC0    @ 0x665FF4 - 0x665534

	.global Img_08665FF4
Img_08665FF4:  @ 0x08665FF4
	.incbin "baserom.gba", 0x665FF4, 0xA78    @ 0x666A6C - 0x665FF4

	.global Img_08666A6C
Img_08666A6C:  @ 0x08666A6C
	.incbin "baserom.gba", 0x666A6C, 0x1304    @ 0x667D70 - 0x666A6C

	.global Pal_08667D70
Pal_08667D70:  @ 0x08667D70
	.incbin "baserom.gba", 0x667D70, 0x20    @ 0x667D90 - 0x667D70

	.global Pal_08667D90
Pal_08667D90:  @ 0x08667D90
	.incbin "baserom.gba", 0x667D90, 0x20    @ 0x667DB0 - 0x667D90

	.global Tsa_08667DB0
Tsa_08667DB0:  @ 0x08667DB0
	.incbin "baserom.gba", 0x667DB0, 0x124    @ 0x667ED4 - 0x667DB0

	.global Tsa_08667ED4
Tsa_08667ED4:  @ 0x08667ED4
	.incbin "baserom.gba", 0x667ED4, 0x120    @ 0x667FF4 - 0x667ED4

	.global Tsa_08667FF4
Tsa_08667FF4:  @ 0x08667FF4
	.incbin "baserom.gba", 0x667FF4, 0x10C    @ 0x668100 - 0x667FF4

	.global Tsa_08668100
Tsa_08668100:  @ 0x08668100
	.incbin "baserom.gba", 0x668100, 0xFC    @ 0x6681FC - 0x668100

	.global Tsa_086681FC
Tsa_086681FC:  @ 0x086681FC
	.incbin "baserom.gba", 0x6681FC, 0xE8    @ 0x6682E4 - 0x6681FC

	.global Tsa_086682E4
Tsa_086682E4:  @ 0x086682E4
	.incbin "baserom.gba", 0x6682E4, 0xE8    @ 0x6683CC - 0x6682E4

	.global Tsa_086683CC
Tsa_086683CC:  @ 0x086683CC
	.incbin "baserom.gba", 0x6683CC, 0xE0    @ 0x6684AC - 0x6683CC

	.global Tsa_086684AC
Tsa_086684AC:  @ 0x086684AC
	.incbin "baserom.gba", 0x6684AC, 0xDC    @ 0x668588 - 0x6684AC

	.global Tsa_08668588
Tsa_08668588:  @ 0x08668588
	.incbin "baserom.gba", 0x668588, 0xE0    @ 0x668668 - 0x668588

	.global Tsa_08668668
Tsa_08668668:  @ 0x08668668
	.incbin "baserom.gba", 0x668668, 0xF4    @ 0x66875C - 0x668668

	.global Tsa_0866875C
Tsa_0866875C:  @ 0x0866875C
	.incbin "baserom.gba", 0x66875C, 0xF4    @ 0x668850 - 0x66875C

	.global Tsa_08668850
Tsa_08668850:  @ 0x08668850
	.incbin "baserom.gba", 0x668850, 0x104    @ 0x668954 - 0x668850

	.global Tsa_08668954
Tsa_08668954:  @ 0x08668954
	.incbin "baserom.gba", 0x668954, 0x108    @ 0x668A5C - 0x668954

	.global Tsa_08668A5C
Tsa_08668A5C:  @ 0x08668A5C
	.incbin "baserom.gba", 0x668A5C, 0x118    @ 0x668B74 - 0x668A5C

	.global Tsa_08668B74
Tsa_08668B74:  @ 0x08668B74
	.incbin "baserom.gba", 0x668B74, 0x124    @ 0x668C98 - 0x668B74

	.global Tsa_08668C98
Tsa_08668C98:  @ 0x08668C98
	.incbin "baserom.gba", 0x668C98, 0x114    @ 0x668DAC - 0x668C98

	.global Tsa_08668DAC
Tsa_08668DAC:  @ 0x08668DAC
	.incbin "baserom.gba", 0x668DAC, 0x124    @ 0x668ED0 - 0x668DAC

	.global Tsa_08668ED0
Tsa_08668ED0:  @ 0x08668ED0
	.incbin "baserom.gba", 0x668ED0, 0x124    @ 0x668FF4 - 0x668ED0

	.global Tsa_08668FF4
Tsa_08668FF4:  @ 0x08668FF4
	.incbin "baserom.gba", 0x668FF4, 0x110    @ 0x669104 - 0x668FF4

	.global Tsa_08669104
Tsa_08669104:  @ 0x08669104
	.incbin "baserom.gba", 0x669104, 0x100    @ 0x669204 - 0x669104

	.global Tsa_08669204
Tsa_08669204:  @ 0x08669204
	.incbin "baserom.gba", 0x669204, 0xE8    @ 0x6692EC - 0x669204

	.global Tsa_086692EC
Tsa_086692EC:  @ 0x086692EC
	.incbin "baserom.gba", 0x6692EC, 0xE0    @ 0x6693CC - 0x6692EC

	.global Tsa_086693CC
Tsa_086693CC:  @ 0x086693CC
	.incbin "baserom.gba", 0x6693CC, 0xDC    @ 0x6694A8 - 0x6693CC

	.global Tsa_086694A8
Tsa_086694A8:  @ 0x086694A8
	.incbin "baserom.gba", 0x6694A8, 0xDC    @ 0x669584 - 0x6694A8

	.global Tsa_08669584
Tsa_08669584:  @ 0x08669584
	.incbin "baserom.gba", 0x669584, 0xE4    @ 0x669668 - 0x669584

	.global Tsa_08669668
Tsa_08669668:  @ 0x08669668
	.incbin "baserom.gba", 0x669668, 0xF4    @ 0x66975C - 0x669668

	.global Tsa_0866975C
Tsa_0866975C:  @ 0x0866975C
	.incbin "baserom.gba", 0x66975C, 0xF0    @ 0x66984C - 0x66975C

	.global Tsa_0866984C
Tsa_0866984C:  @ 0x0866984C
	.incbin "baserom.gba", 0x66984C, 0x104    @ 0x669950 - 0x66984C

	.global Tsa_08669950
Tsa_08669950:  @ 0x08669950
	.incbin "baserom.gba", 0x669950, 0x108    @ 0x669A58 - 0x669950

	.global Tsa_08669A58
Tsa_08669A58:  @ 0x08669A58
	.incbin "baserom.gba", 0x669A58, 0x114    @ 0x669B6C - 0x669A58

	.global Tsa_08669B6C
Tsa_08669B6C:  @ 0x08669B6C
	.incbin "baserom.gba", 0x669B6C, 0x124    @ 0x669C90 - 0x669B6C

	.global Tsa_08669C90
Tsa_08669C90:  @ 0x08669C90
	.incbin "baserom.gba", 0x669C90, 0x114    @ 0x669DA4 - 0x669C90

	.global Tsa_08669DA4
Tsa_08669DA4:  @ 0x08669DA4
	.incbin "baserom.gba", 0x669DA4, 0x124    @ 0x669EC8 - 0x669DA4

	.global Tsa_08669EC8
Tsa_08669EC8:  @ 0x08669EC8
	.incbin "baserom.gba", 0x669EC8, 0x120    @ 0x669FE8 - 0x669EC8

	.global Tsa_08669FE8
Tsa_08669FE8:  @ 0x08669FE8
	.incbin "baserom.gba", 0x669FE8, 0x10C    @ 0x66A0F4 - 0x669FE8

	.global Tsa_0866A0F4
Tsa_0866A0F4:  @ 0x0866A0F4
	.incbin "baserom.gba", 0x66A0F4, 0xFC    @ 0x66A1F0 - 0x66A0F4

	.global Tsa_0866A1F0
Tsa_0866A1F0:  @ 0x0866A1F0
	.incbin "baserom.gba", 0x66A1F0, 0xE8    @ 0x66A2D8 - 0x66A1F0

	.global Tsa_0866A2D8
Tsa_0866A2D8:  @ 0x0866A2D8
	.incbin "baserom.gba", 0x66A2D8, 0xE8    @ 0x66A3C0 - 0x66A2D8

	.global Tsa_0866A3C0
Tsa_0866A3C0:  @ 0x0866A3C0
	.incbin "baserom.gba", 0x66A3C0, 0xE0    @ 0x66A4A0 - 0x66A3C0

	.global Tsa_0866A4A0
Tsa_0866A4A0:  @ 0x0866A4A0
	.incbin "baserom.gba", 0x66A4A0, 0xDC    @ 0x66A57C - 0x66A4A0

	.global Tsa_0866A57C
Tsa_0866A57C:  @ 0x0866A57C
	.incbin "baserom.gba", 0x66A57C, 0xE0    @ 0x66A65C - 0x66A57C

	.global Tsa_0866A65C
Tsa_0866A65C:  @ 0x0866A65C
	.incbin "baserom.gba", 0x66A65C, 0xF4    @ 0x66A750 - 0x66A65C

	.global Tsa_0866A750
Tsa_0866A750:  @ 0x0866A750
	.incbin "baserom.gba", 0x66A750, 0xF4    @ 0x66A844 - 0x66A750

	.global Tsa_0866A844
Tsa_0866A844:  @ 0x0866A844
	.incbin "baserom.gba", 0x66A844, 0x104    @ 0x66A948 - 0x66A844

	.global Tsa_0866A948
Tsa_0866A948:  @ 0x0866A948
	.incbin "baserom.gba", 0x66A948, 0x108    @ 0x66AA50 - 0x66A948

	.global Tsa_0866AA50
Tsa_0866AA50:  @ 0x0866AA50
	.incbin "baserom.gba", 0x66AA50, 0x118    @ 0x66AB68 - 0x66AA50

	.global Tsa_0866AB68
Tsa_0866AB68:  @ 0x0866AB68
	.incbin "baserom.gba", 0x66AB68, 0x124    @ 0x66AC8C - 0x66AB68

	.global Tsa_0866AC8C
Tsa_0866AC8C:  @ 0x0866AC8C
	.incbin "baserom.gba", 0x66AC8C, 0x110    @ 0x66AD9C - 0x66AC8C

	.global Tsa_0866AD9C
Tsa_0866AD9C:  @ 0x0866AD9C
	.incbin "baserom.gba", 0x66AD9C, 0x214    @ 0x66AFB0 - 0x66AD9C

	.global Tsa_0866AFB0
Tsa_0866AFB0:  @ 0x0866AFB0
	.incbin "baserom.gba", 0x66AFB0, 0x1BC    @ 0x66B16C - 0x66AFB0

	.global Tsa_0866B16C
Tsa_0866B16C:  @ 0x0866B16C
	.incbin "baserom.gba", 0x66B16C, 0x1DC    @ 0x66B348 - 0x66B16C

	.global Tsa_0866B348
Tsa_0866B348:  @ 0x0866B348
	.incbin "baserom.gba", 0x66B348, 0x204    @ 0x66B54C - 0x66B348

	.global Tsa_0866B54C
Tsa_0866B54C:  @ 0x0866B54C
	.incbin "baserom.gba", 0x66B54C, 0x208    @ 0x66B754 - 0x66B54C

	.global Tsa_0866B754
Tsa_0866B754:  @ 0x0866B754
	.incbin "baserom.gba", 0x66B754, 0x214    @ 0x66B968 - 0x66B754

	.global Tsa_0866B968
Tsa_0866B968:  @ 0x0866B968
	.incbin "baserom.gba", 0x66B968, 0x260    @ 0x66BBC8 - 0x66B968

	.global Tsa_0866BBC8
Tsa_0866BBC8:  @ 0x0866BBC8
	.incbin "baserom.gba", 0x66BBC8, 0x234    @ 0x66BDFC - 0x66BBC8

	.global Tsa_0866BDFC
Tsa_0866BDFC:  @ 0x0866BDFC
	.incbin "baserom.gba", 0x66BDFC, 0x274    @ 0x66C070 - 0x66BDFC

	.global Tsa_0866C070
Tsa_0866C070:  @ 0x0866C070
	.incbin "baserom.gba", 0x66C070, 0x248    @ 0x66C2B8 - 0x66C070

	.global Tsa_0866C2B8
Tsa_0866C2B8:  @ 0x0866C2B8
	.incbin "baserom.gba", 0x66C2B8, 0x360    @ 0x66C618 - 0x66C2B8

	.global Tsa_0866C618
Tsa_0866C618:  @ 0x0866C618
	.incbin "baserom.gba", 0x66C618, 0x354    @ 0x66C96C - 0x66C618

	.global Tsa_0866C96C
Tsa_0866C96C:  @ 0x0866C96C
	.incbin "baserom.gba", 0x66C96C, 0x310    @ 0x66CC7C - 0x66C96C

	.global Tsa_0866CC7C
Tsa_0866CC7C:  @ 0x0866CC7C
	.incbin "baserom.gba", 0x66CC7C, 0x2E4    @ 0x66CF60 - 0x66CC7C

	.global Tsa_0866CF60
Tsa_0866CF60:  @ 0x0866CF60
	.incbin "baserom.gba", 0x66CF60, 0x2D0    @ 0x66D230 - 0x66CF60

	.global Tsa_0866D230
Tsa_0866D230:  @ 0x0866D230
	.incbin "baserom.gba", 0x66D230, 0x298    @ 0x66D4C8 - 0x66D230

	.global Tsa_0866D4C8
Tsa_0866D4C8:  @ 0x0866D4C8
	.incbin "baserom.gba", 0x66D4C8, 0x298    @ 0x66D760 - 0x66D4C8

	.global Tsa_0866D760
Tsa_0866D760:  @ 0x0866D760
	.incbin "baserom.gba", 0x66D760, 0x22C    @ 0x66D98C - 0x66D760

	.global Tsa_0866D98C
Tsa_0866D98C:  @ 0x0866D98C
	.incbin "baserom.gba", 0x66D98C, 0x2B4    @ 0x66DC40 - 0x66D98C

	.global Tsa_0866DC40
Tsa_0866DC40:  @ 0x0866DC40
	.incbin "baserom.gba", 0x66DC40, 0x2C0    @ 0x66DF00 - 0x66DC40

	.global Tsa_0866DF00
Tsa_0866DF00:  @ 0x0866DF00
	.incbin "baserom.gba", 0x66DF00, 0x330    @ 0x66E230 - 0x66DF00

	.global Tsa_0866E230
Tsa_0866E230:  @ 0x0866E230
	.incbin "baserom.gba", 0x66E230, 0x350    @ 0x66E580 - 0x66E230

	.global Tsa_0866E580
Tsa_0866E580:  @ 0x0866E580
	.incbin "baserom.gba", 0x66E580, 0x378    @ 0x66E8F8 - 0x66E580

	.global Tsa_0866E8F8
Tsa_0866E8F8:  @ 0x0866E8F8
	.incbin "baserom.gba", 0x66E8F8, 0x388    @ 0x66EC80 - 0x66E8F8

	.global Tsa_0866EC80
Tsa_0866EC80:  @ 0x0866EC80
	.incbin "baserom.gba", 0x66EC80, 0x370    @ 0x66EFF0 - 0x66EC80

	.global Img_PurgeSprites
Img_PurgeSprites:  @ 0x0866EFF0
	.incbin "baserom.gba", 0x66EFF0, 0x2C4

	.global Pal_PurgeSprites
Pal_PurgeSprites:  @ 0x0866F2B4
	.incbin "baserom.gba", 0x66F2B4, 0x2D8

	.global gUnknown_0866F58C
gUnknown_0866F58C:  @ 0x0866F58C
@ Replacing .incbin "baserom.gba", 0x66F58C, 0x58
    .4byte Pal_PurgeSprites + 0x21
    .4byte Pal_PurgeSprites + 0x45
    .4byte Pal_PurgeSprites + 0x69
    .4byte Pal_PurgeSprites + 0x8d
    .4byte Pal_PurgeSprites + 0xb1
    .4byte Pal_PurgeSprites + 0xd5
    .4byte Pal_PurgeSprites + 0xf9
    .4byte Pal_PurgeSprites + 0x11d
    .4byte Pal_PurgeSprites + 0x141
    .4byte Pal_PurgeSprites + 0x165
    .4byte Pal_PurgeSprites + 0x17d
    .4byte Pal_PurgeSprites + 0x1a1
    .4byte Pal_PurgeSprites + 0x1c5
    .4byte Pal_PurgeSprites + 0x1e9
    .4byte Pal_PurgeSprites + 0x20d
    .4byte Pal_PurgeSprites + 0x231
    .4byte Pal_PurgeSprites + 0x255
    .4byte Pal_PurgeSprites + 0x279
    .4byte Pal_PurgeSprites + 0x29d
    .4byte 0x7866f577
    .4byte 0x84000013
    .4byte 0x80000000

	.global gUnknown_0866F5E4
gUnknown_0866F5E4:  @ 0x0866F5E4
	.incbin "baserom.gba", 0x66F5E4, 0x190

	.global gUnknown_0866F774
gUnknown_0866F774:  @ 0x0866F774
	.incbin "baserom.gba", 0x66F774, 0x960

	.global gUnknown_086700D4
gUnknown_086700D4:  @ 0x086700D4
	.incbin "baserom.gba", 0x6700D4, 0x200

	.global gUnknown_086702D4
gUnknown_086702D4:  @ 0x086702D4
	.incbin "baserom.gba", 0x6702D4, 0x254

	.global Pal_FimbulvetrSprites_Snow
Pal_FimbulvetrSprites_Snow:  @ 0x08670528
	.incbin "baserom.gba", 0x670528, 0x20

	.global gUnknown_08670548
gUnknown_08670548:  @ 0x08670548
	.incbin "baserom.gba", 0x670548, 0x7F8

	.global gUnknown_08670D40
gUnknown_08670D40:  @ 0x08670D40
    .incbin "baserom.gba", 0x670D40, 0x960

	.global gUnknown_086716A0
gUnknown_086716A0:  @ 0x086716A0
    .incbin "baserom.gba", 0x6716A0, 0x960

	.global gUnknown_08672000
gUnknown_08672000:  @ 0x08672000
	.incbin "baserom.gba", 0x672000, 0x220

	.global gUnknown_08672220
gUnknown_08672220:  @ 0x08672220
	.incbin "baserom.gba", 0x672220, 0x2EF4

	.global gUnknown_08675114
gUnknown_08675114:  @ 0x08675114
@ Replacing .incbin "baserom.gba", 0x675114, 0x90
    .4byte gUnknown_08672220 + 0x201
    .4byte gUnknown_08672220 + 0x225
    .4byte gUnknown_08672220 + 0x255
    .4byte gUnknown_08672220 + 0x285
    .4byte gUnknown_08672220 + 0x2b5
    .4byte gUnknown_08672220 + 0x2fd
    .4byte gUnknown_08672220 + 0x345
    .4byte gUnknown_08672220 + 0x38e
    .4byte gUnknown_08672220 + 0x3d6
    .4byte gUnknown_08672220 + 0x41e
    .4byte gUnknown_08672220 + 0x47e
    .4byte gUnknown_08672220 + 0x4f6
    .4byte gUnknown_08672220 + 0x56e
    .4byte gUnknown_08672220 + 0x5e6
    .4byte gUnknown_08672220 + 0x669
    .4byte gUnknown_08672220 + 0x6ed
    .4byte gUnknown_08672220 + 0x771
    .4byte gUnknown_08672220 + 0x7f5
    .4byte gUnknown_08672220 + 0x86d
    .4byte gUnknown_08672220 + 0x8e5
    .4byte gUnknown_08672220 + 0x95d
    .4byte gUnknown_08672220 + 0x9d5
    .4byte gUnknown_08672220 + 0xa4d
    .4byte gUnknown_08672220 + 0xad1
    .4byte gUnknown_08672220 + 0xb55
    .4byte gUnknown_08672220 + 0xbda
    .4byte gUnknown_08672220 + 0xc5e
    .4byte gUnknown_08672220 + 0xce2
    .4byte gUnknown_08672220 + 0xd66
    .4byte gUnknown_08672220 + 0xdde
    .4byte gUnknown_08672220 + 0xe26
    .4byte gUnknown_08672220 + 0xe6e
    .4byte gUnknown_08672220 + 0xeb6
    .4byte gUnknown_08672220 + 0xefe
    .4byte gUnknown_08672220 + 0xf22
    .4byte 0x80000000

	.global gUnknown_086751A4
gUnknown_086751A4:  @ 0x086751A4
@ Replacing .incbin "baserom.gba", 0x6751A4, 0x151C
    .4byte gUnknown_08672220 + 0x1e09
    .4byte gUnknown_08672220 + 0x1e2d
    .4byte gUnknown_08672220 + 0x1e5d
    .4byte gUnknown_08672220 + 0x1ea5
    .4byte gUnknown_08672220 + 0x1ee1
    .4byte gUnknown_08672220 + 0x1f35
    .4byte gUnknown_08672220 + 0x1f89
    .4byte gUnknown_08672220 + 0x1fdd
    .4byte gUnknown_08672220 + 0x2031
    .4byte gUnknown_08672220 + 0x2085
    .4byte gUnknown_08672220 + 0x20d9
    .4byte gUnknown_08672220 + 0x212d
    .4byte gUnknown_08672220 + 0x2181
    .4byte gUnknown_08672220 + 0x21d5
    .4byte gUnknown_08672220 + 0x2229
    .4byte gUnknown_08672220 + 0x227d
    .4byte gUnknown_08672220 + 0x22d1
    .4byte gUnknown_08672220 + 0x2325
    .4byte gUnknown_08672220 + 0x2379
    .4byte gUnknown_08672220 + 0x23cd
    .4byte gUnknown_08672220 + 0x2421
    .4byte gUnknown_08672220 + 0x2475
    .4byte gUnknown_08672220 + 0x24c9
    .4byte gUnknown_08672220 + 0x251d
    .4byte gUnknown_08672220 + 0x2571
    .4byte gUnknown_08672220 + 0x25c5
    .4byte gUnknown_08672220 + 0x2619
    .4byte gUnknown_08672220 + 0x266d
    .4byte gUnknown_08672220 + 0x26c1
    .4byte gUnknown_08672220 + 0x2715
    .4byte gUnknown_08672220 + 0x2769
    .4byte gUnknown_08672220 + 0x27bd
    .4byte gUnknown_08672220 + 0x2811
    .4byte gUnknown_08672220 + 0x2865
    .4byte gUnknown_08672220 + 0x28b9
    .4byte gUnknown_08672220 + 0x290d
    .4byte gUnknown_08672220 + 0x2961
    .4byte gUnknown_08672220 + 0x29b5
    .4byte gUnknown_08672220 + 0x2a09
    .4byte gUnknown_08672220 + 0x2a5d
    .4byte gUnknown_08672220 + 0x2ac9
    .4byte gUnknown_08672220 + 0x2b1d
    .4byte gUnknown_08672220 + 0x2b89
    .4byte gUnknown_08672220 + 0x2bdd
    .4byte gUnknown_08672220 + 0x2c31
    .4byte gUnknown_08672220 + 0x2c85
    .4byte gUnknown_08672220 + 0x2ce5
    .4byte gUnknown_08672220 + 0x2d45
    .4byte gUnknown_08672220 + 0x2d99
    .4byte gUnknown_08672220 + 0x2ded
    .4byte gUnknown_08672220 + 0x2e29
    .4byte gUnknown_08672220 + 0x2e7d
    .4byte 0x80000000
    .4byte 0x18673dac
    .4byte 0x80000000
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffc5
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0x00f0ffa9
    .4byte 0x00000100
    .4byte 0x003e0004
    .4byte 0x0000ffc4
    .4byte 0x00000100
    .4byte 0x003e0004
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c4
    .4byte 0x00c4ff5c
    .4byte 0x00000100
    .4byte 0x003f0004
    .4byte 0x0000ffc2
    .4byte 0x00000100
    .4byte 0x003f0004
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00dd0080
    .4byte 0x0080ff23
    .4byte 0x00000100
    .4byte 0x00400046
    .4byte 0x0000ffc1
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffc5
    .4byte 0x00000100
    .4byte 0x00400046
    .4byte 0x0000ffe7
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fc002c
    .4byte 0x002cff04
    .4byte 0x00000100
    .4byte 0x00410046
    .4byte 0x0000ffbe
    .4byte 0x00000000
    .4byte 0x003e0004
    .4byte 0x0000ffc4
    .4byte 0x00000100
    .4byte 0x00410046
    .4byte 0x0000ffea
    .4byte 0x00000000
    .4byte 0x003e0004
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fcffd4
    .4byte 0xffd4ff04
    .4byte 0x00000100
    .4byte 0x00410046
    .4byte 0x0000ffbb
    .4byte 0x00000000
    .4byte 0x003f0004
    .4byte 0x0000ffc2
    .4byte 0x00000100
    .4byte 0x00410046
    .4byte 0x0000ffed
    .4byte 0x00000000
    .4byte 0x003f0004
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ddff81
    .4byte 0xff81ff23
    .4byte 0x00000100
    .4byte 0x003f0045
    .4byte 0x0000ffb8
    .4byte 0x00000000
    .4byte 0x00400046
    .4byte 0x0000ffc1
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffc5
    .4byte 0x00000100
    .4byte 0x003f0045
    .4byte 0x0000fff0
    .4byte 0x00000000
    .4byte 0x00400046
    .4byte 0x0000ffe7
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a4ff3d
    .4byte 0xff3dff5c
    .4byte 0x00000100
    .4byte 0x003c0045
    .4byte 0x0000ffb4
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffbe
    .4byte 0x00000000
    .4byte 0x003e0004
    .4byte 0x0000ffc4
    .4byte 0x00000100
    .4byte 0x003c0045
    .4byte 0x0000fff4
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffea
    .4byte 0x00000000
    .4byte 0x003e0004
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0xff10ffa9
    .4byte 0x00000100
    .4byte 0x00380044
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffbb
    .4byte 0x00000000
    .4byte 0x003f0004
    .4byte 0x0000ffc2
    .4byte 0x00000100
    .4byte 0x00380044
    .4byte 0x0000fff7
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffed
    .4byte 0x00000000
    .4byte 0x003f0004
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000ff01
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0x00320044
    .4byte 0x0000ffae
    .4byte 0x00000000
    .4byte 0x003f0045
    .4byte 0x0000ffb8
    .4byte 0x00000000
    .4byte 0x00400046
    .4byte 0x0000ffc1
    .4byte 0x00000100
    .4byte 0x00320044
    .4byte 0x0000fffa
    .4byte 0x00000000
    .4byte 0x003f0045
    .4byte 0x0000fff0
    .4byte 0x00000000
    .4byte 0x00400046
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0x40000100
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x40000100
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x00000000
    .4byte 0x003c0045
    .4byte 0x0000ffb4
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffbe
    .4byte 0x40000100
    .4byte 0x00240000
    .4byte 0x0000fff7
    .4byte 0x40000100
    .4byte 0x00240000
    .4byte 0x0000fff7
    .4byte 0x00000000
    .4byte 0x003c0045
    .4byte 0x0000fff4
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5cff3c
    .4byte 0xff3c00a4
    .4byte 0x40000100
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x40000100
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffbb
    .4byte 0x40000100
    .4byte 0x00180000
    .4byte 0x0000fff5
    .4byte 0x40000100
    .4byte 0x00180000
    .4byte 0x0000fff5
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000fff7
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0x40000100
    .4byte 0x000b0040
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000ffae
    .4byte 0x00000000
    .4byte 0x003f0045
    .4byte 0x0000ffb8
    .4byte 0x40000100
    .4byte 0x000b0040
    .4byte 0x0000ffef
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000fffa
    .4byte 0x00000000
    .4byte 0x003f0045
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff04ffd3
    .4byte 0xffd300fc
    .4byte 0x40000100
    .4byte 0x00020040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x00000000
    .4byte 0x003c0045
    .4byte 0x0000ffb4
    .4byte 0x40000100
    .4byte 0x00020040
    .4byte 0x0000ffe2
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000fff7
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000fff7
    .4byte 0x00000000
    .4byte 0x003c0045
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff81ff23
    .4byte 0xff23007f
    .4byte 0x40000100
    .4byte 0xfffd0000
    .4byte 0x0000ffcb
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000ffb1
    .4byte 0x40000100
    .4byte 0xfffd0000
    .4byte 0x0000ffd6
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000fff5
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000fff5
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0x40000100
    .4byte 0xfffc0000
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x000b0040
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000ffae
    .4byte 0x40000000
    .4byte 0x000b0040
    .4byte 0x0000ffef
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000fffa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff09ffbe
    .4byte 0xffbe00f7
    .4byte 0x00000100
    .4byte 0x00020044
    .4byte 0x0000ffe1
    .4byte 0x40000000
    .4byte 0x00020040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00040044
    .4byte 0x0000ffe6
    .4byte 0x40000000
    .4byte 0xfffd0000
    .4byte 0x0000ffcb
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00060003
    .4byte 0x0000ffe9
    .4byte 0x40000000
    .4byte 0xfffc0000
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x000b0040
    .4byte 0x0000ffb1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00090003
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0x00020044
    .4byte 0x0000ffe1
    .4byte 0x40000000
    .4byte 0x00020040
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x000b0046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00040044
    .4byte 0x0000ffe6
    .4byte 0x40000000
    .4byte 0xfffd0000
    .4byte 0x0000ffcb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x000e0046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00060003
    .4byte 0x0000ffe9
    .4byte 0x40000000
    .4byte 0xfffc0000
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00100046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00090003
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0x00020044
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00120004
    .4byte 0x0000ffed
    .4byte 0x00000000
    .4byte 0x000b0046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00040044
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00140004
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0x000e0046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00060003
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00150004
    .4byte 0x0000ffeb
    .4byte 0x00000000
    .4byte 0x00100046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00090003
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff04002b
    .4byte 0x002b00fc
    .4byte 0x40000100
    .4byte 0xfffa0040
    .4byte 0x0000ffc5
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000ffb1
    .4byte 0x40000100
    .4byte 0xfffd0000
    .4byte 0x0000ffd6
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000fff5
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000fff5
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff22007f
    .4byte 0x007f00de
    .4byte 0x40000100
    .4byte 0xfff00040
    .4byte 0x0000ffc7
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000ffae
    .4byte 0x40000000
    .4byte 0x000b0000
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000fffa
    .4byte 0x40000000
    .4byte 0x000b0000
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5b00c3
    .4byte 0x00c300a5
    .4byte 0x40000100
    .4byte 0xffe80040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0x00020000
    .4byte 0x0000ffbd
    .4byte 0x00000000
    .4byte 0x00280044
    .4byte 0x0000ffb1
    .4byte 0x40000000
    .4byte 0x00020000
    .4byte 0x0000ffe2
    .4byte 0x00000000
    .4byte 0x00280044
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa800f0
    .4byte 0x00f00058
    .4byte 0x40000100
    .4byte 0xffe40040
    .4byte 0x0000ffb3
    .4byte 0x40000000
    .4byte 0xfffc0000
    .4byte 0x0000ffc5
    .4byte 0x00000000
    .4byte 0x00200044
    .4byte 0x0000ffb0
    .4byte 0x40000000
    .4byte 0xfffc0000
    .4byte 0x0000ffd9
    .4byte 0x00000000
    .4byte 0x00200044
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff010000
    .4byte 0x000000ff
    .4byte 0x40000100
    .4byte 0xffe10040
    .4byte 0x0000ffa8
    .4byte 0x00000000
    .4byte 0x000f0044
    .4byte 0x0000ffb5
    .4byte 0x40000000
    .4byte 0xfff00000
    .4byte 0x0000ffc8
    .4byte 0x00000000
    .4byte 0x000f0044
    .4byte 0x0000fff3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff100056
    .4byte 0x005600f0
    .4byte 0x40000100
    .4byte 0xffdc0040
    .4byte 0x0000ff9d
    .4byte 0x40000000
    .4byte 0xffe80000
    .4byte 0x0000ffbf
    .4byte 0x00000000
    .4byte 0x00060044
    .4byte 0x0000ffc1
    .4byte 0x00000000
    .4byte 0x00060044
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffe40000
    .4byte 0x0000ffb3
    .4byte 0x00000000
    .4byte 0x00000044
    .4byte 0x0000ffcb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xfff80044
    .4byte 0x0000ffcb
    .4byte 0x40000000
    .4byte 0xffe00000
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffda0000
    .4byte 0x0000ff9d
    .4byte 0x00000000
    .4byte 0xfff00044
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffeb0044
    .4byte 0x0000ffb7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffe80044
    .4byte 0x0000ffac
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffe20044
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xfffc0040
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0x00f0ffa9
    .4byte 0x40000100
    .4byte 0xfff40040
    .4byte 0x0000ffb0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c4
    .4byte 0x00c4ff5c
    .4byte 0x40000100
    .4byte 0xffeb0040
    .4byte 0x0000ffb9
    .4byte 0x00000000
    .4byte 0x00000044
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fc002c
    .4byte 0x002cff04
    .4byte 0x40000100
    .4byte 0xffe00040
    .4byte 0x0000ffbe
    .4byte 0x00000000
    .4byte 0xfff80044
    .4byte 0x0000ffb4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fcffd4
    .4byte 0xffd4ff04
    .4byte 0x40000100
    .4byte 0xffd30040
    .4byte 0x0000ffc3
    .4byte 0x00000000
    .4byte 0xffef0044
    .4byte 0x0000ffbd
    .4byte 0x00000000
    .4byte 0x00000044
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ddff81
    .4byte 0xff81ff23
    .4byte 0x40000100
    .4byte 0xffca0040
    .4byte 0x0000ffce
    .4byte 0x00000000
    .4byte 0xffe40044
    .4byte 0x0000ffc2
    .4byte 0x00000000
    .4byte 0xfff80044
    .4byte 0x0000ffb4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a4ff3d
    .4byte 0xff3dff5c
    .4byte 0x40000100
    .4byte 0xffc50000
    .4byte 0x0000ffdb
    .4byte 0x00000000
    .4byte 0xffd70044
    .4byte 0x0000ffc7
    .4byte 0x00000000
    .4byte 0xffef0044
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0xff10ffa9
    .4byte 0x40000100
    .4byte 0xffc40000
    .4byte 0x0000ffe5
    .4byte 0x00000000
    .4byte 0xffce0044
    .4byte 0x0000ffd2
    .4byte 0x00000000
    .4byte 0xffe40044
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000ff01
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0xffca0044
    .4byte 0x0000fff1
    .4byte 0x00000000
    .4byte 0xffc90044
    .4byte 0x0000ffdf
    .4byte 0x00000000
    .4byte 0xffd70044
    .4byte 0x0000ffc7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0x00000100
    .4byte 0xffcc0044
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0xffc80044
    .4byte 0x0000ffe9
    .4byte 0x00000000
    .4byte 0xffce0044
    .4byte 0x0000ffd2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5cff3c
    .4byte 0xff3c00a4
    .4byte 0xffff0002
    .4byte 0x0000ff01
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0xffce0003
    .4byte 0x0000fff9
    .4byte 0x02000100
    .4byte 0xffca0044
    .4byte 0x0000fff1
    .4byte 0x00000000
    .4byte 0xffc90044
    .4byte 0x0000ffdf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0xffff0002
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0x00000100
    .4byte 0xffd10003
    .4byte 0x0000fffc
    .4byte 0x02000100
    .4byte 0xffcc0044
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0xffc80044
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff04ffd3
    .4byte 0xffd300fc
    .4byte 0xffff0003
    .4byte 0xff5cff3c
    .4byte 0xff3c00a4
    .4byte 0xffff0003
    .4byte 0x0000ff01
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0xffd30046
    .4byte 0x0000fffe
    .4byte 0x02000100
    .4byte 0xffce0003
    .4byte 0x0000fff9
    .4byte 0x04000100
    .4byte 0xffca0044
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff04002b
    .4byte 0x002b00fc
    .4byte 0xffff0003
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0xffff0003
    .4byte 0xffa9ff10
    .4byte 0xff100057
    .4byte 0x00000100
    .4byte 0xffd60046
    .4byte 0x0000fffe
    .4byte 0x02000100
    .4byte 0xffd10003
    .4byte 0x0000fffc
    .4byte 0x04000100
    .4byte 0xffcc0044
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff22007f
    .4byte 0x007f00de
    .4byte 0xffff0003
    .4byte 0xff04ffd3
    .4byte 0xffd300fc
    .4byte 0xffff0003
    .4byte 0xff5cff3c
    .4byte 0xff3c00a4
    .4byte 0x00000100
    .4byte 0xffd80046
    .4byte 0x0000fffe
    .4byte 0x02000100
    .4byte 0xffd30046
    .4byte 0x0000fffe
    .4byte 0x04000100
    .4byte 0xffce0003
    .4byte 0x0000fff9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff5b00c3
    .4byte 0x00c300a5
    .4byte 0xffff0003
    .4byte 0xff04002b
    .4byte 0x002b00fc
    .4byte 0xffff0003
    .4byte 0xff23ff80
    .4byte 0xff8000dd
    .4byte 0x00000100
    .4byte 0xffda0004
    .4byte 0x0000fffd
    .4byte 0x02000100
    .4byte 0xffd60046
    .4byte 0x0000fffe
    .4byte 0x04000100
    .4byte 0xffd10003
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xffa800f0
    .4byte 0x00f00058
    .4byte 0xffff0003
    .4byte 0xff22007f
    .4byte 0x007f00de
    .4byte 0xffff0003
    .4byte 0xff04ffd3
    .4byte 0xffd300fc
    .4byte 0x00000100
    .4byte 0xffdc0004
    .4byte 0x0000fffc
    .4byte 0x02000100
    .4byte 0xffd80046
    .4byte 0x0000fffe
    .4byte 0x04000100
    .4byte 0xffd30046
    .4byte 0x0000fffe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5b00c3
    .4byte 0x00c300a5
    .4byte 0xffff0002
    .4byte 0xff04002b
    .4byte 0x002b00fc
    .4byte 0x00000000
    .4byte 0xffdd0004
    .4byte 0x0000fffb
    .4byte 0x00000100
    .4byte 0xffda0004
    .4byte 0x0000fffd
    .4byte 0x02000100
    .4byte 0xffd60046
    .4byte 0x0000fffe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5b00c3
    .4byte 0x00c300a5
    .4byte 0x00000000
    .4byte 0xffdd0004
    .4byte 0x0000fffb
    .4byte 0x00000100
    .4byte 0xffda0004
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffdd0004
    .4byte 0x0000fffb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x003d0004
    .4byte 0x0000ffc5
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0xfffd0000
    .4byte 0x0000ffcb
    .4byte 0x00000000
    .4byte 0x00090003
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0x00150004
    .4byte 0x0000ffeb
    .4byte 0x40000000
    .4byte 0x00240000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0x000b0040
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00400046
    .4byte 0x0000ffc1
    .4byte 0x00000000
    .4byte 0x00380044
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x003f0045
    .4byte 0x0000ffb8
    .4byte 0x00000000
    .4byte 0x00020044
    .4byte 0x0000ffe1
    .4byte 0x00000000
    .4byte 0x000e0046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x003e0004
    .4byte 0x0000ffc4
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffbb
    .4byte 0x40000000
    .4byte 0x00020040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0xfffc0000
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0x00180000
    .4byte 0x0000ffab
    .4byte 0x00000000
    .4byte 0x00320044
    .4byte 0x0000ffae
    .4byte 0x00000000
    .4byte 0x003c0045
    .4byte 0x0000ffb4
    .4byte 0x00000000
    .4byte 0x00040044
    .4byte 0x0000ffe6
    .4byte 0x00000000
    .4byte 0x00060003
    .4byte 0x0000ffe9
    .4byte 0x00000000
    .4byte 0x000b0046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00120004
    .4byte 0x0000ffed
    .4byte 0x00000000
    .4byte 0x003f0004
    .4byte 0x0000ffc2
    .4byte 0x00000000
    .4byte 0x00140004
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0x00410046
    .4byte 0x0000ffbe
    .4byte 0x00000000
    .4byte 0x00100046
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffdf0040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0xffd10040
    .4byte 0x0000ffb3
    .4byte 0x40000000
    .4byte 0xffc30040
    .4byte 0x0000ffa8
    .4byte 0x40000000
    .4byte 0xffb50040
    .4byte 0x0000ff9d
    .4byte 0x40000000
    .4byte 0xffed0040
    .4byte 0x0000ffb3
    .4byte 0x40000000
    .4byte 0xfffb0040
    .4byte 0x0000ffa8
    .4byte 0x40000000
    .4byte 0x00090040
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00050004
    .4byte 0x0000ffc5
    .4byte 0x40000000
    .4byte 0xffec0000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0xffc50000
    .4byte 0x0000ffcb
    .4byte 0x00000000
    .4byte 0xffd10003
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0xffdd0004
    .4byte 0x0000ffeb
    .4byte 0x40000000
    .4byte 0xffec0000
    .4byte 0x0000ffa9
    .4byte 0x40000000
    .4byte 0xffd30040
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00080046
    .4byte 0x0000ffc1
    .4byte 0x00000000
    .4byte 0x00000044
    .4byte 0x0000ffb1
    .4byte 0x00000000
    .4byte 0x00070045
    .4byte 0x0000ffb8
    .4byte 0x00000000
    .4byte 0xffca0044
    .4byte 0x0000ffe1
    .4byte 0x00000000
    .4byte 0xffd60046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0x00060004
    .4byte 0x0000ffc4
    .4byte 0x00000000
    .4byte 0x00090046
    .4byte 0x0000ffbb
    .4byte 0x40000000
    .4byte 0xffca0040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0xffc40000
    .4byte 0x0000ffd5
    .4byte 0x40000000
    .4byte 0xffe00000
    .4byte 0x0000ffab
    .4byte 0x40000000
    .4byte 0xffe00000
    .4byte 0x0000ffab
    .4byte 0x00000000
    .4byte 0xfffa0044
    .4byte 0x0000ffae
    .4byte 0x00000000
    .4byte 0x00040045
    .4byte 0x0000ffb4
    .4byte 0x00000000
    .4byte 0xffcc0044
    .4byte 0x0000ffe6
    .4byte 0x00000000
    .4byte 0xffce0003
    .4byte 0x0000ffe9
    .4byte 0x00000000
    .4byte 0xffd30046
    .4byte 0x0000ffee
    .4byte 0x00000000
    .4byte 0xffda0004
    .4byte 0x0000ffed
    .4byte 0x00000000
    .4byte 0x00070004
    .4byte 0x0000ffc2
    .4byte 0x00000000
    .4byte 0xffdc0004
    .4byte 0x0000ffec
    .4byte 0x00000000
    .4byte 0x00090046
    .4byte 0x0000ffbe
    .4byte 0x00000000
    .4byte 0xffd80046
    .4byte 0x0000ffee
    .4byte 0x40000000
    .4byte 0xffed0040
    .4byte 0x0000ffb3
    .4byte 0x40000000
    .4byte 0xfffb0040
    .4byte 0x0000ffa8
    .4byte 0x40000000
    .4byte 0x00090040
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x40000000
    .4byte 0xffc50000
    .4byte 0x0000ffdb
    .4byte 0x00000000
    .4byte 0xffd10003
    .4byte 0x0000fffc
    .4byte 0x00000000
    .4byte 0xffdd0004
    .4byte 0x0000fffb
    .4byte 0x40000000
    .4byte 0xffd30040
    .4byte 0x0000ffc3
    .4byte 0x00000000
    .4byte 0xffca0044
    .4byte 0x0000fff1
    .4byte 0x00000000
    .4byte 0xffd60046
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0xffca0040
    .4byte 0x0000ffce
    .4byte 0x40000000
    .4byte 0xffc40000
    .4byte 0x0000ffe5
    .4byte 0x00000000
    .4byte 0xffcc0044
    .4byte 0x0000fff6
    .4byte 0x00000000
    .4byte 0xffce0003
    .4byte 0x0000fff9
    .4byte 0x00000000
    .4byte 0xffd30046
    .4byte 0x0000fffe
    .4byte 0x00000000
    .4byte 0xffda0004
    .4byte 0x0000fffd
    .4byte 0x00000000
    .4byte 0xffdc0004
    .4byte 0x0000fffc
    .4byte 0x00000000
    .4byte 0xffd80046
    .4byte 0x0000fffe
    .4byte 0x40000000
    .4byte 0xffeb0040
    .4byte 0x0000ffb9
    .4byte 0x40000000
    .4byte 0xfff40040
    .4byte 0x0000ffb0
    .4byte 0x40000000
    .4byte 0xfffc0040
    .4byte 0x0000ffa4
    .4byte 0x40000000
    .4byte 0xffe00040
    .4byte 0x0000ffbe
    .4byte 0x40000000
    .4byte 0x00040040
    .4byte 0x0000ff98
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_086766C0
gUnknown_086766C0:  @ 0x086766C0
@ Replacing .incbin "baserom.gba", 0x6766C0, 0x74
    .4byte 0x386759f7
    .4byte gUnknown_086751A4 + 0xde
    .4byte gUnknown_086751A4 + 0x102
    .4byte gUnknown_086751A4 + 0x132
    .4byte gUnknown_086751A4 + 0x162
    .4byte gUnknown_086751A4 + 0x1aa
    .4byte gUnknown_086751A4 + 0x1f2
    .4byte gUnknown_086751A4 + 0x23a
    .4byte gUnknown_086751A4 + 0x29a
    .4byte gUnknown_086751A4 + 0x2fa
    .4byte gUnknown_086751A4 + 0x35a
    .4byte gUnknown_086751A4 + 0x3ba
    .4byte gUnknown_086751A4 + 0x432
    .4byte gUnknown_086751A4 + 0x4aa
    .4byte gUnknown_086751A4 + 0x50a
    .4byte gUnknown_086751A4 + 0x85e
    .4byte gUnknown_086751A4 + 0x8d6
    .4byte gUnknown_086751A4 + 0x92a
    .4byte gUnknown_086751A4 + 0x97e
    .4byte gUnknown_086751A4 + 0x9d2
    .4byte gUnknown_086751A4 + 0xa1a
    .4byte gUnknown_086751A4 + 0xa62
    .4byte gUnknown_086751A4 + 0xa86
    .4byte gUnknown_086751A4 + 0xaaa
    .4byte gUnknown_086751A4 + 0xace
    .4byte gUnknown_086751A4 + 0xae6
    .4byte gUnknown_086751A4 + 0xafe
    .4byte gUnknown_086751A4 + 0x851
    .4byte 0x80000000

	.global gUnknown_08676734
gUnknown_08676734:  @ 0x08676734
@ Replacing .incbin "baserom.gba", 0x676734, 0x158C
    .4byte gUnknown_086751A4 + 0xb22
    .4byte gUnknown_086751A4 + 0xb3a
    .4byte gUnknown_086751A4 + 0xb5e
    .4byte gUnknown_086751A4 + 0xb8e
    .4byte gUnknown_086751A4 + 0xbbe
    .4byte gUnknown_086751A4 + 0xbfa
    .4byte gUnknown_086751A4 + 0xc36
    .4byte gUnknown_086751A4 + 0xc72
    .4byte gUnknown_086751A4 + 0xcae
    .4byte gUnknown_086751A4 + 0xcea
    .4byte gUnknown_086751A4 + 0xd26
    .4byte gUnknown_086751A4 + 0xd6e
    .4byte gUnknown_086751A4 + 0xdb6
    .4byte gUnknown_086751A4 + 0xe0a
    .4byte gUnknown_086751A4 + 0xe5e
    .4byte gUnknown_086751A4 + 0xeb2
    .4byte gUnknown_086751A4 + 0xf06
    .4byte gUnknown_086751A4 + 0xf5a
    .4byte gUnknown_086751A4 + 0xfa2
    .4byte gUnknown_086751A4 + 0xfd2
    .4byte 0x5867618c
    .4byte 0x80000000
    .4byte 0x1867627c
    .4byte 0x80000000
    .4byte gUnknown_086751A4 + 0xde
    .4byte gUnknown_086751A4 + 0x102
    .4byte gUnknown_086751A4 + 0x132
    .4byte gUnknown_086751A4 + 0x162
    .4byte gUnknown_086751A4 + 0x1aa
    .4byte gUnknown_086751A4 + 0x1f2
    .4byte gUnknown_086751A4 + 0x23a
    .4byte gUnknown_086751A4 + 0x29a
    .4byte gUnknown_086751A4 + 0x2fa
    .4byte gUnknown_086751A4 + 0x35a
    .4byte gUnknown_086751A4 + 0x3ba
    .4byte gUnknown_086751A4 + 0x431
    .4byte gUnknown_086751A4 + 0x4a9
    .4byte gUnknown_086751A4 + 0x509
    .4byte gUnknown_086751A4 + 0x582
    .4byte gUnknown_086751A4 + 0x5fa
    .4byte gUnknown_086751A4 + 0x64e
    .4byte gUnknown_086751A4 + 0x696
    .4byte gUnknown_086751A4 + 0x6d2
    .4byte gUnknown_086751A4 + 0x702
    .4byte gUnknown_086751A4 + 0x732
    .4byte gUnknown_086751A4 + 0x762
    .4byte gUnknown_086751A4 + 0x792
    .4byte gUnknown_086751A4 + 0x7c2
    .4byte gUnknown_086751A4 + 0x7f2
    .4byte gUnknown_086751A4 + 0x822
    .4byte 0x386759f7
    .4byte 0x38675283
    .4byte 0x386752a7
    .4byte 0x386752d7
    .4byte 0x38675307
    .4byte 0x3867534f
    .4byte 0x38675397
    .4byte 0x386753df
    .4byte 0x3867543f
    .4byte 0x3867549f
    .4byte 0x386754ff
    .4byte 0x3867555f
    .4byte 0x386755d7
    .4byte 0x3867564f
    .4byte 0x386756af
    .4byte 0x38675a03
    .4byte 0x38675a7b
    .4byte 0x38675acf
    .4byte 0x38675b23
    .4byte 0x38675b77
    .4byte 0x38675bbf
    .4byte 0x38675c07
    .4byte 0x38675c2b
    .4byte 0x38675c4f
    .4byte 0x38675c73
    .4byte 0x38675c8b
    .4byte gUnknown_086751A4 + 0xafd
    .4byte 0x386759f7
    .4byte 0x80000000
    .4byte 0x18675cc4
    .4byte 0x80000000
    .4byte 0x18675a00
    .4byte 0x80000000
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffc5
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0x00000100
    .4byte 0xffba0004
    .4byte 0x0000ffc4
    .4byte 0x00000100
    .4byte 0xffba0004
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x00000100
    .4byte 0xffb90004
    .4byte 0x0000ffc2
    .4byte 0x00000100
    .4byte 0xffb90004
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00ddff80
    .4byte 0x008000dd
    .4byte 0x00000100
    .4byte 0xffb80046
    .4byte 0x0000ffc1
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffc5
    .4byte 0x00000100
    .4byte 0xffb80046
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fcffd4
    .4byte 0x002c00fc
    .4byte 0x00000100
    .4byte 0xffb70046
    .4byte 0x0000ffbe
    .4byte 0x10000000
    .4byte 0xffba0004
    .4byte 0x0000ffc4
    .4byte 0x00000100
    .4byte 0xffb70046
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0xffba0004
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fc002c
    .4byte 0xffd400fc
    .4byte 0x00000100
    .4byte 0xffb70046
    .4byte 0x0000ffbb
    .4byte 0x10000000
    .4byte 0xffb90004
    .4byte 0x0000ffc2
    .4byte 0x00000100
    .4byte 0xffb70046
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffb90004
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00dd007f
    .4byte 0xff8100dd
    .4byte 0x00000100
    .4byte 0xffb90045
    .4byte 0x0000ffb8
    .4byte 0x10000000
    .4byte 0xffb80046
    .4byte 0x0000ffc1
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffc5
    .4byte 0x00000100
    .4byte 0xffb90045
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffb80046
    .4byte 0x0000ffe7
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffe3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c3
    .4byte 0xff3d00a4
    .4byte 0x00000100
    .4byte 0xffbc0045
    .4byte 0x0000ffb4
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffbe
    .4byte 0x10000000
    .4byte 0xffba0004
    .4byte 0x0000ffc4
    .4byte 0x00000100
    .4byte 0xffbc0045
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffea
    .4byte 0x10000000
    .4byte 0xffba0004
    .4byte 0x0000ffe4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0xff100057
    .4byte 0x00000100
    .4byte 0xffc00044
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffbb
    .4byte 0x10000000
    .4byte 0xffb90004
    .4byte 0x0000ffc2
    .4byte 0x00000100
    .4byte 0xffc00044
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffb90004
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0xffc60044
    .4byte 0x0000ffae
    .4byte 0x10000000
    .4byte 0xffb90045
    .4byte 0x0000ffb8
    .4byte 0x10000000
    .4byte 0xffb80046
    .4byte 0x0000ffc1
    .4byte 0x00000100
    .4byte 0xffc60044
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xffb90045
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffb80046
    .4byte 0x0000ffe7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x40000100
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x40000100
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x10000000
    .4byte 0xffbc0045
    .4byte 0x0000ffb4
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffbe
    .4byte 0x40000100
    .4byte 0xffcc0000
    .4byte 0x0000fff7
    .4byte 0x40000100
    .4byte 0xffcc0000
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xffbc0045
    .4byte 0x0000fff4
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffea
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5c00c4
    .4byte 0xff3cff5c
    .4byte 0x40000100
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x40000100
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffbb
    .4byte 0x40000100
    .4byte 0xffd80000
    .4byte 0x0000fff5
    .4byte 0x40000100
    .4byte 0xffd80000
    .4byte 0x0000fff5
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffed
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0x40000100
    .4byte 0xffe50040
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000ffae
    .4byte 0x10000000
    .4byte 0xffb90045
    .4byte 0x0000ffb8
    .4byte 0x40000100
    .4byte 0xffe50040
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000fffa
    .4byte 0x10000000
    .4byte 0xffb90045
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x40000100
    .4byte 0xffee0040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x10000000
    .4byte 0xffbc0045
    .4byte 0x0000ffb4
    .4byte 0x40000100
    .4byte 0xffee0040
    .4byte 0x0000ffe2
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000fff7
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000fff7
    .4byte 0x10000000
    .4byte 0xffbc0045
    .4byte 0x0000fff4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff8100dd
    .4byte 0xff23ff81
    .4byte 0x40000100
    .4byte 0xfff30000
    .4byte 0x0000ffcb
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000ffb1
    .4byte 0x40000100
    .4byte 0xfff30000
    .4byte 0x0000ffd6
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000fff5
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000fff5
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0x40000100
    .4byte 0xfff40000
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffe50040
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000ffae
    .4byte 0x50000000
    .4byte 0xffe50040
    .4byte 0x0000ffef
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000fffa
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff090042
    .4byte 0xffbeff09
    .4byte 0x00000100
    .4byte 0xfff60044
    .4byte 0x0000ffe1
    .4byte 0x50000000
    .4byte 0xffee0040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff40044
    .4byte 0x0000ffe6
    .4byte 0x50000000
    .4byte 0xfff30000
    .4byte 0x0000ffcb
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff20003
    .4byte 0x0000ffe9
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffe50040
    .4byte 0x0000ffb1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffef0003
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xfff60044
    .4byte 0x0000ffe1
    .4byte 0x50000000
    .4byte 0xffee0040
    .4byte 0x0000ffbe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffed0046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xfff40044
    .4byte 0x0000ffe6
    .4byte 0x50000000
    .4byte 0xfff30000
    .4byte 0x0000ffcb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffea0046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xfff20003
    .4byte 0x0000ffe9
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffd5
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe80046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xffef0003
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xfff60044
    .4byte 0x0000ffe1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe60004
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffed0046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xfff40044
    .4byte 0x0000ffe6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe40004
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xffea0046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xfff20003
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe30004
    .4byte 0x0000ffeb
    .4byte 0x10000000
    .4byte 0xffe80046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xffef0003
    .4byte 0x0000ffec
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0x40000100
    .4byte 0xfff60040
    .4byte 0x0000ffc5
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000ffb1
    .4byte 0x40000100
    .4byte 0xfff30000
    .4byte 0x0000ffd6
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000fff5
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000fff5
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff22ff81
    .4byte 0x007fff22
    .4byte 0x40000100
    .4byte 0x00000040
    .4byte 0x0000ffc7
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000ffae
    .4byte 0x50000000
    .4byte 0xffe50000
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000fffa
    .4byte 0x50000000
    .4byte 0xffe50000
    .4byte 0x0000ffef
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x40000100
    .4byte 0x00080040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0xffee0000
    .4byte 0x0000ffbd
    .4byte 0x10000000
    .4byte 0xffd00044
    .4byte 0x0000ffb1
    .4byte 0x50000000
    .4byte 0xffee0000
    .4byte 0x0000ffe2
    .4byte 0x10000000
    .4byte 0xffd00044
    .4byte 0x0000fff7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa8ff10
    .4byte 0x00f0ffa8
    .4byte 0x40000100
    .4byte 0x000c0040
    .4byte 0x0000ffb3
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffc5
    .4byte 0x10000000
    .4byte 0xffd80044
    .4byte 0x0000ffb0
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffd9
    .4byte 0x10000000
    .4byte 0xffd80044
    .4byte 0x0000fff8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff010000
    .4byte 0x0000ff01
    .4byte 0x40000100
    .4byte 0x000f0040
    .4byte 0x0000ffa8
    .4byte 0x10000000
    .4byte 0xffe90044
    .4byte 0x0000ffb5
    .4byte 0x50000000
    .4byte 0x00000000
    .4byte 0x0000ffc8
    .4byte 0x10000000
    .4byte 0xffe90044
    .4byte 0x0000fff3
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff10ffaa
    .4byte 0x0056ff10
    .4byte 0x40000100
    .4byte 0x00140040
    .4byte 0x0000ff9d
    .4byte 0x50000000
    .4byte 0x00080000
    .4byte 0x0000ffbf
    .4byte 0x10000000
    .4byte 0xfff20044
    .4byte 0x0000ffc1
    .4byte 0x10000000
    .4byte 0xfff20044
    .4byte 0x0000ffdc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x000c0000
    .4byte 0x0000ffb3
    .4byte 0x10000000
    .4byte 0xfff80044
    .4byte 0x0000ffcb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x00000044
    .4byte 0x0000ffcb
    .4byte 0x50000000
    .4byte 0x00100000
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00160000
    .4byte 0x0000ff9d
    .4byte 0x10000000
    .4byte 0x00080044
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x000d0044
    .4byte 0x0000ffb7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x00100044
    .4byte 0x0000ffac
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x00160044
    .4byte 0x0000ffa1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0xfff40040
    .4byte 0x0000ffa4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0057ff10
    .4byte 0x00f00057
    .4byte 0x40000100
    .4byte 0xfffc0040
    .4byte 0x0000ffb0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a4ff3c
    .4byte 0x00c400a4
    .4byte 0x40000100
    .4byte 0x00050040
    .4byte 0x0000ffb9
    .4byte 0x10000000
    .4byte 0xfff80044
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fcffd4
    .4byte 0x002c00fc
    .4byte 0x40000100
    .4byte 0x00100040
    .4byte 0x0000ffbe
    .4byte 0x10000000
    .4byte 0x00000044
    .4byte 0x0000ffb4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00fc002c
    .4byte 0xffd400fc
    .4byte 0x40000100
    .4byte 0x001d0040
    .4byte 0x0000ffc3
    .4byte 0x10000000
    .4byte 0x00090044
    .4byte 0x0000ffbd
    .4byte 0x10000000
    .4byte 0xfff80044
    .4byte 0x0000ffa8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00dd007f
    .4byte 0xff8100dd
    .4byte 0x40000100
    .4byte 0x00260040
    .4byte 0x0000ffce
    .4byte 0x10000000
    .4byte 0x00140044
    .4byte 0x0000ffc2
    .4byte 0x10000000
    .4byte 0x00000044
    .4byte 0x0000ffb4
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00a400c3
    .4byte 0xff3d00a4
    .4byte 0x40000100
    .4byte 0x002b0000
    .4byte 0x0000ffdb
    .4byte 0x10000000
    .4byte 0x00210044
    .4byte 0x0000ffc7
    .4byte 0x10000000
    .4byte 0x00090044
    .4byte 0x0000ffbd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x005700f0
    .4byte 0xff100057
    .4byte 0x40000100
    .4byte 0x002c0000
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0x002a0044
    .4byte 0x0000ffd2
    .4byte 0x10000000
    .4byte 0x00140044
    .4byte 0x0000ffc2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0x002e0044
    .4byte 0x0000fff1
    .4byte 0x10000000
    .4byte 0x002f0044
    .4byte 0x0000ffdf
    .4byte 0x10000000
    .4byte 0x00210044
    .4byte 0x0000ffc7
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x00000100
    .4byte 0x002c0044
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0x00300044
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x002a0044
    .4byte 0x0000ffd2
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5c00c4
    .4byte 0xff3cff5c
    .4byte 0xffff0002
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0x002a0003
    .4byte 0x0000fff9
    .4byte 0x02000100
    .4byte 0x002e0044
    .4byte 0x0000fff1
    .4byte 0x10000000
    .4byte 0x002f0044
    .4byte 0x0000ffdf
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0002
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x00000100
    .4byte 0x00270003
    .4byte 0x0000fffc
    .4byte 0x02000100
    .4byte 0x002c0044
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0x00300044
    .4byte 0x0000ffe9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0xffff0003
    .4byte 0xff5c00c4
    .4byte 0xff3cff5c
    .4byte 0xffff0003
    .4byte 0x000000ff
    .4byte 0xff010000
    .4byte 0x00000100
    .4byte 0x00250046
    .4byte 0x0000fffe
    .4byte 0x02000100
    .4byte 0x002a0003
    .4byte 0x0000fff9
    .4byte 0x04000100
    .4byte 0x002e0044
    .4byte 0x0000fff1
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0xffff0003
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0xffff0003
    .4byte 0xffa900f0
    .4byte 0xff10ffa9
    .4byte 0x00000100
    .4byte 0x00220046
    .4byte 0x0000fffe
    .4byte 0x02000100
    .4byte 0x00270003
    .4byte 0x0000fffc
    .4byte 0x04000100
    .4byte 0x002c0044
    .4byte 0x0000fff6
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff22ff81
    .4byte 0x007fff22
    .4byte 0xffff0003
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0xffff0003
    .4byte 0xff5c00c4
    .4byte 0xff3cff5c
    .4byte 0x00000100
    .4byte 0x00200046
    .4byte 0x0000fffe
    .4byte 0x02000100
    .4byte 0x00250046
    .4byte 0x0000fffe
    .4byte 0x04000100
    .4byte 0x002a0003
    .4byte 0x0000fff9
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0xffff0003
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0xffff0003
    .4byte 0xff230080
    .4byte 0xff80ff23
    .4byte 0x00000100
    .4byte 0x001e0004
    .4byte 0x0000fffd
    .4byte 0x02000100
    .4byte 0x00220046
    .4byte 0x0000fffe
    .4byte 0x04000100
    .4byte 0x00270003
    .4byte 0x0000fffc
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0003
    .4byte 0xffa8ff10
    .4byte 0x00f0ffa8
    .4byte 0xffff0003
    .4byte 0xff22ff81
    .4byte 0x007fff22
    .4byte 0xffff0003
    .4byte 0xff04002d
    .4byte 0xffd3ff04
    .4byte 0x00000100
    .4byte 0x001c0004
    .4byte 0x0000fffc
    .4byte 0x02000100
    .4byte 0x00200046
    .4byte 0x0000fffe
    .4byte 0x04000100
    .4byte 0x00250046
    .4byte 0x0000fffe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0002
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0xffff0002
    .4byte 0xff04ffd5
    .4byte 0x002bff04
    .4byte 0x10000000
    .4byte 0x001b0004
    .4byte 0x0000fffb
    .4byte 0x00000100
    .4byte 0x001e0004
    .4byte 0x0000fffd
    .4byte 0x02000100
    .4byte 0x00220046
    .4byte 0x0000fffe
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0xff5bff3d
    .4byte 0x00c3ff5b
    .4byte 0x10000000
    .4byte 0x001b0004
    .4byte 0x0000fffb
    .4byte 0x00000100
    .4byte 0x001e0004
    .4byte 0x0000fffd
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0x001b0004
    .4byte 0x0000fffb
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffbb0004
    .4byte 0x0000ffc5
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0xfff30000
    .4byte 0x0000ffcb
    .4byte 0x10000000
    .4byte 0xffef0003
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xffe30004
    .4byte 0x0000ffeb
    .4byte 0x50000000
    .4byte 0xffcc0000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0xffe50040
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffb80046
    .4byte 0x0000ffc1
    .4byte 0x10000000
    .4byte 0xffc00044
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xffb90045
    .4byte 0x0000ffb8
    .4byte 0x10000000
    .4byte 0xfff60044
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0xffea0046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xffba0004
    .4byte 0x0000ffc4
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffbb
    .4byte 0x50000000
    .4byte 0xffee0040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0xfff40000
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0xffd80000
    .4byte 0x0000ffab
    .4byte 0x10000000
    .4byte 0xffc60044
    .4byte 0x0000ffae
    .4byte 0x10000000
    .4byte 0xffbc0045
    .4byte 0x0000ffb4
    .4byte 0x10000000
    .4byte 0xfff40044
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0xfff20003
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0xffed0046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xffe60004
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xffb90004
    .4byte 0x0000ffc2
    .4byte 0x10000000
    .4byte 0xffe40004
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xffb70046
    .4byte 0x0000ffbe
    .4byte 0x10000000
    .4byte 0xffe80046
    .4byte 0x0000ffee
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x00110040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0x001f0040
    .4byte 0x0000ffb3
    .4byte 0x50000000
    .4byte 0x002d0040
    .4byte 0x0000ffa8
    .4byte 0x50000000
    .4byte 0x003b0040
    .4byte 0x0000ff9d
    .4byte 0x50000000
    .4byte 0x00030040
    .4byte 0x0000ffb3
    .4byte 0x50000000
    .4byte 0xfff50040
    .4byte 0x0000ffa8
    .4byte 0x50000000
    .4byte 0xffe70040
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xfff30004
    .4byte 0x0000ffc5
    .4byte 0x50000000
    .4byte 0x00040000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0x002b0000
    .4byte 0x0000ffcb
    .4byte 0x10000000
    .4byte 0x00270003
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0x001b0004
    .4byte 0x0000ffeb
    .4byte 0x50000000
    .4byte 0x00040000
    .4byte 0x0000ffa9
    .4byte 0x50000000
    .4byte 0x001d0040
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xfff00046
    .4byte 0x0000ffc1
    .4byte 0x10000000
    .4byte 0xfff80044
    .4byte 0x0000ffb1
    .4byte 0x10000000
    .4byte 0xfff10045
    .4byte 0x0000ffb8
    .4byte 0x10000000
    .4byte 0x002e0044
    .4byte 0x0000ffe1
    .4byte 0x10000000
    .4byte 0x00220046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0xfff20004
    .4byte 0x0000ffc4
    .4byte 0x10000000
    .4byte 0xffef0046
    .4byte 0x0000ffbb
    .4byte 0x50000000
    .4byte 0x00260040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0x002c0000
    .4byte 0x0000ffd5
    .4byte 0x50000000
    .4byte 0x00100000
    .4byte 0x0000ffab
    .4byte 0x50000000
    .4byte 0x00100000
    .4byte 0x0000ffab
    .4byte 0x10000000
    .4byte 0xfffe0044
    .4byte 0x0000ffae
    .4byte 0x10000000
    .4byte 0xfff40045
    .4byte 0x0000ffb4
    .4byte 0x10000000
    .4byte 0x002c0044
    .4byte 0x0000ffe6
    .4byte 0x10000000
    .4byte 0x002a0003
    .4byte 0x0000ffe9
    .4byte 0x10000000
    .4byte 0x00250046
    .4byte 0x0000ffee
    .4byte 0x10000000
    .4byte 0x001e0004
    .4byte 0x0000ffed
    .4byte 0x10000000
    .4byte 0xfff10004
    .4byte 0x0000ffc2
    .4byte 0x10000000
    .4byte 0x001c0004
    .4byte 0x0000ffec
    .4byte 0x10000000
    .4byte 0xffef0046
    .4byte 0x0000ffbe
    .4byte 0x10000000
    .4byte 0x00200046
    .4byte 0x0000ffee
    .4byte 0x50000000
    .4byte 0x00030040
    .4byte 0x0000ffb3
    .4byte 0x50000000
    .4byte 0xfff50040
    .4byte 0x0000ffa8
    .4byte 0x50000000
    .4byte 0xffe70040
    .4byte 0x0000ff9d
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50000000
    .4byte 0x002b0000
    .4byte 0x0000ffdb
    .4byte 0x10000000
    .4byte 0x00270003
    .4byte 0x0000fffc
    .4byte 0x10000000
    .4byte 0x001b0004
    .4byte 0x0000fffb
    .4byte 0x50000000
    .4byte 0x001d0040
    .4byte 0x0000ffc3
    .4byte 0x10000000
    .4byte 0x002e0044
    .4byte 0x0000fff1
    .4byte 0x10000000
    .4byte 0x00220046
    .4byte 0x0000fffe
    .4byte 0x50000000
    .4byte 0x00260040
    .4byte 0x0000ffce
    .4byte 0x50000000
    .4byte 0x002c0000
    .4byte 0x0000ffe5
    .4byte 0x10000000
    .4byte 0x002c0044
    .4byte 0x0000fff6
    .4byte 0x10000000
    .4byte 0x002a0003
    .4byte 0x0000fff9
    .4byte 0x10000000
    .4byte 0x00250046
    .4byte 0x0000fffe
    .4byte 0x10000000
    .4byte 0x001e0004
    .4byte 0x0000fffd
    .4byte 0x10000000
    .4byte 0x001c0004
    .4byte 0x0000fffc
    .4byte 0x10000000
    .4byte 0x00200046
    .4byte 0x0000fffe
    .4byte 0x50000000
    .4byte 0x00050040
    .4byte 0x0000ffb9
    .4byte 0x50000000
    .4byte 0xfffc0040
    .4byte 0x0000ffb0
    .4byte 0x50000000
    .4byte 0xfff40040
    .4byte 0x0000ffa4
    .4byte 0x50000000
    .4byte 0x00100040
    .4byte 0x0000ffbe
    .4byte 0x50000000
    .4byte 0xffec0040
    .4byte 0x0000ff98
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_08677CC0
gUnknown_08677CC0:  @ 0x08677CC0
@ Replacing .incbin "baserom.gba", 0x677CC0, 0x74
    .4byte 0x38676ff7
    .4byte gUnknown_08676734 + 0x14e
    .4byte gUnknown_08676734 + 0x172
    .4byte gUnknown_08676734 + 0x1a2
    .4byte gUnknown_08676734 + 0x1d2
    .4byte gUnknown_08676734 + 0x21a
    .4byte gUnknown_08676734 + 0x262
    .4byte gUnknown_08676734 + 0x2aa
    .4byte gUnknown_08676734 + 0x30a
    .4byte gUnknown_08676734 + 0x36a
    .4byte gUnknown_08676734 + 0x3ca
    .4byte gUnknown_08676734 + 0x42a
    .4byte gUnknown_08676734 + 0x4a2
    .4byte gUnknown_08676734 + 0x51a
    .4byte gUnknown_08676734 + 0x57a
    .4byte gUnknown_08676734 + 0x8ce
    .4byte gUnknown_08676734 + 0x946
    .4byte gUnknown_08676734 + 0x99a
    .4byte gUnknown_08676734 + 0x9ee
    .4byte gUnknown_08676734 + 0xa42
    .4byte gUnknown_08676734 + 0xa8a
    .4byte gUnknown_08676734 + 0xad2
    .4byte gUnknown_08676734 + 0xaf6
    .4byte gUnknown_08676734 + 0xb1a
    .4byte gUnknown_08676734 + 0xb3e
    .4byte gUnknown_08676734 + 0xb56
    .4byte gUnknown_08676734 + 0xb6e
    .4byte gUnknown_08676734 + 0x8c1
    .4byte 0x80000000

	.global gUnknown_08677D34
gUnknown_08677D34:  @ 0x08677D34
	.incbin "baserom.gba", 0x677D34, 0x14C    @ 0x677E80 - 0x677D34

	.global Tsa_08677E80
Tsa_08677E80:  @ 0x08677E80
	.incbin "baserom.gba", 0x677E80, 0x10C    @ 0x677F8C - 0x677E80

	.global Tsa_08677F8C
Tsa_08677F8C:  @ 0x08677F8C
	.incbin "baserom.gba", 0x677F8C, 0x100    @ 0x67808C - 0x677F8C

	.global Tsa_0867808C
Tsa_0867808C:  @ 0x0867808C
	.incbin "baserom.gba", 0x67808C, 0x10C    @ 0x678198 - 0x67808C

	.global Tsa_08678198
Tsa_08678198:  @ 0x08678198
	.incbin "baserom.gba", 0x678198, 0x10C    @ 0x6782A4 - 0x678198

	.global Tsa_086782A4
Tsa_086782A4:  @ 0x086782A4
	.incbin "baserom.gba", 0x6782A4, 0x47C    @ 0x678720 - 0x6782A4

	.global gUnknown_08678720
gUnknown_08678720:  @ 0x08678720
	.incbin "baserom.gba", 0x678720, 0x200

	.global gUnknown_08678920
gUnknown_08678920:  @ 0x08678920
	.incbin "baserom.gba", 0x678920, 0x200

	.global gUnknown_08678B20
gUnknown_08678B20:  @ 0x08678B20
	.incbin "baserom.gba", 0x678B20, 0xFE4    @ 0x679B04 - 0x678B20

	.global Img_08679B04
Img_08679B04:  @ 0x08679B04
	.incbin "baserom.gba", 0x679B04, 0x62C    @ 0x67A130 - 0x679B04

	.global Img_0867A130
Img_0867A130:  @ 0x0867A130
	.incbin "baserom.gba", 0x67A130, 0x6F8    @ 0x67A828 - 0x67A130

	.global Img_0867A828
Img_0867A828:  @ 0x0867A828
	.incbin "baserom.gba", 0x67A828, 0x620    @ 0x67AE48 - 0x67A828

	.global Img_0867AE48
Img_0867AE48:  @ 0x0867AE48
	.incbin "baserom.gba", 0x67AE48, 0x75C    @ 0x67B5A4 - 0x67AE48

	.global gUnknown_0867B5A4
gUnknown_0867B5A4:  @ 0x0867B5A4
	.incbin "baserom.gba", 0x67B5A4, 0x20    @ 0x67B5C4 - 0x67B5A4

	.global Tsa_0867B5C4
Tsa_0867B5C4:  @ 0x0867B5C4
	.incbin "baserom.gba", 0x67B5C4, 0xAC    @ 0x67B670 - 0x67B5C4

	.global Tsa_0867B670
Tsa_0867B670:  @ 0x0867B670
	.incbin "baserom.gba", 0x67B670, 0xB4    @ 0x67B724 - 0x67B670

	.global Tsa_0867B724
Tsa_0867B724:  @ 0x0867B724
	.incbin "baserom.gba", 0x67B724, 0xC0    @ 0x67B7E4 - 0x67B724

	.global Tsa_0867B7E4
Tsa_0867B7E4:  @ 0x0867B7E4
	.incbin "baserom.gba", 0x67B7E4, 0xC8    @ 0x67B8AC - 0x67B7E4

	.global Tsa_0867B8AC
Tsa_0867B8AC:  @ 0x0867B8AC
	.incbin "baserom.gba", 0x67B8AC, 0xDC    @ 0x67B988 - 0x67B8AC

	.global Tsa_0867B988
Tsa_0867B988:  @ 0x0867B988
	.incbin "baserom.gba", 0x67B988, 0xE0    @ 0x67BA68 - 0x67B988

	.global Tsa_0867BA68
Tsa_0867BA68:  @ 0x0867BA68
	.incbin "baserom.gba", 0x67BA68, 0xE8    @ 0x67BB50 - 0x67BA68

	.global Tsa_0867BB50
Tsa_0867BB50:  @ 0x0867BB50
	.incbin "baserom.gba", 0x67BB50, 0xF0    @ 0x67BC40 - 0x67BB50

	.global Tsa_0867BC40
Tsa_0867BC40:  @ 0x0867BC40
	.incbin "baserom.gba", 0x67BC40, 0x100    @ 0x67BD40 - 0x67BC40

	.global Tsa_0867BD40
Tsa_0867BD40:  @ 0x0867BD40
	.incbin "baserom.gba", 0x67BD40, 0x10C    @ 0x67BE4C - 0x67BD40

	.global Tsa_0867BE4C
Tsa_0867BE4C:  @ 0x0867BE4C
	.incbin "baserom.gba", 0x67BE4C, 0x120    @ 0x67BF6C - 0x67BE4C

	.global Tsa_0867BF6C
Tsa_0867BF6C:  @ 0x0867BF6C
	.incbin "baserom.gba", 0x67BF6C, 0x130    @ 0x67C09C - 0x67BF6C

	.global Tsa_0867C09C
Tsa_0867C09C:  @ 0x0867C09C
	.incbin "baserom.gba", 0x67C09C, 0x2D68    @ 0x67EE04 - 0x67C09C

	.global gUnknown_0867EE04
gUnknown_0867EE04:  @ 0x0867EE04
@ Replacing .incbin "baserom.gba", 0x67EE04, 0xB0
    .4byte gUnknown_0867B5A4 + 0xc3a
    .4byte gUnknown_0867B5A4 + 0xc52
    .4byte gUnknown_0867B5A4 + 0xc76
    .4byte gUnknown_0867B5A4 + 0xcb2
    .4byte gUnknown_0867B5A4 + 0xd06
    .4byte gUnknown_0867B5A4 + 0xd72
    .4byte gUnknown_0867B5A4 + 0xdf6
    .4byte gUnknown_0867B5A4 + 0xe92
    .4byte gUnknown_0867B5A4 + 0xf52
    .4byte gUnknown_0867B5A4 + 0x1036
    .4byte gUnknown_0867B5A4 + 0x113e
    .4byte gUnknown_0867B5A4 + 0x126a
    .4byte gUnknown_0867B5A4 + 0x13ba
    .4byte gUnknown_0867B5A4 + 0x1522
    .4byte gUnknown_0867B5A4 + 0x16a2
    .4byte gUnknown_0867B5A4 + 0x1846
    .4byte gUnknown_0867B5A4 + 0x1a02
    .4byte gUnknown_0867B5A4 + 0x1bd6
    .4byte gUnknown_0867B5A4 + 0x1db6
    .4byte gUnknown_0867B5A4 + 0x1fa2
    .4byte gUnknown_0867B5A4 + 0x218e
    .4byte gUnknown_0867B5A4 + 0x236e
    .4byte gUnknown_0867B5A4 + 0x2542
    .4byte gUnknown_0867B5A4 + 0x270a
    .4byte gUnknown_0867B5A4 + 0x28ae
    .4byte gUnknown_0867B5A4 + 0x2a2e
    .4byte gUnknown_0867B5A4 + 0x2b96
    .4byte gUnknown_0867B5A4 + 0x2ce6
    .4byte gUnknown_0867B5A4 + 0x2e12
    .4byte gUnknown_0867B5A4 + 0x2f1a
    .4byte gUnknown_0867B5A4 + 0x300a
    .4byte gUnknown_0867B5A4 + 0x30e2
    .4byte gUnknown_0867B5A4 + 0x31a2
    .4byte gUnknown_0867B5A4 + 0x323e
    .4byte gUnknown_0867B5A4 + 0x32ce
    .4byte gUnknown_0867B5A4 + 0x3346
    .4byte gUnknown_0867B5A4 + 0x33a6
    .4byte gUnknown_0867B5A4 + 0x33ee
    .4byte gUnknown_0867B5A4 + 0x342a
    .4byte gUnknown_0867B5A4 + 0x345a
    .4byte gUnknown_0867B5A4 + 0x347e
    .4byte 0x7867ea3b
    .4byte 0x84000013
    .4byte 0x81000000

	.global Img_SilenceBg
Img_SilenceBg:  @ 0x0867EEB4
	.incbin "baserom.gba", 0x67EEB4, 0xAC8    @ 0x67F97C - 0x67EEB4

	.global Tsa_0867F97C
Tsa_0867F97C:  @ 0x0867F97C
	.incbin "baserom.gba", 0x67F97C, 0xFC    @ 0x67FA78 - 0x67F97C

	.global Tsa_0867FA78
Tsa_0867FA78:  @ 0x0867FA78
	.incbin "baserom.gba", 0x67FA78, 0xE8    @ 0x67FB60 - 0x67FA78

	.global Tsa_0867FB60
Tsa_0867FB60:  @ 0x0867FB60
	.incbin "baserom.gba", 0x67FB60, 0xE8    @ 0x67FC48 - 0x67FB60

	.global Tsa_0867FC48
Tsa_0867FC48:  @ 0x0867FC48
	.incbin "baserom.gba", 0x67FC48, 0xE8    @ 0x67FD30 - 0x67FC48

	.global Tsa_0867FD30
Tsa_0867FD30:  @ 0x0867FD30
	.incbin "baserom.gba", 0x67FD30, 0xFC    @ 0x67FE2C - 0x67FD30

	.global Tsa_0867FE2C
Tsa_0867FE2C:  @ 0x0867FE2C
	.incbin "baserom.gba", 0x67FE2C, 0xE8    @ 0x67FF14 - 0x67FE2C

	.global Tsa_0867FF14
Tsa_0867FF14:  @ 0x0867FF14
	.incbin "baserom.gba", 0x67FF14, 0x98    @ 0x67FFAC - 0x67FF14

	.global Tsa_0867FFAC
Tsa_0867FFAC:  @ 0x0867FFAC
	.incbin "baserom.gba", 0x67FFAC, 0xE8    @ 0x680094 - 0x67FFAC

	.global Tsa_08680094
Tsa_08680094:  @ 0x08680094
	.incbin "baserom.gba", 0x680094, 0x98    @ 0x68012C - 0x680094

	.global Tsa_0868012C
Tsa_0868012C:  @ 0x0868012C
	.incbin "baserom.gba", 0x68012C, 0xE8    @ 0x680214 - 0x68012C

	.global Tsa_08680214
Tsa_08680214:  @ 0x08680214
	.incbin "baserom.gba", 0x680214, 0xFC    @ 0x680310 - 0x680214

	.global Tsa_08680310
Tsa_08680310:  @ 0x08680310
	.incbin "baserom.gba", 0x680310, 0x98    @ 0x6803A8 - 0x680310

	.global Tsa_086803A8
Tsa_086803A8:  @ 0x086803A8
	.incbin "baserom.gba", 0x6803A8, 0xE8    @ 0x680490 - 0x6803A8

	.global Tsa_08680490
Tsa_08680490:  @ 0x08680490
	.incbin "baserom.gba", 0x680490, 0x98    @ 0x680528 - 0x680490

	.global Tsa_08680528
Tsa_08680528:  @ 0x08680528
	.incbin "baserom.gba", 0x680528, 0xFC    @ 0x680624 - 0x680528

	.global Tsa_08680624
Tsa_08680624:  @ 0x08680624
	.incbin "baserom.gba", 0x680624, 0x98    @ 0x6806BC - 0x680624

	.global Tsa_086806BC
Tsa_086806BC:  @ 0x086806BC
	.incbin "baserom.gba", 0x6806BC, 0x110    @ 0x6807CC - 0x6806BC

	.global Tsa_086807CC
Tsa_086807CC:  @ 0x086807CC
	.incbin "baserom.gba", 0x6807CC, 0xD4    @ 0x6808A0 - 0x6807CC

	.global Img_SilenceSprites
Img_SilenceSprites:  @ 0x086808A0
	.incbin "baserom.gba", 0x6808A0, 0x520

	.global Pal_Silence
Pal_Silence:  @ 0x08680DC0
	.incbin "baserom.gba", 0x680DC0, 0x23C

	.global gUnknown_08680FFC
gUnknown_08680FFC:  @ 0x08680FFC
	.incbin "baserom.gba", 0x680FFC, 0xBC

	.global Pal_HammerneBg
Pal_HammerneBg:  @ 0x086810B8
	.incbin "baserom.gba", 0x6810B8, 0x20    @ 0x6810D8 - 0x6810B8

	.global Tsa_086810D8
Tsa_086810D8:  @ 0x086810D8
	.incbin "baserom.gba", 0x6810D8, 0xAC    @ 0x681184 - 0x6810D8

	.global Tsa_08681184
Tsa_08681184:  @ 0x08681184
	.incbin "baserom.gba", 0x681184, 0xB0    @ 0x681234 - 0x681184

	.global Tsa_08681234
Tsa_08681234:  @ 0x08681234
	.incbin "baserom.gba", 0x681234, 0xC0    @ 0x6812F4 - 0x681234

	.global Tsa_086812F4
Tsa_086812F4:  @ 0x086812F4
	.incbin "baserom.gba", 0x6812F4, 0xC8    @ 0x6813BC - 0x6812F4

	.global Tsa_086813BC
Tsa_086813BC:  @ 0x086813BC
	.incbin "baserom.gba", 0x6813BC, 0xD8    @ 0x681494 - 0x6813BC

	.global Tsa_08681494
Tsa_08681494:  @ 0x08681494
	.incbin "baserom.gba", 0x681494, 0xDC    @ 0x681570 - 0x681494

	.global Tsa_08681570
Tsa_08681570:  @ 0x08681570
	.incbin "baserom.gba", 0x681570, 0xE8    @ 0x681658 - 0x681570

	.global Tsa_08681658
Tsa_08681658:  @ 0x08681658
	.incbin "baserom.gba", 0x681658, 0xF0    @ 0x681748 - 0x681658

	.global Tsa_08681748
Tsa_08681748:  @ 0x08681748
	.incbin "baserom.gba", 0x681748, 0x100    @ 0x681848 - 0x681748

	.global Tsa_08681848
Tsa_08681848:  @ 0x08681848
	.incbin "baserom.gba", 0x681848, 0x10C    @ 0x681954 - 0x681848

	.global Tsa_08681954
Tsa_08681954:  @ 0x08681954
	.incbin "baserom.gba", 0x681954, 0x120    @ 0x681A74 - 0x681954

	.global Tsa_08681A74
Tsa_08681A74:  @ 0x08681A74
	.incbin "baserom.gba", 0x681A74, 0x130    @ 0x681BA4 - 0x681A74

	.global Tsa_08681BA4
Tsa_08681BA4:  @ 0x08681BA4
	.incbin "baserom.gba", 0x681BA4, 0x2D64    @ 0x684908 - 0x681BA4

	.global gUnknown_08684908
gUnknown_08684908:  @ 0x08684908
@ Replacing .incbin "baserom.gba", 0x684908, 0xB0
    .4byte Pal_HammerneBg + 0xc2a
    .4byte Pal_HammerneBg + 0xc42
    .4byte Pal_HammerneBg + 0xc66
    .4byte Pal_HammerneBg + 0xca2
    .4byte Pal_HammerneBg + 0xcf6
    .4byte Pal_HammerneBg + 0xd62
    .4byte Pal_HammerneBg + 0xde6
    .4byte Pal_HammerneBg + 0xe82
    .4byte Pal_HammerneBg + 0xf42
    .4byte Pal_HammerneBg + 0x1026
    .4byte Pal_HammerneBg + 0x112e
    .4byte Pal_HammerneBg + 0x125a
    .4byte Pal_HammerneBg + 0x13aa
    .4byte Pal_HammerneBg + 0x1512
    .4byte Pal_HammerneBg + 0x1692
    .4byte Pal_HammerneBg + 0x1836
    .4byte Pal_HammerneBg + 0x19f2
    .4byte Pal_HammerneBg + 0x1bc6
    .4byte Pal_HammerneBg + 0x1da6
    .4byte Pal_HammerneBg + 0x1f92
    .4byte Pal_HammerneBg + 0x217e
    .4byte Pal_HammerneBg + 0x235e
    .4byte Pal_HammerneBg + 0x2532
    .4byte Pal_HammerneBg + 0x26fa
    .4byte Pal_HammerneBg + 0x289e
    .4byte Pal_HammerneBg + 0x2a1e
    .4byte Pal_HammerneBg + 0x2b86
    .4byte Pal_HammerneBg + 0x2cd6
    .4byte Pal_HammerneBg + 0x2e02
    .4byte Pal_HammerneBg + 0x2f0a
    .4byte Pal_HammerneBg + 0x2ffa
    .4byte Pal_HammerneBg + 0x30d2
    .4byte Pal_HammerneBg + 0x3192
    .4byte Pal_HammerneBg + 0x322e
    .4byte Pal_HammerneBg + 0x32be
    .4byte Pal_HammerneBg + 0x3336
    .4byte Pal_HammerneBg + 0x3396
    .4byte Pal_HammerneBg + 0x33de
    .4byte Pal_HammerneBg + 0x341a
    .4byte Pal_HammerneBg + 0x344a
    .4byte Pal_HammerneBg + 0x346e
    .4byte 0x7868453f
    .4byte 0x84000013
    .4byte 0x81000000

	.global Img_086849B8
Img_086849B8:  @ 0x086849B8
	.incbin "baserom.gba", 0x6849B8, 0x100

	.global gUnknown_08684AB8
gUnknown_08684AB8:  @ 0x08684AB8
	.incbin "baserom.gba", 0x684AB8, 0x820

	.global Img_SleepBg
Img_SleepBg:  @ 0x086852D8
	.incbin "baserom.gba", 0x6852D8, 0xECC

	.global Pal_SleepBg
Pal_SleepBg:  @ 0x086861A4
	.incbin "baserom.gba", 0x6861A4, 0x20    @ 0x6861C4 - 0x6861A4

	.global Tsa_086861C4
Tsa_086861C4:  @ 0x086861C4
	.incbin "baserom.gba", 0x6861C4, 0xDC    @ 0x6862A0 - 0x6861C4

	.global Tsa_086862A0
Tsa_086862A0:  @ 0x086862A0
	.incbin "baserom.gba", 0x6862A0, 0xDC    @ 0x68637C - 0x6862A0

	.global Tsa_0868637C
Tsa_0868637C:  @ 0x0868637C
	.incbin "baserom.gba", 0x68637C, 0xDC    @ 0x686458 - 0x68637C

	.global Tsa_08686458
Tsa_08686458:  @ 0x08686458
	.incbin "baserom.gba", 0x686458, 0xDC    @ 0x686534 - 0x686458

	.global Tsa_08686534
Tsa_08686534:  @ 0x08686534
	.incbin "baserom.gba", 0x686534, 0xDC    @ 0x686610 - 0x686534

	.global Tsa_08686610
Tsa_08686610:  @ 0x08686610
	.incbin "baserom.gba", 0x686610, 0xDC    @ 0x6866EC - 0x686610

	.global Tsa_086866EC
Tsa_086866EC:  @ 0x086866EC
	.incbin "baserom.gba", 0x6866EC, 0xDC    @ 0x6867C8 - 0x6866EC

	.global Tsa_086867C8
Tsa_086867C8:  @ 0x086867C8
	.incbin "baserom.gba", 0x6867C8, 0xDC    @ 0x6868A4 - 0x6867C8

	.global Tsa_086868A4
Tsa_086868A4:  @ 0x086868A4
	.incbin "baserom.gba", 0x6868A4, 0xDC    @ 0x686980 - 0x6868A4

	.global Tsa_08686980
Tsa_08686980:  @ 0x08686980
	.incbin "baserom.gba", 0x686980, 0xDC    @ 0x686A5C - 0x686980

	.global Tsa_08686A5C
Tsa_08686A5C:  @ 0x08686A5C
	.incbin "baserom.gba", 0x686A5C, 0xDC    @ 0x686B38 - 0x686A5C

	.global Tsa_08686B38
Tsa_08686B38:  @ 0x08686B38
	.incbin "baserom.gba", 0x686B38, 0xDC    @ 0x686C14 - 0x686B38

	.global Tsa_08686C14
Tsa_08686C14:  @ 0x08686C14
	.incbin "baserom.gba", 0x686C14, 0xDC    @ 0x686CF0 - 0x686C14

	.global Tsa_08686CF0
Tsa_08686CF0:  @ 0x08686CF0
	.incbin "baserom.gba", 0x686CF0, 0xDC    @ 0x686DCC - 0x686CF0

	.global Tsa_08686DCC
Tsa_08686DCC:  @ 0x08686DCC
	.incbin "baserom.gba", 0x686DCC, 0xDC    @ 0x686EA8 - 0x686DCC

	.global Tsa_08686EA8
Tsa_08686EA8:  @ 0x08686EA8
	.incbin "baserom.gba", 0x686EA8, 0xDC    @ 0x686F84 - 0x686EA8

	.global Img_SleepSprites
Img_SleepSprites:  @ 0x08686F84
	.incbin "baserom.gba", 0x686F84, 0x1E8

	.global Pal_SleepSprites
Pal_SleepSprites:  @ 0x0868716C
	.incbin "baserom.gba", 0x68716C, 0x20

	.global Pal_HammerneSprites
Pal_HammerneSprites:  @ 0x0868718C
	.incbin "baserom.gba", 0x68718C, 0x4FDC

	.global gUnknown_0868C168
gUnknown_0868C168:  @ 0x0868C168
@ Replacing .incbin "baserom.gba", 0x68C168, 0x180
    .4byte Pal_HammerneSprites + 0x23
    .4byte Pal_HammerneSprites + 0x47
    .4byte Pal_HammerneSprites + 0x83
    .4byte Pal_HammerneSprites + 0xef
    .4byte Pal_HammerneSprites + 0x17f
    .4byte Pal_HammerneSprites + 0x233
    .4byte Pal_HammerneSprites + 0x2f3
    .4byte Pal_HammerneSprites + 0x3cb
    .4byte Pal_HammerneSprites + 0x4bb
    .4byte Pal_HammerneSprites + 0x5c3
    .4byte Pal_HammerneSprites + 0x6d7
    .4byte Pal_HammerneSprites + 0x7f7
    .4byte Pal_HammerneSprites + 0x923
    .4byte Pal_HammerneSprites + 0xa43
    .4byte Pal_HammerneSprites + 0xb63
    .4byte Pal_HammerneSprites + 0xc3b
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0xda2
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0xe3e
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0xeda
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0xf76
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0x1006
    .4byte Pal_HammerneSprites + 0x1097
    .4byte Pal_HammerneSprites + 0x10bb
    .4byte Pal_HammerneSprites + 0x10f7
    .4byte Pal_HammerneSprites + 0x1163
    .4byte Pal_HammerneSprites + 0x11f3
    .4byte Pal_HammerneSprites + 0x12a7
    .4byte Pal_HammerneSprites + 0x1367
    .4byte Pal_HammerneSprites + 0x143f
    .4byte Pal_HammerneSprites + 0x1523
    .4byte Pal_HammerneSprites + 0x161f
    .4byte Pal_HammerneSprites + 0x1727
    .4byte Pal_HammerneSprites + 0x183b
    .4byte Pal_HammerneSprites + 0x194f
    .4byte Pal_HammerneSprites + 0x1a63
    .4byte Pal_HammerneSprites + 0x1b77
    .4byte Pal_HammerneSprites + 0x1c4f
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0x1d0e
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0x1daa
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0x1e46
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0x1ee2
    .4byte Pal_HammerneSprites + 0xced
    .4byte Pal_HammerneSprites + 0x1f72
    .4byte Pal_HammerneSprites + 0x2002
    .4byte Pal_HammerneSprites + 0x2032
    .4byte Pal_HammerneSprites + 0x207a
    .4byte Pal_HammerneSprites + 0x20da
    .4byte Pal_HammerneSprites + 0x2152
    .4byte Pal_HammerneSprites + 0x21e2
    .4byte Pal_HammerneSprites + 0x227e
    .4byte Pal_HammerneSprites + 0x2332
    .4byte Pal_HammerneSprites + 0x23f2
    .4byte Pal_HammerneSprites + 0x24be
    .4byte Pal_HammerneSprites + 0x2596
    .4byte Pal_HammerneSprites + 0x267a
    .4byte Pal_HammerneSprites + 0x276a
    .4byte Pal_HammerneSprites + 0x2866
    .4byte Pal_HammerneSprites + 0x296e
    .4byte Pal_HammerneSprites + 0x2a82
    .4byte Pal_HammerneSprites + 0x2ba2
    .4byte Pal_HammerneSprites + 0x2cce
    .4byte Pal_HammerneSprites + 0x2e06
    .4byte Pal_HammerneSprites + 0x2f3e
    .4byte Pal_HammerneSprites + 0x3082
    .4byte Pal_HammerneSprites + 0x31c6
    .4byte Pal_HammerneSprites + 0x3316
    .4byte Pal_HammerneSprites + 0x3466
    .4byte Pal_HammerneSprites + 0x35aa
    .4byte Pal_HammerneSprites + 0x36d6
    .4byte Pal_HammerneSprites + 0x37f6
    .4byte Pal_HammerneSprites + 0x390a
    .4byte Pal_HammerneSprites + 0x3a06
    .4byte Pal_HammerneSprites + 0x3aea
    .4byte Pal_HammerneSprites + 0x3bb6
    .4byte Pal_HammerneSprites + 0x3c6a
    .4byte Pal_HammerneSprites + 0x3d12
    .4byte Pal_HammerneSprites + 0x3da2
    .4byte Pal_HammerneSprites + 0x3e26
    .4byte Pal_HammerneSprites + 0x3e9e
    .4byte Pal_HammerneSprites + 0x3f0a
    .4byte Pal_HammerneSprites + 0x3f6a
    .4byte Pal_HammerneSprites + 0x3fbe
    .4byte Pal_HammerneSprites + 0x4006
    .4byte Pal_HammerneSprites + 0x4042
    .4byte Pal_HammerneSprites + 0x4072
    .4byte Pal_HammerneSprites + 0x4096
    .4byte 0x81000000

	.global gUnknown_0868C2E8
gUnknown_0868C2E8:  @ 0x0868C2E8
@ Replacing .incbin "baserom.gba", 0x68C2E8, 0x50
    .4byte Pal_HammerneSprites + 0x40af
    .4byte Pal_HammerneSprites + 0x4a62
    .4byte Pal_HammerneSprites + 0x4a92
    .4byte Pal_HammerneSprites + 0x4ace
    .4byte Pal_HammerneSprites + 0x4b16
    .4byte Pal_HammerneSprites + 0x4b6a
    .4byte Pal_HammerneSprites + 0x4bca
    .4byte Pal_HammerneSprites + 0x4c36
    .4byte Pal_HammerneSprites + 0x4cae
    .4byte Pal_HammerneSprites + 0x4d32
    .4byte Pal_HammerneSprites + 0x4db6
    .4byte Pal_HammerneSprites + 0x4e22
    .4byte Pal_HammerneSprites + 0x4e82
    .4byte Pal_HammerneSprites + 0x4eee
    .4byte Pal_HammerneSprites + 0x4f36
    .4byte Pal_HammerneSprites + 0x4f72
    .4byte Pal_HammerneSprites + 0x4fa2
    .4byte 0x7868c153
    .4byte 0x84000013
    .4byte 0x81000000

	.global Pal_BerserkBg
Pal_BerserkBg:  @ 0x0868C338
	.incbin "baserom.gba", 0x68C338, 0x20

	.global Img_BerserkSprites_A
Img_BerserkSprites_A:  @ 0x0868C358
	.incbin "baserom.gba", 0x68C358, 0x498

	.global Img_BerserkSprites_B
Img_BerserkSprites_B:  @ 0x0868C7F0
	.incbin "baserom.gba", 0x68C7F0, 0x420

	.global Pal_BerserkSprites
Pal_BerserkSprites:  @ 0x0868CC10
	.incbin "baserom.gba", 0x68CC10, 0x6A4

	.global gUnknown_0868D2B4
gUnknown_0868D2B4:  @ 0x0868D2B4
	.incbin "baserom.gba", 0x68D2B4, 0x14

	.global gUnknown_0868D2C8
gUnknown_0868D2C8:  @ 0x0868D2C8
	.incbin "baserom.gba", 0x68D2C8, 0x14

	.global gUnknown_0868D2DC
gUnknown_0868D2DC:  @ 0x0868D2DC
	.incbin "baserom.gba", 0x68D2DC, 0x14

	.global gUnknown_0868D2F0
gUnknown_0868D2F0:  @ 0x0868D2F0
	.incbin "baserom.gba", 0x68D2F0, 0x14

	.global gUnknown_0868D304
gUnknown_0868D304:  @ 0x0868D304
	.incbin "baserom.gba", 0x68D304, 0x374

	.global gUnknown_0868D678
gUnknown_0868D678:  @ 0x0868D678
	.incbin "baserom.gba", 0x68D678, 0xC

	.global gUnknown_0868D684
gUnknown_0868D684:  @ 0x0868D684
	.incbin "baserom.gba", 0x68D684, 0xC

	.global gUnknown_0868D690
gUnknown_0868D690:  @ 0x0868D690
	.incbin "baserom.gba", 0x68D690, 0xC

	.global gUnknown_0868D69C
gUnknown_0868D69C:  @ 0x0868D69C
	.incbin "baserom.gba", 0x68D69C, 0xC

	.global gUnknown_0868D6A8
gUnknown_0868D6A8:  @ 0x0868D6A8
@ Replacing .incbin "baserom.gba", 0x68D6A8, 0x28
    .4byte gUnknown_0868D304 + 0x1f6
    .4byte gUnknown_0868D304 + 0x24a
    .4byte gUnknown_0868D304 + 0x26e
    .4byte gUnknown_0868D304 + 0x2aa
    .4byte gUnknown_0868D304 + 0x2ce
    .4byte gUnknown_0868D304 + 0x2f2
    .4byte gUnknown_0868D304 + 0x30a
    .4byte gUnknown_0868D304 + 0x322
    .4byte gUnknown_0868D304 + 0x33a
    .4byte 0x80000000

	.global Img_BarrierBg
Img_BarrierBg:  @ 0x0868D6D0
	.incbin "baserom.gba", 0x68D6D0, 0x88C

	.global Pal_BarrierBg
Pal_BarrierBg:  @ 0x0868DF5C
	.incbin "baserom.gba", 0x68DF5C, 0x40    @ 0x68DF9C - 0x68DF5C

	.global Tsa_0868DF9C
Tsa_0868DF9C:  @ 0x0868DF9C
	.incbin "baserom.gba", 0x68DF9C, 0xB8    @ 0x68E054 - 0x68DF9C

	.global Tsa_0868E054
Tsa_0868E054:  @ 0x0868E054
	.incbin "baserom.gba", 0x68E054, 0xC4    @ 0x68E118 - 0x68E054

	.global Tsa_0868E118
Tsa_0868E118:  @ 0x0868E118
	.incbin "baserom.gba", 0x68E118, 0xF0    @ 0x68E208 - 0x68E118

	.global Tsa_0868E208
Tsa_0868E208:  @ 0x0868E208
	.incbin "baserom.gba", 0x68E208, 0x130    @ 0x68E338 - 0x68E208

	.global Tsa_0868E338
Tsa_0868E338:  @ 0x0868E338
	.incbin "baserom.gba", 0x68E338, 0x134    @ 0x68E46C - 0x68E338

	.global gUnknown_0868E46C
gUnknown_0868E46C:  @ 0x0868E46C
	.incbin "baserom.gba", 0x68E46C, 0x40B8

	.global gUnknown_08692524
gUnknown_08692524:  @ 0x08692524
@ Replacing .incbin "baserom.gba", 0x692524, 0x150
    .4byte gUnknown_0868E46C + 0x23
    .4byte gUnknown_0868E46C + 0x3b
    .4byte gUnknown_0868E46C + 0x5f
    .4byte gUnknown_0868E46C + 0x8f
    .4byte gUnknown_0868E46C + 0xcb
    .4byte gUnknown_0868E46C + 0x113
    .4byte gUnknown_0868E46C + 0x167
    .4byte gUnknown_0868E46C + 0x1c7
    .4byte gUnknown_0868E46C + 0x233
    .4byte gUnknown_0868E46C + 0x2ab
    .4byte gUnknown_0868E46C + 0x32f
    .4byte gUnknown_0868E46C + 0x3bf
    .4byte gUnknown_0868E46C + 0x45b
    .4byte gUnknown_0868E46C + 0x503
    .4byte gUnknown_0868E46C + 0x5b7
    .4byte gUnknown_0868E46C + 0x66b
    .4byte gUnknown_0868E46C + 0x71f
    .4byte gUnknown_0868E46C + 0x7d3
    .4byte gUnknown_0868E46C + 0x887
    .4byte gUnknown_0868E46C + 0x93b
    .4byte gUnknown_0868E46C + 0x9ef
    .4byte gUnknown_0868E46C + 0xaa3
    .4byte gUnknown_0868E46C + 0xb57
    .4byte gUnknown_0868E46C + 0xc0b
    .4byte gUnknown_0868E46C + 0xcbf
    .4byte gUnknown_0868E46C + 0xd73
    .4byte gUnknown_0868E46C + 0xe27
    .4byte gUnknown_0868E46C + 0xedb
    .4byte gUnknown_0868E46C + 0xf8f
    .4byte gUnknown_0868E46C + 0x1043
    .4byte gUnknown_0868E46C + 0x10f7
    .4byte gUnknown_0868E46C + 0x11ab
    .4byte gUnknown_0868E46C + 0x1253
    .4byte gUnknown_0868E46C + 0x12ef
    .4byte gUnknown_0868E46C + 0x137f
    .4byte gUnknown_0868E46C + 0x1403
    .4byte gUnknown_0868E46C + 0x147b
    .4byte gUnknown_0868E46C + 0x14e7
    .4byte gUnknown_0868E46C + 0x1553
    .4byte gUnknown_0868E46C + 0x15cb
    .4byte gUnknown_0868E46C + 0x164f
    .4byte gUnknown_0868E46C + 0x16df
    .4byte gUnknown_0868E46C + 0x177b
    .4byte gUnknown_0868E46C + 0x1823
    .4byte gUnknown_0868E46C + 0x1a4b
    .4byte gUnknown_0868E46C + 0x1aff
    .4byte gUnknown_0868E46C + 0x1bcb
    .4byte gUnknown_0868E46C + 0x1caf
    .4byte gUnknown_0868E46C + 0x1d87
    .4byte gUnknown_0868E46C + 0x1e6b
    .4byte gUnknown_0868E46C + 0x1f5b
    .4byte gUnknown_0868E46C + 0x2057
    .4byte gUnknown_0868E46C + 0x215f
    .4byte gUnknown_0868E46C + 0x2273
    .4byte gUnknown_0868E46C + 0x2393
    .4byte gUnknown_0868E46C + 0x24bf
    .4byte gUnknown_0868E46C + 0x25f7
    .4byte gUnknown_0868E46C + 0x272f
    .4byte gUnknown_0868E46C + 0x2873
    .4byte gUnknown_0868E46C + 0x29b7
    .4byte gUnknown_0868E46C + 0x2b07
    .4byte gUnknown_0868E46C + 0x2c57
    .4byte gUnknown_0868E46C + 0x2d9b
    .4byte gUnknown_0868E46C + 0x2ec7
    .4byte gUnknown_0868E46C + 0x2fe7
    .4byte gUnknown_0868E46C + 0x30fb
    .4byte gUnknown_0868E46C + 0x31f7
    .4byte gUnknown_0868E46C + 0x32db
    .4byte gUnknown_0868E46C + 0x33a7
    .4byte gUnknown_0868E46C + 0x345b
    .4byte gUnknown_0868E46C + 0x3503
    .4byte gUnknown_0868E46C + 0x3593
    .4byte gUnknown_0868E46C + 0x3617
    .4byte gUnknown_0868E46C + 0x368f
    .4byte gUnknown_0868E46C + 0x36fb
    .4byte gUnknown_0868E46C + 0x375b
    .4byte gUnknown_0868E46C + 0x37af
    .4byte gUnknown_0868E46C + 0x37f7
    .4byte gUnknown_0868E46C + 0x3833
    .4byte gUnknown_0868E46C + 0x3863
    .4byte gUnknown_0868E46C + 0x3887
    .4byte 0x78690103
    .4byte 0x84000013
    .4byte 0x80000000

	.global gUnknown_08692674
gUnknown_08692674:  @ 0x08692674
@ Replacing .incbin "baserom.gba", 0x692674, 0x6C
    .4byte gUnknown_0868E46C + 0x389e
    .4byte gUnknown_0868E46C + 0x38f2
    .4byte gUnknown_0868E46C + 0x3946
    .4byte gUnknown_0868E46C + 0x399a
    .4byte gUnknown_0868E46C + 0x39ee
    .4byte gUnknown_0868E46C + 0x3a42
    .4byte gUnknown_0868E46C + 0x3a96
    .4byte gUnknown_0868E46C + 0x3aea
    .4byte gUnknown_0868E46C + 0x3b56
    .4byte gUnknown_0868E46C + 0x3bc2
    .4byte gUnknown_0868E46C + 0x3c2e
    .4byte gUnknown_0868E46C + 0x3c9a
    .4byte gUnknown_0868E46C + 0x3d06
    .4byte gUnknown_0868E46C + 0x3d72
    .4byte gUnknown_0868E46C + 0x3dde
    .4byte gUnknown_0868E46C + 0x3e4a
    .4byte gUnknown_0868E46C + 0x3eb6
    .4byte gUnknown_0868E46C + 0x3f16
    .4byte gUnknown_0868E46C + 0x3f6a
    .4byte gUnknown_0868E46C + 0x3fbe
    .4byte gUnknown_0868E46C + 0x4006
    .4byte gUnknown_0868E46C + 0x4042
    .4byte gUnknown_0868E46C + 0x407e
    .4byte gUnknown_0868E46C + 0x40a2
    .4byte 0x78690103
    .4byte 0x84000013
    .4byte 0x80000000

	.global Pal_IvaldiSprites
Pal_IvaldiSprites:  @ 0x086926E0
	.incbin "baserom.gba", 0x6926E0, 0x430

	.global Img_IvaldiSprites
Img_IvaldiSprites:  @ 0x08692B10
	.incbin "baserom.gba", 0x692B10, 0x56C    @ 0x69307C - 0x692B10

	.global gUnknown_0869307C
gUnknown_0869307C:  @ 0x0869307C
	.incbin "baserom.gba", 0x69307C, 0x2C    @ 0x6930A8 - 0x69307C

	.global gUnknown_086930A8
gUnknown_086930A8:  @ 0x086930A8
	.incbin "baserom.gba", 0x6930A8, 0x2C    @ 0x6930D4 - 0x6930A8

	.global gUnknown_086930D4
gUnknown_086930D4:  @ 0x086930D4
	.incbin "baserom.gba", 0x6930D4, 0x44    @ 0x693118 - 0x6930D4

	.global gUnknown_08693118
gUnknown_08693118:  @ 0x08693118
	.incbin "baserom.gba", 0x693118, 0x48    @ 0x693160 - 0x693118

	.global gUnknown_08693160
gUnknown_08693160:  @ 0x08693160
	.incbin "baserom.gba", 0x693160, 0xC    @ 0x69316C - 0x693160

	.global gUnknown_0869316C
gUnknown_0869316C:  @ 0x0869316C
	.incbin "baserom.gba", 0x69316C, 0x558    @ 0x6936C4 - 0x69316C

	.global gUnknown_086936C4
gUnknown_086936C4:  @ 0x086936C4
	.incbin "baserom.gba", 0x6936C4, 0x2C    @ 0x6936F0 - 0x6936C4

	.global gUnknown_086936F0
gUnknown_086936F0:  @ 0x086936F0
	.incbin "baserom.gba", 0x6936F0, 0x2C    @ 0x69371C - 0x6936F0

	.global gUnknown_0869371C
gUnknown_0869371C:  @ 0x0869371C
	.incbin "baserom.gba", 0x69371C, 0x44    @ 0x693760 - 0x69371C

	.global gUnknown_08693760
gUnknown_08693760:  @ 0x08693760
	.incbin "baserom.gba", 0x693760, 0x60    @ 0x6937C0 - 0x693760

	.global Img_IvaldiBg1
Img_IvaldiBg1:  @ 0x086937C0
	.incbin "baserom.gba", 0x6937C0, 0xE04

	.global Pal_IvaldiBg1
Pal_IvaldiBg1:  @ 0x086945C4
	.incbin "baserom.gba", 0x6945C4, 0x20    @ 0x6945E4 - 0x6945C4

	.global Tsa_086945E4
Tsa_086945E4:  @ 0x086945E4
	.incbin "baserom.gba", 0x6945E4, 0xBC    @ 0x6946A0 - 0x6945E4

	.global Tsa_086946A0
Tsa_086946A0:  @ 0x086946A0
	.incbin "baserom.gba", 0x6946A0, 0x124    @ 0x6947C4 - 0x6946A0

	.global Tsa_086947C4
Tsa_086947C4:  @ 0x086947C4
	.incbin "baserom.gba", 0x6947C4, 0x198    @ 0x69495C - 0x6947C4

	.global Tsa_0869495C
Tsa_0869495C:  @ 0x0869495C
	.incbin "baserom.gba", 0x69495C, 0x1FC    @ 0x694B58 - 0x69495C

	.global Tsa_08694B58
Tsa_08694B58:  @ 0x08694B58
	.incbin "baserom.gba", 0x694B58, 0x278    @ 0x694DD0 - 0x694B58

	.global Tsa_08694DD0
Tsa_08694DD0:  @ 0x08694DD0
	.incbin "baserom.gba", 0x694DD0, 0x278    @ 0x695048 - 0x694DD0

	.global Tsa_08695048
Tsa_08695048:  @ 0x08695048
	.incbin "baserom.gba", 0x695048, 0x278    @ 0x6952C0 - 0x695048

	.global Tsa_086952C0
Tsa_086952C0:  @ 0x086952C0
	.incbin "baserom.gba", 0x6952C0, 0x270    @ 0x695530 - 0x6952C0

	.global Tsa_08695530
Tsa_08695530:  @ 0x08695530
	.incbin "baserom.gba", 0x695530, 0x214    @ 0x695744 - 0x695530

	.global Tsa_08695744
Tsa_08695744:  @ 0x08695744
	.incbin "baserom.gba", 0x695744, 0x1AC    @ 0x6958F0 - 0x695744

	.global Tsa_086958F0
Tsa_086958F0:  @ 0x086958F0
	.incbin "baserom.gba", 0x6958F0, 0x144    @ 0x695A34 - 0x6958F0

	.global Tsa_08695A34
Tsa_08695A34:  @ 0x08695A34
	.incbin "baserom.gba", 0x695A34, 0xDC    @ 0x695B10 - 0x695A34

	.global Img_IvaldiBg2
Img_IvaldiBg2:  @ 0x08695B10
	.incbin "baserom.gba", 0x695B10, 0xD30

	.global Pal_IvaldiBg2
Pal_IvaldiBg2:  @ 0x08696840
	.incbin "baserom.gba", 0x696840, 0x20    @ 0x696860 - 0x696840

	.global Tsa_08696860
Tsa_08696860:  @ 0x08696860
	.incbin "baserom.gba", 0x696860, 0x98    @ 0x6968F8 - 0x696860

	.global Tsa_086968F8
Tsa_086968F8:  @ 0x086968F8
	.incbin "baserom.gba", 0x6968F8, 0x194    @ 0x696A8C - 0x6968F8

	.global Tsa_08696A8C
Tsa_08696A8C:  @ 0x08696A8C
	.incbin "baserom.gba", 0x696A8C, 0x19C    @ 0x696C28 - 0x696A8C

	.global Tsa_08696C28
Tsa_08696C28:  @ 0x08696C28
	.incbin "baserom.gba", 0x696C28, 0x19C    @ 0x696DC4 - 0x696C28

	.global Tsa_08696DC4
Tsa_08696DC4:  @ 0x08696DC4
	.incbin "baserom.gba", 0x696DC4, 0x1A0    @ 0x696F64 - 0x696DC4

	.global Img_08696F64
Img_08696F64:  @ 0x08696F64
	.incbin "baserom.gba", 0x696F64, 0x6AC    @ 0x697610 - 0x696F64

	.global Img_08697610
Img_08697610:  @ 0x08697610
	.incbin "baserom.gba", 0x697610, 0x708    @ 0x697D18 - 0x697610

	.global Img_08697D18
Img_08697D18:  @ 0x08697D18
	.incbin "baserom.gba", 0x697D18, 0x86C    @ 0x698584 - 0x697D18

	.global Img_08698584
Img_08698584:  @ 0x08698584
	.incbin "baserom.gba", 0x698584, 0x9F4    @ 0x698F78 - 0x698584

	.global Img_08698F78
Img_08698F78:  @ 0x08698F78
	.incbin "baserom.gba", 0x698F78, 0xB74    @ 0x699AEC - 0x698F78

	.global Img_08699AEC
Img_08699AEC:  @ 0x08699AEC
	.incbin "baserom.gba", 0x699AEC, 0xC20    @ 0x69A70C - 0x699AEC

	.global Img_0869A70C
Img_0869A70C:  @ 0x0869A70C
	.incbin "baserom.gba", 0x69A70C, 0xD64    @ 0x69B470 - 0x69A70C

	.global Img_0869B470
Img_0869B470:  @ 0x0869B470
	.incbin "baserom.gba", 0x69B470, 0xCC0    @ 0x69C130 - 0x69B470

	.global Img_0869C130
Img_0869C130:  @ 0x0869C130
	.incbin "baserom.gba", 0x69C130, 0xCEC    @ 0x69CE1C - 0x69C130

	.global Img_0869CE1C
Img_0869CE1C:  @ 0x0869CE1C
	.incbin "baserom.gba", 0x69CE1C, 0xD74    @ 0x69DB90 - 0x69CE1C

	.global Img_0869DB90
Img_0869DB90:  @ 0x0869DB90
	.incbin "baserom.gba", 0x69DB90, 0xC80    @ 0x69E810 - 0x69DB90

	.global Pal_0869E810
Pal_0869E810:  @ 0x0869E810
	.incbin "baserom.gba", 0x69E810, 0x20    @ 0x69E830 - 0x69E810

	.global Pal_0869E830
Pal_0869E830:  @ 0x0869E830
	.incbin "baserom.gba", 0x69E830, 0x20    @ 0x69E850 - 0x69E830

	.global Pal_0869E850
Pal_0869E850:  @ 0x0869E850
	.incbin "baserom.gba", 0x69E850, 0x20    @ 0x69E870 - 0x69E850

	.global Pal_0869E870
Pal_0869E870:  @ 0x0869E870
	.incbin "baserom.gba", 0x69E870, 0x20    @ 0x69E890 - 0x69E870

	.global Pal_0869E890
Pal_0869E890:  @ 0x0869E890
	.incbin "baserom.gba", 0x69E890, 0x20    @ 0x69E8B0 - 0x69E890

	.global Pal_0869E8B0
Pal_0869E8B0:  @ 0x0869E8B0
	.incbin "baserom.gba", 0x69E8B0, 0x20    @ 0x69E8D0 - 0x69E8B0

	.global Pal_0869E8D0
Pal_0869E8D0:  @ 0x0869E8D0
	.incbin "baserom.gba", 0x69E8D0, 0x20    @ 0x69E8F0 - 0x69E8D0

	.global Pal_0869E8F0
Pal_0869E8F0:  @ 0x0869E8F0
	.incbin "baserom.gba", 0x69E8F0, 0x20    @ 0x69E910 - 0x69E8F0

	.global Pal_0869E910
Pal_0869E910:  @ 0x0869E910
	.incbin "baserom.gba", 0x69E910, 0x20    @ 0x69E930 - 0x69E910

	.global Pal_0869E930
Pal_0869E930:  @ 0x0869E930
	.incbin "baserom.gba", 0x69E930, 0x20    @ 0x69E950 - 0x69E930

	.global Pal_0869E950
Pal_0869E950:  @ 0x0869E950
	.incbin "baserom.gba", 0x69E950, 0x20    @ 0x69E970 - 0x69E950

	.global Tsa_0869E970
Tsa_0869E970:  @ 0x0869E970
	.incbin "baserom.gba", 0x69E970, 0x244    @ 0x69EBB4 - 0x69E970

	.global Tsa_0869EBB4
Tsa_0869EBB4:  @ 0x0869EBB4
	.incbin "baserom.gba", 0x69EBB4, 0x278    @ 0x69EE2C - 0x69EBB4

	.global Tsa_0869EE2C
Tsa_0869EE2C:  @ 0x0869EE2C
	.incbin "baserom.gba", 0x69EE2C, 0x264    @ 0x69F090 - 0x69EE2C

	.global Tsa_0869F090
Tsa_0869F090:  @ 0x0869F090
	.incbin "baserom.gba", 0x69F090, 0x274    @ 0x69F304 - 0x69F090

	.global Tsa_0869F304
Tsa_0869F304:  @ 0x0869F304
	.incbin "baserom.gba", 0x69F304, 0x2BC    @ 0x69F5C0 - 0x69F304

	.global Tsa_0869F5C0
Tsa_0869F5C0:  @ 0x0869F5C0
	.incbin "baserom.gba", 0x69F5C0, 0x2C8    @ 0x69F888 - 0x69F5C0

	.global Tsa_0869F888
Tsa_0869F888:  @ 0x0869F888
	.incbin "baserom.gba", 0x69F888, 0x2C4    @ 0x69FB4C - 0x69F888

	.global Tsa_0869FB4C
Tsa_0869FB4C:  @ 0x0869FB4C
	.incbin "baserom.gba", 0x69FB4C, 0x2B0    @ 0x69FDFC - 0x69FB4C

	.global Tsa_0869FDFC
Tsa_0869FDFC:  @ 0x0869FDFC
	.incbin "baserom.gba", 0x69FDFC, 0x2B4    @ 0x6A00B0 - 0x69FDFC

	.global Tsa_086A00B0
Tsa_086A00B0:  @ 0x086A00B0
	.incbin "baserom.gba", 0x6A00B0, 0x2D8    @ 0x6A0388 - 0x6A00B0

	.global Tsa_086A0388
Tsa_086A0388:  @ 0x086A0388
	.incbin "baserom.gba", 0x6A0388, 0x320    @ 0x6A06A8 - 0x6A0388

	.global Img_IvaldiBg4
Img_IvaldiBg4:  @ 0x086A06A8
	.incbin "baserom.gba", 0x6A06A8, 0x1638

	.global Pal_IvaldiBg4
Pal_IvaldiBg4:  @ 0x086A1CE0
	.incbin "baserom.gba", 0x6A1CE0, 0x20    @ 0x6A1D00 - 0x6A1CE0

	.global Tsa_086A1D00
Tsa_086A1D00:  @ 0x086A1D00
	.incbin "baserom.gba", 0x6A1D00, 0x4F4    @ 0x6A21F4 - 0x6A1D00

	.global Img_GleipnirSprites_Rocks
Img_GleipnirSprites_Rocks:  @ 0x086A21F4
	.incbin "baserom.gba", 0x6A21F4, 0x420

	.global Pal_GleipnirSprites_Rocks
Pal_GleipnirSprites_Rocks:  @ 0x086A2614
	.incbin "baserom.gba", 0x6A2614, 0x110

	.global gUnknown_086A2724
gUnknown_086A2724:  @ 0x086A2724
	.incbin "baserom.gba", 0x6A2724, 0x18

	.global gUnknown_086A273C
gUnknown_086A273C:  @ 0x086A273C
	.incbin "baserom.gba", 0x6A273C, 0x108

	.global gUnknown_086A2844
gUnknown_086A2844:  @ 0x086A2844
	.incbin "baserom.gba", 0x6A2844, 0x18

	.global gUnknown_086A285C
gUnknown_086A285C:  @ 0x086A285C
	.incbin "baserom.gba", 0x6A285C, 0x18

	.global Img_GleipnirSprites_Comet
Img_GleipnirSprites_Comet:  @ 0x086A2874
	.incbin "baserom.gba", 0x6A2874, 0x474

	.global Pal_GleipnirSprites_Comet
Pal_GleipnirSprites_Comet:  @ 0x086A2CE8
	.incbin "baserom.gba", 0x6A2CE8, 0xD4

	.global gUnknown_086A2DBC
gUnknown_086A2DBC:  @ 0x086A2DBC
	.incbin "baserom.gba", 0x6A2DBC, 0x14

	.global gUnknown_086A2DD0
gUnknown_086A2DD0:  @ 0x086A2DD0
	.incbin "baserom.gba", 0x6A2DD0, 0xC8

	.global gUnknown_086A2E98
gUnknown_086A2E98:  @ 0x086A2E98
	.incbin "baserom.gba", 0x6A2E98, 0x14

	.global gUnknown_086A2EAC
gUnknown_086A2EAC:  @ 0x086A2EAC
	.incbin "baserom.gba", 0x6A2EAC, 0x14    @ 0x6A2EC0 - 0x6A2EAC

	.global Img_086A2EC0
Img_086A2EC0:  @ 0x086A2EC0
	.incbin "baserom.gba", 0x6A2EC0, 0x610    @ 0x6A34D0 - 0x6A2EC0

	.global Img_086A34D0
Img_086A34D0:  @ 0x086A34D0
	.incbin "baserom.gba", 0x6A34D0, 0x6D0    @ 0x6A3BA0 - 0x6A34D0

	.global Img_086A3BA0
Img_086A3BA0:  @ 0x086A3BA0
	.incbin "baserom.gba", 0x6A3BA0, 0x6D0    @ 0x6A4270 - 0x6A3BA0

	.global Img_086A4270
Img_086A4270:  @ 0x086A4270
	.incbin "baserom.gba", 0x6A4270, 0x668    @ 0x6A48D8 - 0x6A4270

	.global Img_086A48D8
Img_086A48D8:  @ 0x086A48D8
	.incbin "baserom.gba", 0x6A48D8, 0x5C4    @ 0x6A4E9C - 0x6A48D8

	.global Img_086A4E9C
Img_086A4E9C:  @ 0x086A4E9C
	.incbin "baserom.gba", 0x6A4E9C, 0x4F0    @ 0x6A538C - 0x6A4E9C

	.global Img_086A538C
Img_086A538C:  @ 0x086A538C
	.incbin "baserom.gba", 0x6A538C, 0x3E0    @ 0x6A576C - 0x6A538C

	.global Img_086A576C
Img_086A576C:  @ 0x086A576C
	.incbin "baserom.gba", 0x6A576C, 0x3E0    @ 0x6A5B4C - 0x6A576C

	.global Img_086A5B4C
Img_086A5B4C:  @ 0x086A5B4C
	.incbin "baserom.gba", 0x6A5B4C, 0x3E0    @ 0x6A5F2C - 0x6A5B4C

	.global Img_086A5F2C
Img_086A5F2C:  @ 0x086A5F2C
	.incbin "baserom.gba", 0x6A5F2C, 0x3D8    @ 0x6A6304 - 0x6A5F2C

	.global Img_086A6304
Img_086A6304:  @ 0x086A6304
	.incbin "baserom.gba", 0x6A6304, 0x3D4    @ 0x6A66D8 - 0x6A6304

	.global Pal_GleipnirBg_Sigil
Pal_GleipnirBg_Sigil:  @ 0x086A66D8
	.incbin "baserom.gba", 0x6A66D8, 0x20    @ 0x6A66F8 - 0x6A66D8

	.global Tsa_086A66F8
Tsa_086A66F8:  @ 0x086A66F8
	.incbin "baserom.gba", 0x6A66F8, 0x1A8    @ 0x6A68A0 - 0x6A66F8

	.global Tsa_086A68A0
Tsa_086A68A0:  @ 0x086A68A0
	.incbin "baserom.gba", 0x6A68A0, 0x174    @ 0x6A6A14 - 0x6A68A0

	.global Tsa_086A6A14
Tsa_086A6A14:  @ 0x086A6A14
	.incbin "baserom.gba", 0x6A6A14, 0x174    @ 0x6A6B88 - 0x6A6A14

	.global Tsa_086A6B88
Tsa_086A6B88:  @ 0x086A6B88
	.incbin "baserom.gba", 0x6A6B88, 0x148    @ 0x6A6CD0 - 0x6A6B88

	.global Tsa_086A6CD0
Tsa_086A6CD0:  @ 0x086A6CD0
	.incbin "baserom.gba", 0x6A6CD0, 0x10C    @ 0x6A6DDC - 0x6A6CD0

	.global Tsa_086A6DDC
Tsa_086A6DDC:  @ 0x086A6DDC
	.incbin "baserom.gba", 0x6A6DDC, 0xE0    @ 0x6A6EBC - 0x6A6DDC

	.global Tsa_086A6EBC
Tsa_086A6EBC:  @ 0x086A6EBC
	.incbin "baserom.gba", 0x6A6EBC, 0xD8    @ 0x6A6F94 - 0x6A6EBC

	.global Tsa_086A6F94
Tsa_086A6F94:  @ 0x086A6F94
	.incbin "baserom.gba", 0x6A6F94, 0xC4    @ 0x6A7058 - 0x6A6F94

	.global Tsa_086A7058
Tsa_086A7058:  @ 0x086A7058
	.incbin "baserom.gba", 0x6A7058, 0xBC    @ 0x6A7114 - 0x6A7058

	.global Tsa_086A7114
Tsa_086A7114:  @ 0x086A7114
	.incbin "baserom.gba", 0x6A7114, 0xA4    @ 0x6A71B8 - 0x6A7114

	.global Tsa_086A71B8
Tsa_086A71B8:  @ 0x086A71B8
	.incbin "baserom.gba", 0x6A71B8, 0xA0    @ 0x6A7258 - 0x6A71B8

	.global Img_086A7258
Img_086A7258:  @ 0x086A7258
	.incbin "baserom.gba", 0x6A7258, 0x468    @ 0x6A76C0 - 0x6A7258

	.global Img_086A76C0
Img_086A76C0:  @ 0x086A76C0
	.incbin "baserom.gba", 0x6A76C0, 0x504    @ 0x6A7BC4 - 0x6A76C0

	.global Img_086A7BC4
Img_086A7BC4:  @ 0x086A7BC4
	.incbin "baserom.gba", 0x6A7BC4, 0x5B8    @ 0x6A817C - 0x6A7BC4

	.global Img_086A817C
Img_086A817C:  @ 0x086A817C
	.incbin "baserom.gba", 0x6A817C, 0x670    @ 0x6A87EC - 0x6A817C

	.global Img_086A87EC
Img_086A87EC:  @ 0x086A87EC
	.incbin "baserom.gba", 0x6A87EC, 0x75C    @ 0x6A8F48 - 0x6A87EC

	.global Img_086A8F48
Img_086A8F48:  @ 0x086A8F48
	.incbin "baserom.gba", 0x6A8F48, 0x860    @ 0x6A97A8 - 0x6A8F48

	.global Img_086A97A8
Img_086A97A8:  @ 0x086A97A8
	.incbin "baserom.gba", 0x6A97A8, 0x994    @ 0x6AA13C - 0x6A97A8

	.global Img_086AA13C
Img_086AA13C:  @ 0x086AA13C
	.incbin "baserom.gba", 0x6AA13C, 0xAA4    @ 0x6AABE0 - 0x6AA13C

	.global Img_086AABE0
Img_086AABE0:  @ 0x086AABE0
	.incbin "baserom.gba", 0x6AABE0, 0xBB0    @ 0x6AB790 - 0x6AABE0

	.global Img_086AB790
Img_086AB790:  @ 0x086AB790
	.incbin "baserom.gba", 0x6AB790, 0xD20    @ 0x6AC4B0 - 0x6AB790

	.global Img_086AC4B0
Img_086AC4B0:  @ 0x086AC4B0
	.incbin "baserom.gba", 0x6AC4B0, 0xE08    @ 0x6AD2B8 - 0x6AC4B0

	.global Img_086AD2B8
Img_086AD2B8:  @ 0x086AD2B8
	.incbin "baserom.gba", 0x6AD2B8, 0xF68    @ 0x6AE220 - 0x6AD2B8

	.global Img_086AE220
Img_086AE220:  @ 0x086AE220
	.incbin "baserom.gba", 0x6AE220, 0x104C    @ 0x6AF26C - 0x6AE220

	.global Img_086AF26C
Img_086AF26C:  @ 0x086AF26C
	.incbin "baserom.gba", 0x6AF26C, 0x112C    @ 0x6B0398 - 0x6AF26C

	.global Img_086B0398
Img_086B0398:  @ 0x086B0398
	.incbin "baserom.gba", 0x6B0398, 0x122C    @ 0x6B15C4 - 0x6B0398

	.global Img_086B15C4
Img_086B15C4:  @ 0x086B15C4
	.incbin "baserom.gba", 0x6B15C4, 0x12B4    @ 0x6B2878 - 0x6B15C4

	.global Pal_086B2878
Pal_086B2878:  @ 0x086B2878
	.incbin "baserom.gba", 0x6B2878, 0x20    @ 0x6B2898 - 0x6B2878

	.global Pal_086B2898
Pal_086B2898:  @ 0x086B2898
	.incbin "baserom.gba", 0x6B2898, 0x20    @ 0x6B28B8 - 0x6B2898

	.global Pal_086B28B8
Pal_086B28B8:  @ 0x086B28B8
	.incbin "baserom.gba", 0x6B28B8, 0x20    @ 0x6B28D8 - 0x6B28B8

	.global Pal_086B28D8
Pal_086B28D8:  @ 0x086B28D8
	.incbin "baserom.gba", 0x6B28D8, 0x20    @ 0x6B28F8 - 0x6B28D8

	.global Pal_086B28F8
Pal_086B28F8:  @ 0x086B28F8
	.incbin "baserom.gba", 0x6B28F8, 0x20    @ 0x6B2918 - 0x6B28F8

	.global Pal_086B2918
Pal_086B2918:  @ 0x086B2918
	.incbin "baserom.gba", 0x6B2918, 0x20    @ 0x6B2938 - 0x6B2918

	.global Pal_086B2938
Pal_086B2938:  @ 0x086B2938
	.incbin "baserom.gba", 0x6B2938, 0x20    @ 0x6B2958 - 0x6B2938

	.global Pal_086B2958
Pal_086B2958:  @ 0x086B2958
	.incbin "baserom.gba", 0x6B2958, 0x20    @ 0x6B2978 - 0x6B2958

	.global Pal_086B2978
Pal_086B2978:  @ 0x086B2978
	.incbin "baserom.gba", 0x6B2978, 0x20    @ 0x6B2998 - 0x6B2978

	.global Pal_086B2998
Pal_086B2998:  @ 0x086B2998
	.incbin "baserom.gba", 0x6B2998, 0x20    @ 0x6B29B8 - 0x6B2998

	.global Pal_086B29B8
Pal_086B29B8:  @ 0x086B29B8
	.incbin "baserom.gba", 0x6B29B8, 0x20    @ 0x6B29D8 - 0x6B29B8

	.global Pal_086B29D8
Pal_086B29D8:  @ 0x086B29D8
	.incbin "baserom.gba", 0x6B29D8, 0x20    @ 0x6B29F8 - 0x6B29D8

	.global Pal_086B29F8
Pal_086B29F8:  @ 0x086B29F8
	.incbin "baserom.gba", 0x6B29F8, 0x20    @ 0x6B2A18 - 0x6B29F8

	.global Pal_086B2A18
Pal_086B2A18:  @ 0x086B2A18
	.incbin "baserom.gba", 0x6B2A18, 0x20    @ 0x6B2A38 - 0x6B2A18

	.global Pal_086B2A38
Pal_086B2A38:  @ 0x086B2A38
	.incbin "baserom.gba", 0x6B2A38, 0x20    @ 0x6B2A58 - 0x6B2A38

	.global Pal_086B2A58
Pal_086B2A58:  @ 0x086B2A58
	.incbin "baserom.gba", 0x6B2A58, 0x20    @ 0x6B2A78 - 0x6B2A58

	.global Tsa_086B2A78
Tsa_086B2A78:  @ 0x086B2A78
	.incbin "baserom.gba", 0x6B2A78, 0xB8    @ 0x6B2B30 - 0x6B2A78

	.global Tsa_086B2B30
Tsa_086B2B30:  @ 0x086B2B30
	.incbin "baserom.gba", 0x6B2B30, 0xC4    @ 0x6B2BF4 - 0x6B2B30

	.global Tsa_086B2BF4
Tsa_086B2BF4:  @ 0x086B2BF4
	.incbin "baserom.gba", 0x6B2BF4, 0xD8    @ 0x6B2CCC - 0x6B2BF4

	.global Tsa_086B2CCC
Tsa_086B2CCC:  @ 0x086B2CCC
	.incbin "baserom.gba", 0x6B2CCC, 0xEC    @ 0x6B2DB8 - 0x6B2CCC

	.global Tsa_086B2DB8
Tsa_086B2DB8:  @ 0x086B2DB8
	.incbin "baserom.gba", 0x6B2DB8, 0x104    @ 0x6B2EBC - 0x6B2DB8

	.global Tsa_086B2EBC
Tsa_086B2EBC:  @ 0x086B2EBC
	.incbin "baserom.gba", 0x6B2EBC, 0x11C    @ 0x6B2FD8 - 0x6B2EBC

	.global Tsa_086B2FD8
Tsa_086B2FD8:  @ 0x086B2FD8
	.incbin "baserom.gba", 0x6B2FD8, 0x13C    @ 0x6B3114 - 0x6B2FD8

	.global Tsa_086B3114
Tsa_086B3114:  @ 0x086B3114
	.incbin "baserom.gba", 0x6B3114, 0x158    @ 0x6B326C - 0x6B3114

	.global Tsa_086B326C
Tsa_086B326C:  @ 0x086B326C
	.incbin "baserom.gba", 0x6B326C, 0x174    @ 0x6B33E0 - 0x6B326C

	.global Tsa_086B33E0
Tsa_086B33E0:  @ 0x086B33E0
	.incbin "baserom.gba", 0x6B33E0, 0x198    @ 0x6B3578 - 0x6B33E0

	.global Tsa_086B3578
Tsa_086B3578:  @ 0x086B3578
	.incbin "baserom.gba", 0x6B3578, 0x1BC    @ 0x6B3734 - 0x6B3578

	.global Tsa_086B3734
Tsa_086B3734:  @ 0x086B3734
	.incbin "baserom.gba", 0x6B3734, 0x1C8    @ 0x6B38FC - 0x6B3734

	.global Tsa_086B38FC
Tsa_086B38FC:  @ 0x086B38FC
	.incbin "baserom.gba", 0x6B38FC, 0x1F0    @ 0x6B3AEC - 0x6B38FC

	.global Tsa_086B3AEC
Tsa_086B3AEC:  @ 0x086B3AEC
	.incbin "baserom.gba", 0x6B3AEC, 0x1FC    @ 0x6B3CE8 - 0x6B3AEC

	.global Tsa_086B3CE8
Tsa_086B3CE8:  @ 0x086B3CE8
	.incbin "baserom.gba", 0x6B3CE8, 0x218    @ 0x6B3F00 - 0x6B3CE8

	.global Tsa_086B3F00
Tsa_086B3F00:  @ 0x086B3F00
	.incbin "baserom.gba", 0x6B3F00, 0x21C    @ 0x6B411C - 0x6B3F00

	.global Img_GleipnirBg_Fog
Img_GleipnirBg_Fog:  @ 0x086B411C
	.incbin "baserom.gba", 0x6B411C, 0x11B0    @ 0x6B52CC - 0x6B411C

	.global Pal_GleipnirBg_Fog
Pal_GleipnirBg_Fog:  @ 0x086B52CC
	.incbin "baserom.gba", 0x6B52CC, 0x20    @ 0x6B52EC - 0x6B52CC

	.global Tsa_GleipnirBg_Fog
Tsa_GleipnirBg_Fog:  @ 0x086B52EC
	.incbin "baserom.gba", 0x6B52EC, 0x294    @ 0x6B5580 - 0x6B52EC

	.global Img_CrimsonEyeSprites
Img_CrimsonEyeSprites:  @ 0x086B5580
	.incbin "baserom.gba", 0x6B5580, 0x35C

	.global Pal_CrimsonEyeSprites
Pal_CrimsonEyeSprites:  @ 0x086B58DC
	.incbin "baserom.gba", 0x6B58DC, 0x98

	.global gUnknown_086B5974
gUnknown_086B5974:  @ 0x086B5974
	.incbin "baserom.gba", 0x6B5974, 0x10

	.global gUnknown_086B5984
gUnknown_086B5984:  @ 0x086B5984
	.incbin "baserom.gba", 0x6B5984, 0x8

	.global gUnknown_086B598C
gUnknown_086B598C:  @ 0x086B598C
	.incbin "baserom.gba", 0x6B598C, 0xA0

	.global Pal_efxGorgonBGFinish
Pal_efxGorgonBGFinish:  @ 0x086B5A2C
	.incbin "baserom.gba", 0x6B5A2C, 0x20

	.global Img_efxCrimsonEyeBG
Img_efxCrimsonEyeBG:  @ 0x086B5A4C
	.incbin "baserom.gba", 0x6B5A4C, 0x460

	.global Pal_efxCrimsonEyeBG
Pal_efxCrimsonEyeBG:  @ 0x086B5EAC
	.incbin "baserom.gba", 0x6B5EAC, 0x20    @ 0x6B5ECC - 0x6B5EAC

	.global Tsa_086B5ECC
Tsa_086B5ECC:  @ 0x086B5ECC
	.incbin "baserom.gba", 0x6B5ECC, 0xAC    @ 0x6B5F78 - 0x6B5ECC

	.global Tsa_086B5F78
Tsa_086B5F78:  @ 0x086B5F78
	.incbin "baserom.gba", 0x6B5F78, 0xC4    @ 0x6B603C - 0x6B5F78

	.global Tsa_086B603C
Tsa_086B603C:  @ 0x086B603C
	.incbin "baserom.gba", 0x6B603C, 0xC4    @ 0x6B6100 - 0x6B603C

	.global Tsa_086B6100
Tsa_086B6100:  @ 0x086B6100
	.incbin "baserom.gba", 0x6B6100, 0xC4    @ 0x6B61C4 - 0x6B6100

	.global Tsa_086B61C4
Tsa_086B61C4:  @ 0x086B61C4
	.incbin "baserom.gba", 0x6B61C4, 0xC4    @ 0x6B6288 - 0x6B61C4

	.global Tsa_086B6288
Tsa_086B6288:  @ 0x086B6288
	.incbin "baserom.gba", 0x6B6288, 0xC4    @ 0x6B634C - 0x6B6288

	.global Tsa_086B634C
Tsa_086B634C:  @ 0x086B634C
	.incbin "baserom.gba", 0x6B634C, 0xC4    @ 0x6B6410 - 0x6B634C

	.global Tsa_086B6410
Tsa_086B6410:  @ 0x086B6410
	.incbin "baserom.gba", 0x6B6410, 0xAC    @ 0x6B64BC - 0x6B6410

	.global Img_086B64BC
Img_086B64BC:  @ 0x086B64BC
	.incbin "baserom.gba", 0x6B64BC, 0x18EC    @ 0x6B7DA8 - 0x6B64BC

	.global Img_086B7DA8
Img_086B7DA8:  @ 0x086B7DA8
	.incbin "baserom.gba", 0x6B7DA8, 0x1878    @ 0x6B9620 - 0x6B7DA8

	.global Img_086B9620
Img_086B9620:  @ 0x086B9620
	.incbin "baserom.gba", 0x6B9620, 0x18F4    @ 0x6BAF14 - 0x6B9620

	.global Img_086BAF14
Img_086BAF14:  @ 0x086BAF14
	.incbin "baserom.gba", 0x6BAF14, 0x1910    @ 0x6BC824 - 0x6BAF14

	.global Pal_efxCrimsonEyeBGFinish1
Pal_efxCrimsonEyeBGFinish1:  @ 0x086BC824
	.incbin "baserom.gba", 0x6BC824, 0x60    @ 0x6BC884 - 0x6BC824

	.global Tsa_086BC884
Tsa_086BC884:  @ 0x086BC884
	.incbin "baserom.gba", 0x6BC884, 0x274    @ 0x6BCAF8 - 0x6BC884

	.global Tsa_086BCAF8
Tsa_086BCAF8:  @ 0x086BCAF8
	.incbin "baserom.gba", 0x6BCAF8, 0x278    @ 0x6BCD70 - 0x6BCAF8

	.global Tsa_086BCD70
Tsa_086BCD70:  @ 0x086BCD70
	.incbin "baserom.gba", 0x6BCD70, 0x278    @ 0x6BCFE8 - 0x6BCD70

	.global Tsa_086BCFE8
Tsa_086BCFE8:  @ 0x086BCFE8
	.incbin "baserom.gba", 0x6BCFE8, 0x278    @ 0x6BD260 - 0x6BCFE8

	.global Img_StoneSprites
Img_StoneSprites:  @ 0x086BD260
	.incbin "baserom.gba", 0x6BD260, 0x50C

	.global Pal_StoneSprites
Pal_StoneSprites:  @ 0x086BD76C
	.incbin "baserom.gba", 0x6BD76C, 0x2F0

	.global gUnknown_086BDA5C
gUnknown_086BDA5C:  @ 0x086BDA5C
	.incbin "baserom.gba", 0x6BDA5C, 0x120    @ 0x6BDB7C - 0x6BDA5C

	.global Img_086BDB7C
Img_086BDB7C:  @ 0x086BDB7C
	.incbin "baserom.gba", 0x6BDB7C, 0x550    @ 0x6BE0CC - 0x6BDB7C

	.global Img_086BE0CC
Img_086BE0CC:  @ 0x086BE0CC
	.incbin "baserom.gba", 0x6BE0CC, 0x59C    @ 0x6BE668 - 0x6BE0CC

	.global Img_086BE668
Img_086BE668:  @ 0x086BE668
	.incbin "baserom.gba", 0x6BE668, 0x5F4    @ 0x6BEC5C - 0x6BE668

	.global Img_086BEC5C
Img_086BEC5C:  @ 0x086BEC5C
	.incbin "baserom.gba", 0x6BEC5C, 0x698    @ 0x6BF2F4 - 0x6BEC5C

	.global Img_086BF2F4
Img_086BF2F4:  @ 0x086BF2F4
	.incbin "baserom.gba", 0x6BF2F4, 0x6BC    @ 0x6BF9B0 - 0x6BF2F4

	.global Img_086BF9B0
Img_086BF9B0:  @ 0x086BF9B0
	.incbin "baserom.gba", 0x6BF9B0, 0x760    @ 0x6C0110 - 0x6BF9B0

	.global Img_086C0110
Img_086C0110:  @ 0x086C0110
	.incbin "baserom.gba", 0x6C0110, 0x814    @ 0x6C0924 - 0x6C0110

	.global Img_086C0924
Img_086C0924:  @ 0x086C0924
	.incbin "baserom.gba", 0x6C0924, 0x878    @ 0x6C119C - 0x6C0924

	.global Img_086C119C
Img_086C119C:  @ 0x086C119C
	.incbin "baserom.gba", 0x6C119C, 0x934    @ 0x6C1AD0 - 0x6C119C

	.global Img_086C1AD0
Img_086C1AD0:  @ 0x086C1AD0
	.incbin "baserom.gba", 0x6C1AD0, 0x968    @ 0x6C2438 - 0x6C1AD0

	.global Img_086C2438
Img_086C2438:  @ 0x086C2438
	.incbin "baserom.gba", 0x6C2438, 0x970    @ 0x6C2DA8 - 0x6C2438

	.global Img_086C2DA8
Img_086C2DA8:  @ 0x086C2DA8
	.incbin "baserom.gba", 0x6C2DA8, 0x9B4    @ 0x6C375C - 0x6C2DA8

	.global Img_086C375C
Img_086C375C:  @ 0x086C375C
	.incbin "baserom.gba", 0x6C375C, 0x998    @ 0x6C40F4 - 0x6C375C

	.global Img_086C40F4
Img_086C40F4:  @ 0x086C40F4
	.incbin "baserom.gba", 0x6C40F4, 0x9C0    @ 0x6C4AB4 - 0x6C40F4

	.global Img_086C4AB4
Img_086C4AB4:  @ 0x086C4AB4
	.incbin "baserom.gba", 0x6C4AB4, 0x918    @ 0x6C53CC - 0x6C4AB4

	.global Img_086C53CC
Img_086C53CC:  @ 0x086C53CC
	.incbin "baserom.gba", 0x6C53CC, 0x954    @ 0x6C5D20 - 0x6C53CC

	.global Img_086C5D20
Img_086C5D20:  @ 0x086C5D20
	.incbin "baserom.gba", 0x6C5D20, 0x97C    @ 0x6C669C - 0x6C5D20

	.global Img_086C669C
Img_086C669C:  @ 0x086C669C
	.incbin "baserom.gba", 0x6C669C, 0x974    @ 0x6C7010 - 0x6C669C

	.global Img_086C7010
Img_086C7010:  @ 0x086C7010
	.incbin "baserom.gba", 0x6C7010, 0x8FC    @ 0x6C790C - 0x6C7010

	.global Pal_StoneBg
Pal_StoneBg:  @ 0x086C790C
	.incbin "baserom.gba", 0x6C790C, 0x20

	.global Pal_StoneBg_086C792C
Pal_StoneBg_086C792C:  @ 0x086C792C
	.incbin "baserom.gba", 0x6C792C, 0x20

	.global Pal_StoneBg_086C794C
Pal_StoneBg_086C794C:  @ 0x086C794C
	.incbin "baserom.gba", 0x6C794C, 0x20    @ 0x6C796C - 0x6C794C

	.global Tsa_086C796C
Tsa_086C796C:  @ 0x086C796C
	.incbin "baserom.gba", 0x6C796C, 0xC0    @ 0x6C7A2C - 0x6C796C

	.global Tsa_086C7A2C
Tsa_086C7A2C:  @ 0x086C7A2C
	.incbin "baserom.gba", 0x6C7A2C, 0xCC    @ 0x6C7AF8 - 0x6C7A2C

	.global Tsa_086C7AF8
Tsa_086C7AF8:  @ 0x086C7AF8
	.incbin "baserom.gba", 0x6C7AF8, 0xD8    @ 0x6C7BD0 - 0x6C7AF8

	.global Tsa_086C7BD0
Tsa_086C7BD0:  @ 0x086C7BD0
	.incbin "baserom.gba", 0x6C7BD0, 0xEC    @ 0x6C7CBC - 0x6C7BD0

	.global Tsa_086C7CBC
Tsa_086C7CBC:  @ 0x086C7CBC
	.incbin "baserom.gba", 0x6C7CBC, 0x104    @ 0x6C7DC0 - 0x6C7CBC

	.global Tsa_086C7DC0
Tsa_086C7DC0:  @ 0x086C7DC0
	.incbin "baserom.gba", 0x6C7DC0, 0x114    @ 0x6C7ED4 - 0x6C7DC0

	.global Tsa_086C7ED4
Tsa_086C7ED4:  @ 0x086C7ED4
	.incbin "baserom.gba", 0x6C7ED4, 0x128    @ 0x6C7FFC - 0x6C7ED4

	.global Tsa_086C7FFC
Tsa_086C7FFC:  @ 0x086C7FFC
	.incbin "baserom.gba", 0x6C7FFC, 0x13C    @ 0x6C8138 - 0x6C7FFC

	.global Tsa_086C8138
Tsa_086C8138:  @ 0x086C8138
	.incbin "baserom.gba", 0x6C8138, 0x154    @ 0x6C828C - 0x6C8138

	.global Tsa_086C828C
Tsa_086C828C:  @ 0x086C828C
	.incbin "baserom.gba", 0x6C828C, 0x178    @ 0x6C8404 - 0x6C828C

	.global Tsa_086C8404
Tsa_086C8404:  @ 0x086C8404
	.incbin "baserom.gba", 0x6C8404, 0x16C    @ 0x6C8570 - 0x6C8404

	.global Tsa_086C8570
Tsa_086C8570:  @ 0x086C8570
	.incbin "baserom.gba", 0x6C8570, 0x174    @ 0x6C86E4 - 0x6C8570

	.global Tsa_086C86E4
Tsa_086C86E4:  @ 0x086C86E4
	.incbin "baserom.gba", 0x6C86E4, 0x17C    @ 0x6C8860 - 0x6C86E4

	.global Tsa_086C8860
Tsa_086C8860:  @ 0x086C8860
	.incbin "baserom.gba", 0x6C8860, 0x18C    @ 0x6C89EC - 0x6C8860

	.global Tsa_086C89EC
Tsa_086C89EC:  @ 0x086C89EC
	.incbin "baserom.gba", 0x6C89EC, 0x144    @ 0x6C8B30 - 0x6C89EC

	.global Tsa_086C8B30
Tsa_086C8B30:  @ 0x086C8B30
	.incbin "baserom.gba", 0x6C8B30, 0x154    @ 0x6C8C84 - 0x6C8B30

	.global Tsa_086C8C84
Tsa_086C8C84:  @ 0x086C8C84
	.incbin "baserom.gba", 0x6C8C84, 0x164    @ 0x6C8DE8 - 0x6C8C84

	.global Tsa_086C8DE8
Tsa_086C8DE8:  @ 0x086C8DE8
	.incbin "baserom.gba", 0x6C8DE8, 0x164    @ 0x6C8F4C - 0x6C8DE8

	.global Tsa_086C8F4C
Tsa_086C8F4C:  @ 0x086C8F4C
	.incbin "baserom.gba", 0x6C8F4C, 0x158    @ 0x6C90A4 - 0x6C8F4C

	.global gUnknown_086C90A4
gUnknown_086C90A4:  @ 0x086C90A4
	.incbin "baserom.gba", 0x6C90A4, 0x358

	.global gUnknown_086C93FC
gUnknown_086C93FC:  @ 0x086C93FC
	.incbin "baserom.gba", 0x6C93FC, 0x1C4

	.global gUnknown_086C95C0
gUnknown_086C95C0:  @ 0x086C95C0
	.incbin "baserom.gba", 0x6C95C0, 0x1CC    @ 0x6C978C - 0x6C95C0

	.global gUnknown_086C978C
gUnknown_086C978C:  @ 0x086C978C
	.incbin "baserom.gba", 0x6C978C, 0x28    @ 0x6C97B4 - 0x6C978C

	.global Img_086C97B4
Img_086C97B4:  @ 0x086C97B4
	.incbin "baserom.gba", 0x6C97B4, 0x5F8    @ 0x6C9DAC - 0x6C97B4

	.global Img_086C9DAC
Img_086C9DAC:  @ 0x086C9DAC
	.incbin "baserom.gba", 0x6C9DAC, 0x618    @ 0x6CA3C4 - 0x6C9DAC

	.global Img_086CA3C4
Img_086CA3C4:  @ 0x086CA3C4
	.incbin "baserom.gba", 0x6CA3C4, 0x6D0    @ 0x6CAA94 - 0x6CA3C4

	.global Img_086CAA94
Img_086CAA94:  @ 0x086CAA94
	.incbin "baserom.gba", 0x6CAA94, 0x730    @ 0x6CB1C4 - 0x6CAA94

	.global Img_086CB1C4
Img_086CB1C4:  @ 0x086CB1C4
	.incbin "baserom.gba", 0x6CB1C4, 0x72C    @ 0x6CB8F0 - 0x6CB1C4

	.global Img_086CB8F0
Img_086CB8F0:  @ 0x086CB8F0
	.incbin "baserom.gba", 0x6CB8F0, 0x7F4    @ 0x6CC0E4 - 0x6CB8F0

	.global Img_086CC0E4
Img_086CC0E4:  @ 0x086CC0E4
	.incbin "baserom.gba", 0x6CC0E4, 0x7BC    @ 0x6CC8A0 - 0x6CC0E4

	.global Img_086CC8A0
Img_086CC8A0:  @ 0x086CC8A0
	.incbin "baserom.gba", 0x6CC8A0, 0x7F8    @ 0x6CD098 - 0x6CC8A0

	.global Img_086CD098
Img_086CD098:  @ 0x086CD098
	.incbin "baserom.gba", 0x6CD098, 0x8F0    @ 0x6CD988 - 0x6CD098

	.global Img_086CD988
Img_086CD988:  @ 0x086CD988
	.incbin "baserom.gba", 0x6CD988, 0x7D4    @ 0x6CE15C - 0x6CD988

	.global Img_086CE15C
Img_086CE15C:  @ 0x086CE15C
	.incbin "baserom.gba", 0x6CE15C, 0x8A0    @ 0x6CE9FC - 0x6CE15C

	.global Img_086CE9FC
Img_086CE9FC:  @ 0x086CE9FC
	.incbin "baserom.gba", 0x6CE9FC, 0x848    @ 0x6CF244 - 0x6CE9FC

	.global Img_086CF244
Img_086CF244:  @ 0x086CF244
	.incbin "baserom.gba", 0x6CF244, 0x794    @ 0x6CF9D8 - 0x6CF244

	.global Img_086CF9D8
Img_086CF9D8:  @ 0x086CF9D8
	.incbin "baserom.gba", 0x6CF9D8, 0x890    @ 0x6D0268 - 0x6CF9D8

	.global Img_086D0268
Img_086D0268:  @ 0x086D0268
	.incbin "baserom.gba", 0x6D0268, 0x8BC    @ 0x6D0B24 - 0x6D0268

	.global Img_086D0B24
Img_086D0B24:  @ 0x086D0B24
	.incbin "baserom.gba", 0x6D0B24, 0x828    @ 0x6D134C - 0x6D0B24

	.global Img_086D134C
Img_086D134C:  @ 0x086D134C
	.incbin "baserom.gba", 0x6D134C, 0x820    @ 0x6D1B6C - 0x6D134C

	.global Img_086D1B6C
Img_086D1B6C:  @ 0x086D1B6C
	.incbin "baserom.gba", 0x6D1B6C, 0x894    @ 0x6D2400 - 0x6D1B6C

	.global Img_086D2400
Img_086D2400:  @ 0x086D2400
	.incbin "baserom.gba", 0x6D2400, 0x7E4    @ 0x6D2BE4 - 0x6D2400

	.global Img_086D2BE4
Img_086D2BE4:  @ 0x086D2BE4
	.incbin "baserom.gba", 0x6D2BE4, 0x870    @ 0x6D3454 - 0x6D2BE4

	.global Pal_086D3454
Pal_086D3454:  @ 0x086D3454
	.incbin "baserom.gba", 0x6D3454, 0x20    @ 0x6D3474 - 0x6D3454

	.global Pal_086D3474
Pal_086D3474:  @ 0x086D3474
	.incbin "baserom.gba", 0x6D3474, 0x20    @ 0x6D3494 - 0x6D3474

	.global Pal_086D3494
Pal_086D3494:  @ 0x086D3494
	.incbin "baserom.gba", 0x6D3494, 0x20    @ 0x6D34B4 - 0x6D3494

	.global Pal_086D34B4
Pal_086D34B4:  @ 0x086D34B4
	.incbin "baserom.gba", 0x6D34B4, 0x20    @ 0x6D34D4 - 0x6D34B4

	.global Pal_086D34D4
Pal_086D34D4:  @ 0x086D34D4
	.incbin "baserom.gba", 0x6D34D4, 0x20    @ 0x6D34F4 - 0x6D34D4

	.global Pal_086D34F4
Pal_086D34F4:  @ 0x086D34F4
	.incbin "baserom.gba", 0x6D34F4, 0x20    @ 0x6D3514 - 0x6D34F4

	.global Pal_086D3514
Pal_086D3514:  @ 0x086D3514
	.incbin "baserom.gba", 0x6D3514, 0x20    @ 0x6D3534 - 0x6D3514

	.global Pal_086D3534
Pal_086D3534:  @ 0x086D3534
	.incbin "baserom.gba", 0x6D3534, 0x20    @ 0x6D3554 - 0x6D3534

	.global Pal_086D3554
Pal_086D3554:  @ 0x086D3554
	.incbin "baserom.gba", 0x6D3554, 0x20    @ 0x6D3574 - 0x6D3554

	.global Pal_086D3574
Pal_086D3574:  @ 0x086D3574
	.incbin "baserom.gba", 0x6D3574, 0x20    @ 0x6D3594 - 0x6D3574

	.global Pal_086D3594
Pal_086D3594:  @ 0x086D3594
	.incbin "baserom.gba", 0x6D3594, 0x20    @ 0x6D35B4 - 0x6D3594

	.global Pal_086D35B4
Pal_086D35B4:  @ 0x086D35B4
	.incbin "baserom.gba", 0x6D35B4, 0x20    @ 0x6D35D4 - 0x6D35B4

	.global Pal_086D35D4
Pal_086D35D4:  @ 0x086D35D4
	.incbin "baserom.gba", 0x6D35D4, 0x20    @ 0x6D35F4 - 0x6D35D4

	.global Pal_086D35F4
Pal_086D35F4:  @ 0x086D35F4
	.incbin "baserom.gba", 0x6D35F4, 0x20    @ 0x6D3614 - 0x6D35F4

	.global Pal_086D3614
Pal_086D3614:  @ 0x086D3614
	.incbin "baserom.gba", 0x6D3614, 0x20    @ 0x6D3634 - 0x6D3614

	.global Pal_086D3634
Pal_086D3634:  @ 0x086D3634
	.incbin "baserom.gba", 0x6D3634, 0x20    @ 0x6D3654 - 0x6D3634

	.global Pal_086D3654
Pal_086D3654:  @ 0x086D3654
	.incbin "baserom.gba", 0x6D3654, 0x20    @ 0x6D3674 - 0x6D3654

	.global Pal_086D3674
Pal_086D3674:  @ 0x086D3674
	.incbin "baserom.gba", 0x6D3674, 0x20    @ 0x6D3694 - 0x6D3674

	.global Pal_086D3694
Pal_086D3694:  @ 0x086D3694
	.incbin "baserom.gba", 0x6D3694, 0x20    @ 0x6D36B4 - 0x6D3694

	.global Pal_086D36B4
Pal_086D36B4:  @ 0x086D36B4
	.incbin "baserom.gba", 0x6D36B4, 0x20    @ 0x6D36D4 - 0x6D36B4

	.global Tsa_086D36D4
Tsa_086D36D4:  @ 0x086D36D4
	.incbin "baserom.gba", 0x6D36D4, 0xE0    @ 0x6D37B4 - 0x6D36D4

	.global Tsa_086D37B4
Tsa_086D37B4:  @ 0x086D37B4
	.incbin "baserom.gba", 0x6D37B4, 0xDC    @ 0x6D3890 - 0x6D37B4

	.global Tsa_086D3890
Tsa_086D3890:  @ 0x086D3890
	.incbin "baserom.gba", 0x6D3890, 0xE8    @ 0x6D3978 - 0x6D3890

	.global Tsa_086D3978
Tsa_086D3978:  @ 0x086D3978
	.incbin "baserom.gba", 0x6D3978, 0x104    @ 0x6D3A7C - 0x6D3978

	.global Tsa_086D3A7C
Tsa_086D3A7C:  @ 0x086D3A7C
	.incbin "baserom.gba", 0x6D3A7C, 0xFC    @ 0x6D3B78 - 0x6D3A7C

	.global Tsa_086D3B78
Tsa_086D3B78:  @ 0x086D3B78
	.incbin "baserom.gba", 0x6D3B78, 0x10C    @ 0x6D3C84 - 0x6D3B78

	.global Tsa_086D3C84
Tsa_086D3C84:  @ 0x086D3C84
	.incbin "baserom.gba", 0x6D3C84, 0x108    @ 0x6D3D8C - 0x6D3C84

	.global Tsa_086D3D8C
Tsa_086D3D8C:  @ 0x086D3D8C
	.incbin "baserom.gba", 0x6D3D8C, 0x108    @ 0x6D3E94 - 0x6D3D8C

	.global Tsa_086D3E94
Tsa_086D3E94:  @ 0x086D3E94
	.incbin "baserom.gba", 0x6D3E94, 0x128    @ 0x6D3FBC - 0x6D3E94

	.global Tsa_086D3FBC
Tsa_086D3FBC:  @ 0x086D3FBC
	.incbin "baserom.gba", 0x6D3FBC, 0x110    @ 0x6D40CC - 0x6D3FBC

	.global Tsa_086D40CC
Tsa_086D40CC:  @ 0x086D40CC
	.incbin "baserom.gba", 0x6D40CC, 0x128    @ 0x6D41F4 - 0x6D40CC

	.global Tsa_086D41F4
Tsa_086D41F4:  @ 0x086D41F4
	.incbin "baserom.gba", 0x6D41F4, 0x124    @ 0x6D4318 - 0x6D41F4

	.global Tsa_086D4318
Tsa_086D4318:  @ 0x086D4318
	.incbin "baserom.gba", 0x6D4318, 0x110    @ 0x6D4428 - 0x6D4318

	.global Tsa_086D4428
Tsa_086D4428:  @ 0x086D4428
	.incbin "baserom.gba", 0x6D4428, 0x124    @ 0x6D454C - 0x6D4428

	.global Tsa_086D454C
Tsa_086D454C:  @ 0x086D454C
	.incbin "baserom.gba", 0x6D454C, 0x120    @ 0x6D466C - 0x6D454C

	.global Tsa_086D466C
Tsa_086D466C:  @ 0x086D466C
	.incbin "baserom.gba", 0x6D466C, 0x11C    @ 0x6D4788 - 0x6D466C

	.global Tsa_086D4788
Tsa_086D4788:  @ 0x086D4788
	.incbin "baserom.gba", 0x6D4788, 0x114    @ 0x6D489C - 0x6D4788

	.global Tsa_086D489C
Tsa_086D489C:  @ 0x086D489C
	.incbin "baserom.gba", 0x6D489C, 0x134    @ 0x6D49D0 - 0x6D489C

	.global Tsa_086D49D0
Tsa_086D49D0:  @ 0x086D49D0
	.incbin "baserom.gba", 0x6D49D0, 0x10C    @ 0x6D4ADC - 0x6D49D0

	.global Tsa_086D4ADC
Tsa_086D4ADC:  @ 0x086D4ADC
	.incbin "baserom.gba", 0x6D4ADC, 0x12C    @ 0x6D4C08 - 0x6D4ADC

	.global Img_086D4C08
Img_086D4C08:  @ 0x086D4C08
	.incbin "baserom.gba", 0x6D4C08, 0x810    @ 0x6D5418 - 0x6D4C08

	.global Img_086D5418
Img_086D5418:  @ 0x086D5418
	.incbin "baserom.gba", 0x6D5418, 0xA2C    @ 0x6D5E44 - 0x6D5418

	.global Img_086D5E44
Img_086D5E44:  @ 0x086D5E44
	.incbin "baserom.gba", 0x6D5E44, 0xA68    @ 0x6D68AC - 0x6D5E44

	.global Img_086D68AC
Img_086D68AC:  @ 0x086D68AC
	.incbin "baserom.gba", 0x6D68AC, 0xAF8    @ 0x6D73A4 - 0x6D68AC

	.global Img_086D73A4
Img_086D73A4:  @ 0x086D73A4
	.incbin "baserom.gba", 0x6D73A4, 0xB7C    @ 0x6D7F20 - 0x6D73A4

	.global Img_086D7F20
Img_086D7F20:  @ 0x086D7F20
	.incbin "baserom.gba", 0x6D7F20, 0xB74    @ 0x6D8A94 - 0x6D7F20

	.global Pal_EvilEyeBg2_A
Pal_EvilEyeBg2_A:  @ 0x086D8A94
	.incbin "baserom.gba", 0x6D8A94, 0x20    @ 0x6D8AB4 - 0x6D8A94

	.global Pal_086D8AB4
Pal_086D8AB4:  @ 0x086D8AB4
	.incbin "baserom.gba", 0x6D8AB4, 0x20    @ 0x6D8AD4 - 0x6D8AB4

	.global Pal_086D8AD4
Pal_086D8AD4:  @ 0x086D8AD4
	.incbin "baserom.gba", 0x6D8AD4, 0x20    @ 0x6D8AF4 - 0x6D8AD4

	.global Pal_086D8AF4
Pal_086D8AF4:  @ 0x086D8AF4
	.incbin "baserom.gba", 0x6D8AF4, 0x20    @ 0x6D8B14 - 0x6D8AF4

	.global Pal_086D8B14
Pal_086D8B14:  @ 0x086D8B14
	.incbin "baserom.gba", 0x6D8B14, 0x20    @ 0x6D8B34 - 0x6D8B14

	.global Pal_086D8B34
Pal_086D8B34:  @ 0x086D8B34
	.incbin "baserom.gba", 0x6D8B34, 0x20    @ 0x6D8B54 - 0x6D8B34

	.global Tsa_086D8B54
Tsa_086D8B54:  @ 0x086D8B54
	.incbin "baserom.gba", 0x6D8B54, 0x110    @ 0x6D8C64 - 0x6D8B54

	.global Tsa_086D8C64
Tsa_086D8C64:  @ 0x086D8C64
	.incbin "baserom.gba", 0x6D8C64, 0x188    @ 0x6D8DEC - 0x6D8C64

	.global Tsa_086D8DEC
Tsa_086D8DEC:  @ 0x086D8DEC
	.incbin "baserom.gba", 0x6D8DEC, 0x1B8    @ 0x6D8FA4 - 0x6D8DEC

	.global Tsa_086D8FA4
Tsa_086D8FA4:  @ 0x086D8FA4
	.incbin "baserom.gba", 0x6D8FA4, 0x1CC    @ 0x6D9170 - 0x6D8FA4

	.global Tsa_086D9170
Tsa_086D9170:  @ 0x086D9170
	.incbin "baserom.gba", 0x6D9170, 0x1E4    @ 0x6D9354 - 0x6D9170

	.global Tsa_086D9354
Tsa_086D9354:  @ 0x086D9354
	.incbin "baserom.gba", 0x6D9354, 0x1E8    @ 0x6D953C - 0x6D9354

	.global Tsa_086D953C
Tsa_086D953C:  @ 0x086D953C
	.incbin "baserom.gba", 0x6D953C, 0x1B4    @ 0x6D96F0 - 0x6D953C

	.global Tsa_086D96F0
Tsa_086D96F0:  @ 0x086D96F0
	.incbin "baserom.gba", 0x6D96F0, 0x1B8    @ 0x6D98A8 - 0x6D96F0

	.global Tsa_086D98A8
Tsa_086D98A8:  @ 0x086D98A8
	.incbin "baserom.gba", 0x6D98A8, 0x1CC    @ 0x6D9A74 - 0x6D98A8

	.global Tsa_086D9A74
Tsa_086D9A74:  @ 0x086D9A74
	.incbin "baserom.gba", 0x6D9A74, 0x1CC    @ 0x6D9C40 - 0x6D9A74

	.global gUnknown_086D9C40
gUnknown_086D9C40:  @ 0x086D9C40
	.incbin "baserom.gba", 0x6D9C40, 0x6FC

	.global gUnknown_086DA33C
gUnknown_086DA33C:  @ 0x086DA33C
	.incbin "baserom.gba", 0x6DA33C, 0x5E4

	.global gUnknown_086DA920
gUnknown_086DA920:  @ 0x086DA920
	.incbin "baserom.gba", 0x6DA920, 0x614    @ 0x6DAF34 - 0x6DA920

	.global Img_086DAF34
Img_086DAF34:  @ 0x086DAF34
	.incbin "baserom.gba", 0x6DAF34, 0x82C    @ 0x6DB760 - 0x6DAF34

	.global Img_086DB760
Img_086DB760:  @ 0x086DB760
	.incbin "baserom.gba", 0x6DB760, 0x904    @ 0x6DC064 - 0x6DB760

	.global Img_086DC064
Img_086DC064:  @ 0x086DC064
	.incbin "baserom.gba", 0x6DC064, 0xA00    @ 0x6DCA64 - 0x6DC064

	.global Img_086DCA64
Img_086DCA64:  @ 0x086DCA64
	.incbin "baserom.gba", 0x6DCA64, 0xB34    @ 0x6DD598 - 0x6DCA64

	.global Img_086DD598
Img_086DD598:  @ 0x086DD598
	.incbin "baserom.gba", 0x6DD598, 0xBD0    @ 0x6DE168 - 0x6DD598

	.global Img_086DE168
Img_086DE168:  @ 0x086DE168
	.incbin "baserom.gba", 0x6DE168, 0xC28    @ 0x6DED90 - 0x6DE168

	.global Img_086DED90
Img_086DED90:  @ 0x086DED90
	.incbin "baserom.gba", 0x6DED90, 0xC68    @ 0x6DF9F8 - 0x6DED90

	.global Img_086DF9F8
Img_086DF9F8:  @ 0x086DF9F8
	.incbin "baserom.gba", 0x6DF9F8, 0xBF8    @ 0x6E05F0 - 0x6DF9F8

	.global Img_086E05F0
Img_086E05F0:  @ 0x086E05F0
	.incbin "baserom.gba", 0x6E05F0, 0xCA4    @ 0x6E1294 - 0x6E05F0

	.global Img_086E1294
Img_086E1294:  @ 0x086E1294
	.incbin "baserom.gba", 0x6E1294, 0xCC0    @ 0x6E1F54 - 0x6E1294

	.global Img_086E1F54
Img_086E1F54:  @ 0x086E1F54
	.incbin "baserom.gba", 0x6E1F54, 0xC94    @ 0x6E2BE8 - 0x6E1F54

	.global Img_086E2BE8
Img_086E2BE8:  @ 0x086E2BE8
	.incbin "baserom.gba", 0x6E2BE8, 0xC40    @ 0x6E3828 - 0x6E2BE8

	.global Img_086E3828
Img_086E3828:  @ 0x086E3828
	.incbin "baserom.gba", 0x6E3828, 0xBF8    @ 0x6E4420 - 0x6E3828

	.global Img_086E4420
Img_086E4420:  @ 0x086E4420
	.incbin "baserom.gba", 0x6E4420, 0xB70    @ 0x6E4F90 - 0x6E4420

	.global Img_086E4F90
Img_086E4F90:  @ 0x086E4F90
	.incbin "baserom.gba", 0x6E4F90, 0xAA0    @ 0x6E5A30 - 0x6E4F90

	.global Img_086E5A30
Img_086E5A30:  @ 0x086E5A30
	.incbin "baserom.gba", 0x6E5A30, 0xA10    @ 0x6E6440 - 0x6E5A30

	.global Pal_086E6440
Pal_086E6440:  @ 0x086E6440
	.incbin "baserom.gba", 0x6E6440, 0x20    @ 0x6E6460 - 0x6E6440

	.global Pal_086E6460
Pal_086E6460:  @ 0x086E6460
	.incbin "baserom.gba", 0x6E6460, 0x20    @ 0x6E6480 - 0x6E6460

	.global Pal_086E6480
Pal_086E6480:  @ 0x086E6480
	.incbin "baserom.gba", 0x6E6480, 0x20    @ 0x6E64A0 - 0x6E6480

	.global Pal_086E64A0
Pal_086E64A0:  @ 0x086E64A0
	.incbin "baserom.gba", 0x6E64A0, 0x20    @ 0x6E64C0 - 0x6E64A0

	.global Pal_086E64C0
Pal_086E64C0:  @ 0x086E64C0
	.incbin "baserom.gba", 0x6E64C0, 0x20    @ 0x6E64E0 - 0x6E64C0

	.global Tsa_086E64E0
Tsa_086E64E0:  @ 0x086E64E0
	.incbin "baserom.gba", 0x6E64E0, 0x10C    @ 0x6E65EC - 0x6E64E0

	.global Tsa_086E65EC
Tsa_086E65EC:  @ 0x086E65EC
	.incbin "baserom.gba", 0x6E65EC, 0x130    @ 0x6E671C - 0x6E65EC

	.global Tsa_086E671C
Tsa_086E671C:  @ 0x086E671C
	.incbin "baserom.gba", 0x6E671C, 0x144    @ 0x6E6860 - 0x6E671C

	.global Tsa_086E6860
Tsa_086E6860:  @ 0x086E6860
	.incbin "baserom.gba", 0x6E6860, 0x168    @ 0x6E69C8 - 0x6E6860

	.global Tsa_086E69C8
Tsa_086E69C8:  @ 0x086E69C8
	.incbin "baserom.gba", 0x6E69C8, 0x170    @ 0x6E6B38 - 0x6E69C8

	.global Tsa_086E6B38
Tsa_086E6B38:  @ 0x086E6B38
	.incbin "baserom.gba", 0x6E6B38, 0x18C    @ 0x6E6CC4 - 0x6E6B38

	.global Tsa_086E6CC4
Tsa_086E6CC4:  @ 0x086E6CC4
	.incbin "baserom.gba", 0x6E6CC4, 0x19C    @ 0x6E6E60 - 0x6E6CC4

	.global Tsa_086E6E60
Tsa_086E6E60:  @ 0x086E6E60
	.incbin "baserom.gba", 0x6E6E60, 0x1AC    @ 0x6E700C - 0x6E6E60

	.global Tsa_086E700C
Tsa_086E700C:  @ 0x086E700C
	.incbin "baserom.gba", 0x6E700C, 0x1B0    @ 0x6E71BC - 0x6E700C

	.global Tsa_086E71BC
Tsa_086E71BC:  @ 0x086E71BC
	.incbin "baserom.gba", 0x6E71BC, 0x1C4    @ 0x6E7380 - 0x6E71BC

	.global Tsa_086E7380
Tsa_086E7380:  @ 0x086E7380
	.incbin "baserom.gba", 0x6E7380, 0x1D0    @ 0x6E7550 - 0x6E7380

	.global Tsa_086E7550
Tsa_086E7550:  @ 0x086E7550
	.incbin "baserom.gba", 0x6E7550, 0x1E0    @ 0x6E7730 - 0x6E7550

	.global Tsa_086E7730
Tsa_086E7730:  @ 0x086E7730
	.incbin "baserom.gba", 0x6E7730, 0x1E4    @ 0x6E7914 - 0x6E7730

	.global Tsa_086E7914
Tsa_086E7914:  @ 0x086E7914
	.incbin "baserom.gba", 0x6E7914, 0x1E8    @ 0x6E7AFC - 0x6E7914

	.global Tsa_086E7AFC
Tsa_086E7AFC:  @ 0x086E7AFC
	.incbin "baserom.gba", 0x6E7AFC, 0x1DC    @ 0x6E7CD8 - 0x6E7AFC

	.global Tsa_086E7CD8
Tsa_086E7CD8:  @ 0x086E7CD8
	.incbin "baserom.gba", 0x6E7CD8, 0x1D8    @ 0x6E7EB0 - 0x6E7CD8

	.global gUnknown_086E7EB0
gUnknown_086E7EB0:  @ 0x086E7EB0
	.incbin "baserom.gba", 0x6E7EB0, 0x1308

	.global gUnknown_086E91B8
gUnknown_086E91B8:  @ 0x086E91B8
	.incbin "baserom.gba", 0x6E91B8, 0x20    @ 0x6E91D8 - 0x6E91B8

	.global Tsa_086E91D8
Tsa_086E91D8:  @ 0x086E91D8
	.incbin "baserom.gba", 0x6E91D8, 0xA4    @ 0x6E927C - 0x6E91D8

	.global Tsa_086E927C
Tsa_086E927C:  @ 0x086E927C
	.incbin "baserom.gba", 0x6E927C, 0xDC    @ 0x6E9358 - 0x6E927C

	.global Tsa_086E9358
Tsa_086E9358:  @ 0x086E9358
	.incbin "baserom.gba", 0x6E9358, 0x11C    @ 0x6E9474 - 0x6E9358

	.global Tsa_086E9474
Tsa_086E9474:  @ 0x086E9474
	.incbin "baserom.gba", 0x6E9474, 0x160    @ 0x6E95D4 - 0x6E9474

	.global Tsa_086E95D4
Tsa_086E95D4:  @ 0x086E95D4
	.incbin "baserom.gba", 0x6E95D4, 0x184    @ 0x6E9758 - 0x6E95D4

	.global Tsa_086E9758
Tsa_086E9758:  @ 0x086E9758
	.incbin "baserom.gba", 0x6E9758, 0x18C    @ 0x6E98E4 - 0x6E9758

	.global Tsa_086E98E4
Tsa_086E98E4:  @ 0x086E98E4
	.incbin "baserom.gba", 0x6E98E4, 0x180    @ 0x6E9A64 - 0x6E98E4

	.global Tsa_086E9A64
Tsa_086E9A64:  @ 0x086E9A64
	.incbin "baserom.gba", 0x6E9A64, 0x170    @ 0x6E9BD4 - 0x6E9A64

	.global Tsa_086E9BD4
Tsa_086E9BD4:  @ 0x086E9BD4
	.incbin "baserom.gba", 0x6E9BD4, 0x16C    @ 0x6E9D40 - 0x6E9BD4

	.global gUnknown_086E9D40
gUnknown_086E9D40:  @ 0x086E9D40
	.incbin "baserom.gba", 0x6E9D40, 0x6AC

	.global gUnknown_086EA3EC
gUnknown_086EA3EC:  @ 0x086EA3EC
	.incbin "baserom.gba", 0x6EA3EC, 0xA28

	.global gUnknown_086EAE14
gUnknown_086EAE14:  @ 0x086EAE14
	.incbin "baserom.gba", 0x6EAE14, 0x10

	.global gUnknown_086EAE24
gUnknown_086EAE24:  @ 0x086EAE24
	.incbin "baserom.gba", 0x6EAE24, 0xA90    @ 0x6EB8B4 - 0x6EAE24

	.global Img_086EB8B4
Img_086EB8B4:  @ 0x086EB8B4
	.incbin "baserom.gba", 0x6EB8B4, 0x490    @ 0x6EBD44 - 0x6EB8B4

	.global Img_086EBD44
Img_086EBD44:  @ 0x086EBD44
	.incbin "baserom.gba", 0x6EBD44, 0x520    @ 0x6EC264 - 0x6EBD44

	.global Img_086EC264
Img_086EC264:  @ 0x086EC264
	.incbin "baserom.gba", 0x6EC264, 0x570    @ 0x6EC7D4 - 0x6EC264

	.global Img_086EC7D4
Img_086EC7D4:  @ 0x086EC7D4
	.incbin "baserom.gba", 0x6EC7D4, 0x604    @ 0x6ECDD8 - 0x6EC7D4

	.global Img_086ECDD8
Img_086ECDD8:  @ 0x086ECDD8
	.incbin "baserom.gba", 0x6ECDD8, 0x64C    @ 0x6ED424 - 0x6ECDD8

	.global Img_086ED424
Img_086ED424:  @ 0x086ED424
	.incbin "baserom.gba", 0x6ED424, 0x6D4    @ 0x6EDAF8 - 0x6ED424

	.global Img_086EDAF8
Img_086EDAF8:  @ 0x086EDAF8
	.incbin "baserom.gba", 0x6EDAF8, 0x764    @ 0x6EE25C - 0x6EDAF8

	.global Img_086EE25C
Img_086EE25C:  @ 0x086EE25C
	.incbin "baserom.gba", 0x6EE25C, 0x79C    @ 0x6EE9F8 - 0x6EE25C

	.global Img_086EE9F8
Img_086EE9F8:  @ 0x086EE9F8
	.incbin "baserom.gba", 0x6EE9F8, 0x7E4    @ 0x6EF1DC - 0x6EE9F8

	.global Img_086EF1DC
Img_086EF1DC:  @ 0x086EF1DC
	.incbin "baserom.gba", 0x6EF1DC, 0x7EC    @ 0x6EF9C8 - 0x6EF1DC

	.global Img_086EF9C8
Img_086EF9C8:  @ 0x086EF9C8
	.incbin "baserom.gba", 0x6EF9C8, 0x81C    @ 0x6F01E4 - 0x6EF9C8

	.global Pal_086F01E4
Pal_086F01E4:  @ 0x086F01E4
	.incbin "baserom.gba", 0x6F01E4, 0x20    @ 0x6F0204 - 0x6F01E4

	.global Pal_086F0204
Pal_086F0204:  @ 0x086F0204
	.incbin "baserom.gba", 0x6F0204, 0x20    @ 0x6F0224 - 0x6F0204

	.global Pal_086F0224
Pal_086F0224:  @ 0x086F0224
	.incbin "baserom.gba", 0x6F0224, 0x20    @ 0x6F0244 - 0x6F0224

	.global Pal_086F0244
Pal_086F0244:  @ 0x086F0244
	.incbin "baserom.gba", 0x6F0244, 0x20    @ 0x6F0264 - 0x6F0244

	.global Pal_086F0264
Pal_086F0264:  @ 0x086F0264
	.incbin "baserom.gba", 0x6F0264, 0x20    @ 0x6F0284 - 0x6F0264

	.global Pal_086F0284
Pal_086F0284:  @ 0x086F0284
	.incbin "baserom.gba", 0x6F0284, 0x20    @ 0x6F02A4 - 0x6F0284

	.global Pal_086F02A4
Pal_086F02A4:  @ 0x086F02A4
	.incbin "baserom.gba", 0x6F02A4, 0x20    @ 0x6F02C4 - 0x6F02A4

	.global Pal_086F02C4
Pal_086F02C4:  @ 0x086F02C4
	.incbin "baserom.gba", 0x6F02C4, 0x20    @ 0x6F02E4 - 0x6F02C4

	.global Pal_086F02E4
Pal_086F02E4:  @ 0x086F02E4
	.incbin "baserom.gba", 0x6F02E4, 0x20    @ 0x6F0304 - 0x6F02E4

	.global Pal_086F0304
Pal_086F0304:  @ 0x086F0304
	.incbin "baserom.gba", 0x6F0304, 0x20    @ 0x6F0324 - 0x6F0304

	.global Pal_086F0324
Pal_086F0324:  @ 0x086F0324
	.incbin "baserom.gba", 0x6F0324, 0x20    @ 0x6F0344 - 0x6F0324

	.global Tsa_086F0344
Tsa_086F0344:  @ 0x086F0344
	.incbin "baserom.gba", 0x6F0344, 0xA8    @ 0x6F03EC - 0x6F0344

	.global Tsa_086F03EC
Tsa_086F03EC:  @ 0x086F03EC
	.incbin "baserom.gba", 0x6F03EC, 0xCC    @ 0x6F04B8 - 0x6F03EC

	.global Tsa_086F04B8
Tsa_086F04B8:  @ 0x086F04B8
	.incbin "baserom.gba", 0x6F04B8, 0xE8    @ 0x6F05A0 - 0x6F04B8

	.global Tsa_086F05A0
Tsa_086F05A0:  @ 0x086F05A0
	.incbin "baserom.gba", 0x6F05A0, 0xFC    @ 0x6F069C - 0x6F05A0

	.global Tsa_086F069C
Tsa_086F069C:  @ 0x086F069C
	.incbin "baserom.gba", 0x6F069C, 0x100    @ 0x6F079C - 0x6F069C

	.global Tsa_086F079C
Tsa_086F079C:  @ 0x086F079C
	.incbin "baserom.gba", 0x6F079C, 0x11C    @ 0x6F08B8 - 0x6F079C

	.global Tsa_086F08B8
Tsa_086F08B8:  @ 0x086F08B8
	.incbin "baserom.gba", 0x6F08B8, 0x128    @ 0x6F09E0 - 0x6F08B8

	.global Tsa_086F09E0
Tsa_086F09E0:  @ 0x086F09E0
	.incbin "baserom.gba", 0x6F09E0, 0x14C    @ 0x6F0B2C - 0x6F09E0

	.global Tsa_086F0B2C
Tsa_086F0B2C:  @ 0x086F0B2C
	.incbin "baserom.gba", 0x6F0B2C, 0x15C    @ 0x6F0C88 - 0x6F0B2C

	.global Tsa_086F0C88
Tsa_086F0C88:  @ 0x086F0C88
	.incbin "baserom.gba", 0x6F0C88, 0x170    @ 0x6F0DF8 - 0x6F0C88

	.global Tsa_086F0DF8
Tsa_086F0DF8:  @ 0x086F0DF8
	.incbin "baserom.gba", 0x6F0DF8, 0x174    @ 0x6F0F6C - 0x6F0DF8

	.global Img_086F0F6C
Img_086F0F6C:  @ 0x086F0F6C
	.incbin "baserom.gba", 0x6F0F6C, 0x155C    @ 0x6F24C8 - 0x6F0F6C

	.global Img_086F24C8
Img_086F24C8:  @ 0x086F24C8
	.incbin "baserom.gba", 0x6F24C8, 0x1368    @ 0x6F3830 - 0x6F24C8

	.global Img_086F3830
Img_086F3830:  @ 0x086F3830
	.incbin "baserom.gba", 0x6F3830, 0x1208    @ 0x6F4A38 - 0x6F3830

	.global Pal_086F4A38
Pal_086F4A38:  @ 0x086F4A38
	.incbin "baserom.gba", 0x6F4A38, 0x20    @ 0x6F4A58 - 0x6F4A38

	.global Pal_086F4A58
Pal_086F4A58:  @ 0x086F4A58
	.incbin "baserom.gba", 0x6F4A58, 0x20    @ 0x6F4A78 - 0x6F4A58

	.global Pal_086F4A78
Pal_086F4A78:  @ 0x086F4A78
	.incbin "baserom.gba", 0x6F4A78, 0x20    @ 0x6F4A98 - 0x6F4A78

	.global Tsa_086F4A98
Tsa_086F4A98:  @ 0x086F4A98
	.incbin "baserom.gba", 0x6F4A98, 0x234    @ 0x6F4CCC - 0x6F4A98

	.global Tsa_086F4CCC
Tsa_086F4CCC:  @ 0x086F4CCC
	.incbin "baserom.gba", 0x6F4CCC, 0x20C    @ 0x6F4ED8 - 0x6F4CCC

	.global Tsa_086F4ED8
Tsa_086F4ED8:  @ 0x086F4ED8
	.incbin "baserom.gba", 0x6F4ED8, 0x1FC    @ 0x6F50D4 - 0x6F4ED8

	.global Img_086F50D4
Img_086F50D4:  @ 0x086F50D4
	.incbin "baserom.gba", 0x6F50D4, 0x1190    @ 0x6F6264 - 0x6F50D4

	.global Img_086F6264
Img_086F6264:  @ 0x086F6264
	.incbin "baserom.gba", 0x6F6264, 0xEEC    @ 0x6F7150 - 0x6F6264

	.global Img_086F7150
Img_086F7150:  @ 0x086F7150
	.incbin "baserom.gba", 0x6F7150, 0xF68    @ 0x6F80B8 - 0x6F7150

	.global Img_086F80B8
Img_086F80B8:  @ 0x086F80B8
	.incbin "baserom.gba", 0x6F80B8, 0x10A4    @ 0x6F915C - 0x6F80B8

	.global Img_086F915C
Img_086F915C:  @ 0x086F915C
	.incbin "baserom.gba", 0x6F915C, 0x11F4    @ 0x6FA350 - 0x6F915C

	.global Img_086FA350
Img_086FA350:  @ 0x086FA350
	.incbin "baserom.gba", 0x6FA350, 0xD2C    @ 0x6FB07C - 0x6FA350

	.global Img_086FB07C
Img_086FB07C:  @ 0x086FB07C
	.incbin "baserom.gba", 0x6FB07C, 0xC6C    @ 0x6FBCE8 - 0x6FB07C

	.global Img_086FBCE8
Img_086FBCE8:  @ 0x086FBCE8
	.incbin "baserom.gba", 0x6FBCE8, 0x1070    @ 0x6FCD58 - 0x6FBCE8

	.global Img_086FCD58
Img_086FCD58:  @ 0x086FCD58
	.incbin "baserom.gba", 0x6FCD58, 0xCEC    @ 0x6FDA44 - 0x6FCD58

	.global gUnknown_086FDA44
gUnknown_086FDA44:  @ 0x086FDA44
	.incbin "baserom.gba", 0x6FDA44, 0x20    @ 0x6FDA64 - 0x6FDA44

	.global Tsa_086FDA64
Tsa_086FDA64:  @ 0x086FDA64
	.incbin "baserom.gba", 0x6FDA64, 0xA4    @ 0x6FDB08 - 0x6FDA64

	.global Tsa_086FDB08
Tsa_086FDB08:  @ 0x086FDB08
	.incbin "baserom.gba", 0x6FDB08, 0x1D8    @ 0x6FDCE0 - 0x6FDB08

	.global Tsa_086FDCE0
Tsa_086FDCE0:  @ 0x086FDCE0
	.incbin "baserom.gba", 0x6FDCE0, 0x1E4    @ 0x6FDEC4 - 0x6FDCE0

	.global Tsa_086FDEC4
Tsa_086FDEC4:  @ 0x086FDEC4
	.incbin "baserom.gba", 0x6FDEC4, 0x210    @ 0x6FE0D4 - 0x6FDEC4

	.global Tsa_086FE0D4
Tsa_086FE0D4:  @ 0x086FE0D4
	.incbin "baserom.gba", 0x6FE0D4, 0x24C    @ 0x6FE320 - 0x6FE0D4

	.global Tsa_086FE320
Tsa_086FE320:  @ 0x086FE320
	.incbin "baserom.gba", 0x6FE320, 0x1C0    @ 0x6FE4E0 - 0x6FE320

	.global Tsa_086FE4E0
Tsa_086FE4E0:  @ 0x086FE4E0
	.incbin "baserom.gba", 0x6FE4E0, 0x1A0    @ 0x6FE680 - 0x6FE4E0

	.global Tsa_086FE680
Tsa_086FE680:  @ 0x086FE680
	.incbin "baserom.gba", 0x6FE680, 0x19C    @ 0x6FE81C - 0x6FE680

	.global Tsa_086FE81C
Tsa_086FE81C:  @ 0x086FE81C
	.incbin "baserom.gba", 0x6FE81C, 0x11C    @ 0x6FE938 - 0x6FE81C

	.global Img_NaglfarSprites_A
Img_NaglfarSprites_A:  @ 0x086FE938
	.incbin "baserom.gba", 0x6FE938, 0xA6C

	.global Pal_NaglfarSprites_A
Pal_NaglfarSprites_A:  @ 0x086FF3A4
	.incbin "baserom.gba", 0x6FF3A4, 0x104    @ 0x6FF4A8 - 0x6FF3A4

	.global gUnknown_086FF4A8
gUnknown_086FF4A8:  @ 0x086FF4A8
	.incbin "baserom.gba", 0x6FF4A8, 0x8    @ 0x6FF4B0 - 0x6FF4A8

	.global gUnknown_086FF4B0
gUnknown_086FF4B0:  @ 0x086FF4B0
	.incbin "baserom.gba", 0x6FF4B0, 0x8    @ 0x6FF4B8 - 0x6FF4B0

	.global gUnknown_086FF4B8
gUnknown_086FF4B8:  @ 0x086FF4B8
	.incbin "baserom.gba", 0x6FF4B8, 0x8    @ 0x6FF4C0 - 0x6FF4B8

	.global gUnknown_086FF4C0
gUnknown_086FF4C0:  @ 0x086FF4C0
	.incbin "baserom.gba", 0x6FF4C0, 0x8    @ 0x6FF4C8 - 0x6FF4C0

	.global gUnknown_086FF4C8
gUnknown_086FF4C8:  @ 0x086FF4C8
	.incbin "baserom.gba", 0x6FF4C8, 0x8    @ 0x6FF4D0 - 0x6FF4C8

	.global gUnknown_086FF4D0
gUnknown_086FF4D0:  @ 0x086FF4D0
	.incbin "baserom.gba", 0x6FF4D0, 0xEC    @ 0x6FF5BC - 0x6FF4D0

	.global gUnknown_086FF5BC
gUnknown_086FF5BC:  @ 0x086FF5BC
	.incbin "baserom.gba", 0x6FF5BC, 0x8    @ 0x6FF5C4 - 0x6FF5BC

	.global gUnknown_086FF5C4
gUnknown_086FF5C4:  @ 0x086FF5C4
	.incbin "baserom.gba", 0x6FF5C4, 0x8    @ 0x6FF5CC - 0x6FF5C4

	.global gUnknown_086FF5CC
gUnknown_086FF5CC:  @ 0x086FF5CC
	.incbin "baserom.gba", 0x6FF5CC, 0x8    @ 0x6FF5D4 - 0x6FF5CC

	.global gUnknown_086FF5D4
gUnknown_086FF5D4:  @ 0x086FF5D4
	.incbin "baserom.gba", 0x6FF5D4, 0x8    @ 0x6FF5DC - 0x6FF5D4

	.global gUnknown_086FF5DC
gUnknown_086FF5DC:  @ 0x086FF5DC
	.incbin "baserom.gba", 0x6FF5DC, 0x8    @ 0x6FF5E4 - 0x6FF5DC

	.global gUnknown_086FF5E4
gUnknown_086FF5E4:  @ 0x086FF5E4
	.incbin "baserom.gba", 0x6FF5E4, 0x8    @ 0x6FF5EC - 0x6FF5E4

	.global Img_NaglfarSprites_B
Img_NaglfarSprites_B:  @ 0x086FF5EC
	.incbin "baserom.gba", 0x6FF5EC, 0x750

	.global Pal_NaglfarSprites_B
Pal_NaglfarSprites_B:  @ 0x086FFD3C
	.incbin "baserom.gba", 0x6FFD3C, 0x35C    @ 0x700098 - 0x6FFD3C

	.global gUnknown_08700098
gUnknown_08700098:  @ 0x08700098
	.incbin "baserom.gba", 0x700098, 0xC    @ 0x7000A4 - 0x700098

	.global gUnknown_087000A4
gUnknown_087000A4:  @ 0x087000A4
	.incbin "baserom.gba", 0x7000A4, 0x348    @ 0x7003EC - 0x7000A4

	.global gUnknown_087003EC
gUnknown_087003EC:  @ 0x087003EC
	.incbin "baserom.gba", 0x7003EC, 0xC    @ 0x7003F8 - 0x7003EC

	.global gUnknown_087003F8
gUnknown_087003F8:  @ 0x087003F8
	.incbin "baserom.gba", 0x7003F8, 0xC    @ 0x700404 - 0x7003F8

	.global Img_NaglfarBg1_A
Img_NaglfarBg1_A:  @ 0x08700404
	.incbin "baserom.gba", 0x700404, 0xF9C    @ 0x7013A0 - 0x700404

	.global Pal_NaglfarBg1_A
Pal_NaglfarBg1_A:  @ 0x087013A0
	.incbin "baserom.gba", 0x7013A0, 0x20    @ 0x7013C0 - 0x7013A0

	.global Tsa_NaglfarBg1_A
Tsa_NaglfarBg1_A:  @ 0x087013C0
	.incbin "baserom.gba", 0x7013C0, 0x2A0    @ 0x701660 - 0x7013C0

	.global Img_08701660
Img_08701660:  @ 0x08701660
	.incbin "baserom.gba", 0x701660, 0xA6C    @ 0x7020CC - 0x701660

	.global Img_087020CC
Img_087020CC:  @ 0x087020CC
	.incbin "baserom.gba", 0x7020CC, 0xCCC    @ 0x702D98 - 0x7020CC

	.global Img_08702D98
Img_08702D98:  @ 0x08702D98
	.incbin "baserom.gba", 0x702D98, 0xE34    @ 0x703BCC - 0x702D98

	.global Img_08703BCC
Img_08703BCC:  @ 0x08703BCC
	.incbin "baserom.gba", 0x703BCC, 0x12C4    @ 0x704E90 - 0x703BCC

	.global Img_08704E90
Img_08704E90:  @ 0x08704E90
	.incbin "baserom.gba", 0x704E90, 0x14F8    @ 0x706388 - 0x704E90

	.global Img_08706388
Img_08706388:  @ 0x08706388
	.incbin "baserom.gba", 0x706388, 0x1664    @ 0x7079EC - 0x706388

	.global Img_087079EC
Img_087079EC:  @ 0x087079EC
	.incbin "baserom.gba", 0x7079EC, 0x13B4    @ 0x708DA0 - 0x7079EC

	.global Img_08708DA0
Img_08708DA0:  @ 0x08708DA0
	.incbin "baserom.gba", 0x708DA0, 0x1208    @ 0x709FA8 - 0x708DA0

	.global Img_08709FA8
Img_08709FA8:  @ 0x08709FA8
	.incbin "baserom.gba", 0x709FA8, 0x10B8    @ 0x70B060 - 0x709FA8

	.global Img_0870B060
Img_0870B060:  @ 0x0870B060
	.incbin "baserom.gba", 0x70B060, 0xFB4    @ 0x70C014 - 0x70B060

	.global Img_0870C014
Img_0870C014:  @ 0x0870C014
	.incbin "baserom.gba", 0x70C014, 0xDDC    @ 0x70CDF0 - 0x70C014

	.global Img_0870CDF0
Img_0870CDF0:  @ 0x0870CDF0
	.incbin "baserom.gba", 0x70CDF0, 0xDDC    @ 0x70DBCC - 0x70CDF0

	.global Img_0870DBCC
Img_0870DBCC:  @ 0x0870DBCC
	.incbin "baserom.gba", 0x70DBCC, 0xCC8    @ 0x70E894 - 0x70DBCC

	.global Img_0870E894
Img_0870E894:  @ 0x0870E894
	.incbin "baserom.gba", 0x70E894, 0xC90    @ 0x70F524 - 0x70E894

	.global Img_0870F524
Img_0870F524:  @ 0x0870F524
	.incbin "baserom.gba", 0x70F524, 0xCF4    @ 0x710218 - 0x70F524

	.global Img_08710218
Img_08710218:  @ 0x08710218
	.incbin "baserom.gba", 0x710218, 0xBA0    @ 0x710DB8 - 0x710218

	.global Pal_08710DB8
Pal_08710DB8:  @ 0x08710DB8
	.incbin "baserom.gba", 0x710DB8, 0x20    @ 0x710DD8 - 0x710DB8

	.global Pal_08710DD8
Pal_08710DD8:  @ 0x08710DD8
	.incbin "baserom.gba", 0x710DD8, 0x20    @ 0x710DF8 - 0x710DD8

	.global Pal_08710DF8
Pal_08710DF8:  @ 0x08710DF8
	.incbin "baserom.gba", 0x710DF8, 0x20    @ 0x710E18 - 0x710DF8

	.global Pal_08710E18
Pal_08710E18:  @ 0x08710E18
	.incbin "baserom.gba", 0x710E18, 0x20    @ 0x710E38 - 0x710E18

	.global Pal_08710E38
Pal_08710E38:  @ 0x08710E38
	.incbin "baserom.gba", 0x710E38, 0x20    @ 0x710E58 - 0x710E38

	.global Pal_08710E58
Pal_08710E58:  @ 0x08710E58
	.incbin "baserom.gba", 0x710E58, 0x20    @ 0x710E78 - 0x710E58

	.global Pal_08710E78
Pal_08710E78:  @ 0x08710E78
	.incbin "baserom.gba", 0x710E78, 0x20    @ 0x710E98 - 0x710E78

	.global Pal_08710E98
Pal_08710E98:  @ 0x08710E98
	.incbin "baserom.gba", 0x710E98, 0x20    @ 0x710EB8 - 0x710E98

	.global Pal_08710EB8
Pal_08710EB8:  @ 0x08710EB8
	.incbin "baserom.gba", 0x710EB8, 0x20    @ 0x710ED8 - 0x710EB8

	.global Pal_08710ED8
Pal_08710ED8:  @ 0x08710ED8
	.incbin "baserom.gba", 0x710ED8, 0x20    @ 0x710EF8 - 0x710ED8

	.global Pal_08710EF8
Pal_08710EF8:  @ 0x08710EF8
	.incbin "baserom.gba", 0x710EF8, 0x20    @ 0x710F18 - 0x710EF8

	.global Pal_08710F18
Pal_08710F18:  @ 0x08710F18
	.incbin "baserom.gba", 0x710F18, 0x20    @ 0x710F38 - 0x710F18

	.global Pal_08710F38
Pal_08710F38:  @ 0x08710F38
	.incbin "baserom.gba", 0x710F38, 0x20    @ 0x710F58 - 0x710F38

	.global Pal_08710F58
Pal_08710F58:  @ 0x08710F58
	.incbin "baserom.gba", 0x710F58, 0x20    @ 0x710F78 - 0x710F58

	.global Pal_08710F78
Pal_08710F78:  @ 0x08710F78
	.incbin "baserom.gba", 0x710F78, 0x20    @ 0x710F98 - 0x710F78

	.global Pal_08710F98
Pal_08710F98:  @ 0x08710F98
	.incbin "baserom.gba", 0x710F98, 0x20    @ 0x710FB8 - 0x710F98

	.global Tsa_08710FB8
Tsa_08710FB8:  @ 0x08710FB8
	.incbin "baserom.gba", 0x710FB8, 0x228    @ 0x7111E0 - 0x710FB8

	.global Tsa_087111E0
Tsa_087111E0:  @ 0x087111E0
	.incbin "baserom.gba", 0x7111E0, 0x258    @ 0x711438 - 0x7111E0

	.global Tsa_08711438
Tsa_08711438:  @ 0x08711438
	.incbin "baserom.gba", 0x711438, 0x26C    @ 0x7116A4 - 0x711438

	.global Tsa_087116A4
Tsa_087116A4:  @ 0x087116A4
	.incbin "baserom.gba", 0x7116A4, 0x258    @ 0x7118FC - 0x7116A4

	.global Tsa_087118FC
Tsa_087118FC:  @ 0x087118FC
	.incbin "baserom.gba", 0x7118FC, 0x270    @ 0x711B6C - 0x7118FC

	.global Tsa_08711B6C
Tsa_08711B6C:  @ 0x08711B6C
	.incbin "baserom.gba", 0x711B6C, 0x26C    @ 0x711DD8 - 0x711B6C

	.global Tsa_08711DD8
Tsa_08711DD8:  @ 0x08711DD8
	.incbin "baserom.gba", 0x711DD8, 0x264    @ 0x71203C - 0x711DD8

	.global Tsa_0871203C
Tsa_0871203C:  @ 0x0871203C
	.incbin "baserom.gba", 0x71203C, 0x268    @ 0x7122A4 - 0x71203C

	.global Tsa_087122A4
Tsa_087122A4:  @ 0x087122A4
	.incbin "baserom.gba", 0x7122A4, 0x268    @ 0x71250C - 0x7122A4

	.global Tsa_0871250C
Tsa_0871250C:  @ 0x0871250C
	.incbin "baserom.gba", 0x71250C, 0x260    @ 0x71276C - 0x71250C

	.global Tsa_0871276C
Tsa_0871276C:  @ 0x0871276C
	.incbin "baserom.gba", 0x71276C, 0x254    @ 0x7129C0 - 0x71276C

	.global Tsa_087129C0
Tsa_087129C0:  @ 0x087129C0
	.incbin "baserom.gba", 0x7129C0, 0x254    @ 0x712C14 - 0x7129C0

	.global Tsa_08712C14
Tsa_08712C14:  @ 0x08712C14
	.incbin "baserom.gba", 0x712C14, 0x258    @ 0x712E6C - 0x712C14

	.global Tsa_08712E6C
Tsa_08712E6C:  @ 0x08712E6C
	.incbin "baserom.gba", 0x712E6C, 0x248    @ 0x7130B4 - 0x712E6C

	.global Tsa_087130B4
Tsa_087130B4:  @ 0x087130B4
	.incbin "baserom.gba", 0x7130B4, 0x25C    @ 0x713310 - 0x7130B4

	.global Tsa_08713310
Tsa_08713310:  @ 0x08713310
	.incbin "baserom.gba", 0x713310, 0x248    @ 0x713558 - 0x713310

	.global Img_08713558
Img_08713558:  @ 0x08713558
	.incbin "baserom.gba", 0x713558, 0x190C    @ 0x714E64 - 0x713558

	.global Img_08714E64
Img_08714E64:  @ 0x08714E64
	.incbin "baserom.gba", 0x714E64, 0x18AC    @ 0x716710 - 0x714E64

	.global Img_08716710
Img_08716710:  @ 0x08716710
	.incbin "baserom.gba", 0x716710, 0x1768    @ 0x717E78 - 0x716710

	.global Img_08717E78
Img_08717E78:  @ 0x08717E78
	.incbin "baserom.gba", 0x717E78, 0x196C    @ 0x7197E4 - 0x717E78

	.global Pal_NaglfarBg3
Pal_NaglfarBg3:  @ 0x087197E4
	.incbin "baserom.gba", 0x7197E4, 0x20    @ 0x719804 - 0x7197E4

	.global Tsa_08719804
Tsa_08719804:  @ 0x08719804
	.incbin "baserom.gba", 0x719804, 0x4A0    @ 0x719CA4 - 0x719804

	.global Tsa_08719CA4
Tsa_08719CA4:  @ 0x08719CA4
	.incbin "baserom.gba", 0x719CA4, 0x490    @ 0x71A134 - 0x719CA4

	.global Tsa_0871A134
Tsa_0871A134:  @ 0x0871A134
	.incbin "baserom.gba", 0x71A134, 0x49C    @ 0x71A5D0 - 0x71A134

	.global Tsa_0871A5D0
Tsa_0871A5D0:  @ 0x0871A5D0
	.incbin "baserom.gba", 0x71A5D0, 0x4A8    @ 0x71AA78 - 0x71A5D0

	.global Img_0871AA78
Img_0871AA78:  @ 0x0871AA78
	.incbin "baserom.gba", 0x71AA78, 0x14EC    @ 0x71BF64 - 0x71AA78

	.global Img_0871BF64
Img_0871BF64:  @ 0x0871BF64
	.incbin "baserom.gba", 0x71BF64, 0x13AC    @ 0x71D310 - 0x71BF64

	.global Img_0871D310
Img_0871D310:  @ 0x0871D310
	.incbin "baserom.gba", 0x71D310, 0x13B0    @ 0x71E6C0 - 0x71D310

	.global Img_0871E6C0
Img_0871E6C0:  @ 0x0871E6C0
	.incbin "baserom.gba", 0x71E6C0, 0x131C    @ 0x71F9DC - 0x71E6C0

	.global Img_0871F9DC
Img_0871F9DC:  @ 0x0871F9DC
	.incbin "baserom.gba", 0x71F9DC, 0x13A8    @ 0x720D84 - 0x71F9DC

	.global Pal_NaglfarBg4
Pal_NaglfarBg4:  @ 0x08720D84
	.incbin "baserom.gba", 0x720D84, 0x20    @ 0x720DA4 - 0x720D84

	.global Tsa_08720DA4
Tsa_08720DA4:  @ 0x08720DA4
	.incbin "baserom.gba", 0x720DA4, 0x278    @ 0x72101C - 0x720DA4

	.global Tsa_0872101C
Tsa_0872101C:  @ 0x0872101C
	.incbin "baserom.gba", 0x72101C, 0x278    @ 0x721294 - 0x72101C

	.global Tsa_08721294
Tsa_08721294:  @ 0x08721294
	.incbin "baserom.gba", 0x721294, 0x278    @ 0x72150C - 0x721294

	.global Tsa_0872150C
Tsa_0872150C:  @ 0x0872150C
	.incbin "baserom.gba", 0x72150C, 0x278    @ 0x721784 - 0x72150C

	.global Tsa_08721784
Tsa_08721784:  @ 0x08721784
	.incbin "baserom.gba", 0x721784, 0x1A84    @ 0x723208 - 0x721784

	.global gUnknown_08723208
gUnknown_08723208:  @ 0x08723208
	.incbin "baserom.gba", 0x723208, 0x6C    @ 0x723274 - 0x723208

	.global Img_08723274
Img_08723274:  @ 0x08723274
	.incbin "baserom.gba", 0x723274, 0x11B0    @ 0x724424 - 0x723274

	.global Pal_efxExcaliburBG0
Pal_efxExcaliburBG0:  @ 0x08724424
	.incbin "baserom.gba", 0x724424, 0x20    @ 0x724444 - 0x724424

	.global Tsa_08724444
Tsa_08724444:  @ 0x08724444
	.incbin "baserom.gba", 0x724444, 0x294    @ 0x7246D8 - 0x724444

	.global Img_FireBreathBg
Img_FireBreathBg:  @ 0x087246D8
	.incbin "baserom.gba", 0x7246D8, 0x13F8

	.global Pal_FireBreathBg
Pal_FireBreathBg:  @ 0x08725AD0
	.incbin "baserom.gba", 0x725AD0, 0x20

	.global Tsa_FireBreathBg
Tsa_FireBreathBg:  @ 0x08725AF0
	.incbin "baserom.gba", 0x725AF0, 0x2BC

	.global gUnknown_08725DAC
gUnknown_08725DAC:  @ 0x08725DAC
	.incbin "baserom.gba", 0x725DAC, 0x20

	.global Img_ShineBg1
Img_ShineBg1:  @ 0x08725DCC
	.incbin "baserom.gba", 0x725DCC, 0x1228

	.global Pal_ShineBg_08726FF4
Pal_ShineBg_08726FF4:  @ 0x08726FF4
	.incbin "baserom.gba", 0x726FF4, 0xC0

	.global Tsa_ShineBg1_Left
Tsa_ShineBg1_Left:  @ 0x087270B4
	.incbin "baserom.gba", 0x7270B4, 0x45C

	.global Tsa_ShineBg1_Right
Tsa_ShineBg1_Right:  @ 0x08727510
	.incbin "baserom.gba", 0x727510, 0x45C

	.global Img_ShineBg2
Img_ShineBg2:  @ 0x0872796C
	.incbin "baserom.gba", 0x72796C, 0x2DC

	.global Pal_ShineBg2
Pal_ShineBg2:  @ 0x08727C48
	.incbin "baserom.gba", 0x727C48, 0x20    @ 0x727C68 - 0x727C48

	.global Tsa_ShineBg2_A
Tsa_ShineBg2_A:  @ 0x08727C68
	.incbin "baserom.gba", 0x727C68, 0xB0    @ 0x727D18 - 0x727C68

	.global Tsa_ShineBg2_B
Tsa_ShineBg2_B:  @ 0x08727D18
	.incbin "baserom.gba", 0x727D18, 0x108    @ 0x727E20 - 0x727D18

	.global Tsa_ShineBg2_C
Tsa_ShineBg2_C:  @ 0x08727E20
	.incbin "baserom.gba", 0x727E20, 0x13C    @ 0x727F5C - 0x727E20

	.global Tsa_ShineBg2_D
Tsa_ShineBg2_D:  @ 0x08727F5C
	.incbin "baserom.gba", 0x727F5C, 0x174    @ 0x7280D0 - 0x727F5C

	.global Tsa_ShineBg2_E
Tsa_ShineBg2_E:  @ 0x087280D0
	.incbin "baserom.gba", 0x7280D0, 0x198    @ 0x728268 - 0x7280D0

	.global Tsa_ShineBg2_F
Tsa_ShineBg2_F:  @ 0x08728268
	.incbin "baserom.gba", 0x728268, 0x174    @ 0x7283DC - 0x728268

	.global Tsa_ShineBg2_G
Tsa_ShineBg2_G:  @ 0x087283DC
	.incbin "baserom.gba", 0x7283DC, 0x10C    @ 0x7284E8 - 0x7283DC

	.global Tsa_ShineBg2_H
Tsa_ShineBg2_H:  @ 0x087284E8
	.incbin "baserom.gba", 0x7284E8, 0xD4    @ 0x7285BC - 0x7284E8

	.global Tsa_ShineBg2_I
Tsa_ShineBg2_I:  @ 0x087285BC
	.incbin "baserom.gba", 0x7285BC, 0xA0    @ 0x72865C - 0x7285BC

	.global Img_ShineSprites
Img_ShineSprites:  @ 0x0872865C
	.incbin "baserom.gba", 0x72865C, 0x2C4

	.global Pal_ShineSprites
Pal_ShineSprites:  @ 0x08728920
	.incbin "baserom.gba", 0x728920, 0x2E4

	.global gUnknown_08728C04
gUnknown_08728C04:  @ 0x08728C04
@ Replacing .incbin "baserom.gba", 0x728C04, 0x58
    .4byte Pal_ShineSprites + 0x21
    .4byte Pal_ShineSprites + 0x45
    .4byte Pal_ShineSprites + 0x69
    .4byte Pal_ShineSprites + 0x8d
    .4byte Pal_ShineSprites + 0xb1
    .4byte Pal_ShineSprites + 0xd5
    .4byte Pal_ShineSprites + 0xf9
    .4byte Pal_ShineSprites + 0x11d
    .4byte Pal_ShineSprites + 0x141
    .4byte Pal_ShineSprites + 0x165
    .4byte Pal_ShineSprites + 0x189
    .4byte Pal_ShineSprites + 0x1ad
    .4byte Pal_ShineSprites + 0x1d1
    .4byte Pal_ShineSprites + 0x1f5
    .4byte Pal_ShineSprites + 0x219
    .4byte Pal_ShineSprites + 0x23d
    .4byte Pal_ShineSprites + 0x261
    .4byte Pal_ShineSprites + 0x285
    .4byte Pal_ShineSprites + 0x2a9
    .4byte 0x78728bef
    .4byte 0x84000013
    .4byte 0x81000000

	.global Img_LunaBg1
Img_LunaBg1:  @ 0x08728C5C
	.incbin "baserom.gba", 0x728C5C, 0xAD0

	.global Pal_LunaBg1
Pal_LunaBg1:  @ 0x0872972C
	.incbin "baserom.gba", 0x72972C, 0x20    @ 0x72974C - 0x72972C

	.global Tsa_LunaBg1_A
Tsa_LunaBg1_A:  @ 0x0872974C
	.incbin "baserom.gba", 0x72974C, 0x130    @ 0x72987C - 0x72974C

	.global Img_LunaBg2
Img_LunaBg2:  @ 0x0872987C
	.incbin "baserom.gba", 0x72987C, 0x760

	.global Pal_LunaBg2
Pal_LunaBg2:  @ 0x08729FDC
	.incbin "baserom.gba", 0x729FDC, 0x1E0

	.global Tsa_LunaBg2
Tsa_LunaBg2:  @ 0x0872A1BC
	.incbin "baserom.gba", 0x72A1BC, 0x1A4    @ 0x72A360 - 0x72A1BC

	.global Img_LunaBg3_A
Img_LunaBg3_A:  @ 0x0872A360
	.incbin "baserom.gba", 0x72A360, 0x125C    @ 0x72B5BC - 0x72A360

	.global Img_LunaBg3_B
Img_LunaBg3_B:  @ 0x0872B5BC
	.incbin "baserom.gba", 0x72B5BC, 0xCD4    @ 0x72C290 - 0x72B5BC

	.global Img_LunaBg3_C
Img_LunaBg3_C:  @ 0x0872C290
	.incbin "baserom.gba", 0x72C290, 0xBD0    @ 0x72CE60 - 0x72C290

	.global Pal_LunaBg3
Pal_LunaBg3:  @ 0x0872CE60
	.incbin "baserom.gba", 0x72CE60, 0x20    @ 0x72CE80 - 0x72CE60

	.global Tsa_LunaBg3_A
Tsa_LunaBg3_A:  @ 0x0872CE80
	.incbin "baserom.gba", 0x72CE80, 0xB4    @ 0x72CF34 - 0x72CE80

	.global Tsa_LunaBg3_B
Tsa_LunaBg3_B:  @ 0x0872CF34
	.incbin "baserom.gba", 0x72CF34, 0xBC    @ 0x72CFF0 - 0x72CF34

	.global Tsa_LunaBg3_C
Tsa_LunaBg3_C:  @ 0x0872CFF0
	.incbin "baserom.gba", 0x72CFF0, 0xDC    @ 0x72D0CC - 0x72CFF0

	.global Tsa_LunaBg3_D
Tsa_LunaBg3_D:  @ 0x0872D0CC
	.incbin "baserom.gba", 0x72D0CC, 0xE8    @ 0x72D1B4 - 0x72D0CC

	.global Tsa_LunaBg3_E
Tsa_LunaBg3_E:  @ 0x0872D1B4
	.incbin "baserom.gba", 0x72D1B4, 0x124    @ 0x72D2D8 - 0x72D1B4

	.global Tsa_LunaBg3_F
Tsa_LunaBg3_F:  @ 0x0872D2D8
	.incbin "baserom.gba", 0x72D2D8, 0x120    @ 0x72D3F8 - 0x72D2D8

	.global Tsa_LunaBg3_G
Tsa_LunaBg3_G:  @ 0x0872D3F8
	.incbin "baserom.gba", 0x72D3F8, 0x10C    @ 0x72D504 - 0x72D3F8

	.global Tsa_LunaBg3_H
Tsa_LunaBg3_H:  @ 0x0872D504
	.incbin "baserom.gba", 0x72D504, 0x10C    @ 0x72D610 - 0x72D504

	.global Tsa_LunaBg3_I
Tsa_LunaBg3_I:  @ 0x0872D610
	.incbin "baserom.gba", 0x72D610, 0xFC    @ 0x72D70C - 0x72D610

	.global Tsa_LunaBg3_J
Tsa_LunaBg3_J:  @ 0x0872D70C
	.incbin "baserom.gba", 0x72D70C, 0x100    @ 0x72D80C - 0x72D70C

	.global Tsa_LunaBg3_K
Tsa_LunaBg3_K:  @ 0x0872D80C
	.incbin "baserom.gba", 0x72D80C, 0xFC    @ 0x72D908 - 0x72D80C

	.global Tsa_LunaBg3_L
Tsa_LunaBg3_L:  @ 0x0872D908
	.incbin "baserom.gba", 0x72D908, 0xFC    @ 0x72DA04 - 0x72D908

	.global Img_LunaSprites
Img_LunaSprites:  @ 0x0872DA04
	.incbin "baserom.gba", 0x72DA04, 0x400

	.global Pal_LunaSprites
Pal_LunaSprites:  @ 0x0872DE04
	.incbin "baserom.gba", 0x72DE04, 0x1E8

	.global gUnknown_0872DFEC
gUnknown_0872DFEC:  @ 0x0872DFEC
@ Replacing .incbin "baserom.gba", 0x72DFEC, 0x38
    .4byte Pal_LunaSprites + 0x8d
    .4byte Pal_LunaSprites + 0xb1
    .4byte Pal_LunaSprites + 0xd5
    .4byte Pal_LunaSprites + 0xf9
    .4byte Pal_LunaSprites + 0x11d
    .4byte Pal_LunaSprites + 0x141
    .4byte Pal_LunaSprites + 0x165
    .4byte Pal_LunaSprites + 0x189
    .4byte Pal_LunaSprites + 0x1ad
    .4byte 0x80000000
    .4byte Pal_LunaSprites + 0x23
    .4byte Pal_LunaSprites + 0x47
    .4byte Pal_LunaSprites + 0x6b
    .4byte 0x80000000

	.global gUnknown_0872E024
gUnknown_0872E024:  @ 0x0872E024
@ Replacing .incbin "baserom.gba", 0x72E024, 0x228
    .4byte Pal_LunaSprites + 0x1ad
    .4byte Pal_LunaSprites + 0x189
    .4byte Pal_LunaSprites + 0x165
    .4byte Pal_LunaSprites + 0x141
    .4byte Pal_LunaSprites + 0x11d
    .4byte Pal_LunaSprites + 0xf9
    .4byte Pal_LunaSprites + 0xd5
    .4byte Pal_LunaSprites + 0xb1
    .4byte Pal_LunaSprites + 0x8d
    .4byte 0x80000000
    .4byte Pal_LunaSprites + 0x6b
    .4byte Pal_LunaSprites + 0x47
    .4byte Pal_LunaSprites + 0x23
    .4byte 0x80000000
    .4byte 0xffff0001
    .4byte 0x000000d5
    .4byte 0x00d50000
    .4byte 0x80000100
    .4byte 0xfff00000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000d5
    .4byte 0x00d50000
    .4byte 0x80000100
    .4byte 0xfff00004
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000d5
    .4byte 0x00d50000
    .4byte 0x80000100
    .4byte 0xfff00008
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000505
    .4byte 0x05050000
    .4byte 0x80000100
    .4byte 0xfff00000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000035e
    .4byte 0x035e0000
    .4byte 0x80000100
    .4byte 0xfff00004
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000282
    .4byte 0x02820000
    .4byte 0x80000100
    .4byte 0xfff00008
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000200
    .4byte 0x02000000
    .4byte 0x80000100
    .4byte 0xfff00000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000001ac
    .4byte 0x01ac0000
    .4byte 0x80000100
    .4byte 0xfff00004
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000016e
    .4byte 0x016e0000
    .4byte 0x80000100
    .4byte 0xfff00008
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x00000141
    .4byte 0x01410000
    .4byte 0x80000100
    .4byte 0xfff00000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x0000011c
    .4byte 0x011c0000
    .4byte 0x80000100
    .4byte 0xfff00004
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x80000000
    .4byte 0xfff00008
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0xffff0001
    .4byte 0x000000e9
    .4byte 0x00e90000
    .4byte 0x80000100
    .4byte 0xfff00000
    .4byte 0x0000fff0
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte gUnknown_0872E024 + 0xa5
    .4byte gUnknown_0872E024 + 0xc9
    .4byte gUnknown_0872E024 + 0xed
    .4byte gUnknown_0872E024 + 0x111
    .4byte gUnknown_0872E024 + 0x135
    .4byte gUnknown_0872E024 + 0x159
    .4byte gUnknown_0872E024 + 0x17d
    .4byte gUnknown_0872E024 + 0x1a1
    .4byte gUnknown_0872E024 + 0x1c5
    .4byte 0x82000000

	.global gUnknown_0872E24C
gUnknown_0872E24C:  @ 0x0872E24C
	.incbin "baserom.gba", 0x72E24C, 0x10

	.global Img_ExcaliburBg1
Img_ExcaliburBg1:  @ 0x0872E25C
	.incbin "baserom.gba", 0x72E25C, 0x3F0

	.global Pal_ExcaliburBg1
Pal_ExcaliburBg1:  @ 0x0872E64C
	.incbin "baserom.gba", 0x72E64C, 0x1A0

	.global Tsa_ExcaliburBg1
Tsa_ExcaliburBg1:  @ 0x0872E7EC
	.incbin "baserom.gba", 0x72E7EC, 0x1AC

	.global Img_ExcaliburBg2
Img_ExcaliburBg2:  @ 0x0872E998
	.incbin "baserom.gba", 0x72E998, 0x106C

	.global Pal_ExcaliburBg2
Pal_ExcaliburBg2:  @ 0x0872FA04
	.incbin "baserom.gba", 0x72FA04, 0x80

	.global Tsa_ExcaliburBg2_Left
Tsa_ExcaliburBg2_Left:  @ 0x0872FA84
	.incbin "baserom.gba", 0x72FA84, 0x434

	.global Tsa_ExcaliburBg2_Right
Tsa_ExcaliburBg2_Right:  @ 0x0872FEB8
	.incbin "baserom.gba", 0x72FEB8, 0x3EC

	.global Pal_ExcaliburBg3
Pal_ExcaliburBg3:  @ 0x087302A4
	.incbin "baserom.gba", 0x7302A4, 0x80

	.global Img_ExcaliburSprites
Img_ExcaliburSprites:  @ 0x08730324
	.incbin "baserom.gba", 0x730324, 0x45C

	.global Pal_ExcaliburSprites
Pal_ExcaliburSprites:  @ 0x08730780
	.incbin "baserom.gba", 0x730780, 0xB3C

	.global gUnknown_087312BC
gUnknown_087312BC:  @ 0x087312BC
@ Replacing .incbin "baserom.gba", 0x7312BC, 0x8C
    .4byte Pal_ExcaliburSprites + 0x855
    .4byte Pal_ExcaliburSprites + 0x21
    .4byte Pal_ExcaliburSprites + 0x75
    .4byte Pal_ExcaliburSprites + 0xc9
    .4byte Pal_ExcaliburSprites + 0x11d
    .4byte Pal_ExcaliburSprites + 0x171
    .4byte Pal_ExcaliburSprites + 0x1c5
    .4byte Pal_ExcaliburSprites + 0x219
    .4byte Pal_ExcaliburSprites + 0x26d
    .4byte Pal_ExcaliburSprites + 0x2c1
    .4byte Pal_ExcaliburSprites + 0x315
    .4byte Pal_ExcaliburSprites + 0x369
    .4byte Pal_ExcaliburSprites + 0x3bd
    .4byte Pal_ExcaliburSprites + 0x411
    .4byte Pal_ExcaliburSprites + 0x465
    .4byte Pal_ExcaliburSprites + 0x4b9
    .4byte Pal_ExcaliburSprites + 0x50d
    .4byte Pal_ExcaliburSprites + 0x561
    .4byte Pal_ExcaliburSprites + 0x5b5
    .4byte Pal_ExcaliburSprites + 0x609
    .4byte Pal_ExcaliburSprites + 0x65d
    .4byte Pal_ExcaliburSprites + 0x6b1
    .4byte Pal_ExcaliburSprites + 0x705
    .4byte Pal_ExcaliburSprites + 0x759
    .4byte Pal_ExcaliburSprites + 0x7ad
    .4byte Pal_ExcaliburSprites + 0x801
    .4byte Pal_ExcaliburSprites + 0x89d
    .4byte Pal_ExcaliburSprites + 0x8f1
    .4byte Pal_ExcaliburSprites + 0x945
    .4byte Pal_ExcaliburSprites + 0x999
    .4byte Pal_ExcaliburSprites + 0x9ed
    .4byte Pal_ExcaliburSprites + 0xa41
    .4byte Pal_ExcaliburSprites + 0xa95
    .4byte Pal_ExcaliburSprites + 0xae9
    .4byte 0x81000000

	.global Pal_08731348
Pal_08731348:  @ 0x08731348
	.incbin "baserom.gba", 0x731348, 0x80

	.global Img_GespenstBg4
Img_GespenstBg4:  @ 0x087313C8
	.incbin "baserom.gba", 0x7313C8, 0xE60

	.global Pal_GespenstBg4
Pal_GespenstBg4:  @ 0x08732228
	.incbin "baserom.gba", 0x732228, 0x140

	.global Tsa_GespenstBg4
Tsa_GespenstBg4:  @ 0x08732368
	.incbin "baserom.gba", 0x732368, 0x45C

	.global Img_AuraBg1
Img_AuraBg1:  @ 0x087327C4
	.incbin "baserom.gba", 0x7327C4, 0x978

	.global Pal_AuraBg1
Pal_AuraBg1:  @ 0x0873313C
	.incbin "baserom.gba", 0x73313C, 0x20    @ 0x73315C - 0x73313C

	.global Tsa_0873315C
Tsa_0873315C:  @ 0x0873315C
	.incbin "baserom.gba", 0x73315C, 0xA0    @ 0x7331FC - 0x73315C

	.global Tsa_087331FC
Tsa_087331FC:  @ 0x087331FC
	.incbin "baserom.gba", 0x7331FC, 0xA8    @ 0x7332A4 - 0x7331FC

	.global Tsa_087332A4
Tsa_087332A4:  @ 0x087332A4
	.incbin "baserom.gba", 0x7332A4, 0xA8    @ 0x73334C - 0x7332A4

	.global Tsa_0873334C
Tsa_0873334C:  @ 0x0873334C
	.incbin "baserom.gba", 0x73334C, 0xAC    @ 0x7333F8 - 0x73334C

	.global Tsa_087333F8
Tsa_087333F8:  @ 0x087333F8
	.incbin "baserom.gba", 0x7333F8, 0xB8    @ 0x7334B0 - 0x7333F8

	.global Tsa_087334B0
Tsa_087334B0:  @ 0x087334B0
	.incbin "baserom.gba", 0x7334B0, 0xB8    @ 0x733568 - 0x7334B0

	.global Tsa_08733568
Tsa_08733568:  @ 0x08733568
	.incbin "baserom.gba", 0x733568, 0xB0    @ 0x733618 - 0x733568

	.global Tsa_08733618
Tsa_08733618:  @ 0x08733618
	.incbin "baserom.gba", 0x733618, 0xAC    @ 0x7336C4 - 0x733618

	.global Tsa_087336C4
Tsa_087336C4:  @ 0x087336C4
	.incbin "baserom.gba", 0x7336C4, 0xA8    @ 0x73376C - 0x7336C4

	.global Tsa_0873376C
Tsa_0873376C:  @ 0x0873376C
	.incbin "baserom.gba", 0x73376C, 0xA0    @ 0x73380C - 0x73376C

	.global Tsa_0873380C
Tsa_0873380C:  @ 0x0873380C
	.incbin "baserom.gba", 0x73380C, 0x9C    @ 0x7338A8 - 0x73380C

	.global Tsa_087338A8
Tsa_087338A8:  @ 0x087338A8
	.incbin "baserom.gba", 0x7338A8, 0x98    @ 0x733940 - 0x7338A8

	.global Tsa_08733940
Tsa_08733940:  @ 0x08733940
	.incbin "baserom.gba", 0x733940, 0x118    @ 0x733A58 - 0x733940

	.global Tsa_08733A58
Tsa_08733A58:  @ 0x08733A58
	.incbin "baserom.gba", 0x733A58, 0x13C    @ 0x733B94 - 0x733A58

	.global Tsa_08733B94
Tsa_08733B94:  @ 0x08733B94
	.incbin "baserom.gba", 0x733B94, 0x150    @ 0x733CE4 - 0x733B94

	.global Tsa_08733CE4
Tsa_08733CE4:  @ 0x08733CE4
	.incbin "baserom.gba", 0x733CE4, 0x13C    @ 0x733E20 - 0x733CE4

	.global Tsa_08733E20
Tsa_08733E20:  @ 0x08733E20
	.incbin "baserom.gba", 0x733E20, 0x104    @ 0x733F24 - 0x733E20

	.global Tsa_08733F24
Tsa_08733F24:  @ 0x08733F24
	.incbin "baserom.gba", 0x733F24, 0xA4    @ 0x733FC8 - 0x733F24

	.global Tsa_08733FC8
Tsa_08733FC8:  @ 0x08733FC8
	.incbin "baserom.gba", 0x733FC8, 0x9C    @ 0x734064 - 0x733FC8

	.global Tsa_08734064
Tsa_08734064:  @ 0x08734064
	.incbin "baserom.gba", 0x734064, 0x9C    @ 0x734100 - 0x734064

	.global Tsa_08734100
Tsa_08734100:  @ 0x08734100
	.incbin "baserom.gba", 0x734100, 0x9C    @ 0x73419C - 0x734100

	.global Tsa_0873419C
Tsa_0873419C:  @ 0x0873419C
	.incbin "baserom.gba", 0x73419C, 0x9C    @ 0x734238 - 0x73419C

	.global Tsa_08734238
Tsa_08734238:  @ 0x08734238
	.incbin "baserom.gba", 0x734238, 0x9C    @ 0x7342D4 - 0x734238

	.global Tsa_087342D4
Tsa_087342D4:  @ 0x087342D4
	.incbin "baserom.gba", 0x7342D4, 0xBC    @ 0x734390 - 0x7342D4

	.global Tsa_08734390
Tsa_08734390:  @ 0x08734390
	.incbin "baserom.gba", 0x734390, 0xF0    @ 0x734480 - 0x734390

	.global Tsa_08734480
Tsa_08734480:  @ 0x08734480
	.incbin "baserom.gba", 0x734480, 0x104    @ 0x734584 - 0x734480

	.global Tsa_08734584
Tsa_08734584:  @ 0x08734584
	.incbin "baserom.gba", 0x734584, 0x104    @ 0x734688 - 0x734584

	.global Tsa_08734688
Tsa_08734688:  @ 0x08734688
	.incbin "baserom.gba", 0x734688, 0x104    @ 0x73478C - 0x734688

	.global Img_0873478C
Img_0873478C:  @ 0x0873478C
	.incbin "baserom.gba", 0x73478C, 0x1414    @ 0x735BA0 - 0x73478C

	.global Img_08735BA0
Img_08735BA0:  @ 0x08735BA0
	.incbin "baserom.gba", 0x735BA0, 0x152C    @ 0x7370CC - 0x735BA0

	.global Img_087370CC
Img_087370CC:  @ 0x087370CC
	.incbin "baserom.gba", 0x7370CC, 0x157C    @ 0x738648 - 0x7370CC

	.global Img_08738648
Img_08738648:  @ 0x08738648
	.incbin "baserom.gba", 0x738648, 0x1588    @ 0x739BD0 - 0x738648

	.global Img_08739BD0
Img_08739BD0:  @ 0x08739BD0
	.incbin "baserom.gba", 0x739BD0, 0x13F0    @ 0x73AFC0 - 0x739BD0

	.global Img_0873AFC0
Img_0873AFC0:  @ 0x0873AFC0
	.incbin "baserom.gba", 0x73AFC0, 0x130C    @ 0x73C2CC - 0x73AFC0

	.global Img_0873C2CC
Img_0873C2CC:  @ 0x0873C2CC
	.incbin "baserom.gba", 0x73C2CC, 0x1374    @ 0x73D640 - 0x73C2CC

	.global Img_0873D640
Img_0873D640:  @ 0x0873D640
	.incbin "baserom.gba", 0x73D640, 0x14EC    @ 0x73EB2C - 0x73D640

	.global Img_0873EB2C
Img_0873EB2C:  @ 0x0873EB2C
	.incbin "baserom.gba", 0x73EB2C, 0x13AC    @ 0x73FED8 - 0x73EB2C

	.global Img_0873FED8
Img_0873FED8:  @ 0x0873FED8
	.incbin "baserom.gba", 0x73FED8, 0x13B0    @ 0x741288 - 0x73FED8

	.global Img_08741288
Img_08741288:  @ 0x08741288
	.incbin "baserom.gba", 0x741288, 0x131C    @ 0x7425A4 - 0x741288

	.global Img_087425A4
Img_087425A4:  @ 0x087425A4
	.incbin "baserom.gba", 0x7425A4, 0x13A8    @ 0x74394C - 0x7425A4

	.global Pal_AuraBg3
Pal_AuraBg3:  @ 0x0874394C
	.incbin "baserom.gba", 0x74394C, 0x20    @ 0x74396C - 0x74394C

	.global Tsa_0874396C
Tsa_0874396C:  @ 0x0874396C
	.incbin "baserom.gba", 0x74396C, 0x278    @ 0x743BE4 - 0x74396C

	.global Tsa_08743BE4
Tsa_08743BE4:  @ 0x08743BE4
	.incbin "baserom.gba", 0x743BE4, 0x278    @ 0x743E5C - 0x743BE4

	.global Tsa_08743E5C
Tsa_08743E5C:  @ 0x08743E5C
	.incbin "baserom.gba", 0x743E5C, 0x278    @ 0x7440D4 - 0x743E5C

	.global Tsa_087440D4
Tsa_087440D4:  @ 0x087440D4
	.incbin "baserom.gba", 0x7440D4, 0x278    @ 0x74434C - 0x7440D4

	.global Tsa_0874434C
Tsa_0874434C:  @ 0x0874434C
	.incbin "baserom.gba", 0x74434C, 0x270    @ 0x7445BC - 0x74434C

	.global Tsa_087445BC
Tsa_087445BC:  @ 0x087445BC
	.incbin "baserom.gba", 0x7445BC, 0x25C    @ 0x744818 - 0x7445BC

	.global Tsa_08744818
Tsa_08744818:  @ 0x08744818
	.incbin "baserom.gba", 0x744818, 0x278    @ 0x744A90 - 0x744818

	.global Tsa_08744A90
Tsa_08744A90:  @ 0x08744A90
	.incbin "baserom.gba", 0x744A90, 0x278    @ 0x744D08 - 0x744A90

	.global Tsa_08744D08
Tsa_08744D08:  @ 0x08744D08
	.incbin "baserom.gba", 0x744D08, 0x278    @ 0x744F80 - 0x744D08

	.global Tsa_08744F80
Tsa_08744F80:  @ 0x08744F80
	.incbin "baserom.gba", 0x744F80, 0x278    @ 0x7451F8 - 0x744F80

	.global Tsa_087451F8
Tsa_087451F8:  @ 0x087451F8
	.incbin "baserom.gba", 0x7451F8, 0x278    @ 0x745470 - 0x7451F8

	.global Tsa_08745470
Tsa_08745470:  @ 0x08745470
	.incbin "baserom.gba", 0x745470, 0x278    @ 0x7456E8 - 0x745470

	.global gUnknown_087456E8
gUnknown_087456E8:  @ 0x087456E8
	.incbin "baserom.gba", 0x7456E8, 0xE20

	.global gUnknown_08746508
gUnknown_08746508:  @ 0x08746508
@ Replacing .incbin "baserom.gba", 0x746508, 0x204
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xca1
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xcd1
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xd01
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xd31
    .4byte gUnknown_087456E8 + 0xdc1
    .4byte gUnknown_087456E8 + 0xd61
    .4byte gUnknown_087456E8 + 0xdf1
    .4byte gUnknown_087456E8 + 0xd91
    .4byte gUnknown_087456E8 + 0xdc1
    .4byte gUnknown_087456E8 + 0xd01
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xd31
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xca1
    .4byte gUnknown_087456E8 + 0xc71
    .4byte gUnknown_087456E8 + 0xcd1
    .4byte 0x80000000
    .4byte 0x90008000
    .4byte 0xfff80020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xfff00022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xfff90000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff40020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xffec0022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xfff50000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfffc0020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xfff40022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xfffd0000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff00020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xffe80022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xfff10000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0x00000020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xfff80022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0x00010000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xffe80020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xffe00022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xffe90000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0x00080020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0x00000022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0x00090000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfff40020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xffec0022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xfff50000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x90008000
    .4byte 0xfffc0020
    .4byte 0x0000fff0
    .4byte 0x50008000
    .4byte 0xfff40022
    .4byte 0x0000fff0
    .4byte 0x10000000
    .4byte 0xfffd0000
    .4byte 0x0000ffe8
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_0874670C
gUnknown_0874670C:  @ 0x0874670C
	.incbin "baserom.gba", 0x74670C, 0x54    @ 0x746760 - 0x74670C

	.global Img_08746760
Img_08746760:  @ 0x08746760
	.incbin "baserom.gba", 0x746760, 0x810    @ 0x746F70 - 0x746760

	.global Img_08746F70
Img_08746F70:  @ 0x08746F70
	.incbin "baserom.gba", 0x746F70, 0xD0C    @ 0x747C7C - 0x746F70

	.global Img_08747C7C
Img_08747C7C:  @ 0x08747C7C
	.incbin "baserom.gba", 0x747C7C, 0x1220    @ 0x748E9C - 0x747C7C

	.global Img_08748E9C
Img_08748E9C:  @ 0x08748E9C
	.incbin "baserom.gba", 0x748E9C, 0xF0C    @ 0x749DA8 - 0x748E9C

	.global Img_08749DA8
Img_08749DA8:  @ 0x08749DA8
	.incbin "baserom.gba", 0x749DA8, 0x10E8    @ 0x74AE90 - 0x749DA8

	.global Img_0874AE90
Img_0874AE90:  @ 0x0874AE90
	.incbin "baserom.gba", 0x74AE90, 0x1118    @ 0x74BFA8 - 0x74AE90

	.global Img_0874BFA8
Img_0874BFA8:  @ 0x0874BFA8
	.incbin "baserom.gba", 0x74BFA8, 0xEF0    @ 0x74CE98 - 0x74BFA8

	.global Img_0874CE98
Img_0874CE98:  @ 0x0874CE98
	.incbin "baserom.gba", 0x74CE98, 0x1278    @ 0x74E110 - 0x74CE98

	.global Img_0874E110
Img_0874E110:  @ 0x0874E110
	.incbin "baserom.gba", 0x74E110, 0x1364    @ 0x74F474 - 0x74E110

	.global Img_0874F474
Img_0874F474:  @ 0x0874F474
	.incbin "baserom.gba", 0x74F474, 0xDF4    @ 0x750268 - 0x74F474

	.global Pal_EreshkigalBg3
Pal_EreshkigalBg3:  @ 0x08750268
	.incbin "baserom.gba", 0x750268, 0x20    @ 0x750288 - 0x750268

	.global Tsa_08750288
Tsa_08750288:  @ 0x08750288
	.incbin "baserom.gba", 0x750288, 0x15C    @ 0x7503E4 - 0x750288

	.global Tsa_087503E4
Tsa_087503E4:  @ 0x087503E4
	.incbin "baserom.gba", 0x7503E4, 0x1E0    @ 0x7505C4 - 0x7503E4

	.global Tsa_087505C4
Tsa_087505C4:  @ 0x087505C4
	.incbin "baserom.gba", 0x7505C4, 0x24C    @ 0x750810 - 0x7505C4

	.global Tsa_08750810
Tsa_08750810:  @ 0x08750810
	.incbin "baserom.gba", 0x750810, 0x228    @ 0x750A38 - 0x750810

	.global Tsa_08750A38
Tsa_08750A38:  @ 0x08750A38
	.incbin "baserom.gba", 0x750A38, 0x250    @ 0x750C88 - 0x750A38

	.global Tsa_08750C88
Tsa_08750C88:  @ 0x08750C88
	.incbin "baserom.gba", 0x750C88, 0x274    @ 0x750EFC - 0x750C88

	.global Tsa_08750EFC
Tsa_08750EFC:  @ 0x08750EFC
	.incbin "baserom.gba", 0x750EFC, 0x22C    @ 0x751128 - 0x750EFC

	.global Tsa_08751128
Tsa_08751128:  @ 0x08751128
	.incbin "baserom.gba", 0x751128, 0x244    @ 0x75136C - 0x751128

	.global Tsa_0875136C
Tsa_0875136C:  @ 0x0875136C
	.incbin "baserom.gba", 0x75136C, 0x258    @ 0x7515C4 - 0x75136C

	.global Tsa_087515C4
Tsa_087515C4:  @ 0x087515C4
	.incbin "baserom.gba", 0x7515C4, 0x244    @ 0x751808 - 0x7515C4

	.global gUnknown_08751808
gUnknown_08751808:  @ 0x08751808
	.incbin "baserom.gba", 0x751808, 0x5AC

	.global gUnknown_08751DB4
gUnknown_08751DB4:  @ 0x08751DB4
	.incbin "baserom.gba", 0x751DB4, 0x26C

	.global gUnknown_08752020
gUnknown_08752020:  @ 0x08752020
	.incbin "baserom.gba", 0x752020, 0x24    @ 0x752044 - 0x752020

	.global Img_08752044
Img_08752044:  @ 0x08752044
	.incbin "baserom.gba", 0x752044, 0xBCC    @ 0x752C10 - 0x752044

	.global Img_08752C10
Img_08752C10:  @ 0x08752C10
	.incbin "baserom.gba", 0x752C10, 0xC3C    @ 0x75384C - 0x752C10

	.global Img_0875384C
Img_0875384C:  @ 0x0875384C
	.incbin "baserom.gba", 0x75384C, 0xAD0    @ 0x75431C - 0x75384C

	.global Img_0875431C
Img_0875431C:  @ 0x0875431C
	.incbin "baserom.gba", 0x75431C, 0x554    @ 0x754870 - 0x75431C

	.global Pal_SongSprites
Pal_SongSprites:  @ 0x08754870
	.incbin "baserom.gba", 0x754870, 0xA0    @ 0x754910 - 0x754870

	.global Tsa_08754910
Tsa_08754910:  @ 0x08754910
	.incbin "baserom.gba", 0x754910, 0xA8    @ 0x7549B8 - 0x754910

	.global Tsa_087549B8
Tsa_087549B8:  @ 0x087549B8
	.incbin "baserom.gba", 0x7549B8, 0xAC    @ 0x754A64 - 0x7549B8

	.global Tsa_08754A64
Tsa_08754A64:  @ 0x08754A64
	.incbin "baserom.gba", 0x754A64, 0xB0    @ 0x754B14 - 0x754A64

	.global Tsa_08754B14
Tsa_08754B14:  @ 0x08754B14
	.incbin "baserom.gba", 0x754B14, 0xC4    @ 0x754BD8 - 0x754B14

	.global Tsa_08754BD8
Tsa_08754BD8:  @ 0x08754BD8
	.incbin "baserom.gba", 0x754BD8, 0xCC    @ 0x754CA4 - 0x754BD8

	.global Tsa_08754CA4
Tsa_08754CA4:  @ 0x08754CA4
	.incbin "baserom.gba", 0x754CA4, 0xD8    @ 0x754D7C - 0x754CA4

	.global Tsa_08754D7C
Tsa_08754D7C:  @ 0x08754D7C
	.incbin "baserom.gba", 0x754D7C, 0xE0    @ 0x754E5C - 0x754D7C

	.global Tsa_08754E5C
Tsa_08754E5C:  @ 0x08754E5C
	.incbin "baserom.gba", 0x754E5C, 0xE0    @ 0x754F3C - 0x754E5C

	.global Tsa_08754F3C
Tsa_08754F3C:  @ 0x08754F3C
	.incbin "baserom.gba", 0x754F3C, 0xEC    @ 0x755028 - 0x754F3C

	.global Tsa_08755028
Tsa_08755028:  @ 0x08755028
	.incbin "baserom.gba", 0x755028, 0xF4    @ 0x75511C - 0x755028

	.global Tsa_0875511C
Tsa_0875511C:  @ 0x0875511C
	.incbin "baserom.gba", 0x75511C, 0xFC    @ 0x755218 - 0x75511C

	.global Tsa_08755218
Tsa_08755218:  @ 0x08755218
	.incbin "baserom.gba", 0x755218, 0xF8    @ 0x755310 - 0x755218

	.global Tsa_08755310
Tsa_08755310:  @ 0x08755310
	.incbin "baserom.gba", 0x755310, 0x100    @ 0x755410 - 0x755310

	.global Tsa_08755410
Tsa_08755410:  @ 0x08755410
	.incbin "baserom.gba", 0x755410, 0x100    @ 0x755510 - 0x755410

	.global Tsa_08755510
Tsa_08755510:  @ 0x08755510
	.incbin "baserom.gba", 0x755510, 0x100    @ 0x755610 - 0x755510

	.global Tsa_08755610
Tsa_08755610:  @ 0x08755610
	.incbin "baserom.gba", 0x755610, 0x104    @ 0x755714 - 0x755610

	.global Tsa_08755714
Tsa_08755714:  @ 0x08755714
	.incbin "baserom.gba", 0x755714, 0xF0    @ 0x755804 - 0x755714

	.global Tsa_08755804
Tsa_08755804:  @ 0x08755804
	.incbin "baserom.gba", 0x755804, 0xE8    @ 0x7558EC - 0x755804

	.global Tsa_087558EC
Tsa_087558EC:  @ 0x087558EC
	.incbin "baserom.gba", 0x7558EC, 0xE4    @ 0x7559D0 - 0x7558EC

	.global Tsa_087559D0
Tsa_087559D0:  @ 0x087559D0
	.incbin "baserom.gba", 0x7559D0, 0xE8    @ 0x755AB8 - 0x7559D0

	.global Tsa_08755AB8
Tsa_08755AB8:  @ 0x08755AB8
	.incbin "baserom.gba", 0x755AB8, 0xDC    @ 0x755B94 - 0x755AB8

	.global Tsa_08755B94
Tsa_08755B94:  @ 0x08755B94
	.incbin "baserom.gba", 0x755B94, 0xD0    @ 0x755C64 - 0x755B94

	.global Tsa_08755C64
Tsa_08755C64:  @ 0x08755C64
	.incbin "baserom.gba", 0x755C64, 0xBC    @ 0x755D20 - 0x755C64

	.global Tsa_08755D20
Tsa_08755D20:  @ 0x08755D20
	.incbin "baserom.gba", 0x755D20, 0xC0    @ 0x755DE0 - 0x755D20

	.global Tsa_08755DE0
Tsa_08755DE0:  @ 0x08755DE0
	.incbin "baserom.gba", 0x755DE0, 0xB4    @ 0x755E94 - 0x755DE0

	.global Tsa_08755E94
Tsa_08755E94:  @ 0x08755E94
	.incbin "baserom.gba", 0x755E94, 0xA8    @ 0x755F3C - 0x755E94

	.global Tsa_08755F3C
Tsa_08755F3C:  @ 0x08755F3C
	.incbin "baserom.gba", 0x755F3C, 0x98    @ 0x755FD4 - 0x755F3C

	.global Img_SongSprites
Img_SongSprites:  @ 0x08755FD4
	.incbin "baserom.gba", 0x755FD4, 0x2160

	.global gUnknown_08758134
gUnknown_08758134:  @ 0x08758134
@ Replacing .incbin "baserom.gba", 0x758134, 0xE4
    .4byte Img_SongSprites + 0x211
    .4byte Img_SongSprites + 0x229
    .4byte Img_SongSprites + 0x24d
    .4byte Img_SongSprites + 0x271
    .4byte Img_SongSprites + 0x2a1
    .4byte Img_SongSprites + 0x2dd
    .4byte Img_SongSprites + 0x319
    .4byte Img_SongSprites + 0x361
    .4byte Img_SongSprites + 0x3a9
    .4byte Img_SongSprites + 0x3fd
    .4byte Img_SongSprites + 0x45d
    .4byte Img_SongSprites + 0x4c9
    .4byte Img_SongSprites + 0x535
    .4byte Img_SongSprites + 0x5ad
    .4byte Img_SongSprites + 0x625
    .4byte Img_SongSprites + 0x69d
    .4byte Img_SongSprites + 0x721
    .4byte Img_SongSprites + 0x7a5
    .4byte Img_SongSprites + 0x841
    .4byte Img_SongSprites + 0x8dd
    .4byte Img_SongSprites + 0x979
    .4byte Img_SongSprites + 0xa15
    .4byte Img_SongSprites + 0xabd
    .4byte Img_SongSprites + 0xb65
    .4byte Img_SongSprites + 0xc0d
    .4byte Img_SongSprites + 0xcc1
    .4byte Img_SongSprites + 0xd75
    .4byte Img_SongSprites + 0xe35
    .4byte Img_SongSprites + 0xef5
    .4byte Img_SongSprites + 0xfb5
    .4byte Img_SongSprites + 0x1081
    .4byte Img_SongSprites + 0x114d
    .4byte Img_SongSprites + 0x1219
    .4byte Img_SongSprites + 0x12e5
    .4byte Img_SongSprites + 0x13b1
    .4byte Img_SongSprites + 0x147d
    .4byte Img_SongSprites + 0x1555
    .4byte Img_SongSprites + 0x162d
    .4byte Img_SongSprites + 0x1705
    .4byte Img_SongSprites + 0x17dd
    .4byte Img_SongSprites + 0x18c1
    .4byte Img_SongSprites + 0x19a5
    .4byte Img_SongSprites + 0x1a89
    .4byte Img_SongSprites + 0x1b6d
    .4byte Img_SongSprites + 0x1c45
    .4byte Img_SongSprites + 0x1d05
    .4byte Img_SongSprites + 0x1db9
    .4byte Img_SongSprites + 0x1e61
    .4byte Img_SongSprites + 0x1ef1
    .4byte Img_SongSprites + 0x1f75
    .4byte Img_SongSprites + 0x1fed
    .4byte Img_SongSprites + 0x2059
    .4byte Img_SongSprites + 0x20ad
    .4byte Img_SongSprites + 0x20f5
    .4byte Img_SongSprites + 0x2125
    .4byte Img_SongSprites + 0x2149
    .4byte 0x80000000

	.global gUnknown_08758218
gUnknown_08758218:  @ 0x08758218
	.incbin "baserom.gba", 0x758218, 0x2A0

	.global gUnknown_087584B8
gUnknown_087584B8:  @ 0x087584B8
@ Replacing .incbin "baserom.gba", 0x7584B8, 0x124
    .4byte gUnknown_08758218 + 0x19a
    .4byte gUnknown_08758218 + 0x1ca
    .4byte gUnknown_08758218 + 0x212
    .4byte gUnknown_08758218 + 0x24f
    .4byte gUnknown_08758218 + 0x273
    .4byte gUnknown_08758218 + 0x28b
    .4byte 0x80000000
    .4byte 0x50004000
    .4byte 0xfff20000
    .4byte 0x00000009
    .4byte 0x10000000
    .4byte 0xffea0004
    .4byte 0x00000009
    .4byte 0x50004000
    .4byte 0xffea0005
    .4byte 0x00000001
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50004000
    .4byte 0xffeb0009
    .4byte 0x00000008
    .4byte 0x10000000
    .4byte 0xffe3000d
    .4byte 0x00000008
    .4byte 0x10004000
    .4byte 0xffeb000e
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffe30010
    .4byte 0x00000000
    .4byte 0x10000000
    .4byte 0xffeb0011
    .4byte 0x00000010
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50004000
    .4byte 0xffdc0012
    .4byte 0x00000007
    .4byte 0x10000000
    .4byte 0xffda0019
    .4byte 0x0000ffff
    .4byte 0x10004000
    .4byte 0xffec0016
    .4byte 0x0000000f
    .4byte 0x10000000
    .4byte 0xffe40018
    .4byte 0x0000000f
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50004000
    .4byte 0xffe0001a
    .4byte 0x0000000b
    .4byte 0x10004000
    .4byte 0xffdf001e
    .4byte 0x00000003
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x50004000
    .4byte 0xffe50020
    .4byte 0x0000000c
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x10004000
    .4byte 0xfff50024
    .4byte 0x0000000e
    .4byte 0x00000001
    .4byte 0x00000000
    .4byte 0x00000000

	.global gUnknown_087585DC
gUnknown_087585DC:  @ 0x087585DC
@ Replacing .incbin "baserom.gba", 0x7585DC, 0x1C
    .4byte gUnknown_087584B8 + 0x1e
    .4byte gUnknown_087584B8 + 0x4e
    .4byte gUnknown_087584B8 + 0x96
    .4byte gUnknown_087584B8 + 0xd3
    .4byte gUnknown_087584B8 + 0xf7
    .4byte gUnknown_087584B8 + 0x10f
    .4byte 0x80000000
