	.section .data

	.global ProcScr_ManimShiftingSineWaveScanlineBuf
ProcScr_ManimShiftingSineWaveScanlineBuf:  @ 0x089A52FC
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80825B0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80825B8
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global SpriteAnim_ManimStatGain
SpriteAnim_ManimStatGain:  @ 0x089A5314
	.incbin "dump/data_9A31F8_9A5314.bin"

	.global gUnknown_089A5A6C
gUnknown_089A5A6C:  @ 0x089A5A6C
	.incbin "dump/data_9A31F8_9A5A6C.bin"

	.global ApConf_MapAnimTorchfx
ApConf_MapAnimTorchfx:  @ 0x089A61F8
	.incbin "dump/data_9A31F8_9A61F8.bin"

	.global ApConf_089A6254
ApConf_089A6254:  @ 0x089A6254
	.incbin "dump/data_9A31F8_9A6254.bin"

	.global Obj_PoisonAnim
Obj_PoisonAnim:  @ 0x089A6F40
	.incbin "dump/data_9A31F8_9A6F40.bin"

	.global Obj_WallBreakAnim
Obj_WallBreakAnim:  @ 0x089A6FD8
	.incbin "graphics/misc/Obj_WallBreakAnim.4bpp"

	.global ApHandle_GmapSoguSprites
ApHandle_GmapSoguSprites:  @ 0x089A8EF8
	.incbin "dump/data_9A31F8_9A8EF8.bin"

	.global Pal_MapAnimManaketeMu
Pal_MapAnimManaketeMu:  @ 0x089A8F74
	.incbin "graphics/misc/Pal_MapAnimManaketeMu.gbapal"

	.global gGfx_ArenaBuildingFront
gGfx_ArenaBuildingFront:  @ 0x089A8F94
	.incbin "graphics/misc/gGfx_ArenaBuildingFront.4bpp.lz"

	.global gTsa_ArenaBuildingFront
gTsa_ArenaBuildingFront:  @ 0x089ABB70
	.incbin "dump/data_9A31F8_9ABB70.bin"

	.global gPal_ArenaBuildingFront
gPal_ArenaBuildingFront:  @ 0x089AC024
	.incbin "graphics/misc/gPal_ArenaBuildingFront.gbapal"

	.global Img_MapAnimMISS
Img_MapAnimMISS:  @ 0x089AC0A4
	.incbin "graphics/misc/Img_MapAnimMISS.4bpp.lz"

	.global Obj_MapAnimMISS
Obj_MapAnimMISS:  @ 0x089AC194
	.incbin "dump/data_9A31F8_9AC194.bin"

	.global Img_MapAnimNODAMAGE
Img_MapAnimNODAMAGE:  @ 0x089AC2FC
	.incbin "graphics/misc/Img_MapAnimNODAMAGE.4bpp.lz"

	.global obj_MapAnimNODAMAGE
obj_MapAnimNODAMAGE:  @ 0x089AC440
	.incbin "dump/data_9A31F8_9AC440.bin"

	.global Pal_ManimLevelUpStatGainCycling
Pal_ManimLevelUpStatGainCycling:  @ 0x089AC5CC
    .incbin "graphics/misc/Pal_ManimLevelUpStatGainCycling.gbapal"

	.global Img_ManimLevelUpText
Img_ManimLevelUpText:  @ 0x089AC794
	.incbin "./graphics/lvup/ManimLevelUpText.4bpp.lz"

	.global Pal_ManimLevelUp
Pal_ManimLevelUp:  @ 0x089AC9A8
	.incbin "graphics/misc/Pal_ManimLevelUp.gbapal"

	.global Img_ManimLevelUpStatGain
Img_ManimLevelUpStatGain:  @ 0x089ACA08
	.incbin "./graphics/lvup/ManimLvupStatGain.4bpp.lz"

	.global Img_ManimLevelUpStatGainDigits
Img_ManimLevelUpStatGainDigits:  @ 0x089ACC98
	.incbin "./graphics/lvup/ManimLevelUpStatGainDigits.4bpp"

	.global gUnknown_089AD498
gUnknown_089AD498:  @ 0x089AD498
	.incbin "dump/data_9A31F8_9AD498.bin"

	.global Img_MapBattleInfoBox
Img_MapBattleInfoBox:  @ 0x089AD500
	.incbin "graphics/misc/Img_MapBattleInfoBox.4bpp.lz"

	.global Pal_MapBattleInfoBlue
Pal_MapBattleInfoBlue:  @ 0x089AD648
	.incbin "graphics/misc/Pal_MapBattleInfoBlue.gbapal"

	.global Pal_MapBattleInfoRed
Pal_MapBattleInfoRed:  @ 0x089AD668
    .incbin "graphics/misc/Pal_MapBattleInfoRed.gbapal"

	.global Pal_MapBattleInfoGreen
Pal_MapBattleInfoGreen:  @ 0x089AD688
	.incbin "graphics/misc/Pal_MapBattleInfoGreen.gbapal"

	.global Pal_MapBattleInfoPurple
Pal_MapBattleInfoPurple:  @ 0x089AD6A8
    .incbin "graphics/misc/Pal_MapBattleInfoPurple.gbapal"

    .global Tsa_MapBattleBoxGfx1
Tsa_MapBattleBoxGfx1:   @ 0x089AD6C8
    .incbin "graphics/misc/Tsa_MapBattleBoxGfx1.tsa.lz"

    .global Tsa_MapBattleBoxGfx2
Tsa_MapBattleBoxGfx2:   @ 0x089AD714
    .incbin "graphics/misc/Tsa_MapBattleBoxGfx2.tsa.lz"

    .global Tsa_MapBattleBoxGfx3
Tsa_MapBattleBoxGfx3:   @ 0x089AD74C
    .incbin "graphics/misc/Tsa_MapBattleBoxGfx3.tsa.lz"

	.global Img_MapBattleInfoHpBar
Img_MapBattleInfoHpBar:  @ 0x089AD78C
	.incbin "graphics/misc/Img_MapBattleInfoHpBar.4bpp.lz"

	.global Img_MapBattleInfoNum
Img_MapBattleInfoNum:  @ 0x089AD868
	.incbin "graphics/misc/Img_MapBattleInfoNum.4bpp.lz"

	.global Tsa_ShopWindows
Tsa_ShopWindows:  @ 0x089AD934
	.incbin "graphics/misc/Tsa_ShopWindows.tsa.lz"

	.global Img_ShopGoldBox
Img_ShopGoldBox:  @ 0x089AD9F8
	.incbin "graphics/misc/Img_ShopGoldBox.4bpp.lz"

	.global Img_WallBreakAnim
Img_WallBreakAnim:  @ 0x089ADA80
    .incbin "graphics/misc/Img_WallBreakAnim.4bpp.lz"

	.global Pal_WallBreakAnim
Pal_WallBreakAnim:  @ 0x089ADD0C
	.incbin "graphics/misc/Pal_WallBreakAnim.gbapal"

	.global Img_GmapSoguSprites
Img_GmapSoguSprites:  @ 0x089ADD4C
	.incbin "graphics/misc/Img_GmapSoguSprites.4bpp.lz"

	.global Img_PoisonAnim
Img_PoisonAnim:  @ 0x089ADEB0
	.incbin "graphics/misc/Img_PoisonAnim.4bpp.lz"

	.global Pal_PoisonAnim
Pal_PoisonAnim:  @ 0x089AE204
	.incbin "graphics/misc/Pal_PoisonAnim.gbapal"

	.global Img_LinkArenaWarpFx
Img_LinkArenaWarpFx:  @ 0x089AE224
	.incbin "graphics/misc/Img_LinkArenaWarpFx.4bpp.lz"

	.global Pal_LinkArenaWarpFx
Pal_LinkArenaWarpFx:  @ 0x089AE484
	.incbin "dump/data_9A31F8_9AE484.bin"

	.global gUnknown_089AE4A4
gUnknown_089AE4A4:  @ 0x089AE4A4
	.incbin "graphics/misc/gUnknown_089AE4A4.4bpp"

	.global Img_089AE7A4
Img_089AE7A4:  @ 0x089AE7A4
	.incbin "graphics/misc/Img_089AE7A4.4bpp.lz"

	.global Pal_089AE7C4
Pal_089AE7C4:  @ 0x089AE7C4
	.incbin "dump/data_9A31F8_9AE7C4.bin"

	.global Img_MapAnimAntitoxinPureWater
Img_MapAnimAntitoxinPureWater:  @ 0x089AE804
	.incbin "graphics/misc/Img_MapAnimAntitoxinPureWater.4bpp.lz"

	.global gUnknown_089AF310
gUnknown_089AF310:  @ 0x089AF310
	.incbin "graphics/misc/gUnknown_089AF310.4bpp"

	.global Pal_MapAnimPureWater
Pal_MapAnimPureWater:  @ 0x089AF910
	.incbin "dump/data_9A31F8_9AF910.bin"

	.global Pal_MapAnimAntitoxin
Pal_MapAnimAntitoxin:  @ 0x089AF930
	.incbin "dump/data_9A31F8_9AF930.bin"

	.global gUnknown_089AF950
gUnknown_089AF950:  @ 0x089AF950
	.incbin "graphics/misc/gUnknown_089AF950.4bpp.lz"

	.global gUnknown_089AFAC4
gUnknown_089AFAC4:  @ 0x089AFAC4
	.incbin "graphics/misc/gUnknown_089AFAC4.4bpp.lz"

	.global gUnknown_089AFCBC
gUnknown_089AFCBC:  @ 0x089AFCBC
	.incbin "graphics/misc/gUnknown_089AFCBC.4bpp.lz"

	.global Pal_089AFF78
Pal_089AFF78:  @ 0x089AFF78
	.incbin "dump/data_9A31F8_9AFF78.bin"

	.global Pal_089AFFB8
Pal_089AFFB8:  @ 0x089AFFB8
	.incbin "graphics/misc/Pal_089AFFB8.gbapal"

	.global gUnknown_089AFFF8
gUnknown_089AFFF8:  @ 0x089AFFF8
    .incbin "graphics/misc/gUnknown_089AFFF8.4bpp.lz"

	.global Img_MapAnimTorchfx
Img_MapAnimTorchfx:  @ 0x089B03D4
	.incbin "graphics/misc/Img_MapAnimTorchfx.4bpp.lz"

	.global Pal_MapAnimTorchfx
Pal_MapAnimTorchfx:  @ 0x089B068C
	.incbin "dump/data_9A31F8_9B068C.bin"

	.global Img_MapAnimUnlockObjfx
Img_MapAnimUnlockObjfx:  @ 0x089B06AC
	.incbin "graphics/misc/Img_MapAnimUnlockObjfx.4bpp.lz"

	.global Pal_MapAnimUnlockObjfx
Pal_MapAnimUnlockObjfx:  @ 0x089B0700
	.incbin "dump/data_9A31F8_9B0700.bin"

	.global Img_MapAnimUnlockBgfx
Img_MapAnimUnlockBgfx:  @ 0x089B0720
	.incbin "graphics/misc/Img_MapAnimUnlockBgfx.4bpp.lz"

	.global Pal_MapAnimUnlockObjfx_Unk
Pal_MapAnimUnlockObjfx_Unk:  @ 0x089B0820
	.incbin "dump/data_9A31F8_9B0820.bin"

	.global Tsa_MapAnimUnlockBgfx
Tsa_MapAnimUnlockBgfx:  @ 0x089B0840
    .incbin "dump/data_9A31F8_9B0840.bin"

	.global Tsa_089B0864
Tsa_089B0864:  @ 0x089B0864
	.incbin "dump/data_9A31F8_9B0864.bin"

	.global Img_MapAnimRepairfx
Img_MapAnimRepairfx:  @ 0x089B0AD0
	.incbin "graphics/misc/Img_MapAnimRepairfx.4bpp.lz"

	.global Tsa_089B17A4
Tsa_089B17A4:  @ 0x089B17A4
	.incbin "dump/data_9A31F8_9B17A4.bin"

	.global ApConf_MapAnimSleep
ApConf_MapAnimSleep:  @ 0x089B1A10
	.incbin "graphics/misc/ApConf_MapAnimSleep.4bpp"

	.global Img_MapAnimBerserkfx
Img_MapAnimBerserkfx:  @ 0x089B1E10
	.incbin "graphics/misc/Img_MapAnimBerserkfx.4bpp.lz"

	.global Pal_MapAnimBerserkfx
Pal_MapAnimBerserkfx:  @ 0x089B20E8
	.incbin "graphics/misc/Pal_MapAnimBerserkfx.gbapal"

	.global ApConf_MapAnimBerserkfx
ApConf_MapAnimBerserkfx:  @ 0x089B2108
	.incbin "dump/data_9A31F8_9B2108.bin"

	.global Img_ManimSilenceObjfx
Img_ManimSilenceObjfx:  @ 0x089B21D8
	.incbin "graphics/misc/Img_ManimSilenceObjfx.4bpp.lz"

	.global Img_ManimSilenceBgfx
Img_ManimSilenceBgfx:  @ 0x089B2618
    .incbin "graphics/misc/Img_ManimSilenceBgfx.4bpp.lz"

	.global Pal_ManimSilencefx
Pal_ManimSilencefx:  @ 0x089B2728
	.incbin "graphics/misc/Pal_ManimSilencefx.gbapal"

	.global ApConf_ManimSilencefx
ApConf_ManimSilencefx:  @ 0x089B2748
	.incbin "dump/data_9A31F8_9B2748.bin"

	.global Img_ManimBarrierBgfx
Img_ManimBarrierBgfx:  @ 0x089B2880
	.incbin "graphics/misc/Img_ManimBarrierBgfx.4bpp.lz"

	.global Tsa_089B343C
Tsa_089B343C:  @ 0x089B343C
	.incbin "dump/data_9A31F8_9B343C.bin"

	.global Img_NightMareMapAnimfx
Img_NightMareMapAnimfx:  @ 0x089B35D0
	.incbin "graphics/misc/Img_NightMareMapAnimfx.4bpp.lz"

	.global Pal_NightMareMapAnimfx
Pal_NightMareMapAnimfx:  @ 0x089B4BFC
    .incbin "graphics/misc/Pal_NightMareMapAnimfx.gbapal"

.global Tsa_NightMareMapAnimfx1
Tsa_NightMareMapAnimfx1:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx1.tsa.lz"

.global Tsa_NightMareMapAnimfx2
Tsa_NightMareMapAnimfx2:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx2.tsa.lz"

.global Tsa_NightMareMapAnimfx3
Tsa_NightMareMapAnimfx3:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx3.tsa.lz"

.global Tsa_NightMareMapAnimfx4
Tsa_NightMareMapAnimfx4:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx4.tsa.lz"

.global Tsa_NightMareMapAnimfx5
Tsa_NightMareMapAnimfx5:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx5.tsa.lz"

.global Tsa_NightMareMapAnimfx6
Tsa_NightMareMapAnimfx6:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx6.tsa.lz"

.global Tsa_NightMareMapAnimfx7
Tsa_NightMareMapAnimfx7:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx7.tsa.lz"

.global Tsa_NightMareMapAnimfx8
Tsa_NightMareMapAnimfx8:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx8.tsa.lz"

.global Tsa_NightMareMapAnimfx9
Tsa_NightMareMapAnimfx9:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx9.tsa.lz"

.global Tsa_NightMareMapAnimfx10
Tsa_NightMareMapAnimfx10:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx10.tsa.lz"

.global Tsa_NightMareMapAnimfx11
Tsa_NightMareMapAnimfx11:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx11.tsa.lz"

.global Tsa_NightMareMapAnimfx12
Tsa_NightMareMapAnimfx12:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx12.tsa.lz"

.global Tsa_NightMareMapAnimfx13
Tsa_NightMareMapAnimfx13:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx13.tsa.lz"

.global Tsa_NightMareMapAnimfx14
Tsa_NightMareMapAnimfx14:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx14.tsa.lz"

.global Tsa_NightMareMapAnimfx15
Tsa_NightMareMapAnimfx15:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx15.tsa.lz"

.global Tsa_NightMareMapAnimfx16
Tsa_NightMareMapAnimfx16:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx16.tsa.lz"

.global Tsa_NightMareMapAnimfx17
Tsa_NightMareMapAnimfx17:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx17.tsa.lz"

.global Tsa_NightMareMapAnimfx18
Tsa_NightMareMapAnimfx18:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx18.tsa.lz"

.global Tsa_NightMareMapAnimfx19
Tsa_NightMareMapAnimfx19:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx19.tsa.lz"

.global Tsa_NightMareMapAnimfx20
Tsa_NightMareMapAnimfx20:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx20.tsa.lz"

.global Tsa_NightMareMapAnimfx21
Tsa_NightMareMapAnimfx21:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx21.tsa.lz"

.global Tsa_NightMareMapAnimfx22
Tsa_NightMareMapAnimfx22:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx22.tsa.lz"

.global Tsa_NightMareMapAnimfx23
Tsa_NightMareMapAnimfx23:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx23.tsa.lz"

.global Tsa_NightMareMapAnimfx24
Tsa_NightMareMapAnimfx24:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx24.tsa.lz"

.global Tsa_NightMareMapAnimfx25
Tsa_NightMareMapAnimfx25:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx25.tsa.lz"

.global Tsa_NightMareMapAnimfx26
Tsa_NightMareMapAnimfx26:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx26.tsa.lz"

.global Tsa_NightMareMapAnimfx27
Tsa_NightMareMapAnimfx27:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx27.tsa.lz"

.global Tsa_NightMareMapAnimfx28
Tsa_NightMareMapAnimfx28:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx28.tsa.lz"

.global Tsa_NightMareMapAnimfx29
Tsa_NightMareMapAnimfx29:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx29.tsa.lz"

.global Tsa_NightMareMapAnimfx30
Tsa_NightMareMapAnimfx30:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx30.tsa.lz"

.global Tsa_NightMareMapAnimfx31
Tsa_NightMareMapAnimfx31:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx31.tsa.lz"

.global Tsa_NightMareMapAnimfx32
Tsa_NightMareMapAnimfx32:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx32.tsa.lz"

.global Tsa_NightMareMapAnimfx33
Tsa_NightMareMapAnimfx33:
	.incbin "graphics/misc/Tsa_NightMareMapAnimfx33.tsa.lz"

	.global Img_MonsterStoneMapAnimfx
Img_MonsterStoneMapAnimfx:  @ 0x089B6AA0
	.incbin "graphics/misc/Img_MonsterStoneMapAnimfx.4bpp.lz"

	.global Pal_MonsterStoneMapAnimfx
Pal_MonsterStoneMapAnimfx:  @ 0x089B73D4
	.incbin "graphics/misc/Pal_MonsterStoneMapAnimfx.gbapal"

	.global Tsa1_MonsterStoneMapAnimfx
Tsa1_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa1_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa2_MonsterStoneMapAnimfx
Tsa2_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa2_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa3_MonsterStoneMapAnimfx
Tsa3_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa3_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa4_MonsterStoneMapAnimfx
Tsa4_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa4_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa5_MonsterStoneMapAnimfx
Tsa5_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa5_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa6_MonsterStoneMapAnimfx
Tsa6_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa6_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa7_MonsterStoneMapAnimfx
Tsa7_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa7_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa8_MonsterStoneMapAnimfx
Tsa8_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa8_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa9_MonsterStoneMapAnimfx
Tsa9_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa9_MonsterStoneMapAnimfx.tsa.lz"

	.global Tsa10_MonsterStoneMapAnimfx
Tsa10_MonsterStoneMapAnimfx:
	.incbin "graphics/misc/Tsa10_MonsterStoneMapAnimfx.tsa.lz"

	.global Img_GorgonHatchCloud
Img_GorgonHatchCloud:  @ 0x089B7610
	.incbin "graphics/misc/Img_GorgonHatchCloud.4bpp.lz"

	.global Pal_GorgonHatchCloud
Pal_GorgonHatchCloud:  @ 0x089B80C4
	.incbin "graphics/misc/Pal_GorgonHatchCloud.gbapal"

	.global Tsa_GorgonHatchCloud_A
Tsa_GorgonHatchCloud_A:  @ 0x089B80E4
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_A.tsa.lz"

	.global Tsa_GorgonHatchCloud_B
Tsa_GorgonHatchCloud_B:  @ 0x089B8140
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_B.tsa.lz"

	.global Tsa_GorgonHatchCloud_C
Tsa_GorgonHatchCloud_C:  @ 0x089B81A4
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_C.tsa.lz"

	.global Tsa_GorgonHatchCloud_D
Tsa_GorgonHatchCloud_D:  @ 0x089B8214
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_D.tsa.lz"

	.global Tsa_GorgonHatchCloud_E
Tsa_GorgonHatchCloud_E:  @ 0x089B828C
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_E.tsa.lz"

	.global Tsa_GorgonHatchCloud_F
Tsa_GorgonHatchCloud_F:  @ 0x089B82F0
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_F.tsa.lz"

	.global Tsa_GorgonHatchCloud_G
Tsa_GorgonHatchCloud_G:  @ 0x089B835C
	.incbin "graphics/misc/Tsa_GorgonHatchCloud_G.tsa.lz"@ 0x9B83C0 - 0x9B835C

	.global gUnknown_089B83C0
gUnknown_089B83C0:  @ 0x089B83C0
	.incbin "graphics/misc/gUnknown_089B83C0.4bpp.lz"@ 0x9B89C4 - 0x9B83C0

	.global gUnknown_089B89C4
gUnknown_089B89C4:  @ 0x089B89C4
	.incbin "graphics/misc/gUnknown_089B89C4.4bpp.lz"@ 0x9B90D8 - 0x9B89C4

	.global gUnknown_089B90D8
gUnknown_089B90D8:  @ 0x089B90D8
	.incbin "graphics/misc/gUnknown_089B90D8.4bpp.lz"@ 0x9B98DC - 0x9B90D8

	.global gUnknown_089B98DC
gUnknown_089B98DC:  @ 0x089B98DC
	.incbin "graphics/misc/gUnknown_089B98DC.4bpp.lz"@ 0x9BA190 - 0x9B98DC

	.global gUnknown_089BA190
gUnknown_089BA190:  @ 0x089BA190
	.incbin "graphics/misc/gUnknown_089BA190.4bpp.lz"@ 0x9BA9D8 - 0x9BA190

	.global gUnknown_089BA9D8
gUnknown_089BA9D8:  @ 0x089BA9D8
	.incbin "graphics/misc/gUnknown_089BA9D8.4bpp.lz"@ 0x9BB2C8 - 0x9BA9D8

	.global gUnknown_089BB2C8
gUnknown_089BB2C8:  @ 0x089BB2C8
	.incbin "graphics/misc/gUnknown_089BB2C8.4bpp.lz"@ 0x9BBD68 - 0x9BB2C8

	.global gUnknown_089BBD68
gUnknown_089BBD68:  @ 0x089BBD68
	.incbin "graphics/misc/gUnknown_089BBD68.4bpp.lz"@ 0x9BC884 - 0x9BBD68

	.global gUnknown_089BC884
gUnknown_089BC884:  @ 0x089BC884
	.incbin "graphics/misc/gUnknown_089BC884.4bpp.lz"@ 0x9BD3B4 - 0x9BC884

	.global gUnknown_089BD3B4
gUnknown_089BD3B4:  @ 0x089BD3B4
	.incbin "graphics/misc/gUnknown_089BD3B4.4bpp.lz"@ 0x9BDEE8 - 0x9BD3B4

	.global gUnknown_089BDEE8
gUnknown_089BDEE8:  @ 0x089BDEE8
	.incbin "graphics/misc/gUnknown_089BDEE8.4bpp.lz"@ 0x9BEA90 - 0x9BDEE8

	.global gUnknown_089BEA90
gUnknown_089BEA90:  @ 0x089BEA90
	.incbin "graphics/misc/gUnknown_089BEA90.4bpp.lz"@ 0x9BF5FC - 0x9BEA90

	.global gUnknown_089BF5FC
gUnknown_089BF5FC:  @ 0x089BF5FC
	.incbin "graphics/misc/gUnknown_089BF5FC.4bpp.lz"@ 0x9BFF64 - 0x9BF5FC

	.global gUnknown_089BFF64
gUnknown_089BFF64:  @ 0x089BFF64
	.incbin "graphics/misc/gUnknown_089BFF64.4bpp.lz"@ 0x9C08C0 - 0x9BFF64

	.global gUnknown_089C08C0
gUnknown_089C08C0:  @ 0x089C08C0
	.incbin "graphics/misc/gUnknown_089C08C0.4bpp.lz"@ 0x9C1190 - 0x9C08C0

	.global gUnknown_089C1190
gUnknown_089C1190:  @ 0x089C1190
	.incbin "graphics/misc/gUnknown_089C1190.4bpp.lz"@ 0x9C1BA8 - 0x9C1190

	.global gUnknown_089C1BA8
gUnknown_089C1BA8:  @ 0x089C1BA8
	.incbin "graphics/misc/gUnknown_089C1BA8.4bpp.lz"@ 0x9C247C - 0x9C1BA8

	.global gUnknown_089C247C
gUnknown_089C247C:  @ 0x089C247C
	.incbin "graphics/misc/gUnknown_089C247C.4bpp.lz"@ 0x9C2BF0 - 0x9C247C

	.global gUnknown_089C2BF0
gUnknown_089C2BF0:  @ 0x089C2BF0
	.incbin "graphics/misc/gUnknown_089C2BF0.4bpp.lz"@ 0x9C32A4 - 0x9C2BF0

	.global gUnknown_089C32A4
gUnknown_089C32A4:  @ 0x089C32A4
	.incbin "graphics/misc/gUnknown_089C32A4.4bpp.lz"@ 0x9C39A8 - 0x9C32A4

	.global gUnknown_089C39A8
gUnknown_089C39A8:  @ 0x089C39A8
	.incbin "graphics/misc/gUnknown_089C39A8.4bpp.lz"@ 0x9C3EE8 - 0x9C39A8

	.global gUnknown_089C3EE8
gUnknown_089C3EE8:  @ 0x089C3EE8
	.incbin "graphics/misc/gUnknown_089C3EE8.4bpp.lz"@ 0x9C447C - 0x9C3EE8

	.global gUnknown_089C447C
gUnknown_089C447C:  @ 0x089C447C
	.incbin "graphics/misc/gUnknown_089C447C.4bpp.lz"@ 0x9C4834 - 0x9C447C

	.global gUnknown_089C4834
gUnknown_089C4834:  @ 0x089C4834
	.incbin "graphics/misc/gUnknown_089C4834.4bpp.lz"@ 0x9C48E0 - 0x9C4834

	.global gUnknown_089C48E0
gUnknown_089C48E0:  @ 0x089C48E0
	.incbin "graphics/misc/gUnknown_089C48E0.4bpp.lz"@ 0x9C495C - 0x9C48E0

	.global gUnknown_089C495C
gUnknown_089C495C:  @ 0x089C495C
	.incbin "graphics/misc/gUnknown_089C495C.4bpp.lz"@ 0x9C49CC - 0x9C495C

	.global gUnknown_089C49CC
gUnknown_089C49CC:  @ 0x089C49CC
	.incbin "graphics/misc/gUnknown_089C49CC.4bpp.lz"@ 0x9C4E38 - 0x9C49CC

	.global gUnknown_089C4E38
gUnknown_089C4E38:  @ 0x089C4E38
	.incbin "graphics/misc/gUnknown_089C4E38.4bpp.lz"@ 0x9C5328 - 0x9C4E38

	.global gUnknown_089C5328
gUnknown_089C5328:  @ 0x089C5328
	.incbin "graphics/misc/gUnknown_089C5328.4bpp.lz"@ 0x9C5674 - 0x9C5328

	.global gUnknown_089C5674
gUnknown_089C5674:  @ 0x089C5674
	.incbin "graphics/misc/gUnknown_089C5674.4bpp.lz"@ 0x9C5734 - 0x9C5674

	.global gUnknown_089C5734
gUnknown_089C5734:  @ 0x089C5734
	.incbin "graphics/misc/gUnknown_089C5734.4bpp.lz"@ 0x9C57D8 - 0x9C5734

	.global gUnknown_089C57D8
gUnknown_089C57D8:  @ 0x089C57D8
	.incbin "graphics/misc/gUnknown_089C57D8.4bpp.lz"@ 0x9C5F70 - 0x9C57D8

	.global gUnknown_089C5F70
gUnknown_089C5F70:  @ 0x089C5F70
	.incbin "graphics/misc/gUnknown_089C5F70.4bpp.lz"@ 0x9C65EC - 0x9C5F70

	.global gUnknown_089C65EC
gUnknown_089C65EC:  @ 0x089C65EC
	.incbin "graphics/misc/gUnknown_089C65EC.4bpp.lz"@ 0x9C6A58 - 0x9C65EC

	.global gUnknown_089C6A58
gUnknown_089C6A58:  @ 0x089C6A58
	.incbin "graphics/misc/gUnknown_089C6A58.4bpp.lz"@ 0x9C6B20 - 0x9C6A58

	.global gUnknown_089C6B20
gUnknown_089C6B20:  @ 0x089C6B20
	.incbin "graphics/misc/gUnknown_089C6B20.4bpp.lz"@ 0x9C727C - 0x9C6B20

	.global gUnknown_089C727C
gUnknown_089C727C:  @ 0x089C727C
	.incbin "graphics/misc/gUnknown_089C727C.4bpp.lz"@ 0x9C7A2C - 0x9C727C

	.global gUnknown_089C7A2C
gUnknown_089C7A2C:  @ 0x089C7A2C
	.incbin "graphics/misc/gUnknown_089C7A2C.4bpp.lz"@ 0x9C8440 - 0x9C7A2C

	.global gUnknown_089C8440
gUnknown_089C8440:  @ 0x089C8440
	.incbin "graphics/misc/gUnknown_089C8440.4bpp.lz"@ 0x9C8DC4 - 0x9C8440

	.global gUnknown_089C8DC4
gUnknown_089C8DC4:  @ 0x089C8DC4
	.incbin "graphics/misc/gUnknown_089C8DC4.4bpp.lz"@ 0x9C9A44 - 0x9C8DC4

	.global gUnknown_089C9A44
gUnknown_089C9A44:  @ 0x089C9A44
	.incbin "graphics/misc/gUnknown_089C9A44.4bpp.lz"@ 0x9CA444 - 0x9C9A44

	.global gUnknown_089CA444
gUnknown_089CA444:  @ 0x089CA444
	.incbin "graphics/misc/gUnknown_089CA444.4bpp.lz"@ 0x9CAA10 - 0x9CA444

	.global gUnknown_089CAA10
gUnknown_089CAA10:  @ 0x089CAA10
	.incbin "graphics/misc/gUnknown_089CAA10.4bpp.lz"@ 0x9CB7B0 - 0x9CAA10

	.global gUnknown_089CB7B0
gUnknown_089CB7B0:  @ 0x089CB7B0
	.incbin "graphics/misc/gUnknown_089CB7B0.4bpp.lz"@ 0x9CCA28 - 0x9CB7B0

	.global gUnknown_089CCA28
gUnknown_089CCA28:  @ 0x089CCA28
	.incbin "graphics/misc/gUnknown_089CCA28.4bpp.lz"@ 0x9CCE8C - 0x9CCA28

	.global gUnknown_089CCE8C
gUnknown_089CCE8C:  @ 0x089CCE8C
	.incbin "graphics/misc/gUnknown_089CCE8C.4bpp.lz"@ 0x9CD650 - 0x9CCE8C

	.global gUnknown_089CD650
gUnknown_089CD650:  @ 0x089CD650
	.incbin "graphics/misc/gUnknown_089CD650.4bpp.lz"@ 0x9CE038 - 0x9CD650

	.global gUnknown_089CE038
gUnknown_089CE038:  @ 0x089CE038
	.incbin "graphics/misc/gUnknown_089CE038.4bpp.lz"@ 0x9CEB94 - 0x9CE038

	.global gUnknown_089CEB94
gUnknown_089CEB94:  @ 0x089CEB94
	.incbin "graphics/misc/gUnknown_089CEB94.4bpp.lz"@ 0x9CF7C0 - 0x9CEB94

	.global gUnknown_089CF7C0
gUnknown_089CF7C0:  @ 0x089CF7C0
	.incbin "graphics/misc/gUnknown_089CF7C0.4bpp.lz"@ 0x9D038C - 0x9CF7C0

	.global gUnknown_089D038C
gUnknown_089D038C:  @ 0x089D038C
	.incbin "graphics/misc/gUnknown_089D038C.4bpp.lz"@ 0x9D0E08 - 0x9D038C

	.global gUnknown_089D0E08
gUnknown_089D0E08:  @ 0x089D0E08
	.incbin "graphics/misc/gUnknown_089D0E08.4bpp.lz"@ 0x9D1648 - 0x9D0E08

	.global gUnknown_089D1648
gUnknown_089D1648:  @ 0x089D1648
	.incbin "graphics/misc/gUnknown_089D1648.4bpp.lz"@ 0x9D1CA4 - 0x9D1648

	.global gUnknown_089D1CA4
gUnknown_089D1CA4:  @ 0x089D1CA4
	.incbin "graphics/misc/gUnknown_089D1CA4.4bpp.lz"@ 0x9D20E0 - 0x9D1CA4

	.global gUnknown_089D20E0
gUnknown_089D20E0:  @ 0x089D20E0
	.incbin "graphics/misc/gUnknown_089D20E0.4bpp.lz"@ 0x9D230C - 0x9D20E0

	.global gUnknown_089D230C
gUnknown_089D230C:  @ 0x089D230C
	.incbin "graphics/misc/gUnknown_089D230C.4bpp.lz"@ 0x9D23D8 - 0x9D230C

	.global gUnknown_089D23D8
gUnknown_089D23D8:  @ 0x089D23D8
	.incbin "graphics/misc/gUnknown_089D23D8.4bpp"@ 0x9D23F8 - 0x9D23D8

	.global gUnknown_089D23F8
gUnknown_089D23F8:  @ 0x089D23F8
	.incbin "graphics/misc/gUnknown_089D23F8.4bpp"@ 0x9D2418 - 0x9D23F8

	.global gUnknown_089D2418
gUnknown_089D2418:  @ 0x089D2418
	.incbin "graphics/misc/gUnknown_089D2418.4bpp"@ 0x9D2438 - 0x9D2418

	.global gUnknown_089D2438
gUnknown_089D2438:  @ 0x089D2438
	.incbin "graphics/misc/gUnknown_089D2438.4bpp"@ 0x9D2458 - 0x9D2438

	.global gUnknown_089D2458
gUnknown_089D2458:  @ 0x089D2458
	.incbin "graphics/misc/gUnknown_089D2458.4bpp"@ 0x9D2478 - 0x9D2458

	.global gUnknown_089D2478
gUnknown_089D2478:  @ 0x089D2478
	.incbin "graphics/misc/gUnknown_089D2478.4bpp"@ 0x9D2498 - 0x9D2478

	.global gUnknown_089D2498
gUnknown_089D2498:  @ 0x089D2498
	.incbin "graphics/misc/gUnknown_089D2498.4bpp"@ 0x9D24B8 - 0x9D2498

	.global gUnknown_089D24B8
gUnknown_089D24B8:  @ 0x089D24B8
	.incbin "graphics/misc/gUnknown_089D24B8.4bpp"@ 0x9D24D8 - 0x9D24B8

	.global gUnknown_089D24D8
gUnknown_089D24D8:  @ 0x089D24D8
	.incbin "graphics/misc/gUnknown_089D24D8.4bpp"@ 0x9D24F8 - 0x9D24D8

	.global gUnknown_089D24F8
gUnknown_089D24F8:  @ 0x089D24F8
	.incbin "graphics/misc/gUnknown_089D24F8.4bpp"@ 0x9D2518 - 0x9D24F8

	.global gUnknown_089D2518
gUnknown_089D2518:  @ 0x089D2518
	.incbin "graphics/misc/gUnknown_089D2518.4bpp"@ 0x9D2538 - 0x9D2518

	.global gUnknown_089D2538
gUnknown_089D2538:  @ 0x089D2538
	.incbin "graphics/misc/gUnknown_089D2538.4bpp"@ 0x9D2558 - 0x9D2538

	.global gUnknown_089D2558
gUnknown_089D2558:  @ 0x089D2558
	.incbin "graphics/misc/gUnknown_089D2558.4bpp"@ 0x9D2578 - 0x9D2558

	.global gUnknown_089D2578
gUnknown_089D2578:  @ 0x089D2578
	.incbin "graphics/misc/gUnknown_089D2578.4bpp"@ 0x9D2598 - 0x9D2578

	.global gUnknown_089D2598
gUnknown_089D2598:  @ 0x089D2598
	.incbin "graphics/misc/gUnknown_089D2598.4bpp"@ 0x9D25B8 - 0x9D2598

	.global gUnknown_089D25B8
gUnknown_089D25B8:  @ 0x089D25B8
	.incbin "graphics/misc/gUnknown_089D25B8.4bpp"@ 0x9D25D8 - 0x9D25B8

	.global gUnknown_089D25D8
gUnknown_089D25D8:  @ 0x089D25D8
	.incbin "graphics/misc/gUnknown_089D25D8.4bpp"@ 0x9D25F8 - 0x9D25D8

	.global gUnknown_089D25F8
gUnknown_089D25F8:  @ 0x089D25F8
	.incbin "graphics/misc/gUnknown_089D25F8.4bpp"@ 0x9D2618 - 0x9D25F8

	.global gUnknown_089D2618
gUnknown_089D2618:  @ 0x089D2618
	.incbin "graphics/misc/gUnknown_089D2618.4bpp"@ 0x9D2638 - 0x9D2618

	.global gUnknown_089D2638
gUnknown_089D2638:  @ 0x089D2638
	.incbin "graphics/misc/gUnknown_089D2638.4bpp"@ 0x9D2658 - 0x9D2638

	.global gUnknown_089D2658
gUnknown_089D2658:  @ 0x089D2658
	.incbin "graphics/misc/gUnknown_089D2658.4bpp"@ 0x9D2678 - 0x9D2658

	.global gUnknown_089D2678
gUnknown_089D2678:  @ 0x089D2678
	.incbin "graphics/misc/gUnknown_089D2678.4bpp"@ 0x9D2698 - 0x9D2678

	.global gUnknown_089D2698
gUnknown_089D2698:  @ 0x089D2698
	.incbin "graphics/misc/gUnknown_089D2698.4bpp"@ 0x9D26B8 - 0x9D2698

	.global gUnknown_089D26B8
gUnknown_089D26B8:  @ 0x089D26B8
	.incbin "graphics/misc/gUnknown_089D26B8.4bpp"@ 0x9D26D8 - 0x9D26B8

	.global gUnknown_089D26D8
gUnknown_089D26D8:  @ 0x089D26D8
	.incbin "graphics/misc/gUnknown_089D26D8.4bpp"@ 0x9D26F8 - 0x9D26D8

	.global gUnknown_089D26F8
gUnknown_089D26F8:  @ 0x089D26F8
	.incbin "graphics/misc/gUnknown_089D26F8.4bpp"@ 0x9D2718 - 0x9D26F8

	.global gUnknown_089D2718
gUnknown_089D2718:  @ 0x089D2718
	.incbin "graphics/misc/gUnknown_089D2718.4bpp"@ 0x9D2738 - 0x9D2718

	.global gUnknown_089D2738
gUnknown_089D2738:  @ 0x089D2738
	.incbin "graphics/misc/gUnknown_089D2738.4bpp"@ 0x9D2758 - 0x9D2738

	.global gUnknown_089D2758
gUnknown_089D2758:  @ 0x089D2758
	.incbin "graphics/misc/gUnknown_089D2758.4bpp"@ 0x9D2778 - 0x9D2758

	.global gUnknown_089D2778
gUnknown_089D2778:  @ 0x089D2778
	.incbin "graphics/misc/gUnknown_089D2778.4bpp"@ 0x9D2798 - 0x9D2778

	.global gUnknown_089D2798
gUnknown_089D2798:  @ 0x089D2798
	.incbin "graphics/misc/gUnknown_089D2798.4bpp"@ 0x9D27B8 - 0x9D2798

	.global gUnknown_089D27B8
gUnknown_089D27B8:  @ 0x089D27B8
	.incbin "graphics/misc/gUnknown_089D27B8.4bpp"@ 0x9D27D8 - 0x9D27B8

	.global gUnknown_089D27D8
gUnknown_089D27D8:  @ 0x089D27D8
	.incbin "graphics/misc/gUnknown_089D27D8.4bpp"@ 0x9D27F8 - 0x9D27D8

	.global gUnknown_089D27F8
gUnknown_089D27F8:  @ 0x089D27F8
	.incbin "graphics/misc/gUnknown_089D27F8.4bpp"@ 0x9D2818 - 0x9D27F8

	.global gUnknown_089D2818
gUnknown_089D2818:  @ 0x089D2818
	.incbin "graphics/misc/gUnknown_089D2818.4bpp"@ 0x9D2838 - 0x9D2818

	.global gUnknown_089D2838
gUnknown_089D2838:  @ 0x089D2838
	.incbin "graphics/misc/gUnknown_089D2838.4bpp"@ 0x9D2858 - 0x9D2838

	.global gUnknown_089D2858
gUnknown_089D2858:  @ 0x089D2858
	.incbin "graphics/misc/gUnknown_089D2858.4bpp"@ 0x9D2878 - 0x9D2858

	.global gUnknown_089D2878
gUnknown_089D2878:  @ 0x089D2878
	.incbin "graphics/misc/gUnknown_089D2878.4bpp"@ 0x9D2898 - 0x9D2878

	.global gUnknown_089D2898
gUnknown_089D2898:  @ 0x089D2898
	.incbin "graphics/misc/gUnknown_089D2898.4bpp"@ 0x9D28B8 - 0x9D2898

	.global gUnknown_089D28B8
gUnknown_089D28B8:  @ 0x089D28B8
	.incbin "graphics/misc/gUnknown_089D28B8.4bpp"@ 0x9D28D8 - 0x9D28B8

	.global gUnknown_089D28D8
gUnknown_089D28D8:  @ 0x089D28D8
	.incbin "graphics/misc/gUnknown_089D28D8.4bpp"@ 0x9D28F8 - 0x9D28D8

	.global gUnknown_089D28F8
gUnknown_089D28F8:  @ 0x089D28F8
	.incbin "graphics/misc/gUnknown_089D28F8.4bpp"@ 0x9D2918 - 0x9D28F8

	.global gUnknown_089D2918
gUnknown_089D2918:  @ 0x089D2918
	.incbin "graphics/misc/gUnknown_089D2918.4bpp"@ 0x9D2938 - 0x9D2918

	.global gUnknown_089D2938
gUnknown_089D2938:  @ 0x089D2938
	.incbin "graphics/misc/gUnknown_089D2938.4bpp"@ 0x9D2958 - 0x9D2938

	.global gUnknown_089D2958
gUnknown_089D2958:  @ 0x089D2958
	.incbin "graphics/misc/gUnknown_089D2958.4bpp"@ 0x9D2978 - 0x9D2958

	.global gUnknown_089D2978
gUnknown_089D2978:  @ 0x089D2978
	.incbin "graphics/misc/gUnknown_089D2978.4bpp"@ 0x9D2998 - 0x9D2978

	.global gUnknown_089D2998
gUnknown_089D2998:  @ 0x089D2998
	.incbin "graphics/misc/gUnknown_089D2998.4bpp"@ 0x9D29B8 - 0x9D2998

	.global gUnknown_089D29B8
gUnknown_089D29B8:  @ 0x089D29B8
	.incbin "graphics/misc/gUnknown_089D29B8.4bpp"@ 0x9D29D8 - 0x9D29B8

	.global gUnknown_089D29D8
gUnknown_089D29D8:  @ 0x089D29D8
	.incbin "graphics/misc/gUnknown_089D29D8.4bpp"@ 0x9D29F8 - 0x9D29D8

	.global gUnknown_089D29F8
gUnknown_089D29F8:  @ 0x089D29F8
	.incbin "graphics/misc/gUnknown_089D29F8.4bpp"@ 0x9D2A18 - 0x9D29F8

	.global gUnknown_089D2A18
gUnknown_089D2A18:  @ 0x089D2A18
	.incbin "graphics/misc/gUnknown_089D2A18.4bpp"@ 0x9D2A38 - 0x9D2A18

	.global gUnknown_089D2A38
gUnknown_089D2A38:  @ 0x089D2A38
	.incbin "graphics/misc/gUnknown_089D2A38.4bpp"@ 0x9D2A58 - 0x9D2A38

	.global gUnknown_089D2A58
gUnknown_089D2A58:  @ 0x089D2A58
	.incbin "graphics/misc/gUnknown_089D2A58.4bpp"@ 0x9D2A78 - 0x9D2A58

	.global gUnknown_089D2A78
gUnknown_089D2A78:  @ 0x089D2A78
	.incbin "graphics/misc/gUnknown_089D2A78.4bpp"@ 0x9D2A98 - 0x9D2A78

	.global gUnknown_089D2A98
gUnknown_089D2A98:  @ 0x089D2A98
	.incbin "graphics/misc/gUnknown_089D2A98.4bpp"@ 0x9D2AB8 - 0x9D2A98

	.global gUnknown_089D2AB8
gUnknown_089D2AB8:  @ 0x089D2AB8
	.incbin "graphics/misc/gUnknown_089D2AB8.4bpp"@ 0x9D2AD8 - 0x9D2AB8

	.global gUnknown_089D2AD8
gUnknown_089D2AD8:  @ 0x089D2AD8
	.incbin "graphics/misc/gUnknown_089D2AD8.tsa.lz"@ 0x9D2C30 - 0x9D2AD8

	.global gUnknown_089D2C30
gUnknown_089D2C30:  @ 0x089D2C30
	.incbin "graphics/misc/gUnknown_089D2C30.tsa.lz"@ 0x9D2DC0 - 0x9D2C30

	.global gUnknown_089D2DC0
gUnknown_089D2DC0:  @ 0x089D2DC0
	.incbin "graphics/misc/gUnknown_089D2DC0.tsa.lz"@ 0x9D2F78 - 0x9D2DC0

	.global gUnknown_089D2F78
gUnknown_089D2F78:  @ 0x089D2F78
	.incbin "graphics/misc/gUnknown_089D2F78.tsa.lz"@ 0x9D3130 - 0x9D2F78

	.global gUnknown_089D3130
gUnknown_089D3130:  @ 0x089D3130
	.incbin "graphics/misc/gUnknown_089D3130.tsa.lz"@ 0x9D32D8 - 0x9D3130

	.global gUnknown_089D32D8
gUnknown_089D32D8:  @ 0x089D32D8
	.incbin "graphics/misc/gUnknown_089D32D8.tsa.lz"@ 0x9D34A0 - 0x9D32D8

	.global gUnknown_089D34A0
gUnknown_089D34A0:  @ 0x089D34A0
	.incbin "graphics/misc/gUnknown_089D34A0.tsa.lz"@ 0x9D36B0 - 0x9D34A0

	.global gUnknown_089D36B0
gUnknown_089D36B0:  @ 0x089D36B0
	.incbin "graphics/misc/gUnknown_089D36B0.tsa.lz"@ 0x9D38CC - 0x9D36B0

	.global gUnknown_089D38CC
gUnknown_089D38CC:  @ 0x089D38CC
	.incbin "graphics/misc/gUnknown_089D38CC.tsa.lz"@ 0x9D3AD4 - 0x9D38CC

	.global gUnknown_089D3AD4
gUnknown_089D3AD4:  @ 0x089D3AD4
	.incbin "graphics/misc/gUnknown_089D3AD4.tsa.lz"@ 0x9D3CF8 - 0x9D3AD4

	.global gUnknown_089D3CF8
gUnknown_089D3CF8:  @ 0x089D3CF8
	.incbin "graphics/misc/gUnknown_089D3CF8.tsa.lz"@ 0x9D3F20 - 0x9D3CF8

	.global gUnknown_089D3F20
gUnknown_089D3F20:  @ 0x089D3F20
	.incbin "graphics/misc/gUnknown_089D3F20.tsa.lz"@ 0x9D4150 - 0x9D3F20

	.global gUnknown_089D4150
gUnknown_089D4150:  @ 0x089D4150
	.incbin "graphics/misc/gUnknown_089D4150.tsa.lz"@ 0x9D432C - 0x9D4150

	.global gUnknown_089D432C
gUnknown_089D432C:  @ 0x089D432C
	.incbin "graphics/misc/gUnknown_089D432C.tsa.lz"@ 0x9D4500 - 0x9D432C

	.global gUnknown_089D4500
gUnknown_089D4500:  @ 0x089D4500
	.incbin "graphics/misc/gUnknown_089D4500.tsa.lz"@ 0x9D46C4 - 0x9D4500

	.global gUnknown_089D46C4
gUnknown_089D46C4:  @ 0x089D46C4
	.incbin "graphics/misc/gUnknown_089D46C4.tsa.lz"@ 0x9D48AC - 0x9D46C4

	.global gUnknown_089D48AC
gUnknown_089D48AC:  @ 0x089D48AC
	.incbin "graphics/misc/gUnknown_089D48AC.tsa.lz"@ 0x9D4A60 - 0x9D48AC

	.global gUnknown_089D4A60
gUnknown_089D4A60:  @ 0x089D4A60
	.incbin "graphics/misc/gUnknown_089D4A60.tsa.lz"@ 0x9D4BFC - 0x9D4A60

	.global gUnknown_089D4BFC
gUnknown_089D4BFC:  @ 0x089D4BFC
	.incbin "graphics/misc/gUnknown_089D4BFC.tsa.lz"@ 0x9D4D74 - 0x9D4BFC

	.global gUnknown_089D4D74
gUnknown_089D4D74:  @ 0x089D4D74
	.incbin "graphics/misc/gUnknown_089D4D74.tsa.lz"@ 0x9D4ECC - 0x9D4D74

	.global gUnknown_089D4ECC
gUnknown_089D4ECC:  @ 0x089D4ECC
	.incbin "graphics/misc/gUnknown_089D4ECC.tsa.lz"@ 0x9D4FDC - 0x9D4ECC

	.global gUnknown_089D4FDC
gUnknown_089D4FDC:  @ 0x089D4FDC
	.incbin "graphics/misc/gUnknown_089D4FDC.tsa.lz"@ 0x9D5100 - 0x9D4FDC

	.global gUnknown_089D5100
gUnknown_089D5100:  @ 0x089D5100
	.incbin "graphics/misc/gUnknown_089D5100.tsa.lz"@ 0x9D5214 - 0x9D5100

	.global gUnknown_089D5214
gUnknown_089D5214:  @ 0x089D5214
	.incbin "graphics/misc/gUnknown_089D5214.tsa.lz"@ 0x9D52D0 - 0x9D5214

	.global gUnknown_089D52D0
gUnknown_089D52D0:  @ 0x089D52D0
	.incbin "graphics/misc/gUnknown_089D52D0.tsa.lz"@ 0x9D538C - 0x9D52D0

	.global gUnknown_089D538C
gUnknown_089D538C:  @ 0x089D538C
	.incbin "graphics/misc/gUnknown_089D538C.tsa.lz"@ 0x9D5440 - 0x9D538C

	.global gUnknown_089D5440
gUnknown_089D5440:  @ 0x089D5440
	.incbin "graphics/misc/gUnknown_089D5440.tsa.lz"@ 0x9D5540 - 0x9D5440

	.global gUnknown_089D5540
gUnknown_089D5540:  @ 0x089D5540
	.incbin "graphics/misc/gUnknown_089D5540.tsa.lz"@ 0x9D5658 - 0x9D5540

	.global gUnknown_089D5658
gUnknown_089D5658:  @ 0x089D5658
	.incbin "graphics/misc/gUnknown_089D5658.tsa.lz"@ 0x9D5764 - 0x9D5658

	.global gUnknown_089D5764
gUnknown_089D5764:  @ 0x089D5764
	.incbin "graphics/misc/gUnknown_089D5764.tsa.lz"@ 0x9D5820 - 0x9D5764

	.global gUnknown_089D5820
gUnknown_089D5820:  @ 0x089D5820
	.incbin "graphics/misc/gUnknown_089D5820.tsa.lz"@ 0x9D58E0 - 0x9D5820

	.global gUnknown_089D58E0
gUnknown_089D58E0:  @ 0x089D58E0
	.incbin "graphics/misc/gUnknown_089D58E0.tsa.lz"@ 0x9D5A20 - 0x9D58E0

	.global gUnknown_089D5A20
gUnknown_089D5A20:  @ 0x089D5A20
	.incbin "graphics/misc/gUnknown_089D5A20.tsa.lz"@ 0x9D5B58 - 0x9D5A20

	.global gUnknown_089D5B58
gUnknown_089D5B58:  @ 0x089D5B58
	.incbin "graphics/misc/gUnknown_089D5B58.tsa.lz"@ 0x9D5C90 - 0x9D5B58

	.global gUnknown_089D5C90
gUnknown_089D5C90:  @ 0x089D5C90
	.incbin "graphics/misc/gUnknown_089D5C90.tsa.lz"@ 0x9D5D4C - 0x9D5C90

	.global gUnknown_089D5D4C
gUnknown_089D5D4C:  @ 0x089D5D4C
	.incbin "graphics/misc/gUnknown_089D5D4C.tsa.lz"@ 0x9D5E9C - 0x9D5D4C

	.global gUnknown_089D5E9C
gUnknown_089D5E9C:  @ 0x089D5E9C
	.incbin "graphics/misc/gUnknown_089D5E9C.tsa.lz"@ 0x9D5FF0 - 0x9D5E9C

	.global gUnknown_089D5FF0
gUnknown_089D5FF0:  @ 0x089D5FF0
	.incbin "graphics/misc/gUnknown_089D5FF0.tsa.lz"@ 0x9D6170 - 0x9D5FF0

	.global gUnknown_089D6170
gUnknown_089D6170:  @ 0x089D6170
	.incbin "graphics/misc/gUnknown_089D6170.tsa.lz"@ 0x9D62F8 - 0x9D6170

	.global gUnknown_089D62F8
gUnknown_089D62F8:  @ 0x089D62F8
	.incbin "graphics/misc/gUnknown_089D62F8.tsa.lz"@ 0x9D64EC - 0x9D62F8

	.global gUnknown_089D64EC
gUnknown_089D64EC:  @ 0x089D64EC
	.incbin "graphics/misc/gUnknown_089D64EC.tsa.lz"@ 0x9D66D0 - 0x9D64EC

	.global gUnknown_089D66D0
gUnknown_089D66D0:  @ 0x089D66D0
	.incbin "graphics/misc/gUnknown_089D66D0.tsa.lz"@ 0x9D67F4 - 0x9D66D0

	.global gUnknown_089D67F4
gUnknown_089D67F4:  @ 0x089D67F4
	.incbin "graphics/misc/gUnknown_089D67F4.tsa.lz"@ 0x9D6AA4 - 0x9D67F4

	.global gUnknown_089D6AA4
gUnknown_089D6AA4:  @ 0x089D6AA4
	.incbin "graphics/misc/gUnknown_089D6AA4.tsa.lz"@ 0x9D6E1C - 0x9D6AA4

	.global gUnknown_089D6E1C
gUnknown_089D6E1C:  @ 0x089D6E1C
	.incbin "graphics/misc/gUnknown_089D6E1C.tsa.lz"@ 0x9D6F0C - 0x9D6E1C

	.global gUnknown_089D6F0C
gUnknown_089D6F0C:  @ 0x089D6F0C
	.incbin "graphics/misc/gUnknown_089D6F0C.tsa.lz"@ 0x9D704C - 0x9D6F0C

	.global gUnknown_089D704C
gUnknown_089D704C:  @ 0x089D704C
	.incbin "graphics/misc/gUnknown_089D704C.tsa.lz"@ 0x9D71DC - 0x9D704C

	.global gUnknown_089D71DC
gUnknown_089D71DC:  @ 0x089D71DC
	.incbin "graphics/misc/gUnknown_089D71DC.tsa.lz"@ 0x9D73B4 - 0x9D71DC

	.global gUnknown_089D73B4
gUnknown_089D73B4:  @ 0x089D73B4
	.incbin "graphics/misc/gUnknown_089D73B4.tsa.lz"@ 0x9D75BC - 0x9D73B4

	.global gUnknown_089D75BC
gUnknown_089D75BC:  @ 0x089D75BC
	.incbin "graphics/misc/gUnknown_089D75BC.tsa.lz"@ 0x9D77CC - 0x9D75BC

	.global gUnknown_089D77CC
gUnknown_089D77CC:  @ 0x089D77CC
	.incbin "graphics/misc/gUnknown_089D77CC.tsa.lz"@ 0x9D79B4 - 0x9D77CC

	.global gUnknown_089D79B4
gUnknown_089D79B4:  @ 0x089D79B4
	.incbin "graphics/misc/gUnknown_089D79B4.tsa.lz"@ 0x9D7B78 - 0x9D79B4

	.global gUnknown_089D7B78
gUnknown_089D7B78:  @ 0x089D7B78
	.incbin "graphics/misc/gUnknown_089D7B78.tsa.lz"@ 0x9D7D04 - 0x9D7B78

	.global gUnknown_089D7D04
gUnknown_089D7D04:  @ 0x089D7D04
	.incbin "graphics/misc/gUnknown_089D7D04.tsa.lz"@ 0x9D7E48 - 0x9D7D04

	.global gUnknown_089D7E48
gUnknown_089D7E48:  @ 0x089D7E48
	.incbin "graphics/misc/gUnknown_089D7E48.tsa.lz"@ 0x9D7F48 - 0x9D7E48

	.global gUnknown_089D7F48
gUnknown_089D7F48:  @ 0x089D7F48
	.incbin "graphics/misc/gUnknown_089D7F48.tsa.lz"@ 0x9D8010 - 0x9D7F48

	.global gUnknown_089D8010
gUnknown_089D8010:  @ 0x089D8010
	.incbin "graphics/misc/gUnknown_089D8010.4bpp.lz"@ 0x9D8198 - 0x9D8010

	.global gUnknown_089D8198
gUnknown_089D8198:  @ 0x089D8198
	.incbin "graphics/misc/gUnknown_089D8198.4bpp.lz"@ 0x9D84A8 - 0x9D8198

	.global gUnknown_089D84A8
gUnknown_089D84A8:  @ 0x089D84A8
	.incbin "graphics/misc/gUnknown_089D84A8.4bpp.lz"@ 0x9D8910 - 0x9D84A8

	.global gUnknown_089D8910
gUnknown_089D8910:  @ 0x089D8910
	.incbin "graphics/misc/gUnknown_089D8910.4bpp.lz"@ 0x9D925C - 0x9D8910

	.global gUnknown_089D925C
gUnknown_089D925C:  @ 0x089D925C
	.incbin "graphics/misc/gUnknown_089D925C.4bpp.lz"@ 0x9DA40C - 0x9D925C

	.global gUnknown_089DA40C
gUnknown_089DA40C:  @ 0x089DA40C
	.incbin "graphics/misc/gUnknown_089DA40C.4bpp.lz"@ 0x9DB1A0 - 0x9DA40C

	.global gUnknown_089DB1A0
gUnknown_089DB1A0:  @ 0x089DB1A0
	.incbin "graphics/misc/gUnknown_089DB1A0.4bpp.lz"@ 0x9DBFE0 - 0x9DB1A0

	.global gUnknown_089DBFE0
gUnknown_089DBFE0:  @ 0x089DBFE0
	.incbin "graphics/misc/gUnknown_089DBFE0.4bpp.lz"@ 0x9DCD48 - 0x9DBFE0

	.global gUnknown_089DCD48
gUnknown_089DCD48:  @ 0x089DCD48
	.incbin "graphics/misc/gUnknown_089DCD48.4bpp"@ 0x9DCD68 - 0x9DCD48

	.global gUnknown_089DCD68
gUnknown_089DCD68:  @ 0x089DCD68
	.incbin "graphics/misc/gUnknown_089DCD68.4bpp"@ 0x9DCD88 - 0x9DCD68

	.global gUnknown_089DCD88
gUnknown_089DCD88:  @ 0x089DCD88
	.incbin "graphics/misc/gUnknown_089DCD88.4bpp"@ 0x9DCDA8 - 0x9DCD88

	.global gUnknown_089DCDA8
gUnknown_089DCDA8:  @ 0x089DCDA8
	.incbin "graphics/misc/gUnknown_089DCDA8.4bpp"@ 0x9DCDC8 - 0x9DCDA8

	.global gUnknown_089DCDC8
gUnknown_089DCDC8:  @ 0x089DCDC8
	.incbin "graphics/misc/gUnknown_089DCDC8.4bpp"@ 0x9DCDE8 - 0x9DCDC8

	.global gUnknown_089DCDE8
gUnknown_089DCDE8:  @ 0x089DCDE8
	.incbin "graphics/misc/gUnknown_089DCDE8.4bpp"@ 0x9DCE08 - 0x9DCDE8

	.global gUnknown_089DCE08
gUnknown_089DCE08:  @ 0x089DCE08
	.incbin "graphics/misc/gUnknown_089DCE08.4bpp"@ 0x9DCE28 - 0x9DCE08

	.global gUnknown_089DCE28
gUnknown_089DCE28:  @ 0x089DCE28
	.incbin "graphics/misc/gUnknown_089DCE28.4bpp"@ 0x9DCE48 - 0x9DCE28

	.global gUnknown_089DCE48
gUnknown_089DCE48:  @ 0x089DCE48
	.incbin "graphics/misc/gUnknown_089DCE48.tsa.lz"@ 0x9DCF10 - 0x9DCE48

	.global gUnknown_089DCF10
gUnknown_089DCF10:  @ 0x089DCF10
	.incbin "graphics/misc/gUnknown_089DCF10.tsa.lz"@ 0x9DCFFC - 0x9DCF10

	.global gUnknown_089DCFFC
gUnknown_089DCFFC:  @ 0x089DCFFC
	.incbin "graphics/misc/gUnknown_089DCFFC.tsa.lz"@ 0x9DD114 - 0x9DCFFC

	.global gUnknown_089DD114
gUnknown_089DD114:  @ 0x089DD114
	.incbin "graphics/misc/gUnknown_089DD114.tsa.lz"@ 0x9DD284 - 0x9DD114

	.global gUnknown_089DD284
gUnknown_089DD284:  @ 0x089DD284
	.incbin "graphics/misc/gUnknown_089DD284.tsa.lz"@ 0x9DD4E8 - 0x9DD284

	.global gUnknown_089DD4E8
gUnknown_089DD4E8:  @ 0x089DD4E8
	.incbin "graphics/misc/gUnknown_089DD4E8.tsa.lz"@ 0x9DD790 - 0x9DD4E8

	.global gUnknown_089DD790
gUnknown_089DD790:  @ 0x089DD790
	.incbin "graphics/misc/gUnknown_089DD790.tsa.lz"@ 0x9DDA68 - 0x9DD790

	.global gUnknown_089DDA68
gUnknown_089DDA68:  @ 0x089DDA68
	.incbin "graphics/misc/gUnknown_089DDA68.tsa.lz"@ 0x9DDE8C - 0x9DDA68

	.global gUnknown_089DDE8C
gUnknown_089DDE8C:  @ 0x089DDE8C
	.incbin "graphics/misc/gUnknown_089DDE8C.4bpp.lz"@ 0x9DDF10 - 0x9DDE8C

	.global gUnknown_089DDF10
gUnknown_089DDF10:  @ 0x089DDF10
	.incbin "graphics/misc/gUnknown_089DDF10.4bpp.lz"@ 0x9DDF9C - 0x9DDF10

	.global gUnknown_089DDF9C
gUnknown_089DDF9C:  @ 0x089DDF9C
	.incbin "graphics/misc/gUnknown_089DDF9C.4bpp.lz"@ 0x9DE030 - 0x9DDF9C

	.global gUnknown_089DE030
gUnknown_089DE030:  @ 0x089DE030
	.incbin "graphics/misc/gUnknown_089DE030.4bpp.lz"@ 0x9DE0BC - 0x9DE030

	.global gUnknown_089DE0BC
gUnknown_089DE0BC:  @ 0x089DE0BC
	.incbin "graphics/misc/gUnknown_089DE0BC.4bpp.lz"@ 0x9DE14C - 0x9DE0BC

	.global gUnknown_089DE14C
gUnknown_089DE14C:  @ 0x089DE14C
	.incbin "graphics/misc/gUnknown_089DE14C.4bpp.lz"@ 0x9DE1CC - 0x9DE14C

	.global gUnknown_089DE1CC
gUnknown_089DE1CC:  @ 0x089DE1CC
	.incbin "graphics/misc/gUnknown_089DE1CC.4bpp.lz"@ 0x9DEA30 - 0x9DE1CC

	.global gUnknown_089DEA30
gUnknown_089DEA30:  @ 0x089DEA30
	.incbin "graphics/misc/gUnknown_089DEA30.4bpp.lz"@ 0x9DF470 - 0x9DEA30

	.global gUnknown_089DF470
gUnknown_089DF470:  @ 0x089DF470
	.incbin "graphics/misc/gUnknown_089DF470.4bpp.lz"@ 0x9DFF90 - 0x9DF470

	.global gUnknown_089DFF90
gUnknown_089DFF90:  @ 0x089DFF90
	.incbin "graphics/misc/gUnknown_089DFF90.4bpp.lz"@ 0x9E0AB8 - 0x9DFF90

	.global gUnknown_089E0AB8
gUnknown_089E0AB8:  @ 0x089E0AB8
	.incbin "graphics/misc/gUnknown_089E0AB8.4bpp.lz"@ 0x9E1480 - 0x9E0AB8

	.global gUnknown_089E1480
gUnknown_089E1480:  @ 0x089E1480
	.incbin "graphics/misc/gUnknown_089E1480.4bpp.lz"@ 0x9E2154 - 0x9E1480

	.global gUnknown_089E2154
gUnknown_089E2154:  @ 0x089E2154
	.incbin "graphics/misc/gUnknown_089E2154.4bpp.lz"@ 0x9E2C1C - 0x9E2154

	.global gUnknown_089E2C1C
gUnknown_089E2C1C:  @ 0x089E2C1C
	.incbin "graphics/misc/gUnknown_089E2C1C.4bpp.lz"@ 0x9E34A8 - 0x9E2C1C

	.global gUnknown_089E34A8
gUnknown_089E34A8:  @ 0x089E34A8
	.incbin "graphics/misc/gUnknown_089E34A8.4bpp.lz"@ 0x9E3B88 - 0x9E34A8

	.global gUnknown_089E3B88
gUnknown_089E3B88:  @ 0x089E3B88
	.incbin "graphics/misc/gUnknown_089E3B88.4bpp.lz"@ 0x9E4024 - 0x9E3B88

	.global gUnknown_089E4024
gUnknown_089E4024:  @ 0x089E4024
	.incbin "graphics/misc/gUnknown_089E4024.4bpp.lz"@ 0x9E4344 - 0x9E4024

	.global gUnknown_089E4344
gUnknown_089E4344:  @ 0x089E4344
	.incbin "graphics/misc/gUnknown_089E4344.4bpp.lz"@ 0x9E44B8 - 0x9E4344

	.global gUnknown_089E44B8
gUnknown_089E44B8:  @ 0x089E44B8
	.incbin "graphics/misc/gUnknown_089E44B8.4bpp.lz"@ 0x9E45D0 - 0x9E44B8

	.global gUnknown_089E45D0
gUnknown_089E45D0:  @ 0x089E45D0
	.incbin "graphics/misc/gUnknown_089E45D0.4bpp.lz"@ 0x9E46E8 - 0x9E45D0

	.global gUnknown_089E46E8
gUnknown_089E46E8:  @ 0x089E46E8
	.incbin "graphics/misc/gUnknown_089E46E8.4bpp.lz"@ 0x9E47CC - 0x9E46E8

	.global gUnknown_089E47CC
gUnknown_089E47CC:  @ 0x089E47CC
	.incbin "graphics/misc/gUnknown_089E47CC.4bpp.lz"@ 0x9E48C0 - 0x9E47CC

	.global gUnknown_089E48C0
gUnknown_089E48C0:  @ 0x089E48C0
	.incbin "graphics/misc/gUnknown_089E48C0.4bpp.lz"@ 0x9E49D8 - 0x9E48C0

	.global gUnknown_089E49D8
gUnknown_089E49D8:  @ 0x089E49D8
	.incbin "graphics/misc/gUnknown_089E49D8.4bpp.lz"@ 0x9E4AEC - 0x9E49D8

	.global gUnknown_089E4AEC
gUnknown_089E4AEC:  @ 0x089E4AEC
	.incbin "graphics/misc/gUnknown_089E4AEC.4bpp.lz"@ 0x9E4BC8 - 0x9E4AEC

	.global gUnknown_089E4BC8
gUnknown_089E4BC8:  @ 0x089E4BC8
	.incbin "graphics/misc/gUnknown_089E4BC8.4bpp.lz"@ 0x9E4C7C - 0x9E4BC8

	.global gUnknown_089E4C7C
gUnknown_089E4C7C:  @ 0x089E4C7C
	.incbin "graphics/misc/gUnknown_089E4C7C.4bpp"@ 0x9E4C9C - 0x9E4C7C

	.global gUnknown_089E4C9C
gUnknown_089E4C9C:  @ 0x089E4C9C
	.incbin "graphics/misc/gUnknown_089E4C9C.4bpp"@ 0x9E4CBC - 0x9E4C9C

	.global gUnknown_089E4CBC
gUnknown_089E4CBC:  @ 0x089E4CBC
	.incbin "graphics/misc/gUnknown_089E4CBC.4bpp"@ 0x9E4CDC - 0x9E4CBC

	.global gUnknown_089E4CDC
gUnknown_089E4CDC:  @ 0x089E4CDC
	.incbin "graphics/misc/gUnknown_089E4CDC.4bpp"@ 0x9E4CFC - 0x9E4CDC

	.global gUnknown_089E4CFC
gUnknown_089E4CFC:  @ 0x089E4CFC
	.incbin "graphics/misc/gUnknown_089E4CFC.4bpp"@ 0x9E4D1C - 0x9E4CFC

	.global gUnknown_089E4D1C
gUnknown_089E4D1C:  @ 0x089E4D1C
	.incbin "graphics/misc/gUnknown_089E4D1C.4bpp"@ 0x9E4D3C - 0x9E4D1C

	.global gUnknown_089E4D3C
gUnknown_089E4D3C:  @ 0x089E4D3C
	.incbin "graphics/misc/gUnknown_089E4D3C.4bpp"@ 0x9E4D5C - 0x9E4D3C

	.global gUnknown_089E4D5C
gUnknown_089E4D5C:  @ 0x089E4D5C
	.incbin "graphics/misc/gUnknown_089E4D5C.4bpp"@ 0x9E4D7C - 0x9E4D5C

	.global gUnknown_089E4D7C
gUnknown_089E4D7C:  @ 0x089E4D7C
	.incbin "graphics/misc/gUnknown_089E4D7C.4bpp"@ 0x9E4D9C - 0x9E4D7C

	.global gUnknown_089E4D9C
gUnknown_089E4D9C:  @ 0x089E4D9C
	.incbin "graphics/misc/gUnknown_089E4D9C.4bpp"@ 0x9E4DBC - 0x9E4D9C

	.global gUnknown_089E4DBC
gUnknown_089E4DBC:  @ 0x089E4DBC
	.incbin "graphics/misc/gUnknown_089E4DBC.4bpp"@ 0x9E4DDC - 0x9E4DBC

	.global gUnknown_089E4DDC
gUnknown_089E4DDC:  @ 0x089E4DDC
	.incbin "graphics/misc/gUnknown_089E4DDC.4bpp"@ 0x9E4DFC - 0x9E4DDC

	.global gUnknown_089E4DFC
gUnknown_089E4DFC:  @ 0x089E4DFC
	.incbin "graphics/misc/gUnknown_089E4DFC.4bpp"@ 0x9E4E1C - 0x9E4DFC

	.global gUnknown_089E4E1C
gUnknown_089E4E1C:  @ 0x089E4E1C
	.incbin "graphics/misc/gUnknown_089E4E1C.4bpp"@ 0x9E4E3C - 0x9E4E1C

	.global gUnknown_089E4E3C
gUnknown_089E4E3C:  @ 0x089E4E3C
	.incbin "graphics/misc/gUnknown_089E4E3C.4bpp"@ 0x9E4E5C - 0x9E4E3C

	.global gUnknown_089E4E5C
gUnknown_089E4E5C:  @ 0x089E4E5C
	.incbin "graphics/misc/gUnknown_089E4E5C.4bpp"@ 0x9E4E7C - 0x9E4E5C

	.global gUnknown_089E4E7C
gUnknown_089E4E7C:  @ 0x089E4E7C
	.incbin "graphics/misc/gUnknown_089E4E7C.4bpp"@ 0x9E4E9C - 0x9E4E7C

	.global gUnknown_089E4E9C
gUnknown_089E4E9C:  @ 0x089E4E9C
	.incbin "graphics/misc/gUnknown_089E4E9C.4bpp"@ 0x9E4EBC - 0x9E4E9C

	.global gUnknown_089E4EBC
gUnknown_089E4EBC:  @ 0x089E4EBC
	.incbin "graphics/misc/gUnknown_089E4EBC.4bpp"@ 0x9E4EDC - 0x9E4EBC

	.global gUnknown_089E4EDC
gUnknown_089E4EDC:  @ 0x089E4EDC
	.incbin "graphics/misc/gUnknown_089E4EDC.4bpp"@ 0x9E4EFC - 0x9E4EDC

	.global gUnknown_089E4EFC
gUnknown_089E4EFC:  @ 0x089E4EFC
	.incbin "graphics/misc/gUnknown_089E4EFC.4bpp"@ 0x9E4F1C - 0x9E4EFC

	.global gUnknown_089E4F1C
gUnknown_089E4F1C:  @ 0x089E4F1C
	.incbin "graphics/misc/gUnknown_089E4F1C.4bpp"@ 0x9E4F3C - 0x9E4F1C

	.global gUnknown_089E4F3C
gUnknown_089E4F3C:  @ 0x089E4F3C
	.incbin "graphics/misc/gUnknown_089E4F3C.4bpp"@ 0x9E4F5C - 0x9E4F3C

	.global gUnknown_089E4F5C
gUnknown_089E4F5C:  @ 0x089E4F5C
	.incbin "graphics/misc/gUnknown_089E4F5C.4bpp"@ 0x9E4F7C - 0x9E4F5C

	.global gUnknown_089E4F7C
gUnknown_089E4F7C:  @ 0x089E4F7C
	.incbin "graphics/misc/gUnknown_089E4F7C.4bpp"@ 0x9E4F9C - 0x9E4F7C

	.global gUnknown_089E4F9C
gUnknown_089E4F9C:  @ 0x089E4F9C
	.incbin "graphics/misc/gUnknown_089E4F9C.4bpp"@ 0x9E4FBC - 0x9E4F9C

	.global gUnknown_089E4FBC
gUnknown_089E4FBC:  @ 0x089E4FBC
	.incbin "graphics/misc/gUnknown_089E4FBC.tsa.lz"@ 0x9E5074 - 0x9E4FBC

	.global gUnknown_089E5074
gUnknown_089E5074:  @ 0x089E5074
	.incbin "graphics/misc/gUnknown_089E5074.tsa.lz"@ 0x9E5130 - 0x9E5074

	.global gUnknown_089E5130
gUnknown_089E5130:  @ 0x089E5130
	.incbin "graphics/misc/gUnknown_089E5130.tsa.lz"@ 0x9E51EC - 0x9E5130

	.global gUnknown_089E51EC
gUnknown_089E51EC:  @ 0x089E51EC
	.incbin "graphics/misc/gUnknown_089E51EC.tsa.lz"@ 0x9E52AC - 0x9E51EC

	.global gUnknown_089E52AC
gUnknown_089E52AC:  @ 0x089E52AC
	.incbin "graphics/misc/gUnknown_089E52AC.tsa.lz"@ 0x9E5364 - 0x9E52AC

	.global gUnknown_089E5364
gUnknown_089E5364:  @ 0x089E5364
	.incbin "graphics/misc/gUnknown_089E5364.tsa.lz"@ 0x9E541C - 0x9E5364

	.global gUnknown_089E541C
gUnknown_089E541C:  @ 0x089E541C
	.incbin "graphics/misc/gUnknown_089E541C.tsa.lz"@ 0x9E5600 - 0x9E541C

	.global gUnknown_089E5600
gUnknown_089E5600:  @ 0x089E5600
	.incbin "graphics/misc/gUnknown_089E5600.tsa.lz"@ 0x9E5814 - 0x9E5600

	.global gUnknown_089E5814
gUnknown_089E5814:  @ 0x089E5814
	.incbin "graphics/misc/gUnknown_089E5814.tsa.lz"@ 0x9E5A58 - 0x9E5814

	.global gUnknown_089E5A58
gUnknown_089E5A58:  @ 0x089E5A58
	.incbin "graphics/misc/gUnknown_089E5A58.tsa.lz"@ 0x9E5D08 - 0x9E5A58

	.global gUnknown_089E5D08
gUnknown_089E5D08:  @ 0x089E5D08
	.incbin "graphics/misc/gUnknown_089E5D08.tsa.lz"@ 0x9E5FEC - 0x9E5D08

	.global gUnknown_089E5FEC
gUnknown_089E5FEC:  @ 0x089E5FEC
	.incbin "graphics/misc/gUnknown_089E5FEC.tsa.lz"@ 0x9E6290 - 0x9E5FEC

	.global gUnknown_089E6290
gUnknown_089E6290:  @ 0x089E6290
	.incbin "graphics/misc/gUnknown_089E6290.tsa.lz"@ 0x9E64D0 - 0x9E6290

	.global gUnknown_089E64D0
gUnknown_089E64D0:  @ 0x089E64D0
	.incbin "graphics/misc/gUnknown_089E64D0.tsa.lz"@ 0x9E66A0 - 0x9E64D0

	.global gUnknown_089E66A0
gUnknown_089E66A0:  @ 0x089E66A0
	.incbin "graphics/misc/gUnknown_089E66A0.tsa.lz"@ 0x9E6808 - 0x9E66A0

	.global gUnknown_089E6808
gUnknown_089E6808:  @ 0x089E6808
	.incbin "graphics/misc/gUnknown_089E6808.tsa.lz"@ 0x9E6924 - 0x9E6808

	.global gUnknown_089E6924
gUnknown_089E6924:  @ 0x089E6924
	.incbin "graphics/misc/gUnknown_089E6924.tsa.lz"@ 0x9E6A14 - 0x9E6924

	.global gUnknown_089E6A14
gUnknown_089E6A14:  @ 0x089E6A14
	.incbin "graphics/misc/gUnknown_089E6A14.tsa.lz"@ 0x9E6AE4 - 0x9E6A14

	.global gUnknown_089E6AE4
gUnknown_089E6AE4:  @ 0x089E6AE4
	.incbin "graphics/misc/gUnknown_089E6AE4.tsa.lz"@ 0x9E6BB0 - 0x9E6AE4

	.global gUnknown_089E6BB0
gUnknown_089E6BB0:  @ 0x089E6BB0
	.incbin "graphics/misc/gUnknown_089E6BB0.tsa.lz"@ 0x9E6C80 - 0x9E6BB0

	.global gUnknown_089E6C80
gUnknown_089E6C80:  @ 0x089E6C80
	.incbin "graphics/misc/gUnknown_089E6C80.tsa.lz"@ 0x9E6D50 - 0x9E6C80

	.global gUnknown_089E6D50
gUnknown_089E6D50:  @ 0x089E6D50
	.incbin "graphics/misc/gUnknown_089E6D50.tsa.lz"@ 0x9E6E1C - 0x9E6D50

	.global gUnknown_089E6E1C
gUnknown_089E6E1C:  @ 0x089E6E1C
	.incbin "graphics/misc/gUnknown_089E6E1C.tsa.lz"@ 0x9E6EE8 - 0x9E6E1C

	.global gUnknown_089E6EE8
gUnknown_089E6EE8:  @ 0x089E6EE8
	.incbin "graphics/misc/gUnknown_089E6EE8.tsa.lz"@ 0x9E6FB4 - 0x9E6EE8

	.global gUnknown_089E6FB4
gUnknown_089E6FB4:  @ 0x089E6FB4
	.incbin "graphics/misc/gUnknown_089E6FB4.tsa.lz"@ 0x9E7080 - 0x9E6FB4

	.global gUnknown_089E7080
gUnknown_089E7080:  @ 0x089E7080
	.incbin "graphics/misc/gUnknown_089E7080.tsa.lz"@ 0x9E714C - 0x9E7080

	.global gUnknown_089E714C
gUnknown_089E714C:  @ 0x089E714C
	.incbin "graphics/misc/gUnknown_089E714C.4bpp.lz"

	.global gUnknown_089E7DEC
gUnknown_089E7DEC:  @ 0x089E7DEC
	.incbin "graphics/misc/gUnknown_089E7DEC.4bpp"@ 0x9E7E0C - 0x9E7DEC

	.global Tsa_089E7E0C
Tsa_089E7E0C:  @ 0x089E7E0C
	.incbin "graphics/misc/Tsa_089E7E0C.tsa.lz"@ 0x9E7E2C - 0x9E7E0C

	.global Tsa_089E7E2C
Tsa_089E7E2C:  @ 0x089E7E2C
	.incbin "graphics/misc/Tsa_089E7E2C.tsa.lz"@ 0x9E7E50 - 0x9E7E2C

	.global Tsa_089E7E50
Tsa_089E7E50:  @ 0x089E7E50
	.incbin "graphics/misc/Tsa_089E7E50.tsa.lz"@ 0x9E7E78 - 0x9E7E50

	.global Tsa_089E7E78
Tsa_089E7E78:  @ 0x089E7E78
	.incbin "graphics/misc/Tsa_089E7E78.tsa.lz"@ 0x9E7EA0 - 0x9E7E78

	.global Tsa_089E7EA0
Tsa_089E7EA0:  @ 0x089E7EA0
	.incbin "graphics/misc/Tsa_089E7EA0.tsa.lz"@ 0x9E7ECC - 0x9E7EA0

	.global Tsa_089E7ECC
Tsa_089E7ECC:  @ 0x089E7ECC
	.incbin "graphics/misc/Tsa_089E7ECC.tsa.lz"@ 0x9E7EFC - 0x9E7ECC

	.global Tsa_089E7EFC
Tsa_089E7EFC:  @ 0x089E7EFC
	.incbin "graphics/misc/Tsa_089E7EFC.tsa.lz"@ 0x9E7F2C - 0x9E7EFC

	.global Tsa_089E7F2C
Tsa_089E7F2C:  @ 0x089E7F2C
	.incbin "graphics/misc/Tsa_089E7F2C.tsa.lz"@ 0x9E7F5C - 0x9E7F2C

	.global Tsa_089E7F5C
Tsa_089E7F5C:  @ 0x089E7F5C
	.incbin "graphics/misc/Tsa_089E7F5C.tsa.lz"@ 0x9E7F8C - 0x9E7F5C

	.global Tsa_089E7F8C
Tsa_089E7F8C:  @ 0x089E7F8C
	.incbin "graphics/misc/Tsa_089E7F8C.tsa.lz"@ 0x9E7FBC - 0x9E7F8C

	.global Tsa_089E7FBC
Tsa_089E7FBC:  @ 0x089E7FBC
	.incbin "graphics/misc/Tsa_089E7FBC.tsa.lz"@ 0x9E7FFC - 0x9E7FBC

	.global Tsa_089E7FFC
Tsa_089E7FFC:  @ 0x089E7FFC
	.incbin "graphics/misc/Tsa_089E7FFC.tsa.lz"@ 0x9E8040 - 0x9E7FFC

	.global Tsa_089E8040
Tsa_089E8040:  @ 0x089E8040
	.incbin "graphics/misc/Tsa_089E8040.tsa.lz"@ 0x9E8090 - 0x9E8040

	.global Tsa_089E8090
Tsa_089E8090:  @ 0x089E8090
	.incbin "graphics/misc/Tsa_089E8090.tsa.lz"@ 0x9E80EC - 0x9E8090

	.global Tsa_089E80EC
Tsa_089E80EC:  @ 0x089E80EC
	.incbin "graphics/misc/Tsa_089E80EC.tsa.lz"@ 0x9E8148 - 0x9E80EC

	.global Tsa_089E8148
Tsa_089E8148:  @ 0x089E8148
	.incbin "graphics/misc/Tsa_089E8148.tsa.lz"@ 0x9E81A4 - 0x9E8148

	.global Tsa_089E81A4
Tsa_089E81A4:  @ 0x089E81A4
	.incbin "graphics/misc/Tsa_089E81A4.tsa.lz"@ 0x9E8200 - 0x9E81A4

	.global Tsa_089E8200
Tsa_089E8200:  @ 0x089E8200
	.incbin "graphics/misc/Tsa_089E8200.tsa.lz"@ 0x9E8238 - 0x9E8200

	.global Img_TalkBubble
Img_TalkBubble:  @ 0x089E8238
    .incbin "graphics/misc/Img_TalkBubble.4bpp.lz"

	.global Img_TalkBubbleOpening_E
Img_TalkBubbleOpening_E:  @ 0x089E82E0
	.incbin "graphics/misc/Img_TalkBubbleOpening_E.4bpp.lz"

	.global Img_TalkBubbleOpening_D
Img_TalkBubbleOpening_D:  @ 0x089E8384
	.incbin "graphics/misc/Img_TalkBubbleOpening_D.4bpp.lz"

	.global Img_TalkBubbleOpening_C
Img_TalkBubbleOpening_C:  @ 0x089E83E0
	.incbin "graphics/misc/Img_TalkBubbleOpening_C.4bpp.lz"

	.global Img_TalkBubbleOpening_B
Img_TalkBubbleOpening_B:  @ 0x089E8434
	.incbin "graphics/misc/Img_TalkBubbleOpening_B.4bpp.lz"

	.global Img_TalkBubbleOpening_A
Img_TalkBubbleOpening_A:  @ 0x089E8484
	.incbin "graphics/misc/Img_TalkBubbleOpening_A.4bpp.lz"

	.global Pal_TalkBubble
Pal_TalkBubble:  @ 0x089E84D4
	.incbin "graphics/misc/Pal_TalkBubble.gbapal"
