#include "global.h"

#include "m4a.h"
#include "soundwrapper.h"
#include "fontgrp.h"
#include "statscreen.h"
#include "bmsave.h"
#include "bmunit.h"
#include "hardware.h"
#include "uiutils.h"
#include "bm.h"
#include "ap.h"
#include "gamecontrol.h"
#include "bmlib.h"
#include "eventinfo.h"
#include "soundroom.h"
#include "bonusclaim.h"
#include "worldmap.h"
#include "bonusclaim.h"
#include "sysutil.h"
#include "helpbox.h"
#include "savemenu.h"
#include "uisupport.h"

#include "constants/characters.h"

extern u16 gUnknown_020007A0[];

EWRAM_DATA struct SaveMenuRTextData gSaveMenuRTextData = { 0 };

// TODO: Implicit declaration
int LoadBonusContentData(void *);

//! FE8U = 0x080A882C
void sub_80A882C(ProcPtr proc)
{
    Proc_Goto(proc, 18);
    StartBgmVolumeChange(0xc0, 0, 0x10, 0);
}

//! FE8U = 0x080A8844
u8 SaveMenuGetSelectBitMask(u8 bitfile, u32 index)
{
    int i, count = 0;

    for (i = 0; i < CHAR_BIT; i++)
    {
        if (((bitfile >> i) & 1) != 0)
        {
            if (index == count)
                return (1 << i & 0xff);

            count++;
        }
    }
    return -1;
}

//! FE8U = 0x080A887C
u8 sub_80A887C(u8 a, u8 b)
{
    int i;
    int count = 0;

    for (i = 0; i < CHAR_BIT; i++)
    {
        if (((a >> i) & 1) != 0)
        {
            if (((b >> i) & 1) != 0)
                return count;

            count++;
        }
    }
    return -1;
}

//! FE8U = 0x080A88B8
u8 sub_80A88B8(u8 a)
{
    int i;
    for (i = 0; i < 8; i++)
        if (((a >> i) & 1) != 0)
            return i;

    return -1;
}

//! FE8U = 0x080A88E0
void sub_80A88E0(struct SaveMenuProc * proc)
{

    if ((proc->sus_slot_cur == (u8)-1) || (proc->unk_36 == 0))
    {
        CloseHelpBox();
        proc->unk_3e = 0;
        return;
    }

    switch (proc->main_sel_bitmask) {
    case 2:
    case 0x10:
    case 0x20:
        if ((proc->unk_36 != 0) && (proc->unk_3e == 0))
        {
            LoadHelpBoxGfx((void*)0x06014000, 9);
            StartHelpBoxExt_Unk(0x30, 0x30, 0x882);
            proc->unk_3e = 1;
        }
        break;
    }
}

//! FE8U = 0x080A8950
int LoadSaveMenuHelpText(int slot)
{
    int leaderId;
    struct GameSaveBlock *saveBase;
    int i;
    struct PlaySt chapterData;
    struct Unit unit;
    struct GMapData mapData;
    u8 localbuffer[4] __attribute__((unused));

    if (!IsSaveValid(slot))
        return 0;

    ReadGameSavePlaySt(slot, &chapterData);

    switch (chapterData.chapterModeIndex) {
    case CHAPTER_MODE_COMMON:
    case CHAPTER_MODE_EIRIKA:
    default:
        leaderId = CHARACTER_EIRIKA;
        break;

    case CHAPTER_MODE_EPHRAIM:
        leaderId = CHARACTER_EPHRAIM;
        break;
    }

    saveBase = GetSaveReadAddr(slot);

    for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
    {
        LoadSavedUnit(&saveBase->units[i], &unit);
        if (unit.pCharacterData != NULL && unit.pCharacterData->number == leaderId)
            break;
    }

    if (i < UNIT_SAVE_AMOUNT_BLUE)
    {
        gSaveMenuRTextData.pid = leaderId;
        gSaveMenuRTextData.level = unit.level;

        ReadWorldMapStuff(&saveBase->wmStuff, &mapData);
        gSaveMenuRTextData.nodeId = mapData.units[0].location;

        return 2;
    }

    sub_80AA700();
    return 2;
}

//! FE8U = 0x080A89E4
bool SaveMenuWaitHelpBoxAnim(struct SaveMenuProc * proc)
{
    /**
     * During open/close helpbox, player cannot control via button.
     * Here we give the helpbox 8 frame on switching.
     */

    int time, _timer_default = CTRL_TIMER_MAX;

    if (proc->ctrl_timer == CTRL_TIMER_MAX)
    {
        if (gKeyStatusPtr->newKeys & (B_BUTTON | R_BUTTON | DPAD_ANY))
        {
            CloseHelpBox();
            proc->ctrl_timer = CTRL_TIMER_MAX - 1;
        }
    }
    else if (gKeyStatusPtr->newKeys & R_BUTTON)
    {
        switch (LoadSaveMenuHelpText(proc->sus_slot)) {
        case 0:
            PlaySoundEffect(0x6c);
            break;
        case 1:
        case 2:
            LoadHelpBoxGfx((void*)0x06014000, 9);
            StartItemHelpBox(0x50, proc->sus_slot * 0x20 + 0x2c, 0xFFFE);
            proc->ctrl_timer = _timer_default;
            break;
        }
    }

    time = proc->ctrl_timer;
    if (time == 0)
        return false;

    if (time < _timer_default)
        proc->ctrl_timer--;

    time = proc->ctrl_timer;
    if (time != 0)
        return true;

    return false;
}

//! FE8U = 0x080A8A9C
void sub_80A8A9C(struct SaveMenuProc * proc)
{
    int i;

    sub_8089678(0xac0);

    for (i = 0; i < 3; i++) {
        if (proc->chapter_idx[i] != (u8)-1) {
            sub_8089624(((0x16800 + (0x800 * (u32)i)) & 0x1FFFF) / 0x20, proc->chapter_idx[i]);
        } else {
            sub_8089624(((0x16800 + (0x800 * (u32)i)) & 0x1FFFF) / 0x20, -1);
        }
    }
}

u16 CONST_DATA gBgConfig_SaveMenu[] = {
    0x0000, 0x6000, 0x0000,
    0x0000, 0x6800, 0x0000,
    0x8000, 0x7000, 0x0000,
    0x8000, 0x7800, 0x0000,
};

//! FE8U = 0x080A8AF0
void SaveMenu_SetLcdChapterIdx(void)
{
    int node;
    u32 chapterId;

    if (!(gPlaySt.chapterStateBits & PLAY_FLAG_COMPLETE)) {

        chapterId = gPlaySt.chapterIndex;

        if ((gGMData.state.raw & 3) == 3) {
            if (chapterId > 0x01 && chapterId != 0x38) {

                node = GetNextUnclearedNode(&gGMData);
                if (node < 0) {
                    node = 0;
                }

                gPlaySt.chapterIndex = WMLoc_GetChapterId(node);
            }
        } else {
            if (gPlaySt.chapterIndex == 0x06 && CheckFlag(0x88) != 0) {
                gPlaySt.chapterIndex = 0x38;
            } else {
                if (chapterId != 0x01 && chapterId != 0x0A && chapterId != 0x17) {
                    if (gPlaySt.save_menu_type != 2) {
                        if (!(gBmSt.gameStateBits & 0x10)) {
                            gPlaySt.chapterIndex = sub_80BD224(&gGMData);
                        }
                    }
                }
            }
        }
    }

    sub_80AA700();

    SetupBackgrounds(gBgConfig_SaveMenu);

    gLCDControlBuffer.dispcnt.bg0_on = 0;
    gLCDControlBuffer.dispcnt.bg1_on = 0;
    gLCDControlBuffer.dispcnt.bg2_on = 0;
    gLCDControlBuffer.dispcnt.bg3_on = 0;
    gLCDControlBuffer.dispcnt.obj_on = 0;

    gLCDControlBuffer.dispcnt.mode = 0;

    gLCDControlBuffer.bg0cnt.priority = 0;
    gLCDControlBuffer.bg1cnt.priority = 1;
    gLCDControlBuffer.bg2cnt.priority = 2;
    gLCDControlBuffer.bg3cnt.priority = 3;

    SetBlendTargetA(0, 0, 1, 0, 0);
    SetBlendTargetB(0, 0, 0, 1, 0);

    SetBlendBackdropA(0);
    SetBlendBackdropB(0);

    SetBlendConfig(1, 6, 0x10, 0);
}

//! FE8U = 0x080A8C2C
void SaveMenu_Init(void)
{
    sub_80AA700();

    SetupBackgrounds(gBgConfig_SaveMenu);

    gLCDControlBuffer.dispcnt.bg0_on = 0;
    gLCDControlBuffer.dispcnt.bg1_on = 0;
    gLCDControlBuffer.dispcnt.bg2_on = 0;
    gLCDControlBuffer.dispcnt.bg3_on = 0;
    gLCDControlBuffer.dispcnt.obj_on = 0;

    gLCDControlBuffer.dispcnt.mode = 0;

    gLCDControlBuffer.bg0cnt.priority = 0;
    gLCDControlBuffer.bg1cnt.priority = 1;
    gLCDControlBuffer.bg2cnt.priority = 2;
    gLCDControlBuffer.bg3cnt.priority = 3;

    SetBlendTargetA(0, 0, 1, 0, 0);
    SetBlendTargetB(0, 0, 0, 1, 0);

    SetBlendBackdropA(0);
    SetBlendBackdropB(0);

    SetBlendConfig(1, 6, 0x10, 0);
}

//! FE8U = 0x080A8CD4
void ProcSaveMenu_InitScreen(struct SaveMenuProc * proc)
{
    int i;

    ResetTextFont();

    LoadUiFrameGraphics();
    LoadObjUIGfx();

    ApplyPalettes(gUnknown_08A25DCC, 8, 8);

    Decompress(gUnknown_08A21658, (void*)(GetBackgroundTileDataOffset(3) + 0x6000000));

    CallARM_FillTileRect(gBG3TilemapBuffer, gUnknown_08A25ECC, 0x8000);

    ApplyPalette(gUnknown_08A268D8, 7);

    Decompress(gUnknown_08A26380, (void*)(GetBackgroundTileDataOffset(3) + 0x06004C00));

    Decompress(gUnknown_08A268F8, gGenericBuffer);
    CallARM_FillTileRect(gBG2TilemapBuffer, gGenericBuffer, 0x00007260);

    Decompress(Img_SaveScreenSprits, (void*)0x06010800);

    ApplyPalettes(Pal_SaveScreenSprits, 0x12, 8);
    ApplyPalette(gUnknown_08A295B4, 2);

    sub_80AA790(PAL_OBJ(0x2), PAL_OBJ(0x2) - 0x10, 1);
    sub_80AA790(gUnknown_08A2C23C, gUnknown_020007A0, 2);

    BG_EnableSyncByMask(0xf);

    proc->scroll_cnt = 0;

    gLCDControlBuffer.wincnt.win0_enableBlend = 1;
    gLCDControlBuffer.wincnt.win1_enableBlend = 1;

    proc->unk_36 = 0;
    proc->cursor_slot = -1;
    proc->unk_3d = 0;

    for (i = 0; i < 4; i++) {
        SetObjAffine(
            i,
            Div(+COS(0) * 16, 0x100),
            Div(-SIN(0) * 16, 0x100),
            Div(+SIN(0) * 16, 0x100),
            Div(+COS(0) * 16, 0x100)
        );
    }

    proc->unk_44 = 0x100;
    proc->sus_slot_cur = -1;
    proc->unk_3e = 0;
    proc->ctrl_timer = 0;

    for (i = 0; i < 4; i++) {
        sub_80ABC14(i, proc);
    }

    sub_80ABD88(proc->sus_slot);
    sub_80AB794();

    BG_EnableSyncByMask(2);

    gLCDControlBuffer.dispcnt.win0_on = 0;
    gLCDControlBuffer.dispcnt.win1_on = 0;
    gLCDControlBuffer.dispcnt.objWin_on = 0;

    gPaletteBuffer[PAL_BACKDROP_OFFSET] = 0;
    EnablePaletteSync();

    sub_80A8A9C(proc);

    proc->savedraw = StartSaveDraw(proc);
}

//! FE8U = 0x080A8F04
void SaveMenu_LoadExtraMenuGraphics(struct SaveMenuProc * proc)
{
    Decompress(Img_GameMainMenuObjs, (void*)0x06014000);
    InitSaveMenuChoice(proc);

    if (proc->main_sel_bitmask == MAIN_MENU_OPTION_EXTRAS)
    {
        proc->main_select = SaveMenuGetValidMenuAmt(MAIN_MENU_OPTION_EXTRAS, proc);
    }
    else
    {
        proc->jump_label = PL_SAVEMENU_MAIN_LOOP;
        proc->sus_slot = 0;
        proc->main_select = 0;
        proc->extra_select = 0;
        proc->unk_46 = 0;
        proc->main_sel_bitmask = SaveMenuGetSelectBitMask(proc->main_options, proc->main_select);
    }

    if (proc->jump_label == PL_SAVEMENU_MAIN_LOOP)
        proc->unk_2f = 0;

    if (proc->jump_label == PL_SAVEMENU_5)
        proc->unk_2f = 0xdc;
}

//! FE8U = 0x080A8F8C
void SaveMenuInit(struct SaveMenuProc * proc)
{
    proc->jump_label = PL_SAVEMENU_5;
    proc->sus_slot = ReadLastGameSaveId();
    proc->main_select = 0;
    proc->extra_select = 0;
    proc->unk_46 = 0;
    proc->main_options = 0x40;
    proc->main_sel_bitmask = 0x40;
    proc->unk_31 = 0;
    proc->unk_2f = 0xdc;
}

//! FE8U = 0x080A8FD0
void SaveMenuInitUnused(struct SaveMenuProc * proc)
{
    proc->jump_label = PL_SAVEMENU_5;
    proc->sus_slot = ReadLastGameSaveId();
    proc->main_select = 0;
    proc->extra_select = 0;
    proc->unk_46 = 0;
    proc->main_options = 0x80;
    proc->main_sel_bitmask = 0x80;
    proc->unk_31 = 0;
    proc->unk_2f = 0xdc;
}

//! FE8U = 0x080A9014
void SaveMenu_JumpToTarget(struct SaveMenuProc * proc)
{
    Proc_Goto(proc, proc->jump_label);
}

//! FE8U = 0x080A9024
void SameMenu_CtrlLoop(struct SaveMenuProc * proc)
{
    proc->jump_label = PL_SAVEMENU_MAIN_LOOP;

    if (gKeyStatusPtr->repeatedKeys & DPAD_UP)
    {
        if (proc->main_select != 0)
        {
            proc->main_select--;
            PlaySoundEffect(0x66);
        }
        else
        {
            if (gKeyStatusPtr->newKeys & DPAD_UP)
            {
                proc->main_select = proc->unk_31 - 1;
                PlaySoundEffect(0x66);
            }
        }
    }
    else if (gKeyStatusPtr->repeatedKeys & DPAD_DOWN)
    {
        if (proc->main_select < proc->unk_31 - 1)
        {
            proc->main_select++;
            PlaySoundEffect(0x66);
        }
        else
        {
            if (gKeyStatusPtr->newKeys & DPAD_DOWN)
            {
                proc->main_select = 0;
                PlaySoundEffect(0x66);
            }
        }
    }

    if (gKeyStatusPtr->newKeys & A_BUTTON)
    {
        proc->main_sel_bitmask = SaveMenuGetSelectBitMask(proc->main_options, proc->main_select);
        PlaySoundEffect(0x6a);
        proc->scroll_cnt = 0;

        switch (proc->main_sel_bitmask) {
        case MAIN_MENU_OPTION_RESUME:
            proc->sus_slot = proc->sus_slot_cur;
            Proc_Goto(proc, PL_SAVEMENU_3);
            break;

        case MAIN_MENU_OPTION_RESTART:
        case MAIN_MENU_OPTION_COPY:
        case MAIN_MENU_OPTION_ERASE:
            proc->sus_slot = SaveMenuModifySaveSlot(ReadLastGameSaveId(), 1, 1);
            Proc_Goto(proc, PL_SAVEMENU_3);
            break;

        case MAIN_MENU_OPTION_NEW_GAME:
            proc->sus_slot = SaveMenuModifySaveSlot(proc->sus_slot, 0, 1);
            Proc_Goto(proc, PL_SAVEMENU_1);
            StartBgmVolumeChange(0xC0, 0x100, 0x10, 0);
            break;

        case MAIN_MENU_OPTION_EXTRAS:
            if (proc->extra_select >= proc->max_choice)
                proc->extra_select = 0;

            Proc_Goto(proc, PL_SAVEMENU_8);
            break;

        default:
            return;
        }
    } else if (gKeyStatusPtr->newKeys & B_BUTTON) {
        PlaySoundEffect(0x6b);
        Proc_Goto(proc, PL_SAVEMENU_NEW_GAME);
        proc->main_sel_bitmask = 0x100;
    }
}

//! FE8U = 0x080A9250
void SaveMenuWriteNewGame(struct SaveMenuProc * proc)
{
    int isDifficult;
    s8 isTutorial;

    switch (proc->difficulty) {
        case 0:
            isTutorial = 0;
            isDifficult = 0;
            break;
        case 1:
            isTutorial = 1;
            isDifficult = 0;
            break;
        case 2:
            isTutorial = 1;
            isDifficult = 1;
            break;
    }

    WriteNewGameSave(proc->sus_slot, isDifficult, 1, isTutorial);
}

//! FE8U = 0x080A9290
void sub_80A9290(struct SaveMenuProc * proc)
{

    if (proc->unk_36 == 0) {
        PlaySoundEffect(0x6a);

        switch (proc->main_sel_bitmask) {
            case 0x4:
                if (proc->cursor_slot == (u8)-1) {
                    proc->cursor_slot = proc->sus_slot;
                    sub_80AB9FC(proc, 1);
                    return;
                }

                CopyGameSave(proc->cursor_slot, proc->sus_slot);
                Proc_Goto(proc, 6);

                return;

            case 0x8:
                proc->unk_36 = 2;
                sub_80AB83C(proc, 1);
                break;

            case 0x40:
                proc->unk_36 = 1;
                sub_80AB83C(proc, 1);
                break;

            case 0x2:
            case 0x20:
            case 0x10:
                proc->unk_36 = 2;
                sub_80AB83C(proc, 1);
                break;
        }

        sub_80A88E0(proc);
        return;
    }

    switch (proc->main_sel_bitmask) {
        case 0x20:
            if (proc->unk_36 == 1) {
                proc->unk_44 = 0xf0;

                ReadGameSave(proc->sus_slot);

                PlaySoundEffect(0x6a);

                if (proc->extra_sel_bitmask != 0x10) {
                    if (proc->extra_sel_bitmask == 0x20) {
                        Proc_Goto(proc, 14);
                    }

                    break;
                }
                sub_80A882C(proc);
            } else {
                PlaySoundEffect(0x6b);
            }

            break;

        case 2:
            if (proc->unk_36 == 1) {
                proc->unk_44 = 0xf0;
                PlaySoundEffect(0x6a);
                sub_80A882C(proc);
            } else {
                PlaySoundEffect(0x6b);
            }

            break;

        case 0x10:
            if (proc->unk_36 == 1) {
                SaveMenuWriteNewGame(proc);
            _080A9432:
                Proc_Goto(proc, 6);
                PlaySoundEffect(0x60);
            } else {
                PlaySoundEffect(0x6b);
            }

            break;

        case 8:
            if (proc->unk_36 == 1) {
                InvalidateGameSave(proc->sus_slot);
                Proc_Goto(proc, 6);
                PlaySoundEffect(0x6a);
            } else {
                PlaySoundEffect(0x6b);
            }

            break;

        case 0x40:
            if (proc->unk_36 == 1) {
                WriteGameSave(proc->sus_slot);
                Proc_Goto(proc, 6);
                PlaySoundEffect(0x60);
            } else {
                Proc_Goto(proc, 0x11);
                proc->main_sel_bitmask |= 0x100;
                PlaySoundEffect(0x6b);
            }

            break;
    }

    sub_80AB83C(proc, 0);
    sub_80A88E0(proc);
}

//! FE8U = 0x080A9494
void SaveMenuPostChapterIDLE(struct SaveMenuProc * proc)
{

    proc->jump_label = PL_SAVEMENU_5;

    if (SaveMenuWaitHelpBoxAnim(proc))
        return;

    if (proc->unk_36 == 0)
    {
        if (gKeyStatusPtr->newKeys & DPAD_UP)
        {
            if (sub_80AB9FC(proc, -1) != 0)
            {
                PlaySoundEffect(0x66);
            }
        }
        else if (gKeyStatusPtr->newKeys & DPAD_DOWN)
        {
            if (sub_80AB9FC(proc, 1) != 0)
            {
                PlaySoundEffect(0x66);
            }
        }
    }
    else if (gKeyStatusPtr->newKeys & DPAD_LEFT)
    {
        if (proc->unk_36 != 1) {
            proc->unk_36 = 1;
            PlaySoundEffect(0x67);
            sub_80A88E0(proc);
        }
    }
    else if (gKeyStatusPtr->newKeys & DPAD_RIGHT)
    {
        if (proc->unk_36 != 2) {
            proc->unk_36 = 2;
            PlaySoundEffect(0x67);
            sub_80A88E0(proc);
        }
    }

    if (gKeyStatusPtr->newKeys & A_BUTTON)
    {
        proc->scroll_cnt = 0;

        switch (proc->main_sel_bitmask) {
        case 2:
            if (proc->sus_slot_cur != (u8)-1)
            {
                sub_80A9290(proc);
                return;
            }

            PlaySoundEffect(0x6a);
            sub_80A882C(proc);
            return;

        case 0x80:
            if (proc->sus_slot_cur != (u8)-1)
                proc->unk_44 = 0xf0;

            PlaySoundEffect(0x6a);
            sub_80A882C(proc);
            return;

        case 1:
            PlaySoundEffect(0x6a);
            sub_80A882C(proc);
            return;

        case 0x10:
            if (proc->sus_slot_cur == (u8)-1)
                break;

            PlaySoundEffect(0x6a);
            sub_80A9290(proc);
            return;
        case 4:
        case 8:
        case 0x40:
            sub_80A9290(proc);
            return;

        default:
            return;
        }

        SaveMenuWriteNewGame(proc);
        Proc_Goto(proc, 6);
        PlaySoundEffect(0x60);
        return;

    }
    else if (gKeyStatusPtr->newKeys & B_BUTTON)
    {
        proc->scroll_cnt = 0;
        PlaySoundEffect(0x6b);

        if (proc->unk_36 != 0)
        {
            sub_80AB83C(proc, 0);
            sub_80A88E0(proc);
            return;
        }

        if (proc->cursor_slot != (u8)-1)
        {
            proc->sus_slot = proc->cursor_slot;
            proc->cursor_slot = -1;
            return;
        }

        if ((proc->main_sel_bitmask & 0xc0) != 0)
        {
            Proc_Goto(proc, 17);
            proc->main_sel_bitmask |= 0x100;
            return;
        }

        Proc_Goto(proc, PL_SAVEMENU_4);
    }
}

//! FE8U = 0x080A96D0
void sub_80A96D0(struct SaveMenuProc * proc)
{
    sub_80A9290(proc);
}

//! FE8U = 0x080A96DC
void sub_80A96DC(struct SaveMenuProc * proc)
{
    proc->jump_label = PL_SAVEMENU_6;
    proc->scroll_cnt = 0;
}

//! FE8U = 0x080A96EC
void sub_80A96EC(struct SaveMenuProc * proc)
{

    if (proc->scroll_cnt == 8)
    {
        sub_80ABC14(proc->sus_slot, proc);
        sub_80ABC14(4, proc);

        if (proc->chapter_idx[proc->sus_slot] != (u8)-1)
            sub_8089624(((u32)(proc->sus_slot * 0x800 + 0x16800) & 0x0001FFFF) >> 5, proc->chapter_idx[proc->sus_slot]);
        else
            sub_8089624(((u32)(proc->sus_slot * 0x800 + 0x16800) & 0x0001FFFF) >> 5, -1);

        sub_80ABD88(proc->sus_slot);

    }
    else if (proc->scroll_cnt == 0x20)
    {
        InitSaveMenuChoice(proc);

        if (proc->main_sel_bitmask == MAIN_MENU_OPTION_NEW_GAME)
        {
            Proc_Goto(proc, PL_SAVEMENU_NEW_GAME);
            StartBgmVolumeChange(0xc0, 0, 0x10, 0);
        } else if (proc->main_sel_bitmask == MAIN_MENU_OPTION_INVALID)
        {
            Proc_Goto(proc, PL_SAVEMENU_EXIT_FADE);
        }
        else if (sub_80ABA98(proc) != 0)
        {
            if (proc->cursor_slot != (u8)-1) {
                proc->sus_slot = proc->cursor_slot;
                proc->cursor_slot = -1;
            } else {
                proc->sus_slot = SaveMenuModifySaveSlot(proc->sus_slot, 1, 1);
            }

            Proc_Goto(proc, 5);
        }
    }
    else if (proc->scroll_cnt == 0x30)
    {
        proc->sus_slot = 0;
        proc->cursor_slot = -1;
        proc->scroll_cnt = 0;
        proc->main_select = 0;
        proc->main_sel_bitmask = SaveMenuGetSelectBitMask(proc->main_options, 0);

        PlaySoundEffect(0x6b);
        Proc_Goto(proc, 4);

        return;
    }

    if (proc->scroll_cnt == 0x10)
    {
        SetObjAffine(
            proc->sus_slot,
            Div(+COS(0) * 16, 0x100),
            Div(-SIN(0) * 16, 0x100),
            Div(+SIN(0) * 16, 0x100),
            Div(+COS(0) * 16, 0x100)
        );
    }
    else
    {
        if ((proc->scroll_cnt <= 7))
        {
            SetObjAffine(
                proc->sus_slot,
                Div(+COS(0) * 16, 0x100),
                Div(-SIN(0) * 16, (proc->scroll_cnt * -0x20) + 0x100),
                Div(+SIN(0) * 16, 0x100),
                Div(+COS(0) * 16, (proc->scroll_cnt * -0x20) + 0x100)
            );
        }
        else if ((proc->scroll_cnt < 0x10))
        {
            SetObjAffine(
                proc->sus_slot,
                Div(+COS(0) * 16, 0x100),
                Div(-SIN(0) * 16, (proc->scroll_cnt * 0x20) - 0xE0),
                Div(+SIN(0) * 16, 0x100),
                Div(+COS(0) * 16, (proc->scroll_cnt * 0x20) - 0xE0)
            );
        }
    }
    proc->scroll_cnt++;
}

//! FE8U = 0x080A99C0
void sub_80A99C0(struct SaveMenuProc * proc)
{
    int unk;

    proc->jump_label = PL_SAVEMENU_3;
    proc->scroll_cnt++;

    unk = 0xe - proc->scroll_cnt;
    proc->unk_2f = -0x24 - (unk * 0xdc * unk / 0xc4);

    if (proc->scroll_cnt == 0xe)
        Proc_Break(proc);
}

//! FE8U = 0x080A9A08
void sub_80A9A08(struct SaveMenuProc * proc)
{
    sub_80ABF74(proc->extra_sel_bitmask);
}

//! FE8U = 0x080A9A18
void sub_80A9A18(struct SaveMenuProc * proc)
{
    int unk;

    proc->jump_label = PL_SAVEMENU_4;
    proc->scroll_cnt++;

    unk = 0xe - proc->scroll_cnt;
    proc->unk_2f = (unk * 0xdc * unk / 0xc4);

    if (proc->scroll_cnt == 0xe)
    {
        Decompress(Img_GameMainMenuObjs, (void*)0x06014000);
        Proc_Break(proc);
    }
}

//! FE8U = 0x080A9A68
void sub_80A9A68(struct SaveMenuProc * proc)
{
    int unk;

    proc->jump_label = PL_SAVEMENU_8;
    proc->scroll_cnt++;

    unk = 0xe - proc->scroll_cnt;
    proc->unk_46 = 0xdc - (unk * 0xdc * unk / 0xc4);

    if (proc->scroll_cnt == 0xe) {
        Proc_Goto(proc, 10);
    }
}

//! FE8U = 0x080A9AB0
void sub_80A9AB0(struct SaveMenuProc * proc)
{
    int unk;

    proc->jump_label = PL_SAVEMENU_8;
    proc->scroll_cnt++;

    unk = 0xe - proc->scroll_cnt;
    proc->unk_46 = (unk * 0xdc * unk / 0xc4);

    if (proc->scroll_cnt == 0xe)
        Proc_Goto(proc, PL_SAVEMENU_MAIN_LOOP);
}

//! FE8U = 0x080A9AF4
void sub_80A9AF4(struct SaveMenuProc * proc)
{
    int unk;

    proc->jump_label = PL_SAVEMENU_12;
    proc->scroll_cnt++;

    unk = 0xe - proc->scroll_cnt;

    proc->unk_46 = 0x1b8 - (unk * 0xdc * unk / 0xc4);
    proc->unk_2f = proc->unk_46 + 0x24;

    if (proc->scroll_cnt == 0xe)
        Proc_Goto(proc, PL_SAVEMENU_11);
}

//! FE8U = 0x080A9B44
void sub_80A9B44(struct SaveMenuProc * proc)
{
    int unk;

    proc->jump_label = PL_SAVEMENU_13;
    proc->scroll_cnt++;

    unk = 0xe - proc->scroll_cnt;

    proc->unk_46 = 0xdc + (unk * 0xdc * unk / 0xc4);
    proc->unk_2f = proc->unk_46 - 0xdc;

    if (proc->scroll_cnt == 0xe)
        Proc_Goto(proc, PL_SAVEMENU_10);
}

//! FE8U = 0x080A9B90
void sub_80A9B90(struct SaveMenuProc * proc)
{
    int previous = proc->extra_select;

    proc->jump_label = PL_SAVEMENU_10;

    if (gKeyStatusPtr->repeatedKeys & DPAD_UP)
    {
        if (proc->extra_select != 0)
            proc->extra_select--;
        else if (gKeyStatusPtr->newKeys & DPAD_UP)
            proc->extra_select = proc->max_choice - 1;
    }
    else if (gKeyStatusPtr->repeatedKeys & DPAD_DOWN)
    {
        if (proc->extra_select < proc->max_choice - 1)
            proc->extra_select++;
        else if (gKeyStatusPtr->newKeys & DPAD_DOWN)
            proc->extra_select = 0;
    }

    if (previous != proc->extra_select)
    {
        PlaySoundEffect(0x66);
    }

    if (gKeyStatusPtr->newKeys & A_BUTTON) {
        proc->extra_sel_bitmask = SaveMenuGetSelectBitMask(proc->extra_options, proc->extra_select);
        PlaySoundEffect(0x6a);

        proc->scroll_cnt = 0;

        switch (proc->extra_sel_bitmask) {
        case 0x40:
            proc->sus_slot = SaveMenuModifySaveSlot(ReadLastGameSaveId(), 1, 1);
            sub_80A9D20(proc, 0);
            PlaySoundEffect(0x6a);
            Proc_Goto(proc, 0xc);
            break;

        case 2:
            CallSomeSoundMaybe(0, 0xc0, 0, 0x18, 0);
            Proc_Goto(proc, 0xe);
            break;

        case 4:
            CallSomeSoundMaybe(9, 0xc0, 0x100, 0x18, 0);
            Proc_Goto(proc, 0xe);
            break;

        case 0x10:
            proc->sus_slot = SaveMenuModifySaveSlot(ReadLastGameSaveId(), 1, 1);
            sub_80A9D20(proc, 0);
            PlaySoundEffect(0x6a);
            Proc_Goto(proc, 0xc);
            break;

        case 0x20:
            proc->sus_slot = SaveMenuModifySaveSlot(ReadLastGameSaveId(), 1, 1);
            sub_80A9D20(proc, 0);
            PlaySoundEffect(0x6a);
            Proc_Goto(proc, 0xc);
            break;

        default:
            sub_80A882C(proc);
            Proc_Goto(proc, 0x12);
            break;
        }


    } else if (gKeyStatusPtr->newKeys & B_BUTTON) {
        proc->scroll_cnt = 0;
        Proc_Goto(proc, 9);
        PlaySoundEffect(0x6b);
        return;
    }

    return;
}

//! FE8U = 0x080A9D20
s8 sub_80A9D20(struct SaveMenuProc * proc, int direction) {
    u8 unk = proc->sus_slot;

    if (unk > 2) {
        proc->sus_slot = 0;
    }

    if (direction == 0) {
        return 1;
    }

    if (direction > 0) {
        if (proc->sus_slot < 2) {
            proc->sus_slot = proc->sus_slot + 1;
        } else {
            proc->sus_slot = 0;
        }
    } else {
        if (proc->sus_slot == 0) {
            proc->sus_slot = 2;
        } else {
            proc->sus_slot = proc->sus_slot - 1;
        }
    }

    if (unk != proc->sus_slot) {
        PlaySoundEffect(0x66);
        return 1;
    }

    return 0;
}

//! FE8U = 0x080A9D84
void sub_80A9D84(struct SaveMenu8A20068Proc  * proc)
{
    LoadHelpBoxGfx((void*)0x06014000, 9);
    StartHelpBoxExt_Unk(proc->x, proc->y, proc->msgId);
    PlaySoundEffect(0x70);
}

//! FE8U = 0x080A9DBC
void sub_80A9DBC(struct SaveMenu8A20068Proc  * proc)
{

    if (gKeyStatusPtr->newKeys & (A_BUTTON | B_BUTTON | R_BUTTON)) {
        PlaySoundEffect(0x71);
        CloseHelpBox();
        Proc_Break(proc);
    }
}

struct ProcCmd CONST_DATA gProcScr_08A20068[] = {
    PROC_YIELD,

    PROC_CALL(sub_80A9D84),
    PROC_SLEEP(8),

    PROC_REPEAT(sub_80A9DBC),
    PROC_SLEEP(8),

    PROC_END,
};

//! FE8U = 0x080A9DFC
void sub_80A9DFC(int x, int y, int msgId, ProcPtr parent)
{
    struct SaveMenu8A20068Proc  * proc = Proc_StartBlocking(gProcScr_08A20068, parent);
    proc->msgId = msgId;
    proc->x = x;
    proc->y = y;
}

//! FE8U = 0x080A9E1C
void sub_80A9E1C(struct SaveMenuProc * proc)
{

    proc->jump_label = PL_SAVEMENU_5;

    if (proc->unk_36 == 0) {
        if (gKeyStatusPtr->newKeys & DPAD_UP) {
            sub_80A9D20(proc, -1);
        } else if (gKeyStatusPtr->newKeys & DPAD_DOWN) {
            sub_80A9D20(proc, 1);
        }
    } else if (gKeyStatusPtr->newKeys & DPAD_LEFT) {
        if (proc->unk_36 != 1) {
            proc->unk_36 = 1;
            PlaySoundEffect(0x67);
        }
    } else if (gKeyStatusPtr->newKeys & DPAD_RIGHT) {
        if (proc->unk_36 != 2) {
            proc->unk_36 = 2;
            PlaySoundEffect(0x67);
        }
    }

    if (gKeyStatusPtr->newKeys & A_BUTTON)
    {
        switch (proc->extra_sel_bitmask) {
        case EXTRA_MENU_OPTION_6:
            if (((proc->unk_3a[proc->sus_slot]) & 1) != 0)
            {
                if (proc->sus_slot_cur != (u8)-1)
                {
                    sub_80A9290(proc);
                    return;
                }

                ReadGameSave(proc->sus_slot);
                Proc_Goto(proc, 0xe);
                PlaySoundEffect(0x6a);
                return;
            }

            sub_80A9DFC(0x40, 0x30, 0x892, proc); // TODO: msgid "This data[.][NL]can't be used[.][NL]on a trial map.[.]"

            return;

        case 0x20:
            if (((proc->unk_3a[proc->sus_slot]) & 2) != 0) {
                if (proc->sus_slot_cur != (u8)-1) {
                    sub_80A9290(proc);
                    return;
                }

                ReadGameSave(proc->sus_slot);
                Proc_Goto(proc, 0xe);
                PlaySoundEffect(0x6a);
                return;
            }

            sub_80A9DFC(0x2e, 0x38, 0x891, proc); // TODO: msgid "Send data from[NL]Chapter 2+"

            return;

        case 0x10:
            if (((proc->unk_3a[proc->sus_slot]) & 4) != 0) {
                if (proc->sus_slot_cur == (u8)-1) {
                    ReadGameSave(proc->sus_slot);
                    sub_80A882C(proc);
                    PlaySoundEffect(0x6a);
                    return;
                }

                sub_80A9290(proc);
                return;
            }

            sub_80A9DFC(0x2e, 0x38, 0x895, proc); // TODO: msgid "Select cleared save data.[.]"

            return;

        default:
            return;
        }

    } else if (gKeyStatusPtr->newKeys & B_BUTTON) {

        PlaySoundEffect(0x6b);

        if (proc->unk_36 != 0) {
            sub_80AB83C(proc, 0);
            sub_80A88E0(proc);
            return;
        }

        Decompress(Img_GameMainMenuObjs, (void*)0x06014000);
        proc->scroll_cnt = 0;
        Proc_Goto(proc, 13);

        return;
    }
}

//! FE8U = 0x080AA018
void sub_80AA018(struct SaveMenuProc * proc)
{

    StartSqMask(proc, 1, 2);
    Proc_Break(proc);
}

//! FE8U = 0x080AA030
void PostSaveMenuHandler(struct SaveMenuProc * proc)
{

    if (proc->unk_60 != 0)
        APProc_Delete(proc->unk_60);

    Proc_End(proc->savedraw);

    SetPrimaryHBlankHandler(0);

    if (proc->main_sel_bitmask == 0x20) {
        switch (proc->extra_sel_bitmask) {
            case 1:
                SetNextGameActionId(GAME_ACTION_6);
                return;
            case 0x10:
                SetNextGameActionId(GAME_ACTION_C);
                gPlaySt.chapterStateBits |= PLAY_FLAG_POSTGAME;
                return;
        }
    } else if (proc->main_sel_bitmask & 0x40) {
        return;
    } else if (proc->main_sel_bitmask & 0x100) {
        StartBgmVolumeChange(0xc0, 0x100, 0x10, 0);
        if ((proc->main_sel_bitmask & 0x80) != 0) {
            SetNextGameActionId(GAME_ACTION_A);
        } else {
            SetNextGameActionId(GAME_ACTION_5);
        }
    } else if (proc->main_sel_bitmask & 1) {
        ReadSuspendSave(3);
        SetNextGameActionId(GAME_ACTION_4);
    } else if (proc->main_sel_bitmask & 0x82) {
        ReadGameSave(proc->sus_slot);
        SetNextGameActionId(proc->sus_slot + 1);
    } else if (proc->main_sel_bitmask & 0x10) {
        SetNextGameActionId(GAME_ACTION_EVENT_RETURN);
    }
}

//! FE8U = 0x080AA100
void ExtraMapStartSomeBgm(struct SaveMenuProc * proc)
{
    CallSomeSoundMaybe(0, 0xc0, 0, 0x18, proc);
}

//! FE8U = 0x080AA118
void ExecExtraMap(struct SaveMenuProc * proc)
{
    SetNextGameActionId(GAME_ACTION_EXTRA_MAP);
    gPlaySt.chapterStateBits |= PLAY_FLAG_EXTRA_MAP;
    ReadExtraMapInfo();
    gPlaySt.chapterIndex = 0x7f;
    Proc_End(proc->proc_parent);
}

struct ProcCmd CONST_DATA ProcScr_CallExtraMap[] = {
    PROC_CALL(ExtraMapStartSomeBgm),
    PROC_YIELD,
    PROC_CALL(ExecExtraMap),
    PROC_END,
};

//! FE8U = 0x080AA144
void CallExtraMap(ProcPtr parent)
{
    Proc_StartBlocking(ProcScr_CallExtraMap, parent);
}

//! FE8U = 0x080AA158
void sub_80AA158(struct SaveMenuProc * proc)
{

    proc->main_sel_bitmask = 0x20;

    Proc_End(proc->savedraw);

    SetPrimaryHBlankHandler(0);

    if (proc->unk_60 != 0) {
        APProc_Delete(proc->unk_60);
    }

    switch (proc->extra_sel_bitmask) {
        default:
            return;
        case 0x40:
            CallExtraMap(proc);
            return;
        case 0x20:
            StartBonusClaimScreen(proc);
            return;
        case 2:
            StartSoundRoomScreen(proc);
            return;
        case 4:
            StartSupportScreen(proc);
            return;
    }
}

//! FE8U = 0x080AA1BC
void sub_80AA1BC(struct SaveMenuProc * proc)
{

    switch (proc->extra_sel_bitmask) {
        case 0x10:
        case 0x20:
            Proc_Goto(proc, 11);
            return;
        case 4:
        case 2:
            Proc_Goto(proc, 10);
            return;
    }
}

//! FE8U = 0x080AA1EC
void SaveMenu_ResetLcdFormDifficulty(struct SaveMenuProc * proc)
{
    proc->scroll_cnt = 0;

    gLCDControlBuffer.dispcnt.win0_on = 0;
    gLCDControlBuffer.dispcnt.win1_on = 0;
    gLCDControlBuffer.dispcnt.objWin_on = 0;

    gLCDControlBuffer.wincnt.win0_enableBg0 = 1;
    gLCDControlBuffer.wincnt.win0_enableBg1 = 1;
    gLCDControlBuffer.wincnt.win0_enableBg2 = 1;
    gLCDControlBuffer.wincnt.win0_enableBg3 = 1;
    gLCDControlBuffer.wincnt.win0_enableObj = 1;

    gLCDControlBuffer.wincnt.wout_enableBg0 = 0;
    gLCDControlBuffer.wincnt.wout_enableBg1 = 0;
    gLCDControlBuffer.wincnt.wout_enableBg2 = 0;
    gLCDControlBuffer.wincnt.wout_enableBg3 = 0;
    gLCDControlBuffer.wincnt.wout_enableObj = 0;
}

//! FE8U = 0x080AA248
void sub_80AA248(struct SaveMenuProc * proc)
{
    int unkA;
    int unkB;

    proc->scroll_cnt++;

    unkA = (0x10 - proc->scroll_cnt);

    unkB = 0x50 - ((unkA * 0x50 * unkA) / 256);

    gLCDControlBuffer.win0_left = 0;
    gLCDControlBuffer.win0_top = 0x50 - (unkB);
    gLCDControlBuffer.win0_right = 0xf0;
    gLCDControlBuffer.win0_bottom = unkB + 0x50;

    if (proc->scroll_cnt == 0x10) {
        Proc_Break(proc);
    }
}

//! FE8U = 0x080AA2A8
void sub_80AA2A8(struct SaveMenuProc * proc)
{
    int unkA;
    int unkB;

    proc->scroll_cnt++;

    unkA = (0x10 - proc->scroll_cnt);

    unkB = 0x50 - ((unkA * 0x50 * unkA) / 256);

    gLCDControlBuffer.win0_left = 0;
    gLCDControlBuffer.win0_top = unkB;
    gLCDControlBuffer.win0_right = 0xf0;
    gLCDControlBuffer.win0_bottom = -0x60 - unkB;

    if (proc->scroll_cnt == 0x10) {
        Proc_Break(proc);
    }
}

//! FE8U = 0x080AA30C
void SaveMenu_ReloadScreenFormDifficulty(struct SaveMenuProc * proc)
{

    BG_Fill(gBG0TilemapBuffer, 0);
    BG_Fill(gBG1TilemapBuffer, 0);

    ResetTextFont();
    LoadUiFrameGraphics();
    LoadObjUIGfx();

    ApplyPalettes(gUnknown_08A25DCC, 8, 8);

    Decompress(gUnknown_08A21658, (void*)(GetBackgroundTileDataOffset(3) + 0x6000000));
    CallARM_FillTileRect(gBG3TilemapBuffer, gUnknown_08A25ECC, 0x8000);
    ApplyPalette(gUnknown_08A268D8, 7);

    Decompress(gUnknown_08A26380, (void*)(GetBackgroundTileDataOffset(3) + 0x06004C00));

    Decompress(gUnknown_08A268F8, gGenericBuffer);
    CallARM_FillTileRect(gBG2TilemapBuffer, gGenericBuffer, 0x00007260);

    Decompress(Img_SaveScreenSprits, (void*)0x06010800);
    ApplyPalettes(Pal_SaveScreenSprits, 0x12, 8);
    ApplyPalette(gUnknown_08A295B4, 2);

    sub_80AA790(PAL_OBJ(0x2), PAL_OBJ(0x2) - 0x10, 1);
    Decompress(Img_GameMainMenuObjs, (void*)0x06014000);

    sub_80AB794();
    sub_80A8A9C(proc);
    sub_80ABD88(proc->sus_slot);

    Proc_UnblockEachMarked(PROC_MARK_C);
    Proc_UnblockEachMarked(PROC_MARK_D);

    BG_EnableSyncByMask(3);

    if (proc->difficulty != 3) {
        proc->jump_label = PL_SAVEMENU_5;
        proc->unk_2f = 0xdc;
    }

    EnablePaletteSync();
}

//! FE8U = 0x080AA458
void SaveMenu_PostDifficultHandler(struct SaveMenuProc * proc)
{
    if (proc->difficulty == 3)
        Proc_Goto(proc, 2);
    else
        Proc_Goto(proc, 5);
}

//! FE8U = 0x080AA47C
void sub_80AA47C(struct SaveMenuProc * proc)
{
    if (!(proc->main_sel_bitmask & 0x10)) {
        StartHelpPromptSprite(0xc0, 8, 8, (void*)proc);
    }
}

//! FE8U = 0x080AA49C
void SaveMenuStartBonusClaim(struct SaveMenuProc * proc)
{
    if (proc->extra_sel_bitmask == EXTRA_MENU_OPTION_BONUS_CLAIM)
        StartBonusClaimMenu(proc);
}

//! FE8U = 0x080AA4B4
void sub_80AA4B4(void)
{
    EndHelpPromptSprite();
}

struct ProcCmd CONST_DATA ProcScr_SaveMenu[] = {
    PROC_NAME("savemenu"),

PROC_LABEL(PL_SAVEMENU_INIT),
    PROC_YIELD,
    PROC_CALL(SaveMenu_Init),
    PROC_YIELD,
    PROC_CALL(ProcSaveMenu_InitScreen),
    PROC_CALL(SaveMenu_LoadExtraMenuGraphics),
    PROC_YIELD,
    PROC_CALL_ARG(NewFadeIn, 8),
    PROC_WHILE(FadeInExists),
    PROC_YIELD,
    PROC_WHILE(MusicProc4Exists),
    PROC_CALL(SaveMenu_JumpToTarget),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_MAIN_LOOP),
    PROC_REPEAT(SameMenu_CtrlLoop),
    PROC_GOTO(PL_SAVEMENU_EXIT),

PROC_LABEL(PL_SAVEMENU_1),
    PROC_CALL(SaveMenu_ResetLcdFormDifficulty),
    PROC_CALL_ARG(NewFadeOut, 8),
    PROC_WHILE(FadeOutExists),
    PROC_CALL(DisableAllGfx),
    PROC_CALL(NewNewGameDifficultySelect),
    PROC_YIELD,
    PROC_CALL(SaveMenu_ReloadScreenFormDifficulty),
    PROC_CALL(SaveMenu_ResetLcdFormDifficulty),
    PROC_CALL_ARG(NewFadeIn, 8),
    PROC_WHILE(FadeInExists),
    PROC_CALL(SaveMenu_PostDifficultHandler),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_5),
    PROC_CALL(sub_80AA47C),
    PROC_YIELD,
    PROC_REPEAT(SaveMenuPostChapterIDLE),
    PROC_GOTO(PL_SAVEMENU_EXIT),

PROC_LABEL(PL_SAVEMENU_7),
    PROC_SLEEP(5),
    PROC_CALL(sub_80A96D0),
    PROC_GOTO(PL_SAVEMENU_5),

PROC_LABEL(PL_SAVEMENU_6),
    PROC_SLEEP(1),
    PROC_CALL(sub_80A96DC),
    PROC_SLEEP(1),
    PROC_REPEAT(sub_80A96EC),
    PROC_GOTO(PL_SAVEMENU_5),

/* New game */
PROC_LABEL(PL_SAVEMENU_3),
    PROC_REPEAT(sub_80A99C0),
    PROC_GOTO(PL_SAVEMENU_5),

PROC_LABEL(PL_SAVEMENU_4),
    PROC_CALL(sub_80AA4B4),
    PROC_REPEAT(sub_80A9A18),
    PROC_GOTO(PL_SAVEMENU_MAIN_LOOP),

PROC_LABEL(PL_SAVEMENU_8),
    PROC_REPEAT(sub_80A9A68),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_9),
    PROC_REPEAT(sub_80A9AB0),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_12),
    PROC_CALL(sub_80A9A08),
    PROC_REPEAT(sub_80A9AF4),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_13),
    PROC_REPEAT(sub_80A9B44),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_10),
    PROC_REPEAT(sub_80A9B90),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_11),
    PROC_CALL(SaveMenuStartBonusClaim),
    PROC_YIELD,
    PROC_REPEAT(sub_80A9E1C),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_14),
    PROC_CALL_ARG(NewFadeOut, 8),
    PROC_WHILE(FadeOutExists),
    PROC_WHILE(IsMusicProc2Running),
    PROC_CALL(sub_80AA158),
    PROC_YIELD,
    PROC_CALL(SaveMenu_Init),
    PROC_YIELD,
    PROC_CALL(ProcSaveMenu_InitScreen),
    PROC_CALL(SaveMenu_LoadExtraMenuGraphics),
    PROC_YIELD,
    PROC_CALL_ARG(NewFadeIn, 8),
    PROC_WHILE(FadeInExists),
    PROC_WHILE(IsMusicProc2Running),
    PROC_CALL(sub_80AA1BC),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_BLOCKING),
    PROC_BLOCK,

PROC_LABEL(PL_SAVEMENU_NEW_GAME),
    PROC_CALL_ARG(NewFadeOut, 4),
    PROC_WHILE(FadeOutExists),
    PROC_GOTO(PL_SAVEMENU_EXIT),

PROC_LABEL(PL_SAVEMENU_EXIT_FADE),
    PROC_CALL_ARG(NewFadeOut, 8),
    PROC_WHILE(FadeOutExists),

    // fallthrough

PROC_LABEL(PL_SAVEMENU_EXIT),
    PROC_YIELD,
    PROC_CALL(PostSaveMenuHandler),
    PROC_YIELD,
    PROC_END,
};

//! FE8U = 0x080AA4C0
void StartSaveMenu(ProcPtr parent)
{
    struct SaveMenuProc * proc = Proc_StartBlocking(ProcScr_SaveMenu, parent);
    proc->main_sel_bitmask = 0x100;
    proc->extra_sel_bitmask = 0;

    gPlaySt.config.textSpeed = 2;
}

//! FE8U = 0x080AA4F8
void sub_80AA4F8(ProcPtr proc)
{
    if (!(gBmSt.gameStateBits & 0x10)) {
        Proc_Goto(proc, 0x14);
    }
}

struct ProcCmd CONST_DATA gProcScr_SaveMenuPostChapter[] = {
    PROC_NAME("savemenu"),
    PROC_YIELD,

    PROC_CALL(SaveMenuInit),

    PROC_CALL(SaveMenu_SetLcdChapterIdx),
    PROC_YIELD,

    PROC_CALL(ProcSaveMenu_InitScreen),
    PROC_YIELD,

    PROC_CALL(sub_80AA4F8),

    PROC_CALL_ARG(NewFadeIn, 8),
    PROC_WHILE(FadeInExists),

    PROC_GOTO(5),

PROC_LABEL(20),
    PROC_CALL_ARG(NewFadeIn, 4),
    PROC_WHILE(FadeInExists),

    // fallthrough

PROC_LABEL(5),
    PROC_REPEAT(SaveMenuPostChapterIDLE),

    PROC_GOTO(15),

PROC_LABEL(6),
    PROC_SLEEP(1),
    PROC_CALL(sub_80A96DC),
    PROC_SLEEP(1),
    PROC_REPEAT(sub_80A96EC),

    PROC_GOTO(5),

PROC_LABEL(18),
    PROC_CALL_ARG(NewFadeOut, 4),
    PROC_WHILE(FadeOutExists),

    PROC_GOTO(15),

PROC_LABEL(17),
    PROC_CALL_ARG(NewFadeOut, 8),
    PROC_WHILE(FadeOutExists),

    // fallthrough

PROC_LABEL(15),
    PROC_YIELD,
    PROC_CALL(PostSaveMenuHandler),

    PROC_END,
};

//! FE8U = 0x080AA518
void Make6C_SaveMenuPostChapter(ProcPtr parent)
{
    Proc_StartBlocking(gProcScr_SaveMenuPostChapter, parent);
}

//! FE8U = 0x080AA52C
void SaveMenu_SetDifficultyChoice(int difficulty, int b)
{
    struct SaveMenuProc * proc = Proc_Find(ProcScr_SaveMenu);
    if (proc)
    {
        proc->difficulty = difficulty;
        proc->unk_3d = b;
    }
}

struct BonusClaimEnt * CONST_DATA _gpBonusClaimData = gBonusClaimData;

//! FE8U = 0x080AA550
void sub_80AA550(struct ProcBonusClaimMenu * proc)
{
    int i;

    CpuFill16(0, _gpBonusClaimData, 0x144);

    if (LoadBonusContentData(_gpBonusClaimData) == 0)
    {
        Proc_Goto(proc, 10);
        return;
    }

    proc->unk_5c = 0;
    proc->unk_58 = 0;

    for (i = 0; i < 0x10; i++)
    {
        struct BonusClaimEnt * ent = _gpBonusClaimData + i;

        if ((ent->unseen & 3) != 1)
        {
            continue;
        }

        if (_gpBonusClaimData[i].kind == BONUSKIND_SONG3)
        {
            proc->unk_58 = 1;
            _gpBonusClaimData[i].unseen = (_gpBonusClaimData[i].unseen & ~3) + 2;
            UnlockSoundRoomSong(NULL, 0x75);
        }

        ent = _gpBonusClaimData + i;

        if (ent->kind == BONUSKIND_SONG4)
        {
            proc->unk_5c = 1;
            _gpBonusClaimData[i].unseen = (_gpBonusClaimData[i].unseen & ~3) + 2;
            UnlockSoundRoomSong(NULL, 0x76);
        }
    }

    if ((proc->unk_58 == 0) && (proc->unk_5c == 0))
    {
        Proc_Goto(proc, 10);
        return;
    }

    LoadHelpBoxGfx((void *)0x06014000, 9);
}

//! FE8U = 0x080AA614
void sub_80AA614(struct ProcBonusClaimMenu * proc)
{
    if (proc->unk_58 != 0)
    {
        proc->unk_4c = 0;
        StartHelpBoxExt_Unk(0x40, 0x30, 0x893); // TODO: msgid "Sacred Dragon[.][NL]added to[NL]Sound Room"
        PlaySoundEffect(0x5b);
        return;
    }

    Proc_Goto(proc, 0);
}

//! FE8U = 0x080AA658
void sub_80AA658(struct ProcBonusClaimMenu * proc)
{
    if (proc->unk_5c != 0)
    {
        proc->unk_4c = 0;
        StartHelpBoxExt_Unk(0x40, 0x30, 0x894); // TODO: msgid "Palace Silezia[NL]added to[NL]Sound Room"
        PlaySoundEffect(0x5b);
        return;
    }

    Proc_Goto(proc, 1);
}

//! FE8U = 0x080AA69C
void sub_80AA69C(struct ProcBonusClaimMenu * proc)
{
    if (proc->unk_4c > 30)
    {
        if (gKeyStatusPtr->newKeys & (A_BUTTON | B_BUTTON | START_BUTTON))
        {
            CloseHelpBox();
            Proc_Break(proc);
        }

        return;
    }

    proc->unk_4c++;
}

//! FE8U = 0x080AA6D8
void sub_80AA6D8(void)
{
    SaveBonusContentData(_gpBonusClaimData);
}

// clang-format off

struct ProcCmd CONST_DATA ProcScr_BonusClaimMenu[] =
{
    PROC_CALL(sub_80AA550),

    PROC_CALL(sub_80AA614),
    PROC_REPEAT(sub_80AA69C),

    PROC_SLEEP(16),

PROC_LABEL(0),
    PROC_CALL(sub_80AA658),
    PROC_REPEAT(sub_80AA69C),

    PROC_SLEEP(16),

    // fallthrough

PROC_LABEL(1),
    PROC_CALL(sub_80AA6D8),

    // fallthrough

PROC_LABEL(10),
    PROC_END,
};

// clang-format on

//! FE8U = 0x080AA6EC
void StartBonusClaimMenu(ProcPtr parent)
{
    Proc_StartBlocking(ProcScr_BonusClaimMenu, parent);
}

//! FE8U = 0x080AA700
void sub_80AA700(void)
{
    gSaveMenuRTextData.pid = 0;
    gSaveMenuRTextData.level = -1;
    gSaveMenuRTextData.nodeId = -1;
}

//! FE8U = 0x080AA718
const char * GetLeaderNameForSaveMenu(void)
{
    if (gSaveMenuRTextData.pid == 0)
    {
        return NULL;
    }

    return GetStringFromIndex(gCharacterData[gSaveMenuRTextData.pid - 1].nameTextId);
}

//! FE8U = 0x080AA744
int GetLeaderLevelForSaveMenu(void)
{
    if ((gSaveMenuRTextData.pid == 0) || (gSaveMenuRTextData.level < 0))
    {
        return -1;
    }

    return gSaveMenuRTextData.level;
}

//! FE8U = 0x080AA768
const char * GetWMNodeNameForSaveMenu(void)
{
    if ((gSaveMenuRTextData.pid == 0) || (gSaveMenuRTextData.nodeId < 0))
    {
        return NULL;
    }

    return GetWorldMapNodeName(gSaveMenuRTextData.nodeId);
}

//! FE8U = 0x080AA790
void sub_80AA790(u16 * src, u16 * dst, int count)
{
    u16 * src_;

    count = count * 0x10;

    if (count <= 0)
    {
        return;
    }

    for (src_ = src; count != 0; count--)
    {
        *dst++ = *src_++;
    }
}

void sub_80AA7AC(int a, int b)
{
    int offset = (a & 0x3F) >> 2;
    u16 * _src, * src = gPaletteBuffer;
    u16 * dst = Pal_08A28088 + offset;
    int val;

    val = *dst;
    src[0x111] = val;

    _src = src + (b * 0x20 + 0x1A1);
    _src[0] = *dst;

    EnablePaletteSync();
}
