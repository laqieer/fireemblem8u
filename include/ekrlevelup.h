#pragma once

#include "global.h"
#include "proc.h"
#include "bmunit.h"
#include "bmbattle.h"
#include "anime.h"
#include "efxbattle.h"

#define EKR_LVUP_UI_BASE 0x50

struct ProcEkrLevelup {
    PROC_HEADER;

    /* 29 */ bool8 finished;
    /* 2A */ bool8 is_promotion;
    /* 2C */ s16 timer;
    /* 2E */ s16 index;
    /* 30 */ u8 _pad_30[0x44 - 0x30];
    /* 44 */ int unk_44;
    /* 48 */ int unk_48;
    /* 4C */ int unk_4C;
    /* 50 */ int unk_50;
    /* 54 */ u8 _pad_54[0x5C - 0x54];
    /* 5C */ struct Anim * ais_main;
    /* 60 */ struct Anim * ais_core;
};

enum ekr_lvup_status_index {
    EKRLVUP_STAT_HP = 0,
    EKRLVUP_STAT_POW,
    EKRLVUP_STAT_SKL,
    EKRLVUP_STAT_SPD,
    EKRLVUP_STAT_LCK,
    EKRLVUP_STAT_DEF,
    EKRLVUP_STAT_RES,
    EKRLVUP_STAT_CON,
    EKRLVUP_STAT_MAX,

    EKRLVUP_STAT_CLASS = EKRLVUP_STAT_MAX,
    EKRLVUP_STAT_LV_MSG,
    EKRLVUP_STAT_LV_VAL,

    EKRLVUP_STAT_PNAME = EKRLVUP_STAT_MAX,
    EKRLVUP_STAT_LVPRE_MSG,
    EKRLVUP_STAT_LVPRE_VAL
};

struct ProcEkrLvupApfx {
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x2C);
    /* 2C */ s16 pal;
    /* 2E */ s16 clock;
};

extern CONST_DATA unsigned * EkrLvupMsgsStr[];
extern CONST_DATA unsigned * EkrLvupMsgsMag[];
extern const u16 sEfxLvupPartsPos[];

extern struct Text gTextEkrlvupMsg[EKRLVUP_STAT_MAX];
extern struct Text gTextEkrlvupValue[EKRLVUP_STAT_MAX + 2];
extern struct ProcEkrLevelup * gpProcEkrLevelup;
extern u32 gUnknown_020200B8[8];
extern ProcPtr gpProcEfxPartsofScroll;
extern ProcPtr gpProcEfxleveluphb;
// extern ??? gUnknown_020200E0
extern struct Unit * gpEkrLvupUnit;
extern struct BattleUnit * gpEkrLvupBattleUnit;
extern u16 gEkrLvupPreLevel;
extern u16 gEkrLvupPostLevel;
extern u16 gEkrLvupBaseStatus[EKRLVUP_STAT_MAX];
extern u16 gEkrLvupPostStatus[EKRLVUP_STAT_MAX];
extern u16 gEkrLvupScrollPos1;
extern u16 gEkrLvupScrollPos2;
// extern ??? gpProcEkrLvupApfx
extern int gEkrTriangleInvalid;

bool CheckEkrLvupDone(void);
void EndEkrLevelUp(void);
void EkrLvup_InitStatusText(struct ProcEkrLevelup * proc);
void EkrLvup_DrawUpdatedStatus(struct ProcEkrLevelup * proc, int index);
void EkrLvup_DrawUnitName(struct ProcEkrLevelup * proc);
void EkrLvup_DrawPreLevelValue(struct ProcEkrLevelup * proc);
void NewEkrLevelup(struct Anim *ais);
void EkrLvup_OnPrepare(struct ProcEkrLevelup * proc);
void EkrLvup_InitScreen(struct ProcEkrLevelup * proc);
void EkrLvup_InitLevelUpBox(struct ProcEkrLevelup * proc);
void EkrLvup_SetBgs(struct ProcEkrLevelup * proc);
void EkrLvup_InitPalette(struct ProcEkrLevelup * proc);
void EkrLvup_PutWindowOnScreen(struct ProcEkrLevelup * proc);
void EkrLvup_PrepareApGfx(struct ProcEkrLevelup * proc);
void EkrLvup_Promo_WindowScroll0(struct ProcEkrLevelup * proc);
void EkrLvup_Promo_DrawPromoNewClassName(struct ProcEkrLevelup * proc);
void EkrLvup_Promo_WindowScroll1(struct ProcEkrLevelup * proc);
void EkrLvup_DrawNewLevel(struct ProcEkrLevelup * proc);
void EkrLvup_InitCounterForMainAnim(struct ProcEkrLevelup * proc);
void EkrLvup_MainAnime(struct ProcEkrLevelup * proc);
void EkrLvup_SetHBlank(struct ProcEkrLevelup * proc);
void EkrLvup_DoNothing(struct ProcEkrLevelup * proc);
void EkrLvup_PutWindowOffScreen(struct ProcEkrLevelup * proc);
void EkrLvup_ResetScreen(struct ProcEkrLevelup * proc);
void EkrLvup_OnEnd(struct ProcEkrLevelup * proc);

ProcPtr NewEfxPartsofScroll(void);
void sub_8074598(void);
void EfxPartsofScrollCallBack(ProcPtr proc);
void EfxPartsofScrollMain(ProcPtr proc);
ProcPtr NewEfxPartsofScroll2(void);
void EfxPartsofScroll2CallBack(ProcPtr proc);
void EfxPartsofScroll2Main(ProcPtr proc);
ProcPtr NewEfxleveluphb(void);
void EfxleveluphbCallBack(ProcPtr proc);
void EfxleveluphbNop(ProcPtr proc);
void EfxleveluphbMain(ProcPtr proc);
void EkrLvupHBlank(void);
void EfxPartsofScroll2HBlank(void);
void NewEfxlvupbg(struct Anim * anim);
void EfxlvupbgMain(struct ProcEfxBG * proc);
void NewEfxLvupBG2(struct Anim * anim);
void EfxLvupBg2Main(struct ProcEfxBG * proc);
void NewEfxLvupOBJ2(struct Anim * anim, int x, int y);
void EfxLvupOBJ2CallBack(struct ProcEfxOBJ * proc);
void NewEfxLvupBGCOL(struct Anim * anim);
void Loop6C1_EfxLvupBGCOL(struct ProcEfxBGCOL * proc);
void Loop6C2_EfxLvupBGCOL(struct ProcEfxBGCOL * proc);
// ??? EkrLvupApfxInit(???);
// ??? EkrLvupApfxMain(???);
void NewEkrLvupApfx(int index, int pal);
void EkrLvupApfxEndEach(void);
// ??? sub_8074C10(???);
// ??? sub_8074C78(???);
void BanimDrawStatupAp(int, int, int, int, int, int);
// ??? sub_8074E6C(???);
// ??? sub_8074EDC(???);
// ??? sub_8074F14(???);
