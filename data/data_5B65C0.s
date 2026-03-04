    .section .data

@ UI GRAPHICS DATA

	.global gUiFrameImage
gUiFrameImage:  @ 0x085B65C0
	.incbin "dump/data_5B65C0_5B65C0.bin"

	.global gUiFramePaletteA
gUiFramePaletteA:  @ 0x085B6BB4
	.incbin "dump/data_5B65C0_5B6BB4.bin"

	.global gUiFramePaletteB
gUiFramePaletteB:  @ 0x085B6BD4
	.incbin "dump/data_5B65C0_5B6BD4.bin"

	.global gUiFramePaletteC
gUiFramePaletteC:  @ 0x085B6BF4
	.incbin "dump/data_5B65C0_5B6BF4.bin"

	.global gUiFramePaletteD
gUiFramePaletteD:  @ 0x085B6C14
	.incbin "dump/data_5B65C0_5B6C14.bin"

	.global gLegacyUiFrameAImage
gLegacyUiFrameAImage:  @ 0x085B6CB4
	.incbin "dump/data_5B65C0_5B6CB4.bin"

	.global gLegacyUiFrameAPalette
gLegacyUiFrameAPalette:  @ 0x085B7560
	.incbin "dump/data_5B65C0_5B7560.bin"

	.global gUiBarPaletteA
gUiBarPaletteA:  @ 0x085B7580
	.incbin "dump/data_5B65C0_5B7580.bin"

	.global gLegacyUiFrameBImage
gLegacyUiFrameBImage:  @ 0x085B75A0
	.incbin "dump/data_5B65C0_5B75A0.bin"

	.global gLegacyUiFrameBPalette
gLegacyUiFrameBPalette:  @ 0x085B7E54
	.incbin "dump/data_5B65C0_5B7E54.bin"

	.global gUiBarPaletteB
gUiBarPaletteB:  @ 0x085B7E74
	.incbin "dump/data_5B65C0_5B7E74.bin"

	.global gLegacyUiFrameCImage
gLegacyUiFrameCImage:  @ 0x085B7E94
	.incbin "dump/data_5B65C0_5B7E94.bin"

	.global gLegacyUiFrameCPalette
gLegacyUiFrameCPalette:
	.incbin "dump/data_5B65C0_5B8714.bin"

	.global gUiBarPaletteC
gUiBarPaletteC:
	.incbin "dump/data_5B65C0_5B8734.bin"

	.global gLegacyUiFrameDImage
gLegacyUiFrameDImage:
	.incbin "dump/data_5B65C0_5B8754.bin"

	.global gLegacyUiFrameDPalette
gLegacyUiFrameDPalette:
	.incbin "dump/data_5B65C0_5B8F90.bin"

	.global gUiBarPaletteD
gUiBarPaletteD:
	.incbin "dump/data_5B65C0_5B8FB0.bin"

	.global gUnkUiFrameImage
gUnkUiFrameImage:  @ 0x085B8FF0
	.incbin "dump/data_5B65C0_5B8FF0.bin"

	.global gUnkUiFramePalettes
gUnkUiFramePalettes:  @ 0x085B9244
	.incbin "dump/data_5B65C0_5B9244.bin"

	.global Img_SysGrayBox
Img_SysGrayBox:  @ 0x085B92C4
	.incbin "./graphics/sysutils/Img_SysGrayBox.4bpp.lz"
