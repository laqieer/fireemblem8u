#ifndef GUARD_BKSEL_H
#define GUARD_BKSEL_H

// ??? GetBattleForecastPanelSide(???);
// ??? InitBattleForecastIconPaletteBuffer(???);
// ??? InitBattleForecastLabels(???);
// ??? PutBattleForecastUnitName(???);
// ??? PutBattleForecastItemName(???);
// ??? BattleForecastHitCountUpdate(???);
// ??? InitBattleForecastBattleStats(???);
// ??? DrawBattleForecastContentsStandard(???);
// ??? DrawBattleForecastContentsExtended(???);
// ??? DrawBattleForecastContents(???);
// ??? GetFactionBattleForecastFramePalette(???);
void InitBattleForecastFramePalettes(void);
// ??? BattleForecast_Init(???);
// ??? BattleForecast_OnEnd(???);
// ??? PutBattleForecastTilemaps(???);
// ??? PutBattleForecastWeaponTriangleArrows(???);
// ??? PutBattleForecastMultipliers(???);
// ??? UpdateBattleForecastEffectivenessPalettes(???);
// ??? BattleForecast_LoopDisplay(???);
// ??? BattleForecast_OnNewBattle(???);
// ??? BattleForecast_LoopSlideIn(???);
// ??? BattleForecast_LoopSlideOut(???);
// ??? MapEventEngineExists_(???);
// ??? sub_80372E4(???);
void NewBattleForecast(void);
void UpdateBattleForecastContents(void);
void CloseBattleForecast(void);
int StartBattleForecastHelpBox(ProcPtr parent);
// ??? sub_803746C(???);
// ??? sub_8037494(???);
// ??? sub_80374C4(???);


#endif  // GUARD_BKSEL_H
