    .section .data

	.global gGfx_MiscUiGraphics
gGfx_MiscUiGraphics:  @ 0x0859E8E0
	.incbin "dump/data_59E8E0_59E8E0.bin"

	.global gPal_MiscUiGraphics
gPal_MiscUiGraphics:  @ 0x0859ED70
	.incbin "dump/data_59E8E0_59ED70.gbapal"

	.global gImg_UiCursorHandTop
gImg_UiCursorHandTop:  @ 0x0859EDB0
	.incbin "dump/data_59E8E0_59EDB0.bin"

	.global gImg_UiCursorHandBottom
gImg_UiCursorHandBottom:  @ 0x0859EDEC
	.incbin "dump/data_59E8E0_59EDEC.bin"

	.global gPal_MapSprite
gPal_MapSprite:
	.incbin "graphics/unit_icon/palette/unit_icon_pal_player.agbpal"

	.global unit_icon_pal_enemy
unit_icon_pal_enemy:
	.incbin "graphics/unit_icon/palette/unit_icon_pal_enemy.agbpal"

	.global unit_icon_pal_npc
unit_icon_pal_npc:
	.incbin "graphics/unit_icon/palette/unit_icon_pal_npc.agbpal"

	.global unit_icon_pal_after_action
unit_icon_pal_after_action:
	.incbin "graphics/unit_icon/palette/unit_icon_pal_after_action.agbpal"

	.global gPal_MapSpriteArena
gPal_MapSpriteArena:
	.incbin "graphics/unit_icon/palette/unit_icon_pal_p4.agbpal"

	.global gPal_LightRune
gPal_LightRune:  @ 0x0859EEC0
	.incbin "dump/data_59E8E0_59EEC0.gbapal"

	.global gPal_MapSpriteSepia
gPal_MapSpriteSepia:  @ 0x0859EEE0
	.incbin "dump/data_59E8E0_59EEE0.gbapal"

	.global Pal_Text
Pal_Text:  @ 0x0859EF00
	.incbin "dump/data_59E8E0_59EF00.gbapal"

	.global gUnknown_0859EF20
gUnknown_0859EF20:  @ 0x0859EF20
	.incbin "dump/data_59E8E0_59EF20.bin"

	.global Pal_HelpBox
Pal_HelpBox:  @ 0x0859EF40
	.incbin "dump/data_59E8E0_59EF40.gbapal"

	.global gPal_HelpTextBox
gPal_HelpTextBox:  @ 0x0859EF60
	.incbin "dump/data_59E8E0_59EF60.gbapal"

	.global gPal_YellowTextBox
gPal_YellowTextBox:  @ 0x0859EF80
	.incbin "dump/data_59E8E0_59EF80.gbapal"

	.global Pal_GreenTextColors
Pal_GreenTextColors:  @ 0x0859EFC0
	.incbin "dump/data_59E8E0_59EFC0.gbapal"

	.global Pal_Text_Inverted
Pal_Text_Inverted:  @ 0x0859EFE0
	.incbin "dump/data_59E8E0_59EFE0.gbapal"

	.global Pal_TalkBubble_Inverted
Pal_TalkBubble_Inverted:  @ 0x0859F000
	.incbin "dump/data_59E8E0_59F000.gbapal"

	.global Img_PhaseChangeUnk
Img_PhaseChangeUnk:  @ 0x0859F020
	.incbin "dump/data_59E8E0_59F020.bin"

	.global Img_PhaseChangePlayer
Img_PhaseChangePlayer:  @ 0x0859F3F8
	.incbin "dump/data_59E8E0_59F3F8.bin"

	.global Pal_PhaseChangePlayer
Pal_PhaseChangePlayer:  @ 0x0859FA2C
	.incbin "dump/data_59E8E0_59FA2C.gbapal"

	.global Img_PhaseChangeEnemy
Img_PhaseChangeEnemy:  @ 0x0859FA4C
	.incbin "dump/data_59E8E0_59FA4C.bin"

	.global Pal_PhaseChangeEnemy
Pal_PhaseChangeEnemy:  @ 0x085A0068
	.incbin "dump/data_59E8E0_5A0068.gbapal"

	.global Img_PhaseChangeOther
Img_PhaseChangeOther:  @ 0x085A0088
	.incbin "dump/data_59E8E0_5A0088.bin"

	.global Pal_PhaseChangeOther
Pal_PhaseChangeOther:  @ 0x085A0698
	.incbin "dump/data_59E8E0_5A0698.gbapal"

	.global Pal_085A06B8
Pal_085A06B8:  @ 0x085A06B8
	.incbin "dump/data_59E8E0_5A06B8.gbapal"

	.global Img_PhaseChangeSquares
Img_PhaseChangeSquares:  @ 0x085A06D8
	.incbin "dump/data_59E8E0_5A06D8.bin"

	.global gUnknown_085A0838
gUnknown_085A0838:  @ 0x085A0838
	.incbin "dump/data_59E8E0_5A0838.bin"

	.global gUnknown_085A08F0
gUnknown_085A08F0:  @ 0x085A08F0
	.incbin "dump/data_59E8E0_5A08F0.bin"

	.global gTSA_BattleForecastStandard
gTSA_BattleForecastStandard:  @ 0x085A09A8
	.incbin "dump/data_59E8E0_5A09A8.bin"

	.global gTSA_BattleForecastExtended
gTSA_BattleForecastExtended:  @ 0x085A0AEC
	.incbin "dump/data_59E8E0_5A0AEC.bin"

	.global gBattleForecast_x2x4Gfx
gBattleForecast_x2x4Gfx:  @ 0x085A0C80
	.incbin "dump/data_59E8E0_5A0C80.bin"

	.global gBattleForecast_x2x4Pal
gBattleForecast_x2x4Pal:  @ 0x085A0D2C
	.incbin "dump/data_59E8E0_5A0D2C.gbapal"

	.global gUnknown_085A0D4C
gUnknown_085A0D4C:  @ 0x085A0D4C
	.incbin "dump/data_59E8E0_5A0D4C.bin"

	.global gUnknown_085A0EA0
gUnknown_085A0EA0:  @ 0x085A0EA0
	.incbin "dump/data_59E8E0_5A0EA0.bin"

	.global SpriteAnim_GasTrapVertical
SpriteAnim_GasTrapVertical:  @ 0x085A0FF8
	.incbin "dump/data_59E8E0_5A0FF8.bin"

	.global SpriteAnim_GasTrapHorizontal
SpriteAnim_GasTrapHorizontal:  @ 0x085A129C
	.incbin "dump/data_59E8E0_5A129C.bin"

	.global Img_GasTrapVertical
Img_GasTrapVertical:  @ 0x085A1510
	.incbin "dump/data_59E8E0_5A1510.bin"

	.global Img_GasTrapHorizontal
Img_GasTrapHorizontal:  @ 0x085A1AF8
	.incbin "dump/data_59E8E0_5A1AF8.bin"

	.global Pal_GasTrap
Pal_GasTrap:  @ 0x085A206C
	.incbin "dump/data_59E8E0_5A206C.gbapal"

	.global Pal_ArrowTrap
Pal_ArrowTrap:  @ 0x085A208C
	.incbin "dump/data_59E8E0_5A208C.gbapal"

	.global Img_ArrowTrap
Img_ArrowTrap:  @ 0x085A20AC
	.incbin "dump/data_59E8E0_5A20AC.bin"

	.global SpriteAnim_ArrowTrap
SpriteAnim_ArrowTrap:  @ 0x085A2384
	.incbin "dump/data_59E8E0_5A2384.bin"

	.global Img_FireTrap
Img_FireTrap:  @ 0x085A2940
	.incbin "dump/data_59E8E0_5A2940.bin"

	.global Pal_FireTrap
Pal_FireTrap:  @ 0x085A2DDC
	.incbin "dump/data_59E8E0_5A2DDC.gbapal"

	.global SpriteAnim_FireTrap
SpriteAnim_FireTrap:  @ 0x085A2DFC
	.incbin "dump/data_59E8E0_5A2DFC.bin"

	.global Pal_FireTrap2
Pal_FireTrap2:  @ 0x085A3490
	.incbin "dump/data_59E8E0_5A3490.gbapal"

	.global Img_PikeTrap
Img_PikeTrap:  @ 0x085A34B0
	.incbin "dump/data_59E8E0_5A34B0.bin"

	.global SpriteAnim_PikeTrap
SpriteAnim_PikeTrap:  @ 0x085A3730
	.incbin "dump/data_59E8E0_5A3730.bin"

	.global Pal_PikeTrap
Pal_PikeTrap:  @ 0x085A3944
	.incbin "dump/data_59E8E0_5A3944.gbapal"

	.global gUnknown_085A3964
gUnknown_085A3964:  @ 0x085A3964
	.incbin "dump/data_59E8E0_5A3964.bin"

	.global gUnknown_085A39EC
gUnknown_085A39EC:  @ 0x085A39EC
	.incbin "dump/data_59E8E0_5A39EC.bin"

	.global gUnknown_085A3A84
gUnknown_085A3A84:  @ 0x085A3A84
	.incbin "dump/data_59E8E0_5A3A84.bin"

	.global gUnknown_085A3AC0
gUnknown_085A3AC0:  @ 0x085A3AC0
	.incbin "dump/data_59E8E0_5A3AC0.bin"

	.global gUnknown_085A3B00
gUnknown_085A3B00:  @ 0x085A3B00
	.incbin "dump/data_59E8E0_5A3B00.bin"

	.global gUnknown_085A401C
gUnknown_085A401C:  @ 0x085A401C
	.incbin "dump/data_59E8E0_5A401C.bin"

	.global Img_LightRune
Img_LightRune:  @ 0x085A403C
	.incbin "dump/data_59E8E0_5A403C.bin"

	.global Pal_LightRune
Pal_LightRune:  @ 0x085A5760
	.incbin "dump/data_59E8E0_5A5760.gbapal"

	.global Tsa_LightRune
Tsa_LightRune:  @ 0x085A5780
	.incbin "dump/data_59E8E0_5A5780.bin"

	.global Img_EventWarp
Img_EventWarp:  @ 0x085A5A60
	.incbin "dump/data_59E8E0_5A5A60.bin"

	.global Pal_EventWarp
Pal_EventWarp:  @ 0x085A61A8
	.incbin "dump/data_59E8E0_5A61A8.gbapal"

	.global Tsa_EventWarp
Tsa_EventWarp:  @ 0x085A61C8
	.incbin "dump/data_59E8E0_5A61C8.bin"

	.global gUnknown_085A638C
gUnknown_085A638C:  @ 0x085A638C
	.incbin "dump/data_59E8E0_5A638C.bin"

	.global gUnknown_085A643C
gUnknown_085A643C:  @ 0x085A643C
	.incbin "dump/data_59E8E0_5A643C.bin"

	.global Tsa_PlayerRankFog
Tsa_PlayerRankFog:  @ 0x085A647C
	.incbin "dump/data_59E8E0_5A647C.bin"

	.global Img_DanceringFx
Img_DanceringFx:  @ 0x085A6C80
	.incbin "dump/data_59E8E0_5A6C80.bin"

	.global Tsa_DanceringFx
Tsa_DanceringFx:  @ 0x085A7A64
	.incbin "dump/data_59E8E0_5A7A64.bin"

	.global Pal_DanceringFx
Pal_DanceringFx:  @ 0x085A7CA0
	.incbin "dump/data_59E8E0_5A7CA0.gbapal"

	.global Img_MineFx
Img_MineFx:  @ 0x085A7CC0
	.incbin "dump/data_59E8E0_5A7CC0.bin"

	.global SpritAnim_MineFx
SpritAnim_MineFx:  @ 0x085A7E34
	.incbin "dump/data_59E8E0_5A7E34.bin"

	.global Pal_MineFx
Pal_MineFx:  @ 0x085A7EC8
	.incbin "dump/data_59E8E0_5A7EC8.gbapal"

	.global Pal_EventCursorShinning
Pal_EventCursorShinning:  @ 0x085A7EE8
	.incbin "dump/data_59E8E0_5A7EE8.gbapal"
