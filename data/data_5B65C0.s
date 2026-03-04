    .section .data

@ UI GRAPHICS DATA

	.global gUiFrameImage
gUiFrameImage:  @ 0x085B65C0
	.incbin "graphics/misc/gUiFrameImage.4bpp.lz"

	.global gUiFramePaletteA
gUiFramePaletteA:  @ 0x085B6BB4
	.incbin "graphics/misc/gUiFramePaletteA.gbapal"

	.global gUiFramePaletteB
gUiFramePaletteB:  @ 0x085B6BD4
	.incbin "graphics/misc/gUiFramePaletteB.gbapal"

	.global gUiFramePaletteC
gUiFramePaletteC:  @ 0x085B6BF4
	.incbin "graphics/misc/gUiFramePaletteC.gbapal"

	.global gUiFramePaletteD
gUiFramePaletteD:  @ 0x085B6C14
	.incbin "graphics/misc/gUiFramePaletteD.gbapal"

	.global gLegacyUiFrameAImage
gLegacyUiFrameAImage:  @ 0x085B6CB4
	.incbin "graphics/misc/gLegacyUiFrameAImage.4bpp.lz"

	.global gLegacyUiFrameAPalette
gLegacyUiFrameAPalette:  @ 0x085B7560
	.incbin "graphics/misc/gLegacyUiFrameAPalette.gbapal"

	.global gUiBarPaletteA
gUiBarPaletteA:  @ 0x085B7580
	.incbin "graphics/misc/gUiBarPaletteA.gbapal"

	.global gLegacyUiFrameBImage
gLegacyUiFrameBImage:  @ 0x085B75A0
	.incbin "graphics/misc/gLegacyUiFrameBImage.4bpp.lz"

	.global gLegacyUiFrameBPalette
gLegacyUiFrameBPalette:  @ 0x085B7E54
	.incbin "graphics/misc/gLegacyUiFrameBPalette.gbapal"

	.global gUiBarPaletteB
gUiBarPaletteB:  @ 0x085B7E74
	.incbin "graphics/misc/gUiBarPaletteB.gbapal"

	.global gLegacyUiFrameCImage
gLegacyUiFrameCImage:  @ 0x085B7E94
	.incbin "graphics/misc/gLegacyUiFrameCImage.4bpp.lz"

	.global gLegacyUiFrameCPalette
gLegacyUiFrameCPalette:
	.incbin "graphics/misc/gLegacyUiFrameCPalette.gbapal"

	.global gUiBarPaletteC
gUiBarPaletteC:
	.incbin "graphics/misc/gUiBarPaletteC.gbapal"

	.global gLegacyUiFrameDImage
gLegacyUiFrameDImage:
	.incbin "graphics/misc/gLegacyUiFrameDImage.4bpp.lz"

	.global gLegacyUiFrameDPalette
gLegacyUiFrameDPalette:
	.incbin "graphics/misc/gLegacyUiFrameDPalette.gbapal"

	.global gUiBarPaletteD
gUiBarPaletteD:
	.incbin "graphics/misc/gUiBarPaletteD.gbapal"

	.global gUnkUiFrameImage
gUnkUiFrameImage:  @ 0x085B8FF0
	.incbin "graphics/misc/gUnkUiFrameImage.4bpp.lz"

	.global gUnkUiFramePalettes
gUnkUiFramePalettes:  @ 0x085B9244
	.incbin "graphics/misc/gUnkUiFramePalettes.gbapal"

	.global Img_SysGrayBox
Img_SysGrayBox:  @ 0x085B92C4
	.incbin "./graphics/sysutils/Img_SysGrayBox.4bpp.lz"
