# Detailed Analysis of Remaining `dump/` Binary Files

This document tracks all remaining `dump/*.bin` files, mapping them to their corresponding C/H types, labels, assembly source files, and exact byte sizes. It serves as a checklist for future struct/array reverse engineering.

**Total remaining dump files:** 203

## Overview by C Type
- **`u8`**: 86 files
- **`u16`**: 79 files
- **`Unknown / Unmatched`**: 17 files
- **`u16 CONST_DATA`**: 15 files
- **`u32`**: 2 files
- **`u8 CONST_DATA`**: 2 files
- **`bits per pixel packed image into`**: 1 files
- **`CONST_DATA u8`**: 1 files

## Detailed File List

| Symbol / Label | C Type | Size (Bytes) | Assembly File (.s) | Raw Dump File |
| --- | --- | --- | --- | --- |
| `gUnknown_085B0F2C` | `CONST_DATA u8` | 21764 | `./data/data_5AA96C.s` | `dump/data_5AA96C_5B0F2C.bin` |
| `gUnknown_08B1FE7C` | `Unknown / Unmatched` | 42888 | `./data/data_B1FE7C.s` | `dump/data_B1FE7C_B1FE7C.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6F14` | `Unknown / Unmatched` | 156 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6F14.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6FB0` | `Unknown / Unmatched` | 156 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6FB0.bin` |
| `AnimSprite_EfxLvupOBJ2_085C704C` | `Unknown / Unmatched` | 156 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C704C.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6BCC` | `Unknown / Unmatched` | 144 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6BCC.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6C5C` | `Unknown / Unmatched` | 144 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6C5C.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6DF4` | `Unknown / Unmatched` | 144 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6DF4.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6E84` | `Unknown / Unmatched` | 144 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6E84.bin` |
| `AnimSprite_EfxLvupOBJ2_085C70E8` | `Unknown / Unmatched` | 144 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C70E8.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6AC4` | `Unknown / Unmatched` | 132 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6AC4.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6B48` | `Unknown / Unmatched` | 132 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6B48.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6CEC` | `Unknown / Unmatched` | 132 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6CEC.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6D70` | `Unknown / Unmatched` | 132 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6D70.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6A58` | `Unknown / Unmatched` | 108 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6A58.bin` |
| `AnimSprite_EfxLvupOBJ2_085C7178` | `Unknown / Unmatched` | 108 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C7178.bin` |
| `AnimSprite_EfxLvupOBJ2_085C6A04` | `Unknown / Unmatched` | 84 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C6A04.bin` |
| `AnimSprite_EfxLvupOBJ2_085C69C8` | `Unknown / Unmatched` | 60 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5C69C8.bin` |
| `4` | `bits per pixel packed image into` | 21452 | `./data/data_fe6sio.s` | `dump/data_fe6sio_B1A368.bin` |
| `gUnknown_08A37300` | `u16` | 7792 | `./data/data_A2EEF0.s` | `dump/data_A2EEF0_A37300.bin` |
| `Pal_LvupApfx` | `u16` | 3724 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5BB2FC.bin` |
| `ApConf_089A6254` | `u16` | 3308 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9A6254.bin` |
| `gUnknown_08A1BD60` | `u16` | 2468 | `./data/data_A195B0.s` | `dump/data_A195B0_A1BD60.bin` |
| `gUnknown_089A5A6C` | `u16` | 1932 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9A5A6C.bin` |
| `SpriteAnim_ManimStatGain` | `u16` | 1880 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9A5314.bin` |
| `Pal_ArenaBattleBg_C` | `u16` | 1524 | `./data/banim-efxlvupfx.s` | `dump/banim-efxlvupfx_5BF114.bin` |
| `gUnknown_08A30978` | `u16` | 1204 | `./data/data_A2EEF0.s` | `dump/data_A2EEF0_A30978.bin` |
| `Pal_PlayerRankFog` | `u16` | 1008 | `./data/data_A01CC4.s` | `dump/data_A01CC4_A09A5C.bin` |
| `Img_DemonLightSprites_087A5E9C` | `u16` | 848 | `./data/banim-ekrdragonfx.s` | `dump/banim-ekrdragonfx_7A5E9C.bin` |
| `Img_DemonLightSprites_087A5BA4` | `u16` | 760 | `./data/banim-ekrdragonfx.s` | `dump/banim-ekrdragonfx_7A5BA4.bin` |
| `Tsa_085AE190` | `u16` | 724 | `./data/data_5AA96C.s` | `dump/data_5AA96C_5AE190.bin` |
| `gUnknown_08A2C23C` | `u16` | 652 | `./data/data_A21658.s` | `dump/data_A21658_A2C23C.bin` |
| `Pal_080E1164` | `u16` | 560 | `./data/const_data_banimekrdk.s` | `dump/const_data_banimekrdk_0E1164.bin` |
| `Sprite_08A97AEC` | `u16` | 428 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A97AEC.bin` |
| `gTSA_BattleForecastExtended` | `u16` | 404 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A0AEC.bin` |
| `obj_MapAnimNODAMAGE` | `u16` | 396 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AC440.bin` |
| `Obj_MapAnimMISS` | `u16` | 360 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AC194.bin` |
| `gUnknown_085A0D4C` | `u16` | 340 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A0D4C.bin` |
| `gTSA_BattleForecastStandard` | `u16` | 324 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A09A8.bin` |
| `Ap_WmHightLightMap2` | `u16` | 316 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9F358.bin` |
| `ApConf_ManimSilencefx` | `u16` | 312 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B2748.bin` |
| `gTSA_MinimugBox` | `u16` | 304 | `./data/data_A167C8.s` | `dump/data_A167C8_A17484.bin` |
| `Pal_DemonLightSprites_EyeFlash` | `u16` | 296 | `./data/banim-ekrdragonfx.s` | `dump/banim-ekrdragonfx_7A5118.bin` |
| `gPal_BrownTextBox` | `u16` | 284 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A4D0CC.bin` |
| `ApConf_MapAnimBerserkfx` | `u16` | 208 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B2108.bin` |
| `TsaConf_BanimTmA1` | `u16` | 152 | `./data/banim-efxbattle.s` | `dump/banim-efxbattle_5B9E58.bin` |
| `TsaConf_BanimTmA2` | `u16` | 152 | `./data/banim-efxbattle.s` | `dump/banim-efxbattle_5B9EF0.bin` |
| `TsaConf_BanimTmA3` | `u16` | 152 | `./data/banim-efxbattle.s` | `dump/banim-efxbattle_5B9F88.bin` |
| `TsaConf_BanimTmA4` | `u16` | 152 | `./data/banim-efxbattle.s` | `dump/banim-efxbattle_5BA020.bin` |
| `gUnknown_080DAF60` | `u16` | 152 | `./data/const_data_DAEF0.s` | `dump/const_data_DAEF0_0DAF60.bin` |
| `gUnknown_08A97E48` | `u16` | 144 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A97E48.bin` |
| `gTSA_GoalBox_TwoLines` | `u16` | 136 | `./data/data_A167C8.s` | `dump/data_A167C8_A176BC.bin` |
| `gUnknown_08A280A8` | `u16` | 132 | `./data/data_A21658.s` | `dump/data_A21658_A280A8.bin` |
| `ApHandle_GmapSoguSprites` | `u16` | 124 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9A8EF8.bin` |
| `Ap_WmHightLightMapFrecia` | `u16` | 112 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9EC24.bin` |
| `Tsa_EkrExpBar` | `u16` | 108 | `./data/data-banimmisc.s` | `dump/data-banimmisc_803524.bin` |
| `Ap_WmHightLightMap8` | `u16` | 104 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_AA10E4.bin` |
| `gUnknown_089AD498` | `u16` | 104 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AD498.bin` |
| `Ap_WmHightLightMap3` | `u16` | 100 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9F9C8.bin` |
| `ApConf_MapAnimTorchfx` | `u16` | 92 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9A61F8.bin` |
| `Ap_WmHightLightMap4` | `u16` | 92 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9FEA4.bin` |
| `gTSA_GoalBox_OneLine` | `u16` | 92 | `./data/data_A167C8.s` | `dump/data_A167C8_A17744.bin` |
| `gTSA_TerrainBox` | `u16` | 88 | `./data/data_A167C8.s` | `dump/data_A167C8_A1742C.bin` |
| `Ap_WmHightLightMap6` | `u16` | 80 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_AA0760.bin` |
| `gUnknown_08A07C0A` | `u16` | 78 | `./data/data_A01CC4.s` | `dump/data_A01CC4_A07C0A.bin` |
| `Pal_089AE7C4` | `u16` | 64 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AE7C4.bin` |
| `Ap_WmHightLightMap7` | `u16` | 56 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_AA0B90.bin` |
| `gUnknown_08A17604` | `u16` | 56 | `./data/data_A167C8.s` | `dump/data_A167C8_A17604.bin` |
| `gUnknown_08AA715C` | `u16` | 56 | `./data/data_AA6BFA.s` | `dump/data_AA6BFA_AA715C.bin` |
| `Ap_WmHightLightMap5` | `u16` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_AA020C.bin` |
| `gUnknown_08AA7194` | `u16` | 52 | `./data/data_AA6BFA.s` | `dump/data_AA6BFA_AA7194.bin` |
| `gUnknown_08AA712A` | `u16` | 50 | `./data/data_AA6BFA.s` | `dump/data_AA6BFA_AA712A.bin` |
| `gUnknown_08AA70EA` | `u16` | 44 | `./data/data_AA6BFA.s` | `dump/data_AA6BFA_AA70EA.bin` |
| `Pal_BanimUnitFlashing` | `u16` | 32 | `./data/data-banimmisc.s` | `dump/data-banimmisc_802D24.bin` |
| `Pal_MapAnimUnlockObjfx` | `u16` | 32 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B0700.bin` |
| `Pal_MapAnimUnlockObjfx_Unk` | `u16` | 32 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B0820.bin` |
| `gUnknown_085B955C` | `u16` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B955C.bin` |
| `gUnknown_085B9574` | `u16` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B9574.bin` |
| `gUnknown_085B958C` | `u16` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B958C.bin` |
| `gUnknown_085B95A4` | `u16` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B95A4.bin` |
| `gUnknown_085B95BC` | `u16` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B95BC.bin` |
| `gUnknown_085B95D4` | `u16` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B95D4.bin` |
| `gUnknown_08758740` | `u16` | 20 | `./data/data-ekrdragon.s` | `dump/data-ekrdragon_758740.bin` |
| `gUnknown_08A03354` | `u16` | 20 | `./data/data_A01CC4.s` | `dump/data_A01CC4_A03354.bin` |
| `gUnknown_08A175B4` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A175B4.bin` |
| `gUnknown_08A175C8` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A175C8.bin` |
| `gUnknown_08A175DC` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A175DC.bin` |
| `gUnknown_08A175F0` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A175F0.bin` |
| `gUnknown_08A1763C` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A1763C.bin` |
| `gUnknown_08A17650` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A17650.bin` |
| `gUnknown_08A17664` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A17664.bin` |
| `gUnknown_08A17678` | `u16` | 20 | `./data/data_A167C8.s` | `dump/data_A167C8_A17678.bin` |
| `gUnknown_08AA7116` | `u16` | 20 | `./data/data_AA6BFA.s` | `dump/data_AA6BFA_AA7116.bin` |
| `Tsa_TerrainMapUi_Labels` | `u16` | 16 | `./data/data_A167C8.s` | `dump/data_A167C8_A1768C.bin` |
| `Tsa_TerrainMapUi_ObstacleLabels` | `u16` | 16 | `./data/data_A167C8.s` | `dump/data_A167C8_A176A4.bin` |
| `gUnknown_08AA70DC` | `u16` | 14 | `./data/data_AA6BFA.s` | `dump/data_AA6BFA_AA70DC.bin` |
| `Tsa_TerrainMapUi_ObstacleFullHp` | `u16` | 8 | `./data/data_A167C8.s` | `dump/data_A167C8_A176B4.bin` |
| `gTSA_TerrainBox_Ballistae` | `u16` | 8 | `./data/data_A167C8.s` | `dump/data_A167C8_A1769C.bin` |
| `SpriteAnim_FireTrap` | `u16 CONST_DATA` | 1684 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A2DFC.bin` |
| `SpriteAnim_ArrowTrap` | `u16 CONST_DATA` | 1468 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A2384.bin` |
| `SpriteAnim_GasTrapVertical` | `u16 CONST_DATA` | 676 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A0FF8.bin` |
| `SpriteAnim_GasTrapHorizontal` | `u16 CONST_DATA` | 628 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A129C.bin` |
| `SpriteAnim_PikeTrap` | `u16 CONST_DATA` | 532 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A3730.bin` |
| `gUnknown_085A0EA0` | `u16 CONST_DATA` | 344 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A0EA0.bin` |
| `Obj_PoisonAnim` | `u16 CONST_DATA` | 152 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9A6F40.bin` |
| `SpritAnim_MineFx` | `u16 CONST_DATA` | 148 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A7E34.bin` |
| `gUnknown_08A1B194` | `u16 CONST_DATA` | 104 | `./data/data_A195B0.s` | `dump/data_A195B0_A1B194.bin` |
| `Tsa_GameOverFx` | `u16 CONST_DATA` | 68 | `./data/data_A01CC4.s` | `dump/data_A01CC4_A0AE84.bin` |
| `Pal_089AFF78` | `u16 CONST_DATA` | 64 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AFF78.bin` |
| `Pal_LinkArenaWarpFx` | `u16 CONST_DATA` | 32 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AE484.bin` |
| `Pal_MapAnimAntitoxin` | `u16 CONST_DATA` | 32 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AF930.bin` |
| `Pal_MapAnimPureWater` | `u16 CONST_DATA` | 32 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9AF910.bin` |
| `Pal_MapAnimTorchfx` | `u16 CONST_DATA` | 32 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B068C.bin` |
| `gUnknown_087A5240` | `u32` | 300 | `./data/banim-ekrdragonfx.s` | `dump/banim-ekrdragonfx_7A5240.bin` |
| `gUnknown_087A536C` | `u32` | 36 | `./data/banim-ekrdragonfx.s` | `dump/banim-ekrdragonfx_7A536C.bin` |
| `Tsa_PlayerRankFog` | `u8` | 2052 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A647C.bin` |
| `Tsa_08A40B14` | `u8` | 1204 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A40B14.bin` |
| `Tsa_CommGameBgScreenInShop` | `u8` | 1204 | `./data/data_A21658.s` | `dump/data_A21658_A295D4.bin` |
| `Tsa_SaveMenuBG` | `u8` | 1204 | `./data/data_A21658.s` | `dump/data_A21658_A25ECC.bin` |
| `gTsa_ArenaBuildingFront` | `u8` | 1204 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9ABB70.bin` |
| `gUnknown_08A1C8B4` | `u8` | 1204 | `./data/data_A195B0.s` | `dump/data_A195B0_A1C8B4.bin` |
| `gUnknown_08A35488` | `u8` | 1204 | `./data/data_A2EEF0.s` | `dump/data_A2EEF0_A35488.bin` |
| `SpriteAnim_WorldmapSkirmish` | `u8` | 980 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_AA1C70.bin` |
| `Tsa_SioResultRankings` | `u8` | 788 | `./data/data_5AA96C.s` | `dump/data_5AA96C_5AE464.bin` |
| `Img_08A2E5EC` | `u8` | 772 | `./data/data_A21658.s` | `dump/data_A21658_A2E5EC.bin` |
| `Tsa_089B0864` | `u8` | 620 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B0864.bin` |
| `Tsa_089B17A4` | `u8` | 620 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B17A4.bin` |
| `gUnknown_085ADF40` | `u8` | 592 | `./data/data_5AA96C.s` | `dump/data_5AA96C_5ADF40.bin` |
| `gUnknown_08A2C5A8` | `u8` | 508 | `./data/data_A21658.s` | `dump/data_A21658_A2C5A8.bin` |
| `gTsa_StoneShatter_081C1CDC` | `u8` | 484 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1CDC.bin` |
| `Tsa_089B343C` | `u8` | 404 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B343C.bin` |
| `gUnknown_08A2C92C` | `u8` | 400 | `./data/data_A21658.s` | `dump/data_A21658_A2C92C.bin` |
| `Tsa_08B18D68` | `u8` | 364 | `./data/data_B12A60.s` | `dump/data_B12A60_B18D68.bin` |
| `gTsa_08A0A9F8` | `u8` | 276 | `./data/data_A01CC4.s` | `dump/data_A01CC4_A0A9F8.bin` |
| `gUnknown_08A98F30` | `u8` | 236 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98F30.bin` |
| `gUnknown_08802274` | `u8` | 212 | `./data/data-banimmisc.s` | `dump/data-banimmisc_802274.bin` |
| `gUnknown_085A0838` | `u8` | 184 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A0838.bin` |
| `gUnknown_085A08F0` | `u8` | 184 | `./data/data_59E8E0.s` | `dump/data_59E8E0_5A08F0.bin` |
| `gUnknown_085ADE88` | `u8` | 184 | `./data/data_5AA96C.s` | `dump/data_5AA96C_5ADE88.bin` |
| `gUnknown_0880210C` | `u8` | 180 | `./data/data-banimmisc.s` | `dump/data-banimmisc_80210C.bin` |
| `gUnknown_088021C0` | `u8` | 180 | `./data/data-banimmisc.s` | `dump/data-banimmisc_8021C0.bin` |
| `gUnknown_08A36284` | `u8` | 180 | `./data/data_A2EEF0.s` | `dump/data_A2EEF0_A36284.bin` |
| `gUnknown_08A2C7A4` | `u8` | 148 | `./data/data_A21658.s` | `dump/data_A21658_A2C7A4.bin` |
| `gUnknown_08A98EAC` | `u8` | 132 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98EAC.bin` |
| `gUnknown_08AA18AC` | `u8` | 132 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_AA18AC.bin` |
| `Tsa_CharacterEnding_BottomBorder` | `u8` | 124 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A40068.bin` |
| `Tsa_CharacterEnding_TopBorder` | `u8` | 124 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A3FFEC.bin` |
| `gUnknown_085B9424` | `u8` | 120 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B9424.bin` |
| `gUnknown_08A98CFC` | `u8` | 92 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98CFC.bin` |
| `gUnknown_08A9827C` | `u8` | 88 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9827C.bin` |
| `gUnknown_08A983F0` | `u8` | 88 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A983F0.bin` |
| `gUnknown_08A9847C` | `u8` | 88 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9847C.bin` |
| `gUnknown_08A985A4` | `u8` | 88 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A985A4.bin` |
| `gUnknown_08A9863C` | `u8` | 88 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9863C.bin` |
| `gUnknown_085B949C` | `u8` | 84 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B949C.bin` |
| `gUnknown_085B94F0` | `u8` | 84 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B94F0.bin` |
| `gUnknown_08A98228` | `u8` | 84 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98228.bin` |
| `gUnknown_08802508` | `u8` | 80 | `./data/data-banimmisc.s` | `dump/data-banimmisc_802508.bin` |
| `gUnknown_08A9836C` | `u8` | 80 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9836C.bin` |
| `gTsa_StoneShatter_081C1900` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1900.bin` |
| `gTsa_StoneShatter_081C194C` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C194C.bin` |
| `gTsa_StoneShatter_081C1998` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1998.bin` |
| `gTsa_StoneShatter_081C19E4` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C19E4.bin` |
| `gTsa_StoneShatter_081C1A30` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1A30.bin` |
| `gTsa_StoneShatter_081C1A7C` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1A7C.bin` |
| `gTsa_StoneShatter_081C1AC8` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1AC8.bin` |
| `gTsa_StoneShatter_081C1B14` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1B14.bin` |
| `gTsa_StoneShatter_081C1B60` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1B60.bin` |
| `gTsa_StoneShatter_081C1BAC` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1BAC.bin` |
| `gTsa_StoneShatter_081C1BF8` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1BF8.bin` |
| `gTsa_StoneShatter_081C1C44` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1C44.bin` |
| `gTsa_StoneShatter_081C1C90` | `u8` | 76 | `./data/const_data_1C0AFC.s` | `dump/const_data_1C0AFC_1C1C90.bin` |
| `gUnknown_085B93D0` | `u8` | 60 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B93D0.bin` |
| `gUnknown_08A98568` | `u8` | 60 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98568.bin` |
| `gUnknown_08A97FF8` | `u8` | 56 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A97FF8.bin` |
| `gUnknown_08A981BC` | `u8` | 56 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A981BC.bin` |
| `gUnknown_08A984D4` | `u8` | 56 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A984D4.bin` |
| `gUnknown_08A97FC4` | `u8` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A97FC4.bin` |
| `gUnknown_08A98168` | `u8` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98168.bin` |
| `gUnknown_08A981F4` | `u8` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A981F4.bin` |
| `gUnknown_08A983BC` | `u8` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A983BC.bin` |
| `gUnknown_08A98448` | `u8` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98448.bin` |
| `gUnknown_08A9850C` | `u8` | 52 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9850C.bin` |
| `gUnknown_08A98314` | `u8` | 48 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98314.bin` |
| `gUnknown_08A98D58` | `u8` | 48 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98D58.bin` |
| `gUnknown_08A98694` | `u8` | 44 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98694.bin` |
| `gUnknown_08A980B4` | `u8` | 40 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A980B4.bin` |
| `gUnknown_08A980DC` | `u8` | 40 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A980DC.bin` |
| `gUnknown_08A98344` | `u8` | 40 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98344.bin` |
| `gUnknown_08A98540` | `u8` | 40 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98540.bin` |
| `Tsa_MapAnimUnlockBgfx` | `u8` | 36 | `./data/data_9A31F8.s` | `dump/data_9A31F8_9B0840.bin` |
| `gUnknown_08A98030` | `u8` | 36 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98030.bin` |
| `gUnknown_08A9806C` | `u8` | 36 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A9806C.bin` |
| `gUnknown_08A98090` | `u8` | 36 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98090.bin` |
| `gUnknown_08A98144` | `u8` | 36 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98144.bin` |
| `gUnknown_085B940C` | `u8` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B940C.bin` |
| `gUnknown_085B9544` | `u8` | 24 | `./data/data-ekrgauge.s` | `dump/data-ekrgauge_5B9544.bin` |
| `gUnknown_08A98054` | `u8` | 24 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98054.bin` |
| `gUnknown_08A98D88` | `u8` | 24 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98D88.bin` |
| `gUnknown_08A98DA0` | `u8` | 24 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98DA0.bin` |
| `gUnknown_08A98DB8` | `u8` | 20 | `./data/data_A3E4D4.s` | `dump/data_A3E4D4_A98DB8.bin` |
| `Tsa_08A1A474` | `u8 CONST_DATA` | 84 | `./data/data_A195B0.s` | `dump/data_A195B0_A1A474.bin` |
| `Tsa_08A1A41C` | `u8 CONST_DATA` | 24 | `./data/data_A195B0.s` | `dump/data_A195B0_A1A41C.bin` |
