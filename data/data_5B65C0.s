    .section .data

@ UI GRAPHICS DATA

	.global gUiFrameImage
gUiFrameImage:  @ 0x085B65C0
	.incbin "dump/data_5B65C0_5B65C0.4bpp.lz"

	.global gUiFramePaletteA
gUiFramePaletteA:  @ 0x085B6BB4
	.incbin "dump/data_5B65C0_5B6BB4.gbapal"

	.global gUiFramePaletteB
gUiFramePaletteB:  @ 0x085B6BD4
	.incbin "dump/data_5B65C0_5B6BD4.gbapal"

	.global gUiFramePaletteC
gUiFramePaletteC:  @ 0x085B6BF4
	.incbin "dump/data_5B65C0_5B6BF4.gbapal"

	.global gUiFramePaletteD
gUiFramePaletteD:  @ 0x085B6C14
	.incbin "dump/data_5B65C0_5B6C14.gbapal"

	.global gLegacyUiFrameAImage
gLegacyUiFrameAImage:  @ 0x085B6CB4
	.incbin "dump/data_5B65C0_5B6CB4.4bpp.lz"

	.global gLegacyUiFrameAPalette
gLegacyUiFrameAPalette:  @ 0x085B7560
	.incbin "dump/data_5B65C0_5B7560.gbapal"

	.global gUiBarPaletteA
gUiBarPaletteA:  @ 0x085B7580
	.incbin "dump/data_5B65C0_5B7580.gbapal"

	.global gLegacyUiFrameBImage
gLegacyUiFrameBImage:  @ 0x085B75A0
	.incbin "dump/data_5B65C0_5B75A0.4bpp.lz"

	.global gLegacyUiFrameBPalette
gLegacyUiFrameBPalette:  @ 0x085B7E54
	.incbin "dump/data_5B65C0_5B7E54.gbapal"

	.global gUiBarPaletteB
gUiBarPaletteB:  @ 0x085B7E74
	.incbin "dump/data_5B65C0_5B7E74.gbapal"

	.global gLegacyUiFrameCImage
gLegacyUiFrameCImage:  @ 0x085B7E94
	.incbin "dump/data_5B65C0_5B7E94.4bpp.lz"

	.global gLegacyUiFrameCPalette
gLegacyUiFrameCPalette:
	.incbin "dump/data_5B65C0_5B8714.gbapal"

	.global gUiBarPaletteC
gUiBarPaletteC:
	.incbin "dump/data_5B65C0_5B8734.gbapal"

	.global gLegacyUiFrameDImage
gLegacyUiFrameDImage:
	.incbin "dump/data_5B65C0_5B8754.4bpp.lz"

	.global gLegacyUiFrameDPalette
gLegacyUiFrameDPalette:
	.incbin "dump/data_5B65C0_5B8F90.gbapal"

	.global gUiBarPaletteD
gUiBarPaletteD:
	.incbin "dump/data_5B65C0_5B8FB0.gbapal"

	.global gUnkUiFrameImage
gUnkUiFrameImage:  @ 0x085B8FF0
	.incbin "dump/data_5B65C0_5B8FF0.4bpp.lz"

	.global gUnkUiFramePalettes
gUnkUiFramePalettes:  @ 0x085B9244
	.incbin "dump/data_5B65C0_5B9244.gbapal"

	.global Img_SysGrayBox
Img_SysGrayBox:  @ 0x085B92C4
	.incbin "./graphics/sysutils/Img_SysGrayBox.4bpp.lz"
