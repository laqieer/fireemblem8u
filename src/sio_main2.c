#include "global.h"
#include "fontgrp.h"
#include "hardware.h"
#include "uiutils.h"
#include "soundwrapper.h"
#include "bmunit.h"
#include "bmitem.h"
#include "bmsave.h"
#include "constants/items.h"
#include "sio.h"
#include "sio_core.h"

struct ProcCmd CONST_DATA ProcScr_HOLD[] = {
    PROC_NAME("HOLD"),
    PROC_REPEAT(SioHold_Loop),
    PROC_END,
};

void SioHold_Loop(struct ProcSioHold * proc)
{
    if (proc->y < proc->y_max && proc->y > proc->y_min)
        DisplayFrozenUiHand(proc->x, proc->y);
}

ProcPtr StartSioHold(ProcPtr parent, int x, int y, int y_max, int y_min)
{
    struct ProcSioHold * proc;
    proc = Proc_Start(ProcScr_HOLD, parent);
    proc->x = x;
    proc->y = y;
    proc->y_max = y_max;
    proc->y_min = y_min;
    return proc;
}

void EndSioHold(void)
{
    Proc_EndEach(ProcScr_HOLD);
}

void sub_804303C(ProcPtr proc, int num)
{
    ((struct Proc *)proc)->y += num;
}

void ClearSioBG(void)
{
    BG_SetPosition(BG_0, 0, 0);
    BG_SetPosition(BG_1, 0, 0);
    BG_SetPosition(BG_2, 0, 0);
    BG_SetPosition(BG_3, 0, 0);

    BG_Fill(gBG0TilemapBuffer, 0);
    BG_Fill(gBG1TilemapBuffer, 0);
    BG_Fill(gBG2TilemapBuffer, 0);

    BG_EnableSyncByMask(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);
}

void sub_804309C(void)
{
    BG_SetPosition(BG_0, 0, 0);
    BG_SetPosition(BG_1, 0, 0);
    BG_SetPosition(BG_2, 0, 0);
    BG_SetPosition(BG_3, 0, 0);

    BG_Fill(gBG0TilemapBuffer, 0);
    BG_Fill(gBG1TilemapBuffer, 0);
    BG_Fill(gBG2TilemapBuffer, 0);
    BG_Fill(gBG3TilemapBuffer, 0);

    BG_EnableSyncByMask(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT | BG3_SYNC_BIT);
}

void sub_8043100(int msg, int text_idx)
{
    struct Text * text = &gSioTexts[text_idx];

    ClearText(text);

    if (msg < 0)
    {
        PutText(text, TILEMAP_LOCATED(gBG2TilemapBuffer, 1, text_idx * 2 + 0x10));
    }
    else
    {
        Text_DrawString(text, GetStringFromIndex(msg));
        PutText(text, TILEMAP_LOCATED(gBG2TilemapBuffer, 1, text_idx * 2 + 0x10));
        BG_EnableSyncByMask(BG2_SYNC_BIT);
    }
}

void sub_8043164(void)
{
    int i;
    for (i = 0; i < 6; i++)
        InitText(&gUnk_Sio_0203DA88[i], 12);

    for (i = 0; i < 11; i++)
        InitText(&gLinkArenaSt.texts[i], 12);

    for (i = 0; i < 2; i++)
        InitText(&gSioTexts[i], 24);
}

void sub_80431B4(struct Unit * unit)
{
    int i;
    u8 item_list[] = {
        ITEM_SWORD_IRON,
        ITEM_LANCE_IRON,
        ITEM_AXE_IRON,
        ITEM_BOW_IRON,
        ITEM_NONE,
        ITEM_ANIMA_FIRE,
        ITEM_LIGHT_LIGHTNING,
        ITEM_DARK_FLUX,
    };

    for (i = 0; i < UNIT_ITEM_COUNT; i++)
        unit->items[i] = 0;

    for (i = 0; i < 8; i++)
    {
        if (i == 4)
            continue;

        if (unit->ranks[i] == 0)
            continue;

        UnitAddItem(unit, item_list[i] | (0xFF << 8));
    }
}

void SioPlaySoundEffect(int idx)
{
    u16 sfx_list[] = {0x6C, 0x6B, 0x6A, 0x66};
    PlaySoundEffect(sfx_list[idx]);
}

void sub_8043244(void)
{
    ReadMultiArenaSaveConfig(&gSioSaveConfig);
    gSioSaveConfig._unk3_ = true;
    WriteMultiArenaSaveConfig(&gSioSaveConfig);
}

bool sub_8043268(const u16 * list)
{
    if (gKeyStatusPtr->newKeys == 0)
    {
        if (++gUnk_Sio_0203DD4C >= 0x3C)
        {
            gUnknown_0300180C = gUnk_Sio_0203DD4C = 0;
        }
        return false;
    }

    gUnk_Sio_0203DD4C = 0;
    gUnk_Sio_0203DD2C[gUnknown_03001808] = gKeyStatusPtr->newKeys;

    if (gUnk_Sio_0203DD2C[gUnknown_03001808] == list[gUnknown_0300180C])
    {
        gUnknown_0300180C = gUnknown_0300180C + 1;

        if (list[gUnknown_0300180C] == 0xFFFF)
            return true;
    }
    else
    {
        gUnknown_0300180C = 0;
    }

    gUnknown_03001808 = (gUnknown_03001808 + 1) & 0xF;
    return false;
}

/**
 * Maybe some lists for sub_8043268() ?
 */
u16 gSioList_085A93D0[] = {
    DPAD_LEFT, DPAD_LEFT, DPAD_RIGHT, DPAD_RIGHT, L_BUTTON, L_BUTTON, START_BUTTON, -1
};

u16 gSioList_085A93E0[] = {
    DPAD_LEFT, DPAD_LEFT, DPAD_RIGHT, DPAD_RIGHT, L_BUTTON, L_BUTTON, START_BUTTON, -1
};

u16 gSioList_085A93F0[] = {
    DPAD_LEFT, DPAD_LEFT, DPAD_RIGHT, DPAD_RIGHT, L_BUTTON, L_BUTTON, START_BUTTON, -1
};

bool sub_80432F4(void)
{
    return sub_8043268(gSioList_085A93F0);
}

u8 const gUnknown_080D9D5E[] = {1, 2, 4};
u8 const gUnknown_080D9D61[] = {
    0x02, 0x06, 0x0D, 0x13, 0x14, 0xFE, 0x14, 0x13, 0x0D, 0x06, 0x02, 0x00, 0xFF, 0x01, 0x00,
    // ...
};
