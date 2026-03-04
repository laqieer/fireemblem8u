    .section .data
    .include "animscr.inc"
    .include "gba_sprites.inc"

	.global Img_EfxDracoZombie
Img_EfxDracoZombie:  @ 0x0878D648
	.incbin "dump/banim-ekrdragonfx_78D648.bin"

	.global Tsa_EfxDracoZombieBaseLeft
Tsa_EfxDracoZombieBaseLeft:  @ 0x08790F88
	.incbin "dump/banim-ekrdragonfx_790F88.bin"

	.global Tsa_EfxDracoZombieBaseRight
Tsa_EfxDracoZombieBaseRight:  @ 0x0879115C
	.incbin "dump/banim-ekrdragonfx_79115C.bin"

	.global Tsa_EfxDracoZombie2
Tsa_EfxDracoZombie2:
    .incbin "dump/banim-ekrdragonfx_79133C.bin"

	.global Tsa_EfxDracoZombie3
Tsa_EfxDracoZombie3:
    .incbin "dump/banim-ekrdragonfx_791520.bin"

	.global Tsa_EfxDracoZombie4
Tsa_EfxDracoZombie4:
    .incbin "dump/banim-ekrdragonfx_791738.bin"

	.global Tsa_EfxDracoZombie5
Tsa_EfxDracoZombie5:
    .incbin "dump/banim-ekrdragonfx_791948.bin"

	.global Tsa_EfxDracoZombie1
Tsa_EfxDracoZombie1:
    .incbin "dump/banim-ekrdragonfx_791B3C.bin"

	.global Pal_EfxDracoZombie
Pal_EfxDracoZombie:  @ 0x08791D5C
	.incbin "dump/banim-ekrdragonfx_791D5C.bin"

	.global Pal_08791D7C
Pal_08791D7C:  @ 0x08791D7C
	.incbin "dump/banim-ekrdragonfx_791D7C.bin"

	.global Img_08791D9C
Img_08791D9C:  @ 0x08791D9C
	.incbin "dump/banim-ekrdragonfx_791D9C.bin"

	.global Pal_08792194
Pal_08792194:  @ 0x08792194
	.incbin "dump/banim-ekrdragonfx_792194.bin"

.global AnimSprite_EfxClasschgObjDrop_1
AnimSprite_EfxClasschgObjDrop_1:  @ 0x7921B4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, -24, -8
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_2
AnimSprite_EfxClasschgObjDrop_2:  @ 0x7921CC
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, -24, -10
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 0, -24
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_3
AnimSprite_EfxClasschgObjDrop_3:  @ 0x7921F0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -24, -12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 0, -26
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, -16, -40
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_4
AnimSprite_EfxClasschgObjDrop_4:  @ 0x792220
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, -24, -13
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 0, -28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, -16, -42
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_5
AnimSprite_EfxClasschgObjDrop_5:  @ 0x792250
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 16, -24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 0, -29
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -16, -44
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_6
AnimSprite_EfxClasschgObjDrop_6:  @ 0x792280
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 16, -26
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, -16, -45
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_7
AnimSprite_EfxClasschgObjDrop_7:  @ 0x7922A4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 16, -28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 8, -48
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_8
AnimSprite_EfxClasschgObjDrop_8:  @ 0x7922C8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 16, -29
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 8, -50
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_9
AnimSprite_EfxClasschgObjDrop_9:  @ 0x7922EC
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 8, -52
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_10
AnimSprite_EfxClasschgObjDrop_10:  @ 0x792304
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 8, -53
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_11
AnimSprite_EfxClasschgObjDrop_11:  @ 0x79231C
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, -16, -56
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_12
AnimSprite_EfxClasschgObjDrop_12:  @ 0x792334
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, -16, -55
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 0, -48
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_13
AnimSprite_EfxClasschgObjDrop_13:  @ 0x792358
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -16, -53
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 0, -47
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 16, -32
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_14
AnimSprite_EfxClasschgObjDrop_14:  @ 0x792388
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, -16, -51
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 0, -45
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 16, -31
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, -8, -24
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_15
AnimSprite_EfxClasschgObjDrop_15:  @ 0x7923C4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 0, -43
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 16, -29
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, -8, -23
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, -24, -20
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_16
AnimSprite_EfxClasschgObjDrop_16:  @ 0x792400
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 16, -27
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -8, -21
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, -24, -19
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 0, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_17
AnimSprite_EfxClasschgObjDrop_17:  @ 0x79243C
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, -8, -19
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, -24, -17
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 0, -15
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0000, 16, -12
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_18
AnimSprite_EfxClasschgObjDrop_18:  @ 0x792478
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, -24, -15
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 0, -13
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0001, 16, -11
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_19
AnimSprite_EfxClasschgObjDrop_19:  @ 0x7924A8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 0, -11
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0002, 16, -9
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_20
AnimSprite_EfxClasschgObjDrop_20:  @ 0x7924CC
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0003, 16, -7
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_21
AnimSprite_EfxClasschgObjDrop_21:  @ 0x7924E4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -20, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 12, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -4, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -4, -20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -16, -16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -16, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 8, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 8, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_22
AnimSprite_EfxClasschgObjDrop_22:  @ 0x792550
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -28, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 20, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -4, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -4, -28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -20, -20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -20, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 12, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 12, -20
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_23
AnimSprite_EfxClasschgObjDrop_23:  @ 0x7925BC
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -32, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 24, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -4, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -4, -32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -23, -23
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, -23, 15
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 15, 15
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0004, 15, -23
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_24
AnimSprite_EfxClasschgObjDrop_24:  @ 0x792628
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -4, -34
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -4, 26
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -25, 17
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 17, 17
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -25, -25
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -34, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 17, -25
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 26, -4
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_25
AnimSprite_EfxClasschgObjDrop_25:  @ 0x792694
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -4, -36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -4, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -26, 18
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 18, 18
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -26, -26
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -36, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 18, -26
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 28, -4
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_26
AnimSprite_EfxClasschgObjDrop_26:  @ 0x792700
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -4, -37
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -4, 29
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -27, 19
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 19, 19
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -27, -27
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, -37, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 19, -27
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0005, 29, -4
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_27
AnimSprite_EfxClasschgObjDrop_27:  @ 0x79276C
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -28, -28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -38, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -28, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -4, 30
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 20, -28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -4, -38
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 30, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 20, 20
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_28
AnimSprite_EfxClasschgObjDrop_28:  @ 0x7927D8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -29, -29
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -39, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -29, 21
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -4, 31
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 21, -29
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -4, -39
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 31, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 21, 21
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_29
AnimSprite_EfxClasschgObjDrop_29:  @ 0x792844
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -30, -30
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -40, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -30, 22
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -4, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 22, -30
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, -4, -40
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 32, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0006, 22, 22
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_30
AnimSprite_EfxClasschgObjDrop_30:  @ 0x7928B0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, -4, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, -4, -40
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, -30, -30
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, 22, -30
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, -40, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, -30, 22
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, 32, -4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0007, 22, 22
    ANIM_SPRITE_END

.global AnimSprite_EfxClasschgObjDrop_31
AnimSprite_EfxClasschgObjDrop_31:  @ 0x79291C
    ANIM_SPRITE_END

	.global BanimScr_08792928
BanimScr_08792928:  @ 0x08792928
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_1, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_2, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_3, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_4, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_5, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_6, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_7, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_8, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_9, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_10, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_31, 1
    ANIMSCR_BLOCKED

	.global BanimScr_08792958
BanimScr_08792958:  @ 0x08792958
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_11, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_12, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_13, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_14, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_15, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_16, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_17, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_18, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_19, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_20, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_31, 1
    ANIMSCR_BLOCKED

	.global BanimScr_08792988
BanimScr_08792988:  @ 0x08792988
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_21, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_22, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_23, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_24, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_25, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_26, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_27, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_28, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_29, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_30, 4
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxClasschgObjDrop_31, 1
    ANIMSCR_BLOCKED

	.global Img_87929B8
Img_87929B8:
	.incbin "dump/banim-ekrdragonfx_7929B8.bin"

	.global Pal_87932CC
Pal_87932CC:
	.incbin "dump/banim-ekrdragonfx_7932CC.bin"

	.global Tsa_87932EC
Tsa_87932EC:
	.incbin "dump/banim-ekrdragonfx_7932EC.bin"

	.global Tsa_8793384
Tsa_8793384:
	.incbin "dump/banim-ekrdragonfx_793384.bin"

	.global Tsa_8793494
Tsa_8793494:
	.incbin "dump/banim-ekrdragonfx_793494.bin"

	.global Tsa_87935B0
Tsa_87935B0:
	.incbin "dump/banim-ekrdragonfx_7935B0.bin"

	.global Tsa_87936C0
Tsa_87936C0:
	.incbin "dump/banim-ekrdragonfx_7936C0.bin"

	.global Tsa_87937D0
Tsa_87937D0:
	.incbin "dump/banim-ekrdragonfx_7937D0.bin"

	.global Tsa_87938EC
Tsa_87938EC:
	.incbin "dump/banim-ekrdragonfx_7938EC.bin"

	.global Img_87939FC
Img_87939FC:
	.incbin "dump/banim-ekrdragonfx_7939FC.bin"

	.global Img_8794628
Img_8794628:
	.incbin "dump/banim-ekrdragonfx_794628.bin"

	.global Img_87951D8
Img_87951D8:
	.incbin "dump/banim-ekrdragonfx_7951D8.bin"

	.global Img_8795DF4
Img_8795DF4:
	.incbin "dump/banim-ekrdragonfx_795DF4.bin"

	.global Img_87969F4
Img_87969F4:
	.incbin "dump/banim-ekrdragonfx_7969F4.bin"

	.global Img_87970DC
Img_87970DC:
	.incbin "dump/banim-ekrdragonfx_7970DC.bin"

	.global Img_8797AC4
Img_8797AC4:
	.incbin "dump/banim-ekrdragonfx_797AC4.bin"

	.global Img_8798394
Img_8798394:
	.incbin "dump/banim-ekrdragonfx_798394.bin"

	.global Img_8798B6C
Img_8798B6C:
	.incbin "dump/banim-ekrdragonfx_798B6C.bin"

	.global Img_8799228
Img_8799228:
	.incbin "dump/banim-ekrdragonfx_799228.bin"

	.global Pal_87997F8
Pal_87997F8:
	.incbin "dump/banim-ekrdragonfx_7997F8.bin"

	.global Tsa_8799818
Tsa_8799818:
	.incbin "dump/banim-ekrdragonfx_799818.bin"

	.global Tsa_8799ABC
Tsa_8799ABC:
	.incbin "dump/banim-ekrdragonfx_799ABC.bin"

	.global Tsa_8799D64
Tsa_8799D64:
	.incbin "dump/banim-ekrdragonfx_799D64.bin"

	.global Tsa_879A008
Tsa_879A008:
	.incbin "dump/banim-ekrdragonfx_79A008.bin"

	.global Tsa_879A2A8
Tsa_879A2A8:
	.incbin "dump/banim-ekrdragonfx_79A2A8.bin"

	.global Tsa_879A444
Tsa_879A444:
	.incbin "dump/banim-ekrdragonfx_79A444.bin"

	.global Tsa_879A6A0
Tsa_879A6A0:
	.incbin "dump/banim-ekrdragonfx_79A6A0.bin"

	.global Tsa_879A87C
Tsa_879A87C:
	.incbin "dump/banim-ekrdragonfx_79A87C.bin"

	.global Tsa_879A9E8
Tsa_879A9E8:
	.incbin "dump/banim-ekrdragonfx_79A9E8.bin"

	.global Tsa_879AB10
Tsa_879AB10:
	.incbin "dump/banim-ekrdragonfx_79AB10.bin"

	.global Img_879AC08
Img_879AC08:
	.incbin "dump/banim-ekrdragonfx_79AC08.bin"

	.global Img_879B168
Img_879B168:
	.incbin "dump/banim-ekrdragonfx_79B168.bin"

	.global Img_879B8F4
Img_879B8F4:
	.incbin "dump/banim-ekrdragonfx_79B8F4.bin"

	.global Img_879C1E4
Img_879C1E4:
	.incbin "dump/banim-ekrdragonfx_79C1E4.bin"

	.global Img_879CAB4
Img_879CAB4:
	.incbin "dump/banim-ekrdragonfx_79CAB4.bin"

	.global Img_879D1F8
Img_879D1F8:
	.incbin "dump/banim-ekrdragonfx_79D1F8.bin"

	.global Img_879DC10
Img_879DC10:
	.incbin "dump/banim-ekrdragonfx_79DC10.bin"

	.global Img_879E5DC
Img_879E5DC:
	.incbin "dump/banim-ekrdragonfx_79E5DC.bin"

	.global Img_879EED0
Img_879EED0:
	.incbin "dump/banim-ekrdragonfx_79EED0.bin"

	.global Img_879F698
Img_879F698:
	.incbin "dump/banim-ekrdragonfx_79F698.bin"

	.global Img_879FD3C
Img_879FD3C:
	.incbin "dump/banim-ekrdragonfx_79FD3C.bin"

	.global Img_87A0338
Img_87A0338:
	.incbin "dump/banim-ekrdragonfx_7A0338.bin"

	.global Img_87A090C
Img_87A090C:
	.incbin "dump/banim-ekrdragonfx_7A090C.bin"

	.global Img_87A0E78
Img_87A0E78:
	.incbin "dump/banim-ekrdragonfx_7A0E78.bin"

	.global Img_87A13C0
Img_87A13C0:
	.incbin "dump/banim-ekrdragonfx_7A13C0.bin"

	.global Pal_87A18D0
Pal_87A18D0:
	.incbin "dump/banim-ekrdragonfx_7A18D0.bin"

	.global Tsa_87A18F0
Tsa_87A18F0:
	.incbin "dump/banim-ekrdragonfx_7A18F0.bin"

	.global Tsa_87A19EC
Tsa_87A19EC:
	.incbin "dump/banim-ekrdragonfx_7A19EC.bin"

	.global Tsa_87A1B68
Tsa_87A1B68:
	.incbin "dump/banim-ekrdragonfx_7A1B68.bin"

	.global Tsa_87A1D74
Tsa_87A1D74:
	.incbin "dump/banim-ekrdragonfx_7A1D74.bin"

	.global Tsa_87A1F9C
Tsa_87A1F9C:
	.incbin "dump/banim-ekrdragonfx_7A1F9C.bin"

	.global Tsa_87A2134
Tsa_87A2134:
	.incbin "dump/banim-ekrdragonfx_7A2134.bin"

	.global Tsa_87A2384
Tsa_87A2384:
	.incbin "dump/banim-ekrdragonfx_7A2384.bin"

	.global Tsa_87A2584
Tsa_87A2584:
	.incbin "dump/banim-ekrdragonfx_7A2584.bin"

	.global Tsa_87A2748
Tsa_87A2748:
	.incbin "dump/banim-ekrdragonfx_7A2748.bin"

	.global Tsa_87A28A8
Tsa_87A28A8:
	.incbin "dump/banim-ekrdragonfx_7A28A8.bin"

	.global Tsa_87A29DC
Tsa_87A29DC:
	.incbin "dump/banim-ekrdragonfx_7A29DC.bin"

	.global Tsa_87A2AE8
Tsa_87A2AE8:
	.incbin "dump/banim-ekrdragonfx_7A2AE8.bin"

	.global Tsa_87A2BE4
Tsa_87A2BE4:
	.incbin "dump/banim-ekrdragonfx_7A2BE4.bin"

	.global Tsa_87A2CCC
Tsa_87A2CCC:
	.incbin "dump/banim-ekrdragonfx_7A2CCC.bin"

	.global Tsa_87A2DB8
Tsa_87A2DB8:
	.incbin "dump/banim-ekrdragonfx_7A2DB8.bin"

	.global Img_87A2EA0
Img_87A2EA0:
	.incbin "dump/banim-ekrdragonfx_7A2EA0.bin"

	.global Img_87A3400
Img_87A3400:
	.incbin "dump/banim-ekrdragonfx_7A3400.bin"

	.global Img_87A39A0
Img_87A39A0:
	.incbin "dump/banim-ekrdragonfx_7A39A0.bin"

	.global Img_87A3F38
Img_87A3F38:
	.incbin "dump/banim-ekrdragonfx_7A3F38.bin"

	.global Img_87A44D8
Img_87A44D8:
	.incbin "dump/banim-ekrdragonfx_7A44D8.bin"

	.global Pal_87A4A68
Pal_87A4A68:
	.incbin "dump/banim-ekrdragonfx_7A4A68.bin"

	.global Tsa_87A4A88
Tsa_87A4A88:
	.incbin "dump/banim-ekrdragonfx_7A4A88.bin"

	.global Tsa_87A4B68
Tsa_87A4B68:
	.incbin "dump/banim-ekrdragonfx_7A4B68.bin"

	.global Tsa_87A4C44
Tsa_87A4C44:
	.incbin "dump/banim-ekrdragonfx_7A4C44.bin"

	.global Tsa_87A4D2C
Tsa_87A4D2C:
	.incbin "dump/banim-ekrdragonfx_7A4D2C.bin"

	.global Tsa_87A4E0C
Tsa_87A4E0C:
	.incbin "dump/banim-ekrdragonfx_7A4E0C.bin"

	.global Img_DemonLightSprites_EyeFlash
Img_DemonLightSprites_EyeFlash:  @ 0x087A4EEC
	.incbin "dump/banim-ekrdragonfx_7A4EEC.bin"

	.global Pal_DemonLightSprites_EyeFlash
Pal_DemonLightSprites_EyeFlash:  @ 0x087A5118
	.incbin "dump/banim-ekrdragonfx_7A5118.bin"

	.global gUnknown_087A5240
gUnknown_087A5240:  @ 0x087A5240
	.incbin "dump/banim-ekrdragonfx_7A5240.bin"@ 0x7A536C - 0x7A5240

	.global gUnknown_087A536C
gUnknown_087A536C:  @ 0x087A536C
	.incbin "dump/banim-ekrdragonfx_7A536C.bin"@ 0x7A5390 - 0x7A536C

	.global Img_DemonLightSprites
Img_DemonLightSprites:  @ 0x087A5390
	.incbin "dump/banim-ekrdragonfx_7A5390.bin"

	.global Pal_DemonLightSprites
Pal_DemonLightSprites:  @ 0x087A574C
	.incbin "dump/banim-ekrdragonfx_7A574C.bin"

.global AnimSprite_EfxMaohFlashEye_1
AnimSprite_EfxMaohFlashEye_1:  @ 0x7A576C
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000E, -8, -24
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000C, -8, -56
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000A, -8, -88
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x0008, -8, -120
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, -8, -128
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_2
AnimSprite_EfxMaohFlashEye_2:  @ 0x7A57B4
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000E, -8, -24
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000C, -8, -56
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000A, -8, -88
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x0008, -8, -120
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, -8, -128
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_3
AnimSprite_EfxMaohFlashEye_3:  @ 0x7A57FC
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000A, -16, -96
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_4
AnimSprite_EfxMaohFlashEye_4:  @ 0x7A5814
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x0008, -16, -128
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_5
AnimSprite_EfxMaohFlashEye_5:  @ 0x7A582C
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_6
AnimSprite_EfxMaohFlashEye_6:  @ 0x7A5844
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_7
AnimSprite_EfxMaohFlashEye_7:  @ 0x7A585C
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_8
AnimSprite_EfxMaohFlashEye_8:  @ 0x7A5868
    ANIM_SPRITE_AFFIN 1, 0x116, 0xa0, -0xa0, 0x116
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_9
AnimSprite_EfxMaohFlashEye_9:  @ 0x7A588C
    ANIM_SPRITE_AFFIN 1, 0xd7, 0x175, -0x175, 0xd7
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_10
AnimSprite_EfxMaohFlashEye_10:  @ 0x7A58B0
    ANIM_SPRITE_AFFIN 1, 0x0, 0x35d, -0x35d, 0x0
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_11
AnimSprite_EfxMaohFlashEye_11:  @ 0x7A58D4
    ANIM_SPRITE_AFFIN 1, 0x116, 0xa0, -0xa0, 0x116
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_12
AnimSprite_EfxMaohFlashEye_12:  @ 0x7A58F8
    ANIM_SPRITE_AFFIN 1, 0xd6, 0x172, -0x172, 0xd6
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEye_13
AnimSprite_EfxMaohFlashEye_13:  @ 0x7A591C
    ANIM_SPRITE_AFFIN 1, 0x0, 0x35d, -0x35d, 0x0
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

	.global gUnknown_087A5940
gUnknown_087A5940:  @ 0x087A5940
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_1, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_2, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_1, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_2, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_7, 2
    ANIMSCR_DISABLED

	.global gUnknown_087A5958
gUnknown_087A5958:  @ 0x087A5958
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_5, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_8, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_9, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_10, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_7, 2
    ANIMSCR_DISABLED

	.global gUnknown_087A5970
gUnknown_087A5970:  @ 0x087A5970
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_6, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_11, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_12, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_13, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEye_7, 2
    ANIMSCR_DISABLED

.global AnimSprite_EfxMaohFlashThunderObj_1
AnimSprite_EfxMaohFlashThunderObj_1:  @ 0x7A5988
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000E, -8, -24
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000C, -8, -56
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x000A, -8, -88
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x0008, -8, -120
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, -8, -128
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_2
AnimSprite_EfxMaohFlashThunderObj_2:  @ 0x7A59D0
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000E, -8, -24
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000C, -8, -56
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000A, -8, -88
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x0008, -8, -120
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, -8, -128
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_3
AnimSprite_EfxMaohFlashThunderObj_3:  @ 0x7A5A18
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x000A, 0, -96
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_4
AnimSprite_EfxMaohFlashThunderObj_4:  @ 0x7A5A30
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_32, 0x0008, 0, -128
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_5
AnimSprite_EfxMaohFlashThunderObj_5:  @ 0x7A5A48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_6
AnimSprite_EfxMaohFlashThunderObj_6:  @ 0x7A5A60
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_7
AnimSprite_EfxMaohFlashThunderObj_7:  @ 0x7A5A78
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_8
AnimSprite_EfxMaohFlashThunderObj_8:  @ 0x7A5A84
    ANIM_SPRITE_AFFIN 1, -0x116, 0xa0, 0xa0, 0x116
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_9
AnimSprite_EfxMaohFlashThunderObj_9:  @ 0x7A5AA8
    ANIM_SPRITE_AFFIN 1, -0xd7, 0x175, 0x175, 0xd7
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_10
AnimSprite_EfxMaohFlashThunderObj_10:  @ 0x7A5ACC
    ANIM_SPRITE_AFFIN 1, 0x0, 0x35d, 0x35d, 0x0
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0000, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_11
AnimSprite_EfxMaohFlashThunderObj_11:  @ 0x7A5AF0
    ANIM_SPRITE_AFFIN 1, -0x116, 0xa0, 0xa0, 0x116
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_12
AnimSprite_EfxMaohFlashThunderObj_12:  @ 0x7A5B14
    ANIM_SPRITE_AFFIN 1, -0xd6, 0x172, 0x172, 0xd6
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashThunderObj_13
AnimSprite_EfxMaohFlashThunderObj_13:  @ 0x7A5B38
    ANIM_SPRITE_AFFIN 1, 0x0, 0x35d, 0x35d, 0x0
    ANIM_SPRITE ATTR0_SQUARE + OBJ_ROT_SCALE_ON, ATTR1_SIZE_32, 0x0004, -16, -16
    ANIM_SPRITE_END

.global gUnknown_087A5B5C
gUnknown_087A5B5C: @ 0x7A5B5C
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_1, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_2, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_1, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_2, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_7, 2
    ANIMSCR_DISABLED

.global gUnknown_087A5B74
gUnknown_087A5B74: @ 0x7A5B74
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_5, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_8, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_9, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_10, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_7, 2
    ANIMSCR_DISABLED

.global gUnknown_087A5B8C
gUnknown_087A5B8C: @ 0x7A5B8C
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_6, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_11, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_12, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_13, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashThunderObj_7, 2
    ANIMSCR_DISABLED

	.global Img_DemonLightSprites_087A5BA4
Img_DemonLightSprites_087A5BA4:  @ 0x087A5BA4
	.incbin "dump/banim-ekrdragonfx_7A5BA4.bin"

	.global Img_DemonLightSprites_087A5E9C
Img_DemonLightSprites_087A5E9C:  @ 0x087A5E9C
	.incbin "dump/banim-ekrdragonfx_7A5E9C.bin"

	.global Pal_DemonLightSprites_087A61EC
Pal_DemonLightSprites_087A61EC:  @ 0x087A61EC
	.incbin "dump/banim-ekrdragonfx_7A61EC.bin"

.global AnimSprite_EfxMaohFlashEyeFire1Obj_1
AnimSprite_EfxMaohFlashEyeFire1Obj_1:  @ 0x7A620C
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0002, 0, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0006, 32, 0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0008, 48, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0022, 0, 40
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 8, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 8, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 24, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 24, 24
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0001, 40, 8
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0001, 40, 24
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0026, 32, 40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0020, 16, 40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0044, 16, 48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0062, 48, 8
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0063, 48, 16
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0065, 48, 24
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0009, 0, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0043, 8, 48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0042, 48, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 22, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 22, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 38, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 38, 28
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0060, 30, 44
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0041, 54, 12
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0041, 54, 28
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0010, 14, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0014, 46, 4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0016, 62, 4
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0017, 14, 12
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0071, 62, 20
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0073, 62, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0050, 62, 36
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0051, 22, 52
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, 14, 44
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0034, 46, 44
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_2
AnimSprite_EfxMaohFlashEyeFire1Obj_2:  @ 0x7A63C8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000A, 0, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x004A, 0, 16
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x006A, 8, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000C, 16, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x004C, 16, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x002B, 24, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0047, 40, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0028, 8, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x006E, 24, 48
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x004E, 32, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x006F, 40, 40
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x000E, 32, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0055, 54, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, 14, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0058, 14, 20
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0078, 22, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x001A, 30, 12
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x001C, 46, 20
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x005C, 46, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x007D, 54, 44
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0039, 38, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, 30, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0036, 22, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, 38, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_3
AnimSprite_EfxMaohFlashEyeFire1Obj_3:  @ 0x7A64F4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 0, 0
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0002, 16, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0040, 8, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0044, 40, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0005, 32, 32
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0007, 48, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0003, 16, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x006C, 48, 48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0010, 14, 4
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0012, 30, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0050, 22, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0054, 54, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0015, 46, 36
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0017, 62, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0013, 30, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, 62, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_4
AnimSprite_EfxMaohFlashEyeFire1Obj_4:  @ 0x7A65C0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0008, 0, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0046, 8, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x004A, 48, 40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x000A, 32, 32
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x000C, 48, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, 14, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0056, 22, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, 62, 44
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x001A, 46, 36
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x001C, 62, 20
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_5
AnimSprite_EfxMaohFlashEyeFire1Obj_5:  @ 0x7A6644
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000D, 0, 0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x001D, 14, 4
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_6
AnimSprite_EfxMaohFlashEyeFire1Obj_6:  @ 0x7A6668
    ANIM_SPRITE_END

.global gUnknown_087A6674
gUnknown_087A6674: @ 0x7A6674
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire1Obj_1, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire1Obj_2, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire1Obj_6, 2
    ANIMSCR_DISABLED

.global AnimSprite_EfxMaohFlashEyeFire1Obj_7
AnimSprite_EfxMaohFlashEyeFire1Obj_7:  @ 0x7A6684
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0002, -32, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0006, -48, 0
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0008, -56, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0022, -16, 40
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -24, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -24, 24
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -40, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -40, 24
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0001, -48, 8
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0001, -48, 24
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0026, -48, 40
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0020, -32, 40
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0044, -32, 48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0062, -56, 8
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0063, -64, 16
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0065, -64, 24
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_16, 0x0009, -8, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0043, -16, 48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0042, -56, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -38, 12
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -38, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -54, 12
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -54, 28
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0060, -46, 44
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0041, -62, 12
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0041, -62, 28
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0010, -46, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0014, -62, 4
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0016, -70, 4
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_16, 0x0017, -22, 12
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0071, -78, 20
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0073, -78, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0050, -70, 36
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0051, -54, 52
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, -30, 44
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0034, -62, 44
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_8
AnimSprite_EfxMaohFlashEyeFire1Obj_8:  @ 0x7A6840
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x000A, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x004A, -16, 16
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x006A, -24, 24
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x000C, -32, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x004C, -32, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x002B, -32, 24
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0047, -56, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0028, -16, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x006E, -32, 48
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x004E, -48, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x006F, -48, 40
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x000E, -40, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0055, -70, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, -30, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0058, -30, 20
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0078, -38, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x001A, -46, 12
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x001C, -54, 20
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x005C, -62, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x007D, -62, 44
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0039, -46, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, -46, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0036, -30, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, -46, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_9
AnimSprite_EfxMaohFlashEyeFire1Obj_9:  @ 0x7A696C
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0002, -24, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0040, -40, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0044, -56, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0005, -48, 32
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0007, -56, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0003, -32, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x006C, -56, 48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0010, -30, 4
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0012, -38, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0050, -54, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0054, -70, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0015, -62, 36
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0017, -70, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0013, -46, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, -70, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_10
AnimSprite_EfxMaohFlashEyeFire1Obj_10:  @ 0x7A6A38
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0008, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0046, -40, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x004A, -64, 40
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x000A, -48, 32
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x000C, -56, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, -30, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0056, -54, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, -78, 44
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x001A, -62, 36
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x001C, -70, 20
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_11
AnimSprite_EfxMaohFlashEyeFire1Obj_11:  @ 0x7A6ABC
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x000D, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x001D, -30, 4
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire1Obj_12
AnimSprite_EfxMaohFlashEyeFire1Obj_12:  @ 0x7A6AE0
    ANIM_SPRITE_END

.global gUnknown_087A6AEC
gUnknown_087A6AEC: @ 0x7A6AEC
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire1Obj_7, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire1Obj_8, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire1Obj_12, 2
    ANIMSCR_BLOCKED

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_1
AnimSprite_EfxMaohFlashEyeFire2Obj1_1:  @ 0x7A6AFC
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0002, 0, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0006, 32, 0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0008, 48, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0022, 0, 40
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 8, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 8, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 24, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 24, 24
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0001, 40, 8
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0001, 40, 24
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0026, 32, 40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0020, 16, 40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0044, 16, 48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0062, 48, 8
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0063, 48, 16
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0065, 48, 24
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0009, 0, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0043, 8, 48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0042, 48, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 22, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 22, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 38, 12
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, 38, 28
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0060, 30, 44
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0041, 54, 12
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0041, 54, 28
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0010, 14, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0014, 46, 4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0016, 62, 4
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0017, 14, 12
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0071, 62, 20
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0073, 62, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0050, 62, 36
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x0051, 22, 52
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, 14, 44
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0034, 46, 44
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_2
AnimSprite_EfxMaohFlashEyeFire2Obj1_2:  @ 0x7A6CB8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000A, 0, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x004A, 0, 16
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x006A, 8, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000C, 16, 8
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x004C, 16, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x002B, 24, 24
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0047, 40, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0028, 8, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x006E, 24, 48
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x004E, 32, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x006F, 40, 40
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x000E, 32, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0055, 54, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, 14, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0058, 14, 20
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x0078, 22, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x001A, 30, 12
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x001C, 46, 20
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x005C, 46, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x007D, 54, 44
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0039, 38, 28
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, 30, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x0036, 22, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, 38, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_3
AnimSprite_EfxMaohFlashEyeFire2Obj1_3:  @ 0x7A6DE4
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, 0, 0
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0002, 16, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0040, 8, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0044, 40, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0005, 32, 32
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0007, 48, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0003, 16, 32
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x006C, 48, 48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0010, 14, 4
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0012, 30, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0050, 22, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0054, 54, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0015, 46, 36
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x0017, 62, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0013, 30, 36
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, 62, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_4
AnimSprite_EfxMaohFlashEyeFire2Obj1_4:  @ 0x7A6EB0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0008, 0, 0
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0046, 8, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x004A, 48, 40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x000A, 32, 32
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x000C, 48, 16
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, 14, 4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0056, 22, 20
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, 62, 44
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x001A, 46, 36
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x001C, 62, 20
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_5
AnimSprite_EfxMaohFlashEyeFire2Obj1_5:  @ 0x7A6F34
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000D, 0, 0
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x001D, 16, 8
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_6
AnimSprite_EfxMaohFlashEyeFire2Obj1_6:  @ 0x7A6F58
    ANIM_SPRITE_END

.global gUnknown_087A6F64
gUnknown_087A6F64: @ 0x7A6F64
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_3, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_4, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_5, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_6, 2
    ANIMSCR_DISABLED

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_7
AnimSprite_EfxMaohFlashEyeFire2Obj1_7:  @ 0x7A6F78
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0002, -32, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0006, -48, 0
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0008, -56, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0022, -16, 40
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -24, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -24, 24
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -40, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -40, 24
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0001, -48, 8
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0001, -48, 24
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0026, -48, 40
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0020, -32, 40
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0044, -32, 48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0062, -56, 8
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0063, -64, 16
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0065, -64, 24
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_16, 0x0009, -8, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0043, -16, 48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0042, -56, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -38, 12
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -38, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -54, 12
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0040, -54, 28
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0060, -46, 44
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0041, -62, 12
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0041, -62, 28
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0010, -46, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0014, -62, 4
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0016, -70, 4
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_16, 0x0017, -22, 12
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0071, -78, 20
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0073, -78, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0050, -70, 36
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_16, 0x0051, -54, 52
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0030, -30, 44
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0034, -62, 44
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_8
AnimSprite_EfxMaohFlashEyeFire2Obj1_8:  @ 0x7A7134
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x000A, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x004A, -16, 16
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x006A, -24, 24
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x000C, -32, 8
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x004C, -32, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x002B, -32, 24
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0047, -56, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0028, -16, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x006E, -32, 48
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x004E, -48, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x006F, -48, 40
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x000E, -40, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0055, -70, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, -30, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0058, -30, 20
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x0078, -38, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x001A, -46, 12
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x001C, -54, 20
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x005C, -62, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x007D, -62, 44
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0039, -46, 28
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, -46, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x0036, -30, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, -46, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_9
AnimSprite_EfxMaohFlashEyeFire2Obj1_9:  @ 0x7A7260
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0000, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0002, -24, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0040, -40, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0044, -56, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0005, -48, 32
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0007, -56, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0003, -32, 32
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x006C, -56, 48
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0010, -30, 4
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0012, -38, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0050, -54, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0054, -70, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0015, -62, 36
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x0017, -70, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0013, -46, 36
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_8, 0x007C, -70, 52
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_10
AnimSprite_EfxMaohFlashEyeFire2Obj1_10:  @ 0x7A732C
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0008, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0046, -40, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x004A, -64, 40
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x000A, -48, 32
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x000C, -56, 16
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x0018, -30, 4
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_32, 0x0056, -54, 20
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x005A, -78, 44
    ANIM_SPRITE_XFLIP ATTR0_WIDE, ATTR1_SIZE_8, 0x001A, -62, 36
    ANIM_SPRITE_XFLIP ATTR0_TALL, ATTR1_SIZE_8, 0x001C, -70, 20
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_11
AnimSprite_EfxMaohFlashEyeFire2Obj1_11:  @ 0x7A73B0
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x000D, -16, 0
    ANIM_SPRITE_XFLIP ATTR0_SQUARE, ATTR1_SIZE_16, 0x001D, -32, 8
    ANIM_SPRITE_END

.global AnimSprite_EfxMaohFlashEyeFire2Obj1_12
AnimSprite_EfxMaohFlashEyeFire2Obj1_12:  @ 0x7A73D4
    ANIM_SPRITE_END

.global gUnknown_087A73E0
gUnknown_087A73E0: @ 0x7A73E0
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_9, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_10, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_11, 1
    ANIMSCR_FORCE_SPRITE AnimSprite_EfxMaohFlashEyeFire2Obj1_12, 2
    ANIMSCR_DISABLED

    .global Img_DemonLightBg_Close_1
Img_DemonLightBg_Close_1:
    .incbin "graphics/efxdragon/DemonLightBg_Close_1.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_2
Img_DemonLightBg_Close_2:
    .incbin "graphics/efxdragon/DemonLightBg_Close_2.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_3
Img_DemonLightBg_Close_3:
    .incbin "graphics/efxdragon/DemonLightBg_Close_3.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_4
Img_DemonLightBg_Close_4:
    .incbin "graphics/efxdragon/DemonLightBg_Close_4.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_5
Img_DemonLightBg_Close_5:
    .incbin "graphics/efxdragon/DemonLightBg_Close_5.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_6
Img_DemonLightBg_Close_6:
    .incbin "graphics/efxdragon/DemonLightBg_Close_6.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_7
Img_DemonLightBg_Close_7:
    .incbin "graphics/efxdragon/DemonLightBg_Close_7.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_8
Img_DemonLightBg_Close_8:
    .incbin "graphics/efxdragon/DemonLightBg_Close_8.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_9
Img_DemonLightBg_Close_9:
    .incbin "graphics/efxdragon/DemonLightBg_Close_9.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_10
Img_DemonLightBg_Close_10:
    .incbin "graphics/efxdragon/DemonLightBg_Close_10.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_11
Img_DemonLightBg_Close_11:
    .incbin "graphics/efxdragon/DemonLightBg_Close_11.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_12
Img_DemonLightBg_Close_12:
    .incbin "graphics/efxdragon/DemonLightBg_Close_12.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_13
Img_DemonLightBg_Close_13:
    .incbin "graphics/efxdragon/DemonLightBg_Close_13.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_14
Img_DemonLightBg_Close_14:
    .incbin "graphics/efxdragon/DemonLightBg_Close_14.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_15
Img_DemonLightBg_Close_15:
    .incbin "graphics/efxdragon/DemonLightBg_Close_15.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_16
Img_DemonLightBg_Close_16:
    .incbin "graphics/efxdragon/DemonLightBg_Close_16.feimg1.bin.lz"

    .global Pal_DemonLightBg_Close_1
Pal_DemonLightBg_Close_1:
    .incbin "graphics/efxdragon/DemonLightBg_Close_1.gbapal"

    .global Pal_DemonLightBg_Close_2
Pal_DemonLightBg_Close_2:
    .incbin "graphics/efxdragon/DemonLightBg_Close_2.gbapal"

    .global Pal_DemonLightBg_Close_3
Pal_DemonLightBg_Close_3:
    .incbin "graphics/efxdragon/DemonLightBg_Close_3.gbapal"

    .global Pal_DemonLightBg_Close_4
Pal_DemonLightBg_Close_4:
    .incbin "graphics/efxdragon/DemonLightBg_Close_4.gbapal"

    .global Pal_DemonLightBg_Close_5
Pal_DemonLightBg_Close_5:
    .incbin "graphics/efxdragon/DemonLightBg_Close_5.gbapal"

    .global Pal_DemonLightBg_Close_6
Pal_DemonLightBg_Close_6:
    .incbin "graphics/efxdragon/DemonLightBg_Close_6.gbapal"

    .global Pal_DemonLightBg_Close_7
Pal_DemonLightBg_Close_7:
    .incbin "graphics/efxdragon/DemonLightBg_Close_7.gbapal"

    .global Pal_DemonLightBg_Close_8
Pal_DemonLightBg_Close_8:
    .incbin "graphics/efxdragon/DemonLightBg_Close_8.gbapal"

    .global Pal_DemonLightBg_Close_9
Pal_DemonLightBg_Close_9:
    .incbin "graphics/efxdragon/DemonLightBg_Close_9.gbapal"

    .global Pal_DemonLightBg_Close_10
Pal_DemonLightBg_Close_10:
    .incbin "graphics/efxdragon/DemonLightBg_Close_10.gbapal"

    .global Pal_DemonLightBg_Close_11
Pal_DemonLightBg_Close_11:
    .incbin "graphics/efxdragon/DemonLightBg_Close_11.gbapal"

    .global Pal_DemonLightBg_Close_12
Pal_DemonLightBg_Close_12:
    .incbin "graphics/efxdragon/DemonLightBg_Close_12.gbapal"

    .global Pal_DemonLightBg_Close_13
Pal_DemonLightBg_Close_13:
    .incbin "graphics/efxdragon/DemonLightBg_Close_13.gbapal"

    .global Pal_DemonLightBg_Close_14
Pal_DemonLightBg_Close_14:
    .incbin "graphics/efxdragon/DemonLightBg_Close_14.gbapal"

    .global Pal_DemonLightBg_Close_15
Pal_DemonLightBg_Close_15:
    .incbin "graphics/efxdragon/DemonLightBg_Close_15.gbapal"

    .global Pal_DemonLightBg_Close_16
Pal_DemonLightBg_Close_16:
    .incbin "graphics/efxdragon/DemonLightBg_Close_16.gbapal"

    .global Tsa_DemonLightBg_Close_1
Tsa_DemonLightBg_Close_1:
    .incbin "graphics/efxdragon/DemonLightBg_Close_1.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_2
Tsa_DemonLightBg_Close_2:
    .incbin "graphics/efxdragon/DemonLightBg_Close_2.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_3
Tsa_DemonLightBg_Close_3:
    .incbin "graphics/efxdragon/DemonLightBg_Close_3.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_4
Tsa_DemonLightBg_Close_4:
    .incbin "graphics/efxdragon/DemonLightBg_Close_4.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_5
Tsa_DemonLightBg_Close_5:
    .incbin "graphics/efxdragon/DemonLightBg_Close_5.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_6
Tsa_DemonLightBg_Close_6:
    .incbin "graphics/efxdragon/DemonLightBg_Close_6.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_7
Tsa_DemonLightBg_Close_7:
    .incbin "graphics/efxdragon/DemonLightBg_Close_7.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_8
Tsa_DemonLightBg_Close_8:
    .incbin "graphics/efxdragon/DemonLightBg_Close_8.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_9
Tsa_DemonLightBg_Close_9:
    .incbin "graphics/efxdragon/DemonLightBg_Close_9.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_10
Tsa_DemonLightBg_Close_10:
    .incbin "graphics/efxdragon/DemonLightBg_Close_10.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_11
Tsa_DemonLightBg_Close_11:
    .incbin "graphics/efxdragon/DemonLightBg_Close_11.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_12
Tsa_DemonLightBg_Close_12:
    .incbin "graphics/efxdragon/DemonLightBg_Close_12.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_13
Tsa_DemonLightBg_Close_13:
    .incbin "graphics/efxdragon/DemonLightBg_Close_13.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_14
Tsa_DemonLightBg_Close_14:
    .incbin "graphics/efxdragon/DemonLightBg_Close_14.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_15
Tsa_DemonLightBg_Close_15:
    .incbin "graphics/efxdragon/DemonLightBg_Close_15.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_16
Tsa_DemonLightBg_Close_16:
    .incbin "graphics/efxdragon/DemonLightBg_Close_16.fetsa1.bin.lz"

    .global Img_DemonLightBg_Close_17
Img_DemonLightBg_Close_17:
    .incbin "graphics/efxdragon/DemonLightBg_Close_17.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_18
Img_DemonLightBg_Close_18:
    .incbin "graphics/efxdragon/DemonLightBg_Close_18.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_19
Img_DemonLightBg_Close_19:
    .incbin "graphics/efxdragon/DemonLightBg_Close_19.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_20
Img_DemonLightBg_Close_20:
    .incbin "graphics/efxdragon/DemonLightBg_Close_20.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_21
Img_DemonLightBg_Close_21:
    .incbin "graphics/efxdragon/DemonLightBg_Close_21.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_22
Img_DemonLightBg_Close_22:
    .incbin "graphics/efxdragon/DemonLightBg_Close_22.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_23
Img_DemonLightBg_Close_23:
    .incbin "graphics/efxdragon/DemonLightBg_Close_23.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_24
Img_DemonLightBg_Close_24:
    .incbin "graphics/efxdragon/DemonLightBg_Close_24.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_25
Img_DemonLightBg_Close_25:
    .incbin "graphics/efxdragon/DemonLightBg_Close_25.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_26
Img_DemonLightBg_Close_26:
    .incbin "graphics/efxdragon/DemonLightBg_Close_26.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_27
Img_DemonLightBg_Close_27:
    .incbin "graphics/efxdragon/DemonLightBg_Close_27.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_28
Img_DemonLightBg_Close_28:
    .incbin "graphics/efxdragon/DemonLightBg_Close_28.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_29
Img_DemonLightBg_Close_29:
    .incbin "graphics/efxdragon/DemonLightBg_Close_29.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_30
Img_DemonLightBg_Close_30:
    .incbin "graphics/efxdragon/DemonLightBg_Close_30.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_31
Img_DemonLightBg_Close_31:
    .incbin "graphics/efxdragon/DemonLightBg_Close_31.feimg1.bin.lz"

    .global Img_DemonLightBg_Close_32
Img_DemonLightBg_Close_32:
    .incbin "graphics/efxdragon/DemonLightBg_Close_32.feimg1.bin.lz"

    .global Pal_DemonLightBg_Close_17
Pal_DemonLightBg_Close_17:
    .incbin "graphics/efxdragon/DemonLightBg_Close_17.gbapal"

    .global Pal_DemonLightBg_Close_18
Pal_DemonLightBg_Close_18:
    .incbin "graphics/efxdragon/DemonLightBg_Close_18.gbapal"

    .global Pal_DemonLightBg_Close_19
Pal_DemonLightBg_Close_19:
    .incbin "graphics/efxdragon/DemonLightBg_Close_19.gbapal"

    .global Pal_DemonLightBg_Close_20
Pal_DemonLightBg_Close_20:
    .incbin "graphics/efxdragon/DemonLightBg_Close_20.gbapal"

    .global Pal_DemonLightBg_Close_21
Pal_DemonLightBg_Close_21:
    .incbin "graphics/efxdragon/DemonLightBg_Close_21.gbapal"

    .global Pal_DemonLightBg_Close_22
Pal_DemonLightBg_Close_22:
    .incbin "graphics/efxdragon/DemonLightBg_Close_22.gbapal"

    .global Pal_DemonLightBg_Close_23
Pal_DemonLightBg_Close_23:
    .incbin "graphics/efxdragon/DemonLightBg_Close_23.gbapal"

    .global Pal_DemonLightBg_Close_24
Pal_DemonLightBg_Close_24:
    .incbin "graphics/efxdragon/DemonLightBg_Close_24.gbapal"

    .global Pal_DemonLightBg_Close_25
Pal_DemonLightBg_Close_25:
    .incbin "graphics/efxdragon/DemonLightBg_Close_25.gbapal"

    .global Pal_DemonLightBg_Close_26
Pal_DemonLightBg_Close_26:
    .incbin "graphics/efxdragon/DemonLightBg_Close_26.gbapal"

    .global Pal_DemonLightBg_Close_27
Pal_DemonLightBg_Close_27:
    .incbin "graphics/efxdragon/DemonLightBg_Close_27.gbapal"

    .global Pal_DemonLightBg_Close_28
Pal_DemonLightBg_Close_28:
    .incbin "graphics/efxdragon/DemonLightBg_Close_28.gbapal"

    .global Pal_DemonLightBg_Close_29
Pal_DemonLightBg_Close_29:
    .incbin "graphics/efxdragon/DemonLightBg_Close_29.gbapal"

    .global Pal_DemonLightBg_Close_30
Pal_DemonLightBg_Close_30:
    .incbin "graphics/efxdragon/DemonLightBg_Close_30.gbapal"

    .global Pal_DemonLightBg_Close_31
Pal_DemonLightBg_Close_31:
    .incbin "graphics/efxdragon/DemonLightBg_Close_31.gbapal"

    .global Pal_DemonLightBg_Close_32
Pal_DemonLightBg_Close_32:
    .incbin "graphics/efxdragon/DemonLightBg_Close_32.gbapal"

    .global Tsa_DemonLightBg_Close_17
Tsa_DemonLightBg_Close_17:
    .incbin "graphics/efxdragon/DemonLightBg_Close_17.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_18
Tsa_DemonLightBg_Close_18:
    .incbin "graphics/efxdragon/DemonLightBg_Close_18.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_19
Tsa_DemonLightBg_Close_19:
    .incbin "graphics/efxdragon/DemonLightBg_Close_19.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_20
Tsa_DemonLightBg_Close_20:
    .incbin "graphics/efxdragon/DemonLightBg_Close_20.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_21
Tsa_DemonLightBg_Close_21:
    .incbin "graphics/efxdragon/DemonLightBg_Close_21.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_22
Tsa_DemonLightBg_Close_22:
    .incbin "graphics/efxdragon/DemonLightBg_Close_22.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_23
Tsa_DemonLightBg_Close_23:
    .incbin "graphics/efxdragon/DemonLightBg_Close_23.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_24
Tsa_DemonLightBg_Close_24:
    .incbin "graphics/efxdragon/DemonLightBg_Close_24.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_25
Tsa_DemonLightBg_Close_25:
    .incbin "graphics/efxdragon/DemonLightBg_Close_25.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_26
Tsa_DemonLightBg_Close_26:
    .incbin "graphics/efxdragon/DemonLightBg_Close_26.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_27
Tsa_DemonLightBg_Close_27:
    .incbin "graphics/efxdragon/DemonLightBg_Close_27.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_28
Tsa_DemonLightBg_Close_28:
    .incbin "graphics/efxdragon/DemonLightBg_Close_28.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_29
Tsa_DemonLightBg_Close_29:
    .incbin "graphics/efxdragon/DemonLightBg_Close_29.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_30
Tsa_DemonLightBg_Close_30:
    .incbin "graphics/efxdragon/DemonLightBg_Close_30.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_31
Tsa_DemonLightBg_Close_31:
    .incbin "graphics/efxdragon/DemonLightBg_Close_31.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Close_32
Tsa_DemonLightBg_Close_32:
    .incbin "graphics/efxdragon/DemonLightBg_Close_32.fetsa1.bin.lz"

	.global Img_087C5190
Img_087C5190:  @ 0x087C5190
	.incbin "dump/banim-ekrdragonfx_7C5190.4bpp.lz"

	.global Img_087C56E4
Img_087C56E4:  @ 0x087C56E4
	.incbin "dump/banim-ekrdragonfx_7C56E4.4bpp.lz"

	.global Img_087C619C
Img_087C619C:  @ 0x087C619C
	.incbin "dump/banim-ekrdragonfx_7C619C.4bpp.lz"

	.global Img_087C6CF4
Img_087C6CF4:  @ 0x087C6CF4
	.incbin "dump/banim-ekrdragonfx_7C6CF4.4bpp.lz"

	.global Img_087C7678
Img_087C7678:  @ 0x087C7678
	.incbin "dump/banim-ekrdragonfx_7C7678.4bpp.lz"

	.global Img_087C810C
Img_087C810C:  @ 0x087C810C
	.incbin "dump/banim-ekrdragonfx_7C810C.4bpp.lz"

	.global Img_087C86BC
Img_087C86BC:  @ 0x087C86BC
	.incbin "dump/banim-ekrdragonfx_7C86BC.4bpp.lz"

	.global Img_087C8C80
Img_087C8C80:  @ 0x087C8C80
	.incbin "dump/banim-ekrdragonfx_7C8C80.4bpp.lz"

	.global Pal_087C9290
Pal_087C9290:  @ 0x087C9290
	.incbin "dump/banim-ekrdragonfx_7C9290.bin"@ 0x7C92B0 - 0x7C9290

	.global Pal_087C92B0
Pal_087C92B0:  @ 0x087C92B0
	.incbin "dump/banim-ekrdragonfx_7C92B0.bin"@ 0x7C92D0 - 0x7C92B0

	.global Pal_087C92D0
Pal_087C92D0:  @ 0x087C92D0
	.incbin "dump/banim-ekrdragonfx_7C92D0.bin"@ 0x7C92F0 - 0x7C92D0

	.global Pal_087C92F0
Pal_087C92F0:  @ 0x087C92F0
	.incbin "dump/banim-ekrdragonfx_7C92F0.bin"@ 0x7C9310 - 0x7C92F0

	.global Pal_087C9310
Pal_087C9310:  @ 0x087C9310
	.incbin "dump/banim-ekrdragonfx_7C9310.bin"@ 0x7C9330 - 0x7C9310

	.global Pal_087C9330
Pal_087C9330:  @ 0x087C9330
	.incbin "dump/banim-ekrdragonfx_7C9330.bin"@ 0x7C9350 - 0x7C9330

	.global Pal_087C9350
Pal_087C9350:  @ 0x087C9350
	.incbin "dump/banim-ekrdragonfx_7C9350.bin"@ 0x7C9370 - 0x7C9350

	.global Pal_087C9370
Pal_087C9370:  @ 0x087C9370
	.incbin "dump/banim-ekrdragonfx_7C9370.bin"@ 0x7C9390 - 0x7C9370

	.global Tsa_087C9390
Tsa_087C9390:  @ 0x087C9390
	.incbin "dump/banim-ekrdragonfx_7C9390.4bpp.lz"

	.global Tsa_087C9464
Tsa_087C9464:  @ 0x087C9464
	.incbin "dump/banim-ekrdragonfx_7C9464.4bpp.lz"

	.global Tsa_087C9600
Tsa_087C9600:  @ 0x087C9600
	.incbin "dump/banim-ekrdragonfx_7C9600.4bpp.lz"

	.global Tsa_087C9818
Tsa_087C9818:  @ 0x087C9818
	.incbin "dump/banim-ekrdragonfx_7C9818.4bpp.lz"

	.global Tsa_087C9A2C
Tsa_087C9A2C:  @ 0x087C9A2C
	.incbin "dump/banim-ekrdragonfx_7C9A2C.4bpp.lz"

	.global Tsa_087C9BEC
Tsa_087C9BEC:  @ 0x087C9BEC
	.incbin "dump/banim-ekrdragonfx_7C9BEC.4bpp.lz"

	.global Tsa_087C9CF4
Tsa_087C9CF4:  @ 0x087C9CF4
	.incbin "dump/banim-ekrdragonfx_7C9CF4.4bpp.lz"

	.global Tsa_087C9E04
Tsa_087C9E04:  @ 0x087C9E04
	.incbin "dump/banim-ekrdragonfx_7C9E04.4bpp.lz"

	.global Img_087C9F18
Img_087C9F18:  @ 0x087C9F18
	.incbin "dump/banim-ekrdragonfx_7C9F18.4bpp.lz"

	.global Img_087CA68C
Img_087CA68C:  @ 0x087CA68C
	.incbin "dump/banim-ekrdragonfx_7CA68C.4bpp.lz"

	.global Img_087CAE60
Img_087CAE60:  @ 0x087CAE60
	.incbin "dump/banim-ekrdragonfx_7CAE60.4bpp.lz"

	.global Img_087CB630
Img_087CB630:  @ 0x087CB630
	.incbin "dump/banim-ekrdragonfx_7CB630.4bpp.lz"

	.global Img_087CBDF4
Img_087CBDF4:  @ 0x087CBDF4
	.incbin "dump/banim-ekrdragonfx_7CBDF4.4bpp.lz"

	.global Pal_087CC55C
Pal_087CC55C:  @ 0x087CC55C
	.incbin "dump/banim-ekrdragonfx_7CC55C.bin"@ 0x7CC57C - 0x7CC55C

	.global Pal_087CC57C
Pal_087CC57C:  @ 0x087CC57C
	.incbin "dump/banim-ekrdragonfx_7CC57C.bin"@ 0x7CC59C - 0x7CC57C

	.global Pal_087CC59C
Pal_087CC59C:  @ 0x087CC59C
	.incbin "dump/banim-ekrdragonfx_7CC59C.bin"@ 0x7CC5BC - 0x7CC59C

	.global Pal_087CC5BC
Pal_087CC5BC:  @ 0x087CC5BC
	.incbin "dump/banim-ekrdragonfx_7CC5BC.bin"@ 0x7CC5DC - 0x7CC5BC

	.global Pal_087CC5DC
Pal_087CC5DC:  @ 0x087CC5DC
	.incbin "dump/banim-ekrdragonfx_7CC5DC.bin"@ 0x7CC5FC - 0x7CC5DC

	.global Tsa_087CC5FC
Tsa_087CC5FC:  @ 0x087CC5FC
	.incbin "dump/banim-ekrdragonfx_7CC5FC.4bpp.lz"

	.global Tsa_087CC734
Tsa_087CC734:  @ 0x087CC734
	.incbin "dump/banim-ekrdragonfx_7CC734.4bpp.lz"

	.global Tsa_087CC878
Tsa_087CC878:  @ 0x087CC878
	.incbin "dump/banim-ekrdragonfx_7CC878.4bpp.lz"

	.global Tsa_087CC9B8
Tsa_087CC9B8:  @ 0x087CC9B8
	.incbin "dump/banim-ekrdragonfx_7CC9B8.4bpp.lz"

	.global Tsa_087CCAD8
Tsa_087CCAD8:  @ 0x087CCAD8
	.incbin "dump/banim-ekrdragonfx_7CCAD8.4bpp.lz"

    .global Img_DemonLightBg_Far_1
Img_DemonLightBg_Far_1:
    .incbin "graphics/efxdragon/DemonLightBg_Far_1.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_2
Img_DemonLightBg_Far_2:
    .incbin "graphics/efxdragon/DemonLightBg_Far_2.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_3
Img_DemonLightBg_Far_3:
    .incbin "graphics/efxdragon/DemonLightBg_Far_3.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_4
Img_DemonLightBg_Far_4:
    .incbin "graphics/efxdragon/DemonLightBg_Far_4.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_5
Img_DemonLightBg_Far_5:
    .incbin "graphics/efxdragon/DemonLightBg_Far_5.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_6
Img_DemonLightBg_Far_6:
    .incbin "graphics/efxdragon/DemonLightBg_Far_6.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_7
Img_DemonLightBg_Far_7:
    .incbin "graphics/efxdragon/DemonLightBg_Far_7.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_8
Img_DemonLightBg_Far_8:
    .incbin "graphics/efxdragon/DemonLightBg_Far_8.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_9
Img_DemonLightBg_Far_9:
    .incbin "graphics/efxdragon/DemonLightBg_Far_9.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_10
Img_DemonLightBg_Far_10:
    .incbin "graphics/efxdragon/DemonLightBg_Far_10.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_11
Img_DemonLightBg_Far_11:
    .incbin "graphics/efxdragon/DemonLightBg_Far_11.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_12
Img_DemonLightBg_Far_12:
    .incbin "graphics/efxdragon/DemonLightBg_Far_12.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_13
Img_DemonLightBg_Far_13:
    .incbin "graphics/efxdragon/DemonLightBg_Far_13.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_14
Img_DemonLightBg_Far_14:
    .incbin "graphics/efxdragon/DemonLightBg_Far_14.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_15
Img_DemonLightBg_Far_15:
    .incbin "graphics/efxdragon/DemonLightBg_Far_15.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_16
Img_DemonLightBg_Far_16:
    .incbin "graphics/efxdragon/DemonLightBg_Far_16.feimg1.bin.lz"

    .global Pal_DemonLightBg_Far_1
Pal_DemonLightBg_Far_1:
    .incbin "graphics/efxdragon/DemonLightBg_Far_1.gbapal"

    .global Pal_DemonLightBg_Far_2
Pal_DemonLightBg_Far_2:
    .incbin "graphics/efxdragon/DemonLightBg_Far_2.gbapal"

    .global Pal_DemonLightBg_Far_3
Pal_DemonLightBg_Far_3:
    .incbin "graphics/efxdragon/DemonLightBg_Far_3.gbapal"

    .global Pal_DemonLightBg_Far_4
Pal_DemonLightBg_Far_4:
    .incbin "graphics/efxdragon/DemonLightBg_Far_4.gbapal"

    .global Pal_DemonLightBg_Far_5
Pal_DemonLightBg_Far_5:
    .incbin "graphics/efxdragon/DemonLightBg_Far_5.gbapal"

    .global Pal_DemonLightBg_Far_6
Pal_DemonLightBg_Far_6:
    .incbin "graphics/efxdragon/DemonLightBg_Far_6.gbapal"

    .global Pal_DemonLightBg_Far_7
Pal_DemonLightBg_Far_7:
    .incbin "graphics/efxdragon/DemonLightBg_Far_7.gbapal"

    .global Pal_DemonLightBg_Far_8
Pal_DemonLightBg_Far_8:
    .incbin "graphics/efxdragon/DemonLightBg_Far_8.gbapal"

    .global Pal_DemonLightBg_Far_9
Pal_DemonLightBg_Far_9:
    .incbin "graphics/efxdragon/DemonLightBg_Far_9.gbapal"

    .global Pal_DemonLightBg_Far_10
Pal_DemonLightBg_Far_10:
    .incbin "graphics/efxdragon/DemonLightBg_Far_10.gbapal"

    .global Pal_DemonLightBg_Far_11
Pal_DemonLightBg_Far_11:
    .incbin "graphics/efxdragon/DemonLightBg_Far_11.gbapal"

    .global Pal_DemonLightBg_Far_12
Pal_DemonLightBg_Far_12:
    .incbin "graphics/efxdragon/DemonLightBg_Far_12.gbapal"

    .global Pal_DemonLightBg_Far_13
Pal_DemonLightBg_Far_13:
    .incbin "graphics/efxdragon/DemonLightBg_Far_13.gbapal"

    .global Pal_DemonLightBg_Far_14
Pal_DemonLightBg_Far_14:
    .incbin "graphics/efxdragon/DemonLightBg_Far_14.gbapal"

    .global Pal_DemonLightBg_Far_15
Pal_DemonLightBg_Far_15:
    .incbin "graphics/efxdragon/DemonLightBg_Far_15.gbapal"

    .global Pal_DemonLightBg_Far_16
Pal_DemonLightBg_Far_16:
    .incbin "graphics/efxdragon/DemonLightBg_Far_16.gbapal"

    .global Tsa_DemonLightBg_Far_1
Tsa_DemonLightBg_Far_1:
    .incbin "graphics/efxdragon/DemonLightBg_Far_1.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_2
Tsa_DemonLightBg_Far_2:
    .incbin "graphics/efxdragon/DemonLightBg_Far_2.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_3
Tsa_DemonLightBg_Far_3:
    .incbin "graphics/efxdragon/DemonLightBg_Far_3.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_4
Tsa_DemonLightBg_Far_4:
    .incbin "graphics/efxdragon/DemonLightBg_Far_4.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_5
Tsa_DemonLightBg_Far_5:
    .incbin "graphics/efxdragon/DemonLightBg_Far_5.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_6
Tsa_DemonLightBg_Far_6:
    .incbin "graphics/efxdragon/DemonLightBg_Far_6.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_7
Tsa_DemonLightBg_Far_7:
    .incbin "graphics/efxdragon/DemonLightBg_Far_7.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_8
Tsa_DemonLightBg_Far_8:
    .incbin "graphics/efxdragon/DemonLightBg_Far_8.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_9
Tsa_DemonLightBg_Far_9:
    .incbin "graphics/efxdragon/DemonLightBg_Far_9.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_10
Tsa_DemonLightBg_Far_10:
    .incbin "graphics/efxdragon/DemonLightBg_Far_10.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_11
Tsa_DemonLightBg_Far_11:
    .incbin "graphics/efxdragon/DemonLightBg_Far_11.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_12
Tsa_DemonLightBg_Far_12:
    .incbin "graphics/efxdragon/DemonLightBg_Far_12.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_13
Tsa_DemonLightBg_Far_13:
    .incbin "graphics/efxdragon/DemonLightBg_Far_13.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_14
Tsa_DemonLightBg_Far_14:
    .incbin "graphics/efxdragon/DemonLightBg_Far_14.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_15
Tsa_DemonLightBg_Far_15:
    .incbin "graphics/efxdragon/DemonLightBg_Far_15.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_16
Tsa_DemonLightBg_Far_16:
    .incbin "graphics/efxdragon/DemonLightBg_Far_16.fetsa1.bin.lz"

    .global Img_DemonLightBg_Far_17
Img_DemonLightBg_Far_17:
    .incbin "graphics/efxdragon/DemonLightBg_Far_17.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_18
Img_DemonLightBg_Far_18:
    .incbin "graphics/efxdragon/DemonLightBg_Far_18.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_19
Img_DemonLightBg_Far_19:
    .incbin "graphics/efxdragon/DemonLightBg_Far_19.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_20
Img_DemonLightBg_Far_20:
    .incbin "graphics/efxdragon/DemonLightBg_Far_20.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_21
Img_DemonLightBg_Far_21:
    .incbin "graphics/efxdragon/DemonLightBg_Far_21.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_22
Img_DemonLightBg_Far_22:
    .incbin "graphics/efxdragon/DemonLightBg_Far_22.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_23
Img_DemonLightBg_Far_23:
    .incbin "graphics/efxdragon/DemonLightBg_Far_23.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_24
Img_DemonLightBg_Far_24:
    .incbin "graphics/efxdragon/DemonLightBg_Far_24.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_25
Img_DemonLightBg_Far_25:
    .incbin "graphics/efxdragon/DemonLightBg_Far_25.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_26
Img_DemonLightBg_Far_26:
    .incbin "graphics/efxdragon/DemonLightBg_Far_26.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_27
Img_DemonLightBg_Far_27:
    .incbin "graphics/efxdragon/DemonLightBg_Far_27.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_28
Img_DemonLightBg_Far_28:
    .incbin "graphics/efxdragon/DemonLightBg_Far_28.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_29
Img_DemonLightBg_Far_29:
    .incbin "graphics/efxdragon/DemonLightBg_Far_29.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_30
Img_DemonLightBg_Far_30:
    .incbin "graphics/efxdragon/DemonLightBg_Far_30.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_31
Img_DemonLightBg_Far_31:
    .incbin "graphics/efxdragon/DemonLightBg_Far_31.feimg1.bin.lz"

    .global Img_DemonLightBg_Far_32
Img_DemonLightBg_Far_32:
    .incbin "graphics/efxdragon/DemonLightBg_Far_32.feimg1.bin.lz"

    .global Pal_DemonLightBg_Far_17
Pal_DemonLightBg_Far_17:
    .incbin "graphics/efxdragon/DemonLightBg_Far_17.gbapal"

    .global Pal_DemonLightBg_Far_18
Pal_DemonLightBg_Far_18:
    .incbin "graphics/efxdragon/DemonLightBg_Far_18.gbapal"

    .global Pal_DemonLightBg_Far_19
Pal_DemonLightBg_Far_19:
    .incbin "graphics/efxdragon/DemonLightBg_Far_19.gbapal"

    .global Pal_DemonLightBg_Far_20
Pal_DemonLightBg_Far_20:
    .incbin "graphics/efxdragon/DemonLightBg_Far_20.gbapal"

    .global Pal_DemonLightBg_Far_21
Pal_DemonLightBg_Far_21:
    .incbin "graphics/efxdragon/DemonLightBg_Far_21.gbapal"

    .global Pal_DemonLightBg_Far_22
Pal_DemonLightBg_Far_22:
    .incbin "graphics/efxdragon/DemonLightBg_Far_22.gbapal"

    .global Pal_DemonLightBg_Far_23
Pal_DemonLightBg_Far_23:
    .incbin "graphics/efxdragon/DemonLightBg_Far_23.gbapal"

    .global Pal_DemonLightBg_Far_24
Pal_DemonLightBg_Far_24:
    .incbin "graphics/efxdragon/DemonLightBg_Far_24.gbapal"

    .global Pal_DemonLightBg_Far_25
Pal_DemonLightBg_Far_25:
    .incbin "graphics/efxdragon/DemonLightBg_Far_25.gbapal"

    .global Pal_DemonLightBg_Far_26
Pal_DemonLightBg_Far_26:
    .incbin "graphics/efxdragon/DemonLightBg_Far_26.gbapal"

    .global Pal_DemonLightBg_Far_27
Pal_DemonLightBg_Far_27:
    .incbin "graphics/efxdragon/DemonLightBg_Far_27.gbapal"

    .global Pal_DemonLightBg_Far_28
Pal_DemonLightBg_Far_28:
    .incbin "graphics/efxdragon/DemonLightBg_Far_28.gbapal"

    .global Pal_DemonLightBg_Far_29
Pal_DemonLightBg_Far_29:
    .incbin "graphics/efxdragon/DemonLightBg_Far_29.gbapal"

    .global Pal_DemonLightBg_Far_30
Pal_DemonLightBg_Far_30:
    .incbin "graphics/efxdragon/DemonLightBg_Far_30.gbapal"

    .global Pal_DemonLightBg_Far_31
Pal_DemonLightBg_Far_31:
    .incbin "graphics/efxdragon/DemonLightBg_Far_31.gbapal"

    .global Pal_DemonLightBg_Far_32
Pal_DemonLightBg_Far_32:
    .incbin "graphics/efxdragon/DemonLightBg_Far_32.gbapal"

    .global Tsa_DemonLightBg_Far_17
Tsa_DemonLightBg_Far_17:
    .incbin "graphics/efxdragon/DemonLightBg_Far_17.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_18
Tsa_DemonLightBg_Far_18:
    .incbin "graphics/efxdragon/DemonLightBg_Far_18.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_19
Tsa_DemonLightBg_Far_19:
    .incbin "graphics/efxdragon/DemonLightBg_Far_19.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_20
Tsa_DemonLightBg_Far_20:
    .incbin "graphics/efxdragon/DemonLightBg_Far_20.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_21
Tsa_DemonLightBg_Far_21:
    .incbin "graphics/efxdragon/DemonLightBg_Far_21.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_22
Tsa_DemonLightBg_Far_22:
    .incbin "graphics/efxdragon/DemonLightBg_Far_22.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_23
Tsa_DemonLightBg_Far_23:
    .incbin "graphics/efxdragon/DemonLightBg_Far_23.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_24
Tsa_DemonLightBg_Far_24:
    .incbin "graphics/efxdragon/DemonLightBg_Far_24.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_25
Tsa_DemonLightBg_Far_25:
    .incbin "graphics/efxdragon/DemonLightBg_Far_25.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_26
Tsa_DemonLightBg_Far_26:
    .incbin "graphics/efxdragon/DemonLightBg_Far_26.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_27
Tsa_DemonLightBg_Far_27:
    .incbin "graphics/efxdragon/DemonLightBg_Far_27.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_28
Tsa_DemonLightBg_Far_28:
    .incbin "graphics/efxdragon/DemonLightBg_Far_28.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_29
Tsa_DemonLightBg_Far_29:
    .incbin "graphics/efxdragon/DemonLightBg_Far_29.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_30
Tsa_DemonLightBg_Far_30:
    .incbin "graphics/efxdragon/DemonLightBg_Far_30.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_31
Tsa_DemonLightBg_Far_31:
    .incbin "graphics/efxdragon/DemonLightBg_Far_31.fetsa1.bin.lz"

    .global Tsa_DemonLightBg_Far_32
Tsa_DemonLightBg_Far_32:
    .incbin "graphics/efxdragon/DemonLightBg_Far_32.fetsa1.bin.lz"

	.global Img_087EA72C
Img_087EA72C:  @ 0x087EA72C
	.incbin "dump/banim-ekrdragonfx_7EA72C.4bpp.lz"

	.global Img_087EAC80
Img_087EAC80:  @ 0x087EAC80
	.incbin "dump/banim-ekrdragonfx_7EAC80.4bpp.lz"

	.global Img_087EB704
Img_087EB704:  @ 0x087EB704
	.incbin "dump/banim-ekrdragonfx_7EB704.4bpp.lz"

	.global Img_087EC054
Img_087EC054:  @ 0x087EC054
	.incbin "dump/banim-ekrdragonfx_7EC054.4bpp.lz"

	.global Img_087EC944
Img_087EC944:  @ 0x087EC944
	.incbin "dump/banim-ekrdragonfx_7EC944.4bpp.lz"

	.global Img_087ED2B0
Img_087ED2B0:  @ 0x087ED2B0
	.incbin "dump/banim-ekrdragonfx_7ED2B0.4bpp.lz"

	.global Img_087ED828
Img_087ED828:  @ 0x087ED828
	.incbin "dump/banim-ekrdragonfx_7ED828.4bpp.lz"

	.global Img_087EDDC0
Img_087EDDC0:  @ 0x087EDDC0
	.incbin "dump/banim-ekrdragonfx_7EDDC0.4bpp.lz"

	.global Pal_087EE3A0
Pal_087EE3A0:  @ 0x087EE3A0
	.incbin "dump/banim-ekrdragonfx_7EE3A0.bin"@ 0x7EE3C0 - 0x7EE3A0

	.global Pal_087EE3C0
Pal_087EE3C0:  @ 0x087EE3C0
	.incbin "dump/banim-ekrdragonfx_7EE3C0.bin"@ 0x7EE3E0 - 0x7EE3C0

	.global Pal_087EE3E0
Pal_087EE3E0:  @ 0x087EE3E0
	.incbin "dump/banim-ekrdragonfx_7EE3E0.bin"@ 0x7EE400 - 0x7EE3E0

	.global Pal_087EE400
Pal_087EE400:  @ 0x087EE400
	.incbin "dump/banim-ekrdragonfx_7EE400.bin"@ 0x7EE420 - 0x7EE400

	.global Pal_087EE420
Pal_087EE420:  @ 0x087EE420
	.incbin "dump/banim-ekrdragonfx_7EE420.bin"@ 0x7EE440 - 0x7EE420

	.global Pal_087EE440
Pal_087EE440:  @ 0x087EE440
	.incbin "dump/banim-ekrdragonfx_7EE440.bin"@ 0x7EE460 - 0x7EE440

	.global Pal_087EE460
Pal_087EE460:  @ 0x087EE460
	.incbin "dump/banim-ekrdragonfx_7EE460.bin"@ 0x7EE480 - 0x7EE460

	.global Pal_087EE480
Pal_087EE480:  @ 0x087EE480
	.incbin "dump/banim-ekrdragonfx_7EE480.bin"@ 0x7EE4A0 - 0x7EE480

	.global Tsa_087EE4A0
Tsa_087EE4A0:  @ 0x087EE4A0
	.incbin "dump/banim-ekrdragonfx_7EE4A0.4bpp.lz"

	.global Tsa_087EE578
Tsa_087EE578:  @ 0x087EE578
	.incbin "dump/banim-ekrdragonfx_7EE578.4bpp.lz"

	.global Tsa_087EE710
Tsa_087EE710:  @ 0x087EE710
	.incbin "dump/banim-ekrdragonfx_7EE710.4bpp.lz"

	.global Tsa_087EE8F8
Tsa_087EE8F8:  @ 0x087EE8F8
	.incbin "dump/banim-ekrdragonfx_7EE8F8.4bpp.lz"

	.global Tsa_087EEAF4
Tsa_087EEAF4:  @ 0x087EEAF4
	.incbin "dump/banim-ekrdragonfx_7EEAF4.4bpp.lz"

	.global Tsa_087EECA8
Tsa_087EECA8:  @ 0x087EECA8
	.incbin "dump/banim-ekrdragonfx_7EECA8.4bpp.lz"

	.global Tsa_087EEDAC
Tsa_087EEDAC:  @ 0x087EEDAC
	.incbin "dump/banim-ekrdragonfx_7EEDAC.4bpp.lz"

	.global Tsa_087EEEB0
Tsa_087EEEB0:  @ 0x087EEEB0
	.incbin "dump/banim-ekrdragonfx_7EEEB0.4bpp.lz"

	.global Img_087EEFBC
Img_087EEFBC:  @ 0x087EEFBC
	.incbin "dump/banim-ekrdragonfx_7EEFBC.4bpp.lz"

	.global Img_087EF730
Img_087EF730:  @ 0x087EF730
	.incbin "dump/banim-ekrdragonfx_7EF730.4bpp.lz"

	.global Img_087EFF04
Img_087EFF04:  @ 0x087EFF04
	.incbin "dump/banim-ekrdragonfx_7EFF04.4bpp.lz"

	.global Img_087F06D4
Img_087F06D4:  @ 0x087F06D4
	.incbin "dump/banim-ekrdragonfx_7F06D4.4bpp.lz"

	.global Img_087F0E98
Img_087F0E98:  @ 0x087F0E98
	.incbin "dump/banim-ekrdragonfx_7F0E98.4bpp.lz"

	.global Pal_087F1600
Pal_087F1600:  @ 0x087F1600
	.incbin "dump/banim-ekrdragonfx_7F1600.bin"@ 0x7F1620 - 0x7F1600

	.global Pal_087F1620
Pal_087F1620:  @ 0x087F1620
	.incbin "dump/banim-ekrdragonfx_7F1620.bin"@ 0x7F1640 - 0x7F1620

	.global Pal_087F1640
Pal_087F1640:  @ 0x087F1640
	.incbin "dump/banim-ekrdragonfx_7F1640.bin"@ 0x7F1660 - 0x7F1640

	.global Pal_087F1660
Pal_087F1660:  @ 0x087F1660
	.incbin "dump/banim-ekrdragonfx_7F1660.bin"@ 0x7F1680 - 0x7F1660

	.global Pal_087F1680
Pal_087F1680:  @ 0x087F1680
	.incbin "dump/banim-ekrdragonfx_7F1680.bin"@ 0x7F16A0 - 0x7F1680

	.global Tsa_087F16A0
Tsa_087F16A0:  @ 0x087F16A0
	.incbin "dump/banim-ekrdragonfx_7F16A0.4bpp.lz"

	.global Tsa_087F17D8
Tsa_087F17D8:  @ 0x087F17D8
	.incbin "dump/banim-ekrdragonfx_7F17D8.4bpp.lz"

	.global Tsa_087F191C
Tsa_087F191C:  @ 0x087F191C
	.incbin "dump/banim-ekrdragonfx_7F191C.4bpp.lz"

	.global Tsa_087F1A54
Tsa_087F1A54:  @ 0x087F1A54
	.incbin "dump/banim-ekrdragonfx_7F1A54.4bpp.lz"

	.global Tsa_087F1B74
Tsa_087F1B74:  @ 0x087F1B74
	.incbin "dump/banim-ekrdragonfx_7F1B74.4bpp.lz"

	.global Img_087F1C94
Img_087F1C94:  @ 0x087F1C94
	.incbin "dump/banim-ekrdragonfx_7F1C94.4bpp.lz"

	.global Img_087F2464
Img_087F2464:  @ 0x087F2464
	.incbin "dump/banim-ekrdragonfx_7F2464.4bpp.lz"

	.global Img_087F2E40
Img_087F2E40:  @ 0x087F2E40
	.incbin "dump/banim-ekrdragonfx_7F2E40.4bpp.lz"

	.global Pal_087F3C14
Pal_087F3C14:  @ 0x087F3C14
	.incbin "dump/banim-ekrdragonfx_7F3C14.bin"@ 0x7F3C34 - 0x7F3C14

	.global Pal_087F3C34
Pal_087F3C34:  @ 0x087F3C34
	.incbin "dump/banim-ekrdragonfx_7F3C34.bin"@ 0x7F3C54 - 0x7F3C34

	.global Pal_087F3C54
Pal_087F3C54:  @ 0x087F3C54
	.incbin "dump/banim-ekrdragonfx_7F3C54.bin"@ 0x7F3C74 - 0x7F3C54

	.global Tsa_087F3C74
Tsa_087F3C74:  @ 0x087F3C74
	.incbin "dump/banim-ekrdragonfx_7F3C74.4bpp.lz"

	.global Tsa_087F3D60
Tsa_087F3D60:  @ 0x087F3D60
	.incbin "dump/banim-ekrdragonfx_7F3D60.4bpp.lz"

	.global Tsa_087F3E88
Tsa_087F3E88:  @ 0x087F3E88
	.incbin "dump/banim-ekrdragonfx_7F3E88.bin"

.global AnimSprite_DemoKingTunkFace_1
AnimSprite_DemoKingTunkFace_1:  @ 0x7F4040
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_64, 0x0000, -20, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0004, 12, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0084, 12, -40
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0007, -20, -88
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x0047, -44, -88
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0049, -28, -88
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x00C7, -44, -56
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00C9, -28, -56
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_32, 0x0025, -60, -96
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_8, 0x00A5, -60, -64
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x004A, 20, -80
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x004E, 52, -80
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x00CA, 20, -48
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00CE, 52, -48
    ANIM_SPRITE_END

.global AnimSprite_DemoKingTunkFace_2
AnimSprite_DemoKingTunkFace_2:  @ 0x7F40F4
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x0019, -20, -88
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_64, 0x000F, -20, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0013, 12, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0093, 12, -40
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_64, 0x0014, -60, -104
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0018, -28, -104
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0098, -28, -72
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x0059, 20, -80
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x005D, 52, -80
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x00D9, 20, -48
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00DD, 52, -48
    ANIM_SPRITE_END

.global BanimScr_DemoKingTunkFace
BanimScr_DemoKingTunkFace: @ 0x7F4184
    ANIMSCR_FORCE_SPRITE AnimSprite_DemoKingTunkFace_1, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_DemoKingTunkFace_2, 31
    ANIMSCR_WAIT 269
    ANIMSCR_BLOCKED

.global AnimSprite_DemoKingTunkFace_3
AnimSprite_DemoKingTunkFace_3:  @ 0x7F4194
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_64, 0x0000, -20, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0004, 12, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0084, 12, -40
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x0025, -60, -96
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0029, -28, -96
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x00A5, -60, -64
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00A9, -28, -64
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x00E5, -60, -48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x00E9, -28, -48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x000A, -20, -88
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x000C, -4, -88
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x004A, 20, -80
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x004E, 52, -80
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x00CA, 20, -48
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00CE, 52, -48
    ANIM_SPRITE_END

.global AnimSprite_DemoKingTunkFace_4
AnimSprite_DemoKingTunkFace_4:  @ 0x7F4254
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x003B, -4, -8
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_64, 0x000F, -20, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0013, 12, -72
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0093, 12, -40
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x0034, -60, -96
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x0038, -28, -96
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x00B4, -60, -64
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00B8, -28, -64
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_16, 0x00F4, -60, -48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_8, 0x00F8, -28, -48
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_16, 0x0019, -20, -88
    ANIM_SPRITE ATTR0_SQUARE, ATTR1_SIZE_32, 0x0059, 20, -80
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_16, 0x005D, 52, -80
    ANIM_SPRITE ATTR0_WIDE, ATTR1_SIZE_32, 0x00D9, 20, -48
    ANIM_SPRITE ATTR0_TALL, ATTR1_SIZE_8, 0x00DD, 52, -48
    ANIM_SPRITE_END

.global BanimScr_087F4314
BanimScr_087F4314: @ 0x7F4314
    ANIMSCR_FORCE_SPRITE AnimSprite_DemoKingTunkFace_3, 2
    ANIMSCR_FORCE_SPRITE AnimSprite_DemoKingTunkFace_4, 31
    ANIMSCR_WAIT 469
    ANIMSCR_BLOCKED
