    .section .rodata

	.global post_gUnknown_080D9D61
post_gUnknown_080D9D61:
	.incbin "baserom.gba", 0xD9D70, 0xD9DE4 - 0xD9D70

	.global gUnknown_080D9DE4
gUnknown_080D9DE4:  @ 0x080D9DE4
	.incbin "baserom.gba", 0xD9DE4, 0xE

	.global gUnknown_080D9DF2
gUnknown_080D9DF2:  @ 0x080D9DF2
	.incbin "baserom.gba", 0xD9DF2, 0x14

	.global gUnknown_080D9E06
gUnknown_080D9E06:  @ 0x080D9E06
	.incbin "baserom.gba", 0xD9E06, 0x8

	.global gUnknown_080D9E0E
gUnknown_080D9E0E:  @ 0x080D9E0E
	.incbin "baserom.gba", 0xD9E0E, 0xE

	.global gUnknown_080D9E1C
gUnknown_080D9E1C:  @ 0x080D9E1C
	.incbin "baserom.gba", 0xD9E1C, 0x28

	.global gUnknown_080D9E44
gUnknown_080D9E44:  @ 0x080D9E44
	.incbin "baserom.gba", 0xD9E44, 0xC

	.global gUnknown_080D9E50
gUnknown_080D9E50:  @ 0x080D9E50
	.incbin "baserom.gba", 0xD9E50, 0x4C

	.global gUnknown_080D9E9C
gUnknown_080D9E9C:  @ 0x080D9E9C
	.incbin "baserom.gba", 0xD9E9C, 0xA

	.global gUnknown_080D9EA6
gUnknown_080D9EA6:  @ 0x080D9EA6
	.incbin "baserom.gba", 0xD9EA6, 0x1A

	.global gUnknown_080D9EC0
gUnknown_080D9EC0:  @ 0x080D9EC0
	.incbin "baserom.gba", 0xD9EC0, 0x8

	.global gUnknown_080D9EC8
gUnknown_080D9EC8:  @ 0x080D9EC8
	.incbin "baserom.gba", 0xD9EC8, 0x28

	.global gUnknown_080D9EF0
gUnknown_080D9EF0:  @ 0x080D9EF0
	.incbin "baserom.gba", 0xD9EF0, 0xC

	.global gUnknown_080D9EFC
gUnknown_080D9EFC:  @ 0x080D9EFC
@ Replacing .incbin "baserom.gba", 0xD9EFC, 0x1C
    .4byte ProcScr_SIOTERM
    .4byte ProcScr_SIOPRA
    .4byte ProcScr_SIOBAT
    .4byte ProcScr_SIORESULT
    .4byte gUnknown_085A9DF8
    .4byte 0x4d4f4953
    .4byte 0x554e45

	.global gUnknown_080D9F18
gUnknown_080D9F18:  @ 0x080D9F18
	.incbin "baserom.gba", 0xD9F18, 0x8

	.global gUnknown_080D9F20
gUnknown_080D9F20:  @ 0x080D9F20
	.incbin "baserom.gba", 0xD9F20, 0x8

	.global gUnknown_080D9F28
gUnknown_080D9F28:  @ 0x080D9F28
	.incbin "baserom.gba", 0xD9F28, 0x10

	.global gUnknown_080D9F38
gUnknown_080D9F38:  @ 0x080D9F38
	.incbin "baserom.gba", 0xD9F38, 0x10

	.global gUnknown_080D9F48
gUnknown_080D9F48:  @ 0x080D9F48
	.incbin "baserom.gba", 0xD9F48, 0x50

	.global gUnknown_080D9F98
gUnknown_080D9F98:  @ 0x080D9F98
	.incbin "baserom.gba", 0xD9F98, 0x8

	.global gUnknown_080D9FA0
gUnknown_080D9FA0:  @ 0x080D9FA0
	.incbin "baserom.gba", 0xD9FA0, 0x8

	.global gUnknown_080D9FA8
gUnknown_080D9FA8:  @ 0x080D9FA8
	.incbin "baserom.gba", 0xD9FA8, 0x8

	.global gUnknown_080D9FB0
gUnknown_080D9FB0:  @ 0x080D9FB0
	.incbin "baserom.gba", 0xD9FB0, 0x5

	.global gUnknown_080D9FB5
gUnknown_080D9FB5:  @ 0x080D9FB5
	.incbin "baserom.gba", 0xD9FB5, 0x2

	.global gUnknown_080D9FB7
gUnknown_080D9FB7:  @ 0x080D9FB7
	.incbin "baserom.gba", 0xD9FB7, 0x1F

	.global gUnknown_080D9FD6
gUnknown_080D9FD6:  @ 0x080D9FD6
	.incbin "baserom.gba", 0xD9FD6, 0xE

	.global SioDefaultBgConfig
SioDefaultBgConfig:  @ 0x080D9FE4
	.incbin "baserom.gba", 0xD9FE4, 0xB8

	.global gUnknown_080DA09C
gUnknown_080DA09C:  @ 0x080DA09C
	.incbin "baserom.gba", 0xDA09C, 0x3E

	.global gUnknown_080DA0DA
gUnknown_080DA0DA:  @ 0x080DA0DA
    .incbin "baserom.gba", 0xDA0DA, 0x20

	.global gUnknown_080DA0FA
gUnknown_080DA0FA:  @ 0x080DA0FA
	.incbin "baserom.gba", 0xDA0FA, 0x8

	.global gUnknown_080DA102
gUnknown_080DA102:  @ 0x080DA102
    .incbin "baserom.gba", 0xDA102, 0x30

	.global gUnknown_080DA132
gUnknown_080DA132:  @ 0x080DA132
	.incbin "baserom.gba", 0xDA132, 0x48

	.global gUnknown_080DA17A
gUnknown_080DA17A:  @ 0x080DA17A
	.incbin "baserom.gba", 0xDA17A, 0x14

	.global gUnknown_080DA18E
gUnknown_080DA18E:  @ 0x080DA18E
	.incbin "baserom.gba", 0xDA18E, 0x14

	.global gUnknown_080DA1A2
gUnknown_080DA1A2:  @ 0x080DA1A2
	.incbin "baserom.gba", 0xDA1A2, 0x14

	.global gUnknown_080DA1B6
gUnknown_080DA1B6:  @ 0x080DA1B6
	.incbin "baserom.gba", 0xDA1B6, 0x14

	.global gUnknown_080DA1CA
gUnknown_080DA1CA:  @ 0x080DA1CA
	.incbin "baserom.gba", 0xDA1CA, 0x42

	.global gUnknown_080DA20C
gUnknown_080DA20C:  @ 0x080DA20C
@ replacing .incbin "baserom.gba", 0x000da20c, 0x10
.4byte gUnknown_085AE7EC + 0x5e8
.4byte gUnknown_085AE7EC + 0x6a4
.4byte gUnknown_085AE7EC + 0x768
.4byte gUnknown_085AE7EC + 0x840

	.global gUnknown_080DA21C
gUnknown_080DA21C:  @ 0x080DA21C
@ replacing .incbin "baserom.gba", 0x000da21c, 0x10
.4byte gUnknown_085AE7EC + 0x904
.4byte gUnknown_085AE7EC + 0x944
.4byte gUnknown_085AE7EC + 0x924
.4byte gUnknown_085AE7EC + 0x964

	.global gUnknown_080DA22C
gUnknown_080DA22C:  @ 0x080DA22C
@ replacing .incbin "baserom.gba", 0xDA22C, 0x30
    .4byte Pal_PhaseChangePlayer
    .4byte Pal_PhaseChangeOther
    .4byte Pal_PhaseChangeEnemy
    .4byte Pal_PhaseChangeOther + 0x20
    .4byte 0x43000001
    .4byte 0x37008000
    .4byte 0x43000001
    .4byte 0x47048200
    .4byte 0x43000001
    .4byte 0x57088400
    .4byte 0x43000001
    .4byte 0x670c8600

	.global gUnknown_080DA25C
gUnknown_080DA25C:  @ 0x080DA25C
	.incbin "baserom.gba", 0xDA25C, 0xE

	.global gUnknown_080DA26A
gUnknown_080DA26A:  @ 0x080DA26A
	.incbin "baserom.gba", 0xDA26A, 0x14

	.global gUnknown_080DA27E
gUnknown_080DA27E:  @ 0x080DA27E
	.incbin "baserom.gba", 0xDA27E, 0x32

	.global gUnknown_080DA2B0
gUnknown_080DA2B0:  @ 0x080DA2B0
	.incbin "baserom.gba", 0xDA2B0, 0x44

