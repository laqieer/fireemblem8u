#include "global.h"

#include "anime.h"
#include "ekrbattle.h"
#include "efxbattle.h"
#include "efxmagic.h"
#include "hardware.h"
#include "bmlib.h"
#include "ekrdragon.h"

// clang-format off

struct ProcCmd CONST_DATA ProcScr_efxGorgon[] =
{
    PROC_NAME("efxGorgon"),
    PROC_REPEAT(sub_806B534),
    PROC_END,
};

// clang-format on

//! FE8U = 0x0806B4F8
void sub_806B4F8(struct Anim * anim)
{
    struct ProcEfx * proc;

    SpellFx_Begin();
    NewEfxSpellCast();
    SpellFx_ClearBG1Position();

    proc = Proc_Start(ProcScr_efxGorgon, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;
    proc->hitted = CheckRoundMiss(GetAnimRoundTypeAnotherSide(anim));

    return;
}

//! FE8U = 0x0806B534
void sub_806B534(struct ProcEfx * proc)
{
    struct Anim * anim = GetAnimAnotherSide(proc->anim);
    int duration = EfxGetCamMovDuration();

    proc->timer++;

    if (proc->timer == 1)
    {
        NewEfxFarAttackWithDistance(proc->anim, -1);
    }
    else if (proc->timer == duration + 0xb)
    {
        sub_806B680(anim);
        PlaySFX(0x000003B6, 0x100, 0xc0, 1);
    }
    else if (proc->timer == duration + 0x25)
    {
        sub_806B7A8(anim);
    }
    else if (proc->timer == duration + 0x54)
    {
        sub_806BBDC();
    }
    else if (proc->timer == duration + 0x60)
    {
        StartSubSpell_efxSuperdruidOBJ2(anim);
    }
    else if (proc->timer == duration + 0x6f)
    {
        StartSpellThing_MagicQuake(proc->anim, 0xc, 4);
        sub_806B89C(anim);
    }
    else if (proc->timer == duration + 0x70)
    {
        sub_806BEEC(anim);
    }
    else if (proc->timer == duration + 0x7a)
    {
        sub_806C464();
    }
    else if (proc->timer == duration + 0x7b)
    {
        sub_806C0B8(anim);
        StartSpellThing_MagicQuake(proc->anim, 0x1a, 2);
    }
    else if (proc->timer == duration + 0x95)
    {
        anim->state3 |= 9;

        StartBattleAnimHitEffectsDefault(anim, proc->hitted);

        if (!proc->hitted)
        {
            EfxPlayHittedSFX(anim);
        }
    }
    else if (proc->timer == duration + 0xa9)
    {
        SpellFx_Finish();
        RegisterEfxSpellCastEnd();
        Proc_Break(proc);
    }

    return;
}

//! FE8U = 0x0806B64C
void sub_806B64C(struct ProcEfxOBJ * proc)
{
    AnimDelete(proc->anim2);

    gEfxBgSemaphore--;

    return;
}

//! FE8U = 0x0806B664
void sub_806B664(struct ProcEfxOBJ * proc)
{
    struct Anim * anim = proc->anim2;

    anim->pScrStart = gUnknown_086EAE14;
    anim->pScrCurrent = gUnknown_086EAE14;

    anim->timer = 0;

    Proc_Break(proc);

    return;
}

// clang-format off

struct ProcCmd CONST_DATA gUnknown_085D8B24[] =
{
    PROC_SET_END_CB(sub_806B64C),
    PROC_SLEEP(25),

    PROC_REPEAT(sub_806B664),
    PROC_SLEEP(54),

    PROC_END,
};

// clang-format on

//! FE8U = 0x0806B680
void sub_806B680(struct Anim * anim)
{
    struct ProcEfxOBJ * proc;
    struct Anim * frontAnim;
    u32 * scr;

    gEfxBgSemaphore++;

    proc = Proc_Start(gUnknown_085D8B24, PROC_TREE_3);
    proc->anim = anim;

    scr = gUnknown_086EAE24;
    frontAnim = EfxCreateFrontAnim(anim, scr, scr, scr, scr);
    proc->anim2 = frontAnim;

    if (GetAnimPosition(proc->anim) == 0)
    {
        frontAnim->xPosition = 0x58;
    }
    else
    {
        frontAnim->xPosition = 0x98;
    }

    frontAnim->yPosition = 0x54;

    if (gEkrDistanceType == 1)
    {
        if (GetAnimPosition(proc->anim) == 0)
        {
            frontAnim->xPosition -= 0x18;
        }
        else
        {
            frontAnim->xPosition += 0x18;
        }
    }

    if ((GetBanimDragonStatusType() == 1) || (GetBanimDragonStatusType() == 2))
    {
        frontAnim->oam2Base |= 0xc00;
    }

    frontAnim->drawLayerPriority = 0x14;

    AnimSort();

    SpellFx_RegisterObjGfx(gUnknown_086E9D40, 0x1000);
    SpellFx_RegisterObjPal(gUnknown_086EA3EC, 0x20);

    return;
}

//! FE8U = 0x0806B73C
void sub_806B73C(struct ProcEfxBG * proc)
{
    s16 ret = EfxAdvanceFrameLut((s16 *)&proc->timer, (s16 *)&proc->frame, proc->frame_config);

    if (ret >= 0)
    {
        u16 ** tsa = proc->tsal;
        u16 ** img = proc->img;
        u16 ** pal = proc->pal;

        SpellFx_RegisterBgGfx(*(img + ret), 0x2000);
        SpellFx_RegisterBgPal(*(pal + ret), 0x20);
        SpellFx_WriteBgMap(proc->anim, *(tsa + ret), *(tsa + ret));
    }
    else
    {
        if (ret == -1)
        {
            SpellFx_ClearBG1();
            gEfxBgSemaphore--;
            SetDefaultColorEffects_();
            Proc_Break(proc);
        }
    }

    return;
}

// clang-format off

u16 * CONST_DATA gUnknown_085D8B4C[] =
{
    Tsa_086F0344,
    Tsa_086F03EC,
    Tsa_086F04B8,
    Tsa_086F05A0,
    Tsa_086F069C,
    Tsa_086F079C,
    Tsa_086F08B8,
    Tsa_086F09E0,
    Tsa_086F0B2C,
    Tsa_086F0C88,
    Tsa_086F0DF8,
};

u16 * CONST_DATA gUnknown_085D8B78[] =
{
    Img_086EB8B4,
    Img_086EBD44,
    Img_086EC264,
    Img_086EC7D4,
    Img_086ECDD8,
    Img_086ED424,
    Img_086EDAF8,
    Img_086EE25C,
    Img_086EE9F8,
    Img_086EF1DC,
    Img_086EF9C8,
};

u16 * CONST_DATA gUnknown_085D8BA4[] =
{
    Pal_086F01E4,
    Pal_086F0204,
    Pal_086F0224,
    Pal_086F0244,
    Pal_086F0264,
    Pal_086F0284,
    Pal_086F02A4,
    Pal_086F02C4,
    Pal_086F02E4,
    Pal_086F0304,
    Pal_086F0324,
};

const u16 gUnknown_080DF042[] =
{
    0, 5,
    1, 5,
    2, 5,
    3, 5,
    4, 5,
    5, 5,
    6, 5,
    7, 5,
    8, 5,
    9, 5,
    10, 5,
    -1,
};

struct ProcCmd CONST_DATA ProcScr_efxGorgonBGDirt[] =
{
    PROC_NAME("efxGorgonBGDirt"),
    PROC_REPEAT(sub_806B73C),
    PROC_END,
};

// clang-format on

//! FE8U = 0x0806B7A8
void sub_806B7A8(struct Anim * anim)
{
    struct ProcEfxBG * proc;

    gEfxBgSemaphore++;

    proc = Proc_Start(ProcScr_efxGorgonBGDirt, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;

    proc->frame = 0;
    proc->frame_config = gUnknown_080DF042;

    proc->tsal = gUnknown_085D8B4C;
    proc->img = gUnknown_085D8B78;
    proc->pal = gUnknown_085D8BA4;

    if (gEkrDistanceType == 1)
    {
        if (GetAnimPosition(anim) == 0)
        {
            BG_SetPosition(1, 0x18, 0);
        }
        else
        {
            BG_SetPosition(1, -0x18, 0);
        }
    }
    else
    {
        BG_SetPosition(1, 0, 0);
    }

    SpellFx_SetSomeColorEffect();

    return;
}

//! FE8U = 0x0806B830
void sub_806B830(struct ProcEfxBG * proc)
{
    int ret = EfxAdvanceFrameLut((s16 *)&proc->timer, (s16 *)&proc->frame, proc->frame_config);

    if (ret >= 0)
    {
        u16 ** tsa = proc->tsal;
        u16 ** img = proc->img;
        u16 ** pal = proc->pal;

        SpellFx_RegisterBgGfx(*(img + ret), 0x2000);
        SpellFx_RegisterBgPal(*(pal + ret), 0x20);
        SpellFx_WriteBgMapExt(proc->anim, *(tsa + ret), 0x20, 0x14);
    }
    else
    {
        if (ret == -1)
        {
            SpellFx_ClearBG1();
            gEfxBgSemaphore--;

            Proc_Break(proc);
        }
    }

    return;
}

// clang-format off

u16 * CONST_DATA gUnknown_085D8BE8[] =
{
    Tsa_086F4A98,
    Tsa_086F4CCC,
    Tsa_086F4ED8,
};

u16 * CONST_DATA gUnknown_085D8BF4[] =
{
    Img_086F0F6C,
    Img_086F24C8,
    Img_086F3830,
};

u16 * CONST_DATA gUnknown_085D8C00[] =
{
    Pal_086F4A38,
    Pal_086F4A58,
    Pal_086F4A78,
};

const u16 gUnknown_080DF080[] =
{
    0, 2,
    1, 2,
    2, 2,
    0, 2,
    1, 2,
    2, 2,
    -1,
};

struct ProcCmd CONST_DATA ProcScr_efxGorgonBGTwister[] =
{
    PROC_NAME("efxGorgonBGTwister"),
    PROC_REPEAT(sub_806B830),
    PROC_END,
};

// clang-format on

//! FE8U = 0x0806B89C
void sub_806B89C(struct Anim * anim)
{
    struct ProcEfxBG * proc;

    gEfxBgSemaphore++;

    proc = Proc_Start(ProcScr_efxGorgonBGTwister, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;
    proc->frame = 0;
    proc->frame_config = gUnknown_080DF080;

    proc->tsal = gUnknown_085D8BE8;
    proc->img = gUnknown_085D8BF4;
    proc->pal = gUnknown_085D8C00;

    if (gEkrDistanceType == 1)
    {
        if (GetAnimPosition(anim) == 0)
        {
            BG_SetPosition(1, 0x28, 0);
        }
        else
        {
            BG_SetPosition(1, -0x18, 0);
        }
    }
    else
    {
        if (GetAnimPosition(anim) == 0)
        {
            BG_SetPosition(1, 0x10, 0);
        }
        else
        {
            BG_SetPosition(1, 0, 0);
        }
    }

    SpellFx_SetSomeColorEffect();

    return;
}

struct Proc085D8C24
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x4C);
    /* 4C */ s16 unk4C;
};

//! FE8U = 0x0806B938
void sub_806B938(struct Proc085D8C24 * proc)
{
    proc->unk4C = 0;
    return;
}

#define RGB_(r, g, b) (((b) << 10) | ((g) << 5) | (r))

//! FE8U = 0x0806B940
void sub_806B940(struct Proc085D8C24 * proc)
{
    int sl;
    u16 * r6;
    u16 * r7;
    int sp_08;
    int ip;

    r7 = gPaletteBuffer;
    r6 = gEfxPal;

    sl = Interpolate(0, 0, 0x10, proc->unk4C, 12);

    *r6 = *r7;

    for (sp_08 = 0; sp_08 < 0x20; sp_08++)
    {
        switch (sp_08)
        {
            case 2:
            case 3:
            case 16:
            case 21:
            case 22:
            case 27:
            case 28:
            case 29:
            case 30:
                CpuFastCopy(r7, r6, 0x20);
                r7 += 0x10;
                r6 += 0x10;
                continue;

            default:
                break;
        }

        r7++;
        r6++;

        for (ip = 0; ip < 0xF; ip++)
        {
            u8 r = ((*r7 & 0x1f) * (0x10 - sl)) >> 4;
            u8 g = (((*r7 >> 5) & 0x1f) * (0x10 - sl)) >> 4;
            u8 b = (((*r7 >> 10) & 0x1f) * (0x10 - sl)) >> 4;

            *r6 = RGB_(r & 0x1f, g & 0x1f, b & 0x1f);
            r7++;
            r6++;
        }
    }

    CpuFastCopy(gEfxPal, (void *)PLTT, 0x400);
    DisablePaletteSync();

    if (proc->unk4C == 12)
    {
        proc->unk4C = 0;
        Proc_Break(proc);
    }
    else
    {
        proc->unk4C++;
    }

    return;
}

//! FE8U = 0x0806BACC
void sub_806BACC(struct Proc085D8C24 * proc)
{
    int sl;
    u16 * r6;
    u16 * r7;
    int sp_08;
    int ip;

    r7 = gPaletteBuffer;
    r6 = gEfxPal;

    *r6 = *r7;

    for (sp_08 = 0; sp_08 < 0x20; sp_08++)
    {
        switch (sp_08)
        {
            case 2:
            case 3:
            case 16:
            case 18:
            case 21:
            case 22:
            case 27:
            case 28:
            case 29:
            case 30:
                CpuFastCopy(r7, r6, 0x20);
                r7 += 0x10;
                r6 += 0x10;
                continue;

            default:
                break;
        }

        r7++;
        r6++;

        for (ip = 0; ip < 0xF; ip++)
        {
            *r6 = 0;

            r7++;
            r6++;
        }
    }

    CpuFastCopy(gEfxPal, (void *)PLTT, 0x400);
    DisablePaletteSync();

    if (proc->unk4C == 16)
    {
        Proc_Break(proc);
    }

    proc->unk4C++;

    return;
}

#undef RGB_

// clang-format off

struct ProcCmd CONST_DATA gUnknown_085D8C24[] =
{
    PROC_CALL(sub_806B938),

    PROC_REPEAT(sub_806B940),
    PROC_REPEAT(sub_806BACC),

    PROC_CALL(EnablePaletteSync),

    PROC_END,
};

// clang-format on

//! FE8U = 0x0806BBDC
void sub_806BBDC(void)
{
    Proc_Start(gUnknown_085D8C24, PROC_TREE_VSYNC);
    return;
}

//! FE8U = 0x0806BBF0
void sub_806BBF0(struct ProcEfxOBJ * proc)
{
    switch (proc->unk44)
    {
        case 0:
            proc->anim2->xPosition -= 2;
            break;

        case 1:
            proc->anim2->xPosition -= 3;
            break;

        case 2:
            proc->anim2->xPosition -= 4;
            break;

        case 3:
            proc->anim2->xPosition += 2;
            break;

        case 4:
            proc->anim2->xPosition += 3;
            break;

        case 5:
            proc->anim2->xPosition += 4;
            break;
    }

    proc->anim2->yPosition -= 6;

    proc->timer++;

    if ((proc->timer == proc->terminator) || (proc->anim2->xPosition < -0x10))
    {
        gEfxBgSemaphore--;
        AnimDelete(proc->anim2);
        Proc_Break(proc);
    }

    return;
}

// clang-format off

struct ProcCmd CONST_DATA ProcScr_efxGorgonOBJTwisterPiece[] =
{
    PROC_NAME("efxGorgonOBJTwisterPiece"),
    PROC_REPEAT(sub_806BBF0),
    PROC_END,
};

// clang-format on

//! FE8U = 0x0806BC98
void sub_806BC98(struct Anim * anim, int flag, int c, int terminator)
{
    struct ProcEfxOBJ * proc;
    struct Anim * frontAnim;
    u32 * scr;

    gEfxBgSemaphore++;

    proc = Proc_Start(ProcScr_efxGorgonOBJTwisterPiece, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;
    proc->terminator = terminator;
    proc->unk44 = c;

    scr = gUnknown_086B5974;
    frontAnim = EfxCreateFrontAnim(anim, scr, scr, scr, scr);
    proc->anim2 = frontAnim;

    if (GetAnimPosition(proc->anim) == 0)
    {
        frontAnim->xPosition = 0x58;
    }
    else
    {
        frontAnim->xPosition = 0x98;
    }

    frontAnim->yPosition = 0x58;

    if (gEkrDistanceType == 1)
    {

        if (GetAnimPosition(proc->anim) == 0)
        {
            frontAnim->xPosition -= 0x18;
        }
        else
        {
            frontAnim->xPosition += 0x18;
        }
    }

    switch (proc->unk44)
    {
        case 0:
            frontAnim->xPosition -= 12;
            break;

        case 1:
            frontAnim->xPosition -= 0x18;
            break;

        case 2:
            frontAnim->xPosition -= 0x24;
            break;

        case 3:
            frontAnim->xPosition += 12;
            break;

        case 4:
            frontAnim->xPosition += 0x18;
            break;

        case 5:
            frontAnim->xPosition += 0x24;
            break;
    }

    if (flag == 0)
    {
        frontAnim->oamBase = 0x3E000100;
    }
    else
    {
        frontAnim->oamBase = 0x3C000100;
    }

    return;
}

//! FE8U = 0x0806BD94
void sub_806BD94(struct ProcEfxOBJ * proc)
{
    switch (proc->timer & 0x1f)
    {
        case 0:
            sub_806BC98(proc->anim, 0, 0, 12 - proc->timer);
            break;

        case 4:
            sub_806BC98(proc->anim, 1, 5, 12 - proc->timer);
            break;

        case 8:
            sub_806BC98(proc->anim, 0, 6, 12 - proc->timer);
            break;

        case 12:
            sub_806BC98(proc->anim, 1, 4, 12 - proc->timer);
            break;

        case 16:
            sub_806BC98(proc->anim, 0, 2, 12 - proc->timer);
            break;

        case 20:
            sub_806BC98(proc->anim, 1, 1, 12 - proc->timer);
            break;

        case 24:
            sub_806BC98(proc->anim, 0, 3, 12 - proc->timer);
            break;

        case 28:
            sub_806BC98(proc->anim, 1, 7, 12 - proc->timer);
            break;
    }

    proc->timer++;

    if (proc->timer == 0xc)
    {
        gEfxBgSemaphore--;
        Proc_Break(proc);
    }

    return;
}

// clang-format off

struct ProcCmd CONST_DATA ProcScr_efxGorgonOBJTwister[] =
{
    PROC_NAME("efxGorgonOBJTwister"),
    PROC_REPEAT(sub_806BD94),
    PROC_END,
};

// clang-format on

//! FE8U = 0x0806BEEC
void sub_806BEEC(struct Anim * anim)
{
    struct ProcEfxOBJ * proc;

    gEfxBgSemaphore++;

    proc = Proc_Start(ProcScr_efxGorgonOBJTwister, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;

    if (GetAnimPosition(anim) == 0)
    {
        proc->unk32 = 0x58;
    }
    else
    {
        proc->unk32 = 0x98;
    }

    proc->unk3A = 0x48;

    if (gEkrDistanceType == 1)
    {
        if (GetAnimPosition(proc->anim) == 0)
        {
            proc->unk32 -= 0x18;
        }
        else
        {
            proc->unk32 += 0x18;
        }
    }

    // clang-format off
    SetObjAffine(
        0x1f,
        Div(+COS(0) * 16, 0x80),
        Div(-SIN(0) * 16, 0x80),
        Div(+SIN(0) * 16, 0x80),
        Div(+COS(0) * 16, 0x80)
    );

    SetObjAffine(
        0x1e,
        Div(+COS(0) * 16, 0x100),
        Div(-SIN(0) * 16, 0x100),
        Div(+SIN(0) * 16, 0x100),
        Div(+COS(0) * 16, 0x100)
    );
    // clang-format on

    SpellFx_RegisterObjPal(Pal_CrimsonEyeSprites, 0x20);
    SpellFx_RegisterObjGfx(Img_CrimsonEyeSprites, 0x1000);

    return;
}

//! FE8U = 0x0806C050
void sub_806C050(struct ProcEfxBG * proc)
{
    s16 ret = EfxAdvanceFrameLut((s16 *)&proc->timer, (s16 *)&proc->frame, proc->frame_config);

    if (ret >= 0)
    {
        u16 ** tsa = proc->tsal;
        u16 ** img = proc->img;

        SpellFx_RegisterBgGfx(*(img + ret), 0x2000);
        sub_8068AFC(GetAnimAnotherSide(proc->anim), *(tsa + ret), *(tsa + ret), 1);
    }
    else
    {
        if (ret == -1)
        {
            SpellFx_ClearBG1();
            gEfxBgSemaphore--;
            SetDefaultColorEffects_();
            Proc_Break(proc);
        }
    }

    return;
}

// clang-format off

u16 * CONST_DATA TsaArray_efxGorgonBGFinish[] =
{
    Tsa_086FDA64,
    Tsa_086FDB08,
    Tsa_086FDCE0,
    Tsa_086FDEC4,
    Tsa_086FE0D4,
    Tsa_086FE320,
    Tsa_086FE4E0,
    Tsa_086FE680,
    Tsa_086FE81C,
};

u16 * CONST_DATA ImgArray_efxGorgonBGFinish[] =
{
    Img_086F50D4,
    Img_086F6264,
    Img_086F7150,
    Img_086F80B8,
    Img_086F915C,
    Img_086FA350,
    Img_086FB07C,
    Img_086FBCE8,
    Img_086FCD58,
};

const u16 gFrameConfig_efxGorgonBGFinish[] =
{
    0, 10,
    1, 2,
    2, 2,
    3, 2,
    4, 2,
    5, 2,
    6, 2,
    7, 2,
    8, 2,
    -1,
};

struct ProcCmd CONST_DATA ProcScr_efxGorgonBGFinish[] =
{
    PROC_NAME("efxGorgonBGFinish"),
    PROC_REPEAT(sub_806C050),
    PROC_REPEAT(efxDarkLongMonsBG01_Loop_B),
    PROC_END,
};

// clang-format on

//! FE8U = 0x0806C0B8
void sub_806C0B8(struct Anim * anim)
{
    struct ProcEfxBG * proc;

    gEfxBgSemaphore++;

    proc = Proc_Start(ProcScr_efxGorgonBGFinish, PROC_TREE_3);
    proc->anim = anim;
    proc->timer = 0;

    proc->frame = 0;
    proc->frame_config = gFrameConfig_efxGorgonBGFinish;

    proc->tsal = TsaArray_efxGorgonBGFinish;
    proc->img = ImgArray_efxGorgonBGFinish;

    if (gEkrDistanceType == 1)
    {
        if (GetAnimPosition(anim) == 0)
        {
            BG_SetPosition(1, 0x18, 0);
        }
        else
        {
            BG_SetPosition(1, -0x18, 0);
        }
    }
    else
    {
        BG_SetPosition(1, 0, 0);
    }

    SpellFx_RegisterBgPal(gUnknown_086FDA44, 0x20);

    SetPrimaryHBlankHandler(OnHBlank_806B088);

    return;
}

struct Proc085D8CE4
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x4C);
    /* 4C */ s16 unk4C;
};

//! FE8U = 0x0806C14C
void sub_806C14C(struct Proc085D8CE4 * proc)
{
    proc->unk4C = 0;
    return;
}

//! FE8U = 0x0806C154
void sub_806C154(struct Proc085D8CE4 * proc)
{
    u16 * src;
    int i;
    int j;

    u16 * src_ = gEfxPal;

    for (i = 0, src = gEfxPal; i < 0x20; i++)
    {
        src_++;
        for (j = 0; j < 0xf; j++)
        {
            *src_ = 0x00007FFF;
            src_++;
        }
    }

    CpuFastCopy(src, (void *)PLTT, 0x400);
    DisablePaletteSync();

    if (proc->unk4C == 8)
    {
        proc->unk4C = 0;
        Proc_Break(proc);
    }
    else
    {
        proc->unk4C++;
    }

    return;
}

#define RGB_(r, g, b) (((b) << 10) | ((g) << 5) | (r))

//! FE8U = 0x0806C1B8
void sub_806C1B8(struct Proc085D8CE4 * proc)
{
    int sl;
    u16 * r6;
    u16 * r7;
    int sp_08;
    int ip;

    r7 = gPaletteBuffer;
    r6 = gEfxPal;

    *r6 = *r7;

    for (sp_08 = 0; sp_08 < 0x20; sp_08++)
    {
        switch (sp_08)
        {
            case 1:
            case 2:
            case 3:
            case 16:
            case 21:
            case 22:
            case 27:
            case 28:
            case 29:
            case 30:
                CpuFastCopy(r7, r6, 0x20);
                r7 += 0x10;
                r6 += 0x10;
                continue;

            default:
                break;
        }

        r7++;
        r6++;

        for (ip = 0; ip < 0xF; ip++)
        {
            *r6 = 0;
            r7++;
            r6++;
        }
    }

    CpuFastCopy(gEfxPal, (void *)PLTT, 0x400);
    DisablePaletteSync();

    if (proc->unk4C == 0x12)
    {
        proc->unk4C = 0;
        Proc_Break(proc);
    }
    else
    {
        proc->unk4C++;
    }

    return;
}

//! FE8U = 0x0806C2D4
void sub_806C2D4(struct Proc085D8CE4 * proc)
{
    int sl;
    u16 * r6;
    u16 * r7;
    int sp_08;
    int ip;

    r7 = gPaletteBuffer;
    r6 = gEfxPal;

    sl = Interpolate(0, 0x10, 0, proc->unk4C, 0x12);

    *r6 = *r7;

    for (sp_08 = 0; sp_08 < 0x20; sp_08++)
    {
        switch (sp_08)
        {
            case 1:
            case 2:
            case 3:
            case 16:
            case 21:
            case 22:
            case 27:
            case 28:
            case 29:
            case 30:
                CpuFastCopy(r7, r6, 0x20);
                r7 += 0x10;
                r6 += 0x10;
                continue;

            default:
                break;
        }

        r7++;
        r6++;

        for (ip = 0; ip < 0xF; ip++)
        {
            u8 r = ((*r7 & 0x1f) * (0x10 - sl)) >> 4;
            u8 g = (((*r7 >> 5) & 0x1f) * (0x10 - sl)) >> 4;
            u8 b = (((*r7 >> 10) & 0x1f) * (0x10 - sl)) >> 4;

            *r6 = RGB_(r & 0x1f, g & 0x1f, b & 0x1f);
            r7++;
            r6++;
        }
    }

    CpuFastCopy(gEfxPal, (void *)PLTT, 0x400);
    DisablePaletteSync();

    if (proc->unk4C == 0x12)
    {
        proc->unk4C = 0;
        Proc_Break(proc);
    }
    else
    {
        proc->unk4C++;
    }

    return;
}

#undef RGB_

// clang-format off

struct ProcCmd CONST_DATA gUnknown_085D8CE4[] =
{
    PROC_CALL(sub_806C14C),

    PROC_REPEAT(sub_806C154),
    PROC_REPEAT(sub_806C1B8),
    PROC_REPEAT(sub_806C2D4),

    PROC_CALL(EnablePaletteSync),

    PROC_END,
};

// clang-format on

//! FE8U = 0x0806C464
void sub_806C464(void)
{
    Proc_Start(gUnknown_085D8CE4, PROC_TREE_VSYNC);
    return;
}

struct Proc085D8D14
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x4C);
    /* 4C */ s16 unk4C;
};

#define RGB_(r, g, b) (((b) << 10) | ((g) << 5) | (r))

//! FE8U = 0x0806C478
void sub_806C478(struct Proc085D8D14 * proc)
{
    int sl;
    u16 * r6;
    u16 * r7;
    int sp_08;
    int ip;

    r7 = gPaletteBuffer;
    r6 = gEfxPal;

    sl = Interpolate(0, 0, 0x10, proc->unk4C, 8);

    *r6 = *r7;

    for (sp_08 = 0; sp_08 < 0x20; sp_08++)
    {
        switch (sp_08)
        {
            case 1:
            case 2:
            case 3:
            case 16:
            case 21:
            case 22:
            case 27:
            case 28:
            case 29:
            case 30:
                CpuFastCopy(r7, r6, 0x20);
                r7 += 0x10;
                r6 += 0x10;
                continue;

            default:
                break;
        }

        r7++;
        r6++;

        for (ip = 0; ip < 0xF; ip++)
        {
            u8 r = ((*r7 & 0x1f) * (0x10 - sl)) >> 4;
            u8 g = (((*r7 >> 5) & 0x1f) * (0x10 - sl)) >> 4;
            u8 b = (((*r7 >> 10) & 0x1f) * (0x10 - sl)) >> 4;

            *r6 = RGB_(r & 0x1f, g & 0x1f, b & 0x1f);
            r7++;
            r6++;
        }
    }

    CpuFastCopy(gEfxPal, (void *)PLTT, 0x400);
    DisablePaletteSync();

    if (proc->unk4C == 8)
    {
        proc->unk4C = 0;
        Proc_Break(proc);
    }
    else
    {
        proc->unk4C++;
    }

    return;
}

#undef RGB_

// clang-format off

struct ProcCmd CONST_DATA gUnknown_085D8D14[] =
{
    PROC_CALL(sub_806C14C),

    PROC_REPEAT(sub_806C478),
    PROC_REPEAT(sub_806C1B8),
    PROC_REPEAT(sub_806C2D4),

    PROC_CALL(EnablePaletteSync),

    PROC_END,
};

// clang-format on

//! FE8U = 0x0806C608
void sub_806C608(void)
{
    Proc_Start(gUnknown_085D8D14, PROC_TREE_VSYNC);
    return;
}
