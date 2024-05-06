#pragma once

#include "global.h"
#include "proc.h"

struct Proc085AAAC4 {
    PROC_HEADER;

    /* 29 */ STRUCT_PAD(0x29, 0x40);
    /* 40 */ int unk40;
};

struct ProcTactician {
    PROC_HEADER;

    /* 2C */ struct Proc085AAAC4 * child1;
    /* 30 */ u8 line_idx;
    /* 31 */ u8 text_idx;
    /* 32 */ u8 unk32;
    /* 33 */ u8 unk33;
    /* 34 */ s16 conf_idx;
    /* 36 */ s16 unk36;
    /* 38 */ u8 cur_len;                /* used tactician name string length */
    /* 39 */ u8 unk39;
    /* 3A */ u8 unk3A;
    /* 3A */ u8 unk3B;
    /* 3C */ u8 max_len;                /* pre-configured max string length */
    /* 3D */ char str[0x4C - 0x3D];
    /* 4C */ u16 unk4C[0x10];
};

struct TacticianTextConf {
    /* 00 */ u8 * str[0xC];
    /* 30 */ u16 xpos;
    /* 32 */ u16 unk32;
    /* 34 */ u8 unk34;
    /* 35 */ STRUCT_PAD(0x35, 0x36);
    /* 36 */ s16 unk36[4];
    /* 3E */ u8 unk3E;
};

extern const struct TacticianTextConf gTacticianTextConf[];
struct TacticianTextConf * GetTacticianTextConf(s16);

enum sio_save_config_bitfile {
    SIO_SAVE_CONF_B3 = 1 << 3,
};

struct SioSaveConf {
    u8 _unk0_ : 3;
    u8 _unk3_ : 1;
    u8 _unk4_ : 4;
    u8 _unk8_;
} __attribute__((packed));
extern struct SioSaveConf gSioSaveConfig;

u32 SioStrCpy(u8 const * src, u8 * dst);
void SioDrawNumber(struct Text * text, int x, int color, int number);
void SioInit(void);
void SioPollingMsgAndAck(ProcPtr proc);
void SetBmStLinkArenaFlag(void);
void UnsetBmStLinkArenaFlag(void);
bool CheckInLinkArena(void);    // <!> This function is defined as different types by files, maybe a bug.
void sub_8042EA8(void);

struct Proc_Sio_085A93A0 {
    PROC_HEADER;

    STRUCT_PAD(0x29, 0x58);

    /* 38 */ u32 timer;
};

void sub_8042EB4(struct Proc_Sio_085A93A0 * proc);
void sub_8042EF0(struct Proc_Sio_085A93A0 * proc);
void sub_8042F44(void);
void sub_8042F58(ProcPtr proc);
void sub_8042F84(void);
void sub_8042F98(ProcPtr proc);

struct ProcSioHold {
    PROC_HEADER;

    int x;
    int y, y_min, y_max;
};

void SioHold_Loop(struct ProcSioHold * proc);
// ??? StartSioHold(???);
// ??? EndSioHold(???);
// ??? sub_804303C(???);
void ClearSioBG(void);
// ??? sub_804309C(???);
void sub_8043100(int, int);
void sub_8043164(void);
// ??? sub_80431B4(???);
void SioPlaySoundEffect(int);
// ??? sub_8043244(???);
bool sub_8043268(const u16 * list);
// ??? sub_80432F4(???);
// ??? sub_8043308(???);
// ??? sub_804331C(???);
// ??? sub_804335C(???);
// ??? sub_8043394(???);
// ??? sub_80433C0(???);
// ??? sub_80434B4(???);
// ??? sub_804352C(???);
// ??? sub_8043548(???);
// ??? sub_80435F0(???);
// ??? sub_80436C0(???);
// ??? sub_80437C0(???);
// ??? sub_80438C0(???);
// ??? sub_8043904(???);
// ??? sub_8043B08(???);
// ??? sub_8043B6C(???);
// ??? sub_8043CF4(???);
// ??? sub_8043D3C(???);
// ??? sub_8043D5C(???);
// ??? sub_8043D8C(???);
// ??? sub_8044280(???);
// ??? sub_804429C(???);
// ??? sub_8044324(???);
// ??? sub_80443B0(???);
// ??? sub_8044430(???);
// ??? sub_8044530(???);

void sub_8044560(struct ProcTactician * proc, u8 * str);
void sub_8044614(struct ProcTactician * proc);
void TacticianDrawCharacters(struct ProcTactician * proc);
int StrLen(u8 * buf);
void Tactician_InitScreen(struct ProcTactician * proc);
void SioUpdateTeam(char * str, int team);
void sub_80449E8(struct ProcTactician * proc, int idx, const struct TacticianTextConf * conf);
void TacticianTryAppendChar(struct ProcTactician * proc, const struct TacticianTextConf * conf);
void TacticianTryDeleteChar(struct ProcTactician * proc, const struct TacticianTextConf * conf);
void SaveTactician(struct ProcTactician * proc, const struct TacticianTextConf * conf);
// ??? sub_8044B78(???);
// ??? sub_8044C54(???);
// ??? Tactician_Loop(???);
// ??? sub_8044F84(???);
// ??? sub_8044FE4(???);
// ??? sub_8044FFC(???);
// ??? sub_804503C(???);
// ??? sub_8045068(???);
// ??? NameSelect_DrawName(???);
// ??? sub_8045108(???);
// ??? sub_80451F0(???);
// ??? sub_8045208(???);
// ??? sub_8045234(???);
// ??? sub_804538C(???);
// ??? sub_8045494(???);
// ??? sub_80454E4(???);
// ??? sub_804556C(???);
// ??? sub_8045610(???);
// ??? sub_8045640(???);
// ??? sub_80457F8(???);
// ??? sub_804589C(???);
// ??? sub_80458E8(???);
// ??? sub_8045920(???);
// ??? sub_8045930(???);
// ??? sub_8045A64(???);
// ??? sub_8045AF4(???);
// ??? New6C_SIOMAIN2(???);
// ??? sub_8045C28(???);
// ??? sub_8045C68(???);
// ??? sub_8045CBC(???);
// ??? sub_8045CE0(???);
// ??? sub_8045CEC(???);
// ??? sub_8045DC0(???);
// ??? sub_8045F00(???);
// ??? sub_8045F48(???);
// ??? sub_804619C(???);
// ??? sub_8046234(???);
// ??? sub_80462D4(???);
// ??? sub_80463A8(???);
// ??? sub_804645C(???);
// ??? sub_8046478(???);
// ??? sub_80464B0(???);
// ??? sub_8046580(???);
// ??? sub_8046704(???);
// ??? sub_80467AC(???);
// ??? sub_8046838(???);
// ??? sub_80469AC(???);
// ??? sub_80469B8(???);
// ??? sub_80469C4(???);
// ??? sub_8046C64(???);
// ??? sub_8046CF0(???);
// ??? sub_8046D6C(???);
// ??? sub_8046DB4(???);
// ??? sub_8046DD0(???);
// ??? sub_8046DEC(???);
// ??? sub_8046E0C(???);
// ??? sub_8046E4C(???);
// ??? sub_8046E5C(???);
// ??? sub_8046E94(???);
// ??? sub_8046EB8(???);
// ??? sub_8046F68(???);
// ??? sub_8047008(???);
// ??? sub_804720C(???);
// ??? sub_8047308(???);
// ??? sub_8047324(???);
// ??? sub_8047570(???);
// ??? sub_804762C(???);
// ??? sub_8047654(???);
// ??? sub_804766C(???);
// ??? sub_804768C(???);
// ??? sub_80476CC(???);
// ??? sub_8047780(???);
// ??? sub_8047928(???);
int sub_8047A54(ProcPtr, int);

struct Proc85AA9C0
{
    /* 00 */ PROC_HEADER;
    /* 2A */ s16 unk_2a;
    /* 2C */ s16 unk_2c;
    /* 2E */ s8 unk_2e;
};

struct SioMenuProc
{
    /* 00 */ PROC_HEADER;
    /* 2C */ struct Proc85AA9C0 * unk_2c[5];
    /* 40 */ u8 unk_40[4];
    /* 44 */ s8 unk_44;
    /* 48 */ int unk_48;
    /* 4C */ int unk_4c;
    /* 50 */ int unk_50;
    /* 54 */ int unk_54;
    /* 58 */ s8 unk_58;
    /* 59 */ s8 unk_59;
};

// ??? CheckSomethingSaveRelated(???);
// ??? SioMenu_Init(???);
// ??? SioMenu_LoadGraphics(???);
// ??? SioMenu_8047C60(???);
// ??? sub_8047CF0(???);
// ??? SioMenu_RestartGraphicsMaybe(???);
// ??? SioMenu_HandleDPadInput(???);
// ??? SioMenu_Loop_HandleKeyInput(???);
// ??? SioMenu_80480B4(???);
// ??? SioMenu_End(???);
void StartLinkArenaMainMenu(ProcPtr);

void sub_8048260(ProcPtr); // StartNameSelect
// ??? StartTacticianNameSelect(???);

// ??? sub_80482E0(???);
// ??? sub_80483F8(???);
// ??? sub_8048418(???);
// ??? sub_8048460(???);
// ??? sub_80484D8(???);
// ??? sub_8048524(???);
// ??? sub_8048594(???);
// ??? sub_8048604(???);
// ??? sub_804867C(???);
// ??? sub_80486D4(???);
// ??? sub_80486E8(???);
// ??? sub_8048730(???);
// ??? sub_804879C(???);
// ??? sub_80487C0(???);
// ??? sub_804881C(???);
// ??? sub_8048838(???);
void CallEraseSaveEvent(ProcPtr);
// ??? sub_8048864(???);
// ??? sub_8048884(???);
// ??? sub_8048934(???);
// ??? sub_8048988(???);
// ??? nullsub_43(???);
// ??? sub_8048A6C(???);
// ??? sub_8048A94(???);
// ??? sub_8048AA8(???);
// ??? sub_8048B78(???);
// ??? sub_8048CB8(???);
// ??? sub_8048D1C(???);
// ??? sub_8048D64(???);
// ??? sub_8048DD0(???);
// ??? sub_8048E6C(???);
// ??? sub_8048E84(???);
// ??? sub_8048EB8(???);
// ??? sub_8048FD4(???);
// ??? sub_80490EC(???);
// ??? sub_8049238(???);
// ??? sub_804926C(???);
// ??? sub_8049298(???);
// ??? sub_80492B8(???);
// ??? sub_80492D8(???);
// ??? sub_80492E8(???);
// ??? sub_804933C(???);
// ??? sub_8049350(???);
// ??? sub_80493A8(???);
// ??? sub_80493D0(???);
// ??? sub_80494D4(???);
// ??? sub_80494F0(???);
// ??? sub_8049594(???);
// ??? sub_80495F4(???);
void sub_80496A4(void);
// ??? sub_804970C(???);
// ??? sub_8049744(???);
void sub_8049788(void);
// ??? sub_80497A0(???);
void sub_80497CC(void);
// ??? sub_8049828(???);
// ??? sub_80498F4(???);
// ??? sub_8049940(???);
// ??? sub_8049964(???);
// ??? sub_80499D0(???);
// ??? sub_8049A60(???);
// ??? sub_8049B04(???);
// ??? sub_8049B24(???);
// ??? sub_8049C18(???);
// ??? sub_8049C94(???);
// ??? sub_8049CD4(???);
// ??? sub_8049D0C(???);
// ??? sub_8049D24(???);
// ??? sub_8049F38(???);
// ??? sub_8049F44(???);
// ??? sub_804A108(???);
// ??? sub_804A158(???);
// ??? sub_804A1D0(???);
// ??? sub_804A298(???);
// ??? sub_804A3A8(???);
// ??? sub_804A430(???);
// ??? sub_804A44C(???);
// ??? sub_804A51C(???);
// ??? sub_804A5A4(???);
// ??? sub_804A614(???);
// ??? sub_804A6A4(???);
// ??? sub_804A7C0(???);
// ??? sub_804A914(???);
// ??? sub_804A9A4(???);
// ??? sub_804AA88(???);
// ??? sub_804AAA4(???);
// ??? sub_804AADC(???);
// ??? sub_804AAFC(???);
// ??? sub_804ABB4(???);
// ??? sub_804ABCC(???);
// ??? sub_804AC68(???);
// ??? sub_804ACAC(???);
// ??? sub_804ACC4(???);
// ??? sub_804ADA0(???);
// ??? sub_804AE08(???);
// ??? sub_804AE7C(???);
// ??? sub_804AEC4(???);
// ??? ITEMRANGEDONE_sub_804AF2C(???);
// ??? sub_804AF5C(???);
// ??? sub_804B190(???);
// ??? sub_804B1C0(???);
// ??? sub_804B250(???);
// ??? sub_804B278(???);
// ??? sub_804B38C(???);
// ??? sub_804B3A0(???);
// ??? sub_804B3B0(???);
// ??? sub_804B3D0(???);
// ??? sub_804B408(???);
// ??? sub_804B43C(???);
// ??? sub_804B480(???);
// ??? sub_804B518(???);
// ??? sub_804B554(???);
// ??? sub_804B5E0(???);
// ??? sub_804B604(???);
// ??? sub_804B624(???);
// ??? sub_804B6AC(???);
// ??? sub_804B6B8(???);
// ??? sub_804B6CC(???);
// ??? sub_804B6F4(???);
// ??? sub_804B708(???);
// ??? sub_804B71C(???);
// ??? sub_804B76C(???);
// ??? sub_804B7E4(???);
// ??? sub_804B800(???);
// ??? sub_804B850(???);
// ??? sub_804B8D0(???);
void Set_0203DDDC(void);
void Clear_0203DDDC(void);
// ??? sub_804B938(???);
// ??? sub_804B964(???);
// ??? sub_804B9A4(???);
// ??? sub_804B9BC(???);
// ??? sub_804B9E4(???);
// ??? sub_804BB54(???);
// ??? sub_804BBA0(???);
// ??? sub_804BC3C(???);
// ??? sub_804BC84(???);
// ??? sub_804BD2C(???);
// ??? sub_804BD3C(???);
// ??? sub_804BDD8(???);
// ??? sub_804BDFC(???);
// ??? sub_804BE88(???);
// ??? sub_804BE98(???);
// ??? sub_804BEB8(???);
// ??? sub_804BED8(???);
// ??? sub_804BF30(???);
// ??? sub_804BF4C(???);
// ??? sub_804BFAC(???);
// ??? sub_804BFF8(???);
// ??? sub_804C02C(???);
// ??? sub_804C078(???);
// ??? sub_804C12C(???);
// ??? sub_804C148(???);
// ??? sub_804C178(???);
// ??? sub_804C188(???);
// ??? sub_804C194(???);
// ??? sub_804C1B8(???);
// ??? sub_804C1D8(???);
// ??? sub_804C1E4(???);
// ??? sub_804C208(???);
// ??? sub_804C260(???);
// ??? sub_804C2B8(???);
// ??? sub_804C2DC(???);
// ??? sub_804C2EC(???);
// ??? sub_804C31C(???);
void InitSioBG(void);
// ??? sub_804C3A0(???);
// ??? sub_804C3A4(???);
void nullsub_13(void);
// ??? sub_804C3AC(???);
// ??? sub_804C3EC(???);
// ??? sub_804C47C(???);
void NewProc085AA980(ProcPtr parent, int, int);
// ??? sub_804C4F8(???);
void sub_804C508(void);
// ??? sub_804C558(???);
// ??? sub_804C590(???);
// ??? sub_804C5A4(???);
// ??? sub_804C5F8(???);
ProcPtr sub_804C758(ProcPtr, u8, u8, u8, u8);
void sub_804C7C8(ProcPtr, int, int, int, int);
void sub_804C7DC(ProcPtr, s16, s16);
// ??? sub_804C7E4(???);
// ??? sub_804C83C(???);
// ??? sub_804C894(???);
// ??? sub_804CAEC(???);
// ??? sub_804CB94(???);
// ??? sub_804CC14(???);
// ??? sub_804CC5C(???);
// ??? sub_804CC78(???);
// ??? sub_804CCCC(???);
ProcPtr NewProc_085AAAC4(ProcPtr parent, int a, int b);
void sub_804CDD0(void *, int, int, int, int, int);
// ??? sub_804CDE8(???);
// ??? sub_804CE5C(???);
// ??? sub_804CE8C(???);
// ??? sub_804CEB0(???);
// ??? sub_804CEC4(???);
// ??? sub_804CECC(???);
// ??? sub_804CF04(???);
void sub_804CFB8(ProcPtr, s16, s16);
// ??? sub_804CFE0(???);
// ??? sub_804D01C(???);
// ??? sub_804D1E0(???);
// ??? sub_804D24C(???);
// ??? sub_804D2A4(???);
// ??? sub_804D37C(???);
// ??? StopBGM2(???);
// ??? sub_804D3F0(???);
// ??? sub_804D40C(???);
// ??? sub_804D428(???);
// ??? sub_804D47C(???);
// ??? sub_804D664(???);
// ??? sub_804D6B4(???);
// ??? sub_804D6C4(???);
// ??? sub_804D6D4(???);
// ??? sub_804D724(???);
// ??? sub_804D778(???);
// ??? sub_804D7B0(???);
// ??? sub_804D7DC(???);
void sub_804D80C(void);
void sub_804D834(int, int);
// ??? sub_804D858(???);
// ??? sub_804D8A4(???);
// ??? sub_804D8C8(???);
// ??? sub_804D8DC(???);
// ??? sub_804D940(???);
// ??? sub_804D950(???);
// ??? sub_804D9C4(???);
// ??? sub_804DA00(???);
// ??? sub_804DDF0(???);
// ??? sub_804DE3C(???);
// ??? sub_804DE60(???);
// ??? sub_804DF24(???);
// ??? sub_804DF38(???);
// ??? sub_804E024(???);
// ??? sub_804E03C(???);

// extern ??? gUnk_Sio_02000000

// extern ??? gLinkArenaSt
// extern ??? gUnknown_0203DA30
// extern ??? gUnk_Sio_0203DA78
extern struct Text gUnk_Sio_0203DA88[];
extern struct Text Texts_0203DAB0;
// extern ??? gUnk_Sio_0203DAC0
// extern ??? gUnk_Sio_0203DAC5

extern struct Text Texts_0203DB14[10];
// extern ??? gUnk_Sio_0203DB1C
extern struct Font Font_0203DB64;
// extern ??? gUnk_Sio_0203DB7C
// extern ??? gUnk_Sio_0203DC44
// extern ??? gUnk_Sio_0203DC48
extern struct Text gSioTexts[];
extern struct Text Text_0203DB14;
extern u8 gUnk_Sio_0203DD24;
// extern ??? gUnk_Sio_0203DD28
extern u16 gUnk_Sio_0203DD2C[];
extern int gUnk_Sio_0203DD4C;
// extern ??? gUnk_Sio_0203DD50
// extern ??? gUnk_Sio_0203DD8C
// extern ??? gUnk_Sio_0203DD90
// extern ??? gUnk_Sio_0203DD94
// extern ??? gUnk_Sio_0203DD95
// extern ??? gUnk_Sio_0203DD9A
// extern ??? gUnk_Sio_0203DD9F
// extern ??? gUnk_Sio_0203DDB4
// extern ??? gUnk_Sio_0203DDDC

// extern ??? gUnknown_080D8714
extern s16 gUnknown_080D9C9E[];
// extern ??? gUnknown_080D9D34
// extern ??? gUnknown_080D9D4D
// extern ??? gUnknown_080D9D56
// extern ??? gUnknown_080D9D5E
// extern ??? gUnknown_080D9D61
// extern ??? gUnknown_080D9DE4
// extern ??? gUnknown_080D9DF2
// extern ??? gUnknown_080D9E06
// extern ??? gUnknown_080D9E0E
// extern ??? gUnknown_080D9E1C
// extern ??? gUnknown_080D9E44
// extern ??? gUnknown_080D9E50
// extern ??? gUnknown_080D9E9C
// extern ??? gUnknown_080D9EA6
// extern ??? gUnknown_080D9EC0
// extern ??? gUnknown_080D9EC8
// extern ??? gUnknown_080D9EF0
// extern ??? SioMenuProcLut
// extern ??? gUnknown_080D9F18
// extern ??? gUnknown_080D9F20
// extern ??? gUnknown_080D9F28
// extern ??? gUnknown_080D9F38
// extern ??? gUnknown_080D9F48
// extern ??? gUnknown_080D9F98
// extern ??? gUnknown_080D9FA0
// extern ??? gUnknown_080D9FA8
// extern ??? gUnknown_080D9FB0
// extern ??? gUnknown_080D9FB5
// extern ??? gUnknown_080D9FB7
// extern ??? gUnknown_080D9FD6
// extern ??? SioDefaultBgConfig
// extern ??? gUnknown_080DA09C
// extern ??? gUnknown_080DA0DA
// extern ??? gUnknown_080DA0FA
// extern ??? gUnknown_080DA102
// extern ??? gUnknown_080DA132
// extern ??? gUnknown_080DA17A
// extern ??? gUnknown_080DA18E
// extern ??? gUnknown_080DA1A2
// extern ??? gUnknown_080DA1B6
// extern ??? gUnknown_080DA1CA
// extern ??? gUnknown_080DA20C
// extern ??? gUnknown_080DA21C
// extern ??? gUnknown_080DA22C
// extern ??? gUnknown_080DA25C
// extern ??? gUnknown_080DA26A
// extern ??? gUnknown_080DA27E
// extern ??? gUnknown_080DA2B0

extern CONST_DATA struct ProcCmd ProcScr_SIOCON[];
extern CONST_DATA struct ProcCmd ProcScr_SIOVSYNC[];
extern CONST_DATA struct ProcCmd ProcScr_SIOMAIN[];
extern CONST_DATA u8 * gpSioUnkBuffer;
extern CONST_DATA struct ProcCmd gUnknown_085A93A0[];
extern CONST_DATA struct ProcCmd ProcScr_HOLD[];
// extern ??? gSioList_085A93E0
extern CONST_DATA u16 gSioList_085A93F0[];
// extern ??? gUnknown_085A94A0
extern CONST_DATA struct ProcCmd ProcScr_Sio_085A94AC[];
// extern ??? ProcScr_TacticianNameSelection
// extern ??? gUnknown_085A96D4
extern struct ProcCmd ProcScr_DebugMonitor[];
extern struct ProcCmd ProcScr_SIOTERM[];
extern struct ProcCmd ProcScr_SIOPRA[];
extern struct ProcCmd ProcScr_SIOBAT[];
extern struct ProcCmd ProcScr_SIORESULT[];
extern struct ProcCmd ProcScr_SIO_RuleSettings[];

extern int gUnknown_03001808;
extern int gUnknown_0300180C;
// extern ??? gUnknown_03001810
// extern ??? gUnknown_03001818
// extern ??? gUnknown_0300182C
// extern ??? gUnknown_03001830
// extern ??? gUnknown_03001834
// extern ??? gUnknown_03001838
// extern ??? gUnknown_03001840
// extern ??? gUnknown_03001850
// extern ??? gUnknown_03001860
// extern ??? gUnknown_03001864
