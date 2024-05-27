	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	THUMB_FUNC_START sub_8048260
sub_8048260: @ 0x08048260
	push {lr}
	adds r1, r0, #0
	ldr r0, _0804827C  @ ProcScr_TacticianNameSelection
	bl Proc_StartBlocking
	adds r3, r0, #0
	adds r3, #0x33
	movs r2, #0
	movs r1, #7
	strb r1, [r3]
	adds r0, #0x32
	strb r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0804827C: .4byte ProcScr_TacticianNameSelection

	THUMB_FUNC_END sub_8048260

	THUMB_FUNC_START StartTacticianNameSelect
StartTacticianNameSelect: @ 0x08048280
	push {r4, lr}
	adds r4, r0, #0
	bl LoadLegacyUiFrameGraphics
	bl UnsetBmStLinkArenaFlag
	ldr r0, _080482CC  @ Font_0203DB64
	ldr r1, _080482D0  @ 0x06001800
	movs r2, #0xc0
	movs r3, #0
	bl InitTextFont
	ldr r1, _080482D4  @ gLinkArenaSt
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #3]
	strb r0, [r1, #1]
	ldr r1, _080482D8  @ gPlaySt
	adds r1, #0x41
	ldrb r2, [r1]
	subs r0, #0xd
	ands r0, r2
	strb r0, [r1]
	ldr r0, _080482DC  @ ProcScr_TacticianNameSelection
	adds r1, r4, #0
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r2, #0x33
	movs r1, #5
	strb r1, [r2]
	adds r0, #0x32
	movs r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080482CC: .4byte Font_0203DB64
_080482D0: .4byte 0x06001800
_080482D4: .4byte gLinkArenaSt
_080482D8: .4byte gPlaySt
_080482DC: .4byte ProcScr_TacticianNameSelection

	THUMB_FUNC_END StartTacticianNameSelect

	THUMB_FUNC_START sub_80482E0
sub_80482E0: @ 0x080482E0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _08048308  @ ProcScr_SIOCON
	bl Proc_Find
	cmp r0, #0
	beq _08048310
	ldr r0, _0804830C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080483EC
	adds r0, r5, #0
	movs r1, #4
	b _080483A8
	.align 2, 0
_08048308: .4byte ProcScr_SIOCON
_0804830C: .4byte gKeyStatusPtr
_08048310:
	ldr r0, _08048330  @ gSioSt
	ldr r3, [r0]
	movs r0, #6
	ldrsb r0, [r3, r0]
	cmp r0, #1
	bgt _08048328
	adds r1, r3, #0
	adds r1, #0xb
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	bne _08048334
_08048328:
	adds r0, r5, #0
	movs r1, #0
	b _080483A8
	.align 2, 0
_08048330: .4byte gSioSt
_08048334:
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x1a
_0804833A:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _08048344
	adds r4, #1
_08048344:
	adds r2, #1
	cmp r2, #3
	ble _0804833A
	bl sub_80421E4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048362
	ldr r6, _08048368  @ gSioSt
	ldr r2, [r6]
	ldrb r0, [r2, #0x1e]
	cmp r0, #0x3c
	bhi _08048362
	cmp r4, #0
	beq _0804836C
_08048362:
	adds r0, r5, #0
	movs r1, #0
	b _080483A8
	.align 2, 0
_08048368: .4byte gSioSt
_0804836C:
	ldr r0, _080483B0  @ gUnknown_03004E80
	movs r1, #0x8c
	strb r1, [r0]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r2]
	strh r1, [r0, #2]
	movs r1, #0xa
	bl SioSend
	ldr r0, [r6]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080483B4
	bl IsExtraMapAvailable
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080483B4
	mov r1, sp
	movs r0, #1
	strb r0, [r1]
	mov r0, sp
	movs r1, #4
	bl SioEmitData
	adds r0, r5, #0
	movs r1, #3
_080483A8:
	bl nullsub_15
_080483AC:
	movs r0, #0
	b _080483EE
	.align 2, 0
_080483B0: .4byte gUnknown_03004E80
_080483B4:
	ldr r4, _080483E8  @ gSioSt
	ldr r2, [r4]
	ldrb r0, [r2, #9]
	movs r1, #3
	ands r1, r0
	cmp r1, #3
	bne _080483EC
	strb r1, [r2, #9]
	bl sub_8042AF4
	ldr r1, [r4]
	movs r2, #0
	movs r0, #6
	strh r0, [r1, #4]
	strb r2, [r1, #0x1e]
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080483AC
	adds r0, r5, #0
	movs r1, #1
	bl nullsub_15
	b _080483AC
	.align 2, 0
_080483E8: .4byte gSioSt
_080483EC:
	movs r0, #1
_080483EE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80482E0

	THUMB_FUNC_START sub_80483F8
sub_80483F8: @ 0x080483F8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08048414  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	cmp r0, #3
	bls _0804840E
	adds r0, r1, #0
	movs r1, #0
	bl nullsub_15
_0804840E:
	pop {r0}
	bx r0
	.align 2, 0
_08048414: .4byte gSioSt

	THUMB_FUNC_END sub_80483F8

	THUMB_FUNC_START sub_8048418
sub_8048418: @ 0x08048418
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl GetTalkChoiceResult
	cmp r0, #1
	bne _08048430
	ldr r1, _0804842C  @ gUnk_Sio_0203DD8C
	movs r0, #0
	b _08048434
	.align 2, 0
_0804842C: .4byte gUnk_Sio_0203DD8C
_08048430:
	ldr r1, _0804845C  @ gUnk_Sio_0203DD8C
	movs r0, #1
_08048434:
	str r0, [r1]
	adds r4, r1, #0
	mov r0, sp
	ldr r1, [r4]
	strb r1, [r0]
	movs r1, #4
	bl SioEmitData
	ldr r0, [r4]
	cmp r0, #0
	beq _08048452
	adds r0, r5, #0
	movs r1, #5
	bl nullsub_15
_08048452:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804845C: .4byte gUnk_Sio_0203DD8C

	THUMB_FUNC_END sub_8048418

	THUMB_FUNC_START sub_8048460
sub_8048460: @ 0x08048460
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	ldr r0, _080484A8  @ gSioSt
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x1a
_08048472:
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _0804847C
	adds r4, #1
_0804847C:
	adds r1, #1
	cmp r1, #3
	ble _08048472
	bl sub_80421E4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804849A
	ldr r0, _080484A8  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0x3c
	bhi _0804849A
	cmp r4, #0
	beq _080484AC
_0804849A:
	adds r0, r5, #0
	movs r1, #0
	bl nullsub_15
_080484A2:
	movs r0, #0
	b _080484D0
	.align 2, 0
_080484A8: .4byte gSioSt
_080484AC:
	add r1, sp, #4
	mov r0, sp
	movs r2, #0
	bl SioReceiveData
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080484CE
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080484A2
	adds r0, r5, #0
	movs r1, #5
	bl nullsub_15
	b _080484A2
_080484CE:
	movs r0, #1
_080484D0:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8048460

	THUMB_FUNC_START sub_80484D8
sub_80484D8: @ 0x080484D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl ClearText
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl Text_InsertDrawString
	adds r0, r4, #0
	movs r1, #0x36
	movs r2, #2
	adds r3, r6, #0
	bl SioDrawNumber
	ldr r0, _0804851C  @ 0x000005AE
	bl GetStringFromIndex
	adds r3, r0, #0
	adds r0, r4, #0
	movs r1, #0x3e
	movs r2, #0
	bl Text_InsertDrawString
	ldr r1, _08048520  @ gBG0TilemapBuffer+0x31E
	adds r0, r4, #0
	bl PutText
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804851C: .4byte 0x000005AE
_08048520: .4byte gBG0TilemapBuffer+0x31E

	THUMB_FUNC_END sub_80484D8

	THUMB_FUNC_START sub_8048524
sub_8048524: @ 0x08048524
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r5, #0x3c
	adds r0, #0x3b
	ldrb r1, [r5]
	ldrb r0, [r0]
	cmp r1, r0
	bcs _0804857C
	ldr r0, _08048584  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08048548
	movs r0, #0x7d
	bl m4aSongNumStart
_08048548:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r0, _08048588  @ gUnk_Sio_0203DA88
	ldr r1, _0804858C  @ gUnknown_080D9F18
	ldrb r2, [r5]
	bl sub_80484D8
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, _08048590  @ gBG0TilemapBuffer+0x3DC
	movs r3, #0xc0
	lsls r3, r3, #7
	movs r4, #0x64
	str r4, [sp]
	ldrb r1, [r5]
	str r1, [sp, #4]
	ldrb r1, [r5]
	subs r4, r4, r1
	str r4, [sp, #8]
	movs r1, #0xe
	bl DrawStatBarGfx
	movs r0, #1
	bl BG_EnableSyncByMask
_0804857C:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048584: .4byte gPlaySt
_08048588: .4byte gUnk_Sio_0203DA88
_0804858C: .4byte gUnknown_080D9F18
_08048590: .4byte gBG0TilemapBuffer+0x3DC

	THUMB_FUNC_END sub_8048524

	THUMB_FUNC_START sub_8048594
sub_8048594: @ 0x08048594
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r5, #0x3c
	adds r0, #0x3b
	ldrb r1, [r5]
	ldrb r0, [r0]
	cmp r1, r0
	bcs _080485EC
	ldr r0, _080485F4  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080485B8
	movs r0, #0x7d
	bl m4aSongNumStart
_080485B8:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldr r0, _080485F8  @ gUnk_Sio_0203DA88
	ldr r1, _080485FC  @ gUnknown_080D9F20
	ldrb r2, [r5]
	bl sub_80484D8
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, _08048600  @ gBG0TilemapBuffer+0x3DC
	movs r3, #0xc0
	lsls r3, r3, #7
	movs r4, #0x64
	str r4, [sp]
	ldrb r1, [r5]
	str r1, [sp, #4]
	ldrb r1, [r5]
	subs r4, r4, r1
	str r4, [sp, #8]
	movs r1, #0xe
	bl DrawStatBarGfx
	movs r0, #1
	bl BG_EnableSyncByMask
_080485EC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080485F4: .4byte gPlaySt
_080485F8: .4byte gUnk_Sio_0203DA88
_080485FC: .4byte gUnknown_080D9F20
_08048600: .4byte gBG0TilemapBuffer+0x3DC

	THUMB_FUNC_END sub_8048594

	THUMB_FUNC_START sub_8048604
sub_8048604: @ 0x08048604
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08048648  @ Font_0203DB64
	bl SetTextFont
	bl InitSystemTextFont
	ldr r0, _0804864C  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08048660
	ldr r1, _08048650  @ ReadSramFast
	ldr r0, _08048654  @ 0x0E007400
	ldr r4, _08048658  @ gUnk_Sio_02000000 (EWRAM_ENTRY)
	movs r5, #0xc0
	lsls r5, r5, #4
	ldr r3, [r1]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _call_via_r3
	ldr r2, _0804865C  @ sub_8048524
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl StartSioBigSend
	b _0804866A
	.align 2, 0
_08048648: .4byte Font_0203DB64
_0804864C: .4byte gSioSt
_08048650: .4byte ReadSramFast
_08048654: .4byte 0x0E007400
_08048658: .4byte gUnk_Sio_02000000 @ EWRAM_ENTRY
_0804865C: .4byte sub_8048524
_08048660:
	ldr r0, _08048674  @ gUnk_Sio_02000000
	ldr r1, _08048678  @ sub_8048594
	adds r2, r6, #0
	bl StartSioBigReceive
_0804866A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048674: .4byte gUnk_Sio_02000000 @ EWRAM_ENTRY
_08048678: .4byte sub_8048594

	THUMB_FUNC_END sub_8048604

	THUMB_FUNC_START sub_804867C
sub_804867C: @ 0x0804867C
	push {lr}
	bl IsSioBigTransferActive
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804868C
	movs r0, #1
	b _080486BE
_0804868C:
	ldr r0, _080486C4  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804869E
	movs r0, #0x7e
	bl m4aSongNumStart
_0804869E:
	bl InitTalkTextFont
	ldr r0, _080486C8  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080486BC
	ldr r0, _080486CC  @ gUnk_Sio_02000000
	ldr r1, _080486D0  @ 0x0E007400
	movs r2, #0xc0
	lsls r2, r2, #4
	bl WriteAndVerifySramFast
_080486BC:
	movs r0, #0
_080486BE:
	pop {r1}
	bx r1
	.align 2, 0
_080486C4: .4byte gPlaySt
_080486C8: .4byte gSioSt
_080486CC: .4byte gUnk_Sio_02000000
_080486D0: .4byte 0x0E007400

	THUMB_FUNC_END sub_804867C

	THUMB_FUNC_START sub_80486D4
sub_80486D4: @ 0x080486D4
	ldr r0, _080486E4  @ gSioSt
	ldr r2, [r0]
	movs r1, #6
	ldrsb r1, [r2, r1]
	movs r0, #1
	lsls r0, r1
	strb r0, [r2, #0xa]
	bx lr
	.align 2, 0
_080486E4: .4byte gSioSt

	THUMB_FUNC_END sub_80486D4

	THUMB_FUNC_START sub_80486E8
sub_80486E8: @ 0x080486E8
	push {r4, lr}
	ldr r0, _08048714  @ gSioMsgBuf
	movs r2, #0
	movs r1, #0x89
	strb r1, [r0]
	ldr r4, _08048718  @ gSioSt
	ldr r1, [r4]
	ldrb r1, [r1, #6]
	strb r1, [r0, #1]
	strh r2, [r0, #2]
	movs r1, #4
	bl SioSend
	ldr r4, [r4]
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #9]
	ands r0, r1
	cmp r0, r1
	beq _0804871C
	movs r0, #1
	b _08048728
	.align 2, 0
_08048714: .4byte gSioMsgBuf
_08048718: .4byte gSioSt
_0804871C:
	movs r1, #6
	ldrsb r1, [r4, r1]
	movs r0, #1
	lsls r0, r1
	strb r0, [r4, #0xa]
	movs r0, #0
_08048728:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80486E8

	THUMB_FUNC_START sub_8048730
sub_8048730: @ 0x08048730
	push {r4, r5, lr}
	sub sp, #0xc
	movs r0, #6
	bl UnpackUiBarPalette
	movs r5, #0
	str r5, [sp]
	movs r0, #0xd
	movs r1, #0xb
	movs r2, #0x10
	movs r3, #6
	bl DrawUiFrame2
	ldr r0, _0804878C  @ Font_0203DB64
	bl SetTextFont
	bl InitSystemTextFont
	ldr r4, _08048790  @ gUnk_Sio_0203DA88
	ldr r0, _08048794  @ 0x0000077E
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	bl sub_80484D8
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, _08048798  @ gBG0TilemapBuffer+0x3DC
	movs r3, #0xc0
	lsls r3, r3, #7
	movs r1, #0x64
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0xd
	bl DrawStatBarGfx
	movs r0, #1
	bl BG_EnableSyncByMask
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804878C: .4byte Font_0203DB64
_08048790: .4byte gUnk_Sio_0203DA88
_08048794: .4byte 0x0000077E
_08048798: .4byte gBG0TilemapBuffer+0x3DC

	THUMB_FUNC_END sub_8048730

	THUMB_FUNC_START sub_804879C
sub_804879C: @ 0x0804879C
	ldr r2, _080487BC  @ gLCDControlBuffer
	adds r2, #0x36
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080487BC: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804879C

	THUMB_FUNC_START sub_80487C0
sub_80487C0: @ 0x080487C0
	push {r4, r5, lr}
	ldr r4, [r0, #0x14]
	movs r0, #3
	bl EndFaceById
	adds r5, r4, #0
	adds r5, #0x2c
	movs r4, #4
_080487D0:
	ldm r5!, {r0}
	bl Proc_End
	subs r4, #1
	cmp r4, #0
	bge _080487D0
	bl InitSioBG
	movs r0, #0
	movs r1, #0
	bl sub_804C3A0
	ldr r0, _08048810  @ gSioSt
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08048814  @ Font_0203DB64
	bl SetTextFont
	bl InitSystemTextFont
	ldr r0, _08048818  @ gUnk_Sio_0203DA88
	movs r1, #0xa
	bl InitTextDb
	movs r0, #1
	bl Sound_FadeOutBGM
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048810: .4byte gSioSt
_08048814: .4byte Font_0203DB64
_08048818: .4byte gUnk_Sio_0203DA88

	THUMB_FUNC_END sub_80487C0

	THUMB_FUNC_START sub_804881C
sub_804881C: @ 0x0804881C
	push {lr}
	bl ClearSioBG
	bl sub_8045CBC
	bl sub_8045CE0
	bl sub_8041898
	bl LoadAndVerfySuspendSave
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804881C

	THUMB_FUNC_START sub_8048838
sub_8048838: @ 0x08048838
	push {lr}
	bl InitGlobalSaveInfodata
	bl EraseSaveRankData
	bl EraseSoundRoomSaveData
	bl EraseLinkArenaStruct2
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8048838

	THUMB_FUNC_START CallEraseSaveEvent
CallEraseSaveEvent: @ 0x08048850
	push {lr}
	ldr r0, _08048860  @ gUnknown_085A9F48
	movs r1, #3
	bl CallEvent
	pop {r0}
	bx r0
	.align 2, 0
_08048860: .4byte gUnknown_085A9F48

	THUMB_FUNC_END CallEraseSaveEvent

	THUMB_FUNC_START sub_8048864
sub_8048864: @ 0x08048864
	push {lr}
	sub sp, #4
	ldr r3, _08048880  @ gUnknown_085A9F98
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	movs r1, #0x38
	movs r2, #4
	bl PutSprite
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08048880: .4byte gUnknown_085A9F98

	THUMB_FUNC_END sub_8048864

	THUMB_FUNC_START sub_8048884
sub_8048884: @ 0x08048884
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080488C8  @ gLinkArenaSt
	adds r1, r0, #0
	adds r1, #0xa0
	ldrb r3, [r1]
	adds r0, #0xec
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080488D0
	movs r6, #0
	cmp r6, r3
	bge _0804892A
	ldr r4, _080488CC  @ gUnk_Sio_0203DD9F
	adds r5, r4, #5
	mov r2, r8
_080488AC:
	adds r1, r6, r4
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r2, #8
	adds r6, #1
	cmp r6, r3
	blt _080488AC
	b _0804892A
	.align 2, 0
_080488C8: .4byte gLinkArenaSt
_080488CC: .4byte gUnk_Sio_0203DD9F
_080488D0:
	movs r6, #0
	subs r0, r3, #2
	mov ip, r0
	cmp r6, r3
	bge _080488F0
	ldr r0, _080488F4  @ gUnk_Sio_0203DD90
	adds r2, r0, #0
	adds r2, #0x14
	mov r1, r8
_080488E2:
	strb r6, [r1]
	ldm r2!, {r0}
	str r0, [r1, #4]
	adds r1, #8
	adds r6, #1
	cmp r6, r3
	blt _080488E2
_080488F0:
	movs r6, #0
	b _08048924
	.align 2, 0
_080488F4: .4byte gUnk_Sio_0203DD90
_080488F8:
	adds r5, r0, #0
	adds r7, r6, #1
	cmp r0, r6
	blt _08048922
	lsls r0, r0, #3
	mov r1, r8
	adds r2, r0, r1
_08048906:
	ldr r4, [r2, #4]
	ldr r3, [r2, #0xc]
	cmp r4, r3
	bcs _0804891A
	ldrb r1, [r2]
	ldrb r0, [r2, #8]
	strb r0, [r2]
	strb r1, [r2, #8]
	str r3, [r2, #4]
	str r4, [r2, #0xc]
_0804891A:
	subs r2, #8
	subs r5, #1
	cmp r5, r6
	bge _08048906
_08048922:
	adds r6, r7, #0
_08048924:
	mov r0, ip
	cmp r6, r0
	ble _080488F8
_0804892A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8048884

	THUMB_FUNC_START sub_8048934
sub_8048934: @ 0x08048934
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r0, r2, #5
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r1, _08048980  @ gBG1TilemapBuffer
	adds r0, r0, r1
	movs r1, #0
	adds r4, r2, #1
_08048948:
	adds r2, r1, #1
	movs r1, #5
_0804894C:
	strh r3, [r0]
	adds r0, #2
	adds r3, #1
	subs r1, #1
	cmp r1, #0
	bge _0804894C
	adds r0, #0x34
	adds r1, r2, #0
	cmp r1, #3
	ble _08048948
	adds r0, r6, #0
	bl ClearText
	lsls r0, r4, #5
	adds r0, #4
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r1, _08048984  @ gBG0TilemapBuffer
	adds r0, r0, r1
	movs r1, #2
	ldr r2, [sp, #0x10]
	bl PutNumber
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048980: .4byte gBG1TilemapBuffer
_08048984: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_8048934

	THUMB_FUNC_START sub_8048988
sub_8048988: @ 0x08048988
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08048A48  @ gUnknown_085AD80C
	ldr r1, _08048A4C  @ 0x06002800
	bl Decompress
	ldr r0, _08048A50  @ Pal_TacticianSelObj
	movs r1, #0x40
	movs r2, #0x80
	bl CopyToPaletteBuffer
	movs r0, #0
	bl SetTextFont
	bl ResetTextFont
	movs r0, #0
	mov r9, r0
	ldr r0, _08048A54  @ gUnknown_080D9F28
	mov sl, r0
	adds r6, r4, #0
	adds r6, #0x2c
	ldr r7, _08048A58  @ gUnknown_080D9F98
_080489C0:
	ldr r0, _08048A5C  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	add r0, r9
	add r0, sl
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_8042194
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08048A24
	ldr r0, _08048A60  @ gUnk_Sio_0203DD90
	mov r8, r0
	adds r0, #0xa
	adds r0, r5, r0
	ldrb r0, [r0]
	adds r4, r5, #2
	cmp r0, #0
	bne _080489F8
	lsls r1, r4, #5
	ldr r0, _08048A64  @ gUnknown_085ADDA8
	movs r2, #0x20
	bl CopyToPaletteBuffer
_080489F8:
	movs r0, #0xf
	ands r4, r0
	lsls r4, r4, #0xc
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r6, #0
	movs r1, #4
	bl InitTextDb
	ldrb r1, [r7]
	ldrb r2, [r7, #1]
	lsls r0, r5, #2
	mov r3, r8
	adds r3, #0x14
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r6, #0
	adds r3, r4, #0
	bl sub_8048934
_08048A24:
	adds r6, #8
	adds r7, #2
	movs r0, #1
	add r9, r0
	mov r0, r9
	cmp r0, #3
	ble _080489C0
	movs r0, #3
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048A48: .4byte gUnknown_085AD80C
_08048A4C: .4byte 0x06002800
_08048A50: .4byte Pal_TacticianSelObj
_08048A54: .4byte gUnknown_080D9F28
_08048A58: .4byte gUnknown_080D9F98
_08048A5C: .4byte gSioSt
_08048A60: .4byte gUnk_Sio_0203DD90
_08048A64: .4byte gUnknown_085ADDA8

	THUMB_FUNC_END sub_8048988

	THUMB_FUNC_START nullsub_43
nullsub_43: @ 0x08048A68
	bx lr

	THUMB_FUNC_END nullsub_43

	THUMB_FUNC_START sub_8048A6C
sub_8048A6C: @ 0x08048A6C
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _08048A90  @ gUnknown_085AA06C
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_08048A90: .4byte gUnknown_085AA06C

	THUMB_FUNC_END sub_8048A6C

	THUMB_FUNC_START sub_8048A94
sub_8048A94: @ 0x08048A94
	push {lr}
	ldr r0, _08048AA4  @ gUnknown_085AA06C
	bl Proc_EndEach
	bl ClearBg0Bg1
	pop {r0}
	bx r0
	.align 2, 0
_08048AA4: .4byte gUnknown_085AA06C

	THUMB_FUNC_END sub_8048A94

	THUMB_FUNC_START sub_8048AA8
sub_8048AA8: @ 0x08048AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x33
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	ldr r1, _08048AFC  @ gUnknown_080D9F38
	adds r2, r5, #0
	adds r2, #0x32
	ldr r0, _08048B00  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08048B04
	movs r0, #0x10
	ldrsb r0, [r4, r0]
	cmp r0, #8
	beq _08048AEA
	movs r0, #0x10
	ldrsb r0, [r4, r0]
_08048AEA:
	lsls r0, r0, #4
	subs r0, #0x10
	strh r0, [r5, #0x2a]
	movs r0, #0x11
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	strh r0, [r5, #0x2c]
	lsls r2, r2, #1
	b _08048B2C
	.align 2, 0
_08048AFC: .4byte gUnknown_080D9F38
_08048B00: .4byte gSioSt
_08048B04:
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	lsls r1, r1, #4
	ldr r3, _08048B68  @ gUnknown_085AA084
	lsls r0, r2, #3
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	subs r0, #0xc
	strh r0, [r5, #0x2a]
	movs r1, #0x11
	ldrsb r1, [r4, r1]
	lsls r1, r1, #4
	lsls r2, r2, #1
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	adds r0, r0, r1
	strh r0, [r5, #0x2c]
_08048B2C:
	ldr r1, _08048B6C  @ gUnknown_080D9F98
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #8
	movs r4, #0
	strh r0, [r5, #0x2e]
	adds r0, r2, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r5, #0x30]
	ldr r0, _08048B70  @ gUnk_Sio_02000C60
	bl SetTextFont
	ldr r0, _08048B74  @ gUnk_Sio_02000C78
	adds r1, r5, #0
	adds r1, #0x32
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r1, #0x18
	ldr r3, [r5, #0x34]
	movs r2, #2
	bl SioDrawNumber
	str r4, [r5, #0x3c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048B68: .4byte gUnknown_085AA084
_08048B6C: .4byte gUnknown_080D9F98
_08048B70: .4byte gUnk_Sio_02000C60
_08048B74: .4byte gUnk_Sio_02000C78

	THUMB_FUNC_END sub_8048AA8

	THUMB_FUNC_START sub_8048B78
sub_8048B78: @ 0x08048B78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r0, #0x33
	ldrb r0, [r0]
	bl GetUnit
	str r0, [sp, #4]
	ldr r3, [r7, #0x3c]
	cmp r3, #0x10
	bhi _08048C0C
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	movs r1, #0x10
	mov r2, r8
	bl Interpolate
	mov sl, r0
	ldr r4, _08048C40  @ gSinLookup
	movs r1, #0x80
	adds r1, r1, r4
	mov r9, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl SetObjAffine
_08048C0C:
	adds r0, r7, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08048C64
	ldr r1, [r7, #0x3c]
	cmp r1, #3
	bls _08048C64
	cmp r1, #0x16
	bhi _08048C64
	subs r2, r1, #4
	ldr r4, [sp, #4]
	movs r0, #0x10
	ldrsb r0, [r4, r0]
	cmp r0, #8
	bne _08048C48
	ldr r0, _08048C44  @ gUnknown_085AA0A4
	lsls r1, r2, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	ldrh r2, [r7, #0x2a]
	adds r0, r0, r2
	strh r0, [r7, #0x2a]
	b _08048C58
	.align 2, 0
_08048C40: .4byte gSinLookup
_08048C44: .4byte gUnknown_085AA0A4
_08048C48:
	ldr r1, _08048CA8  @ gUnknown_085AA0A4
	lsls r2, r2, #1
	adds r1, r2, r1
	ldrh r0, [r7, #0x2a]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r7, #0x2a]
	adds r1, r2, #0
_08048C58:
	ldr r0, _08048CAC  @ gUnknown_085AA0CA
	adds r0, r1, r0
	ldrh r1, [r7, #0x2c]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x2c]
_08048C64:
	movs r4, #0x2a
	ldrsh r0, [r7, r4]
	movs r2, #0x2c
	ldrsh r1, [r7, r2]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	ldr r2, _08048CB0  @ gObject_32x16
	adds r3, r7, #0
	adds r3, #0x32
	ldrb r3, [r3]
	lsls r3, r3, #2
	ldr r4, _08048CB4  @ 0x00009340
	adds r3, r3, r4
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
	cmp r0, #0x40
	bls _08048C98
	movs r0, #0
	str r0, [r7, #0x3c]
	adds r0, r7, #0
	bl Proc_Break
_08048C98:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048CA8: .4byte gUnknown_085AA0A4
_08048CAC: .4byte gUnknown_085AA0CA
_08048CB0: .4byte gObject_32x16
_08048CB4: .4byte 0x00009340

	THUMB_FUNC_END sub_8048B78

	THUMB_FUNC_START sub_8048CB8
sub_8048CB8: @ 0x08048CB8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x2a
	ldrsh r1, [r6, r0]
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	ldr r3, [r6, #0x3c]
	movs r4, #0x30
	str r4, [sp]
	movs r0, #5
	bl Interpolate
	adds r5, r0, #0
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	movs r0, #0x30
	ldrsh r2, [r6, r0]
	ldr r3, [r6, #0x3c]
	str r4, [sp]
	movs r0, #5
	bl Interpolate
	adds r1, r0, #0
	ldr r2, _08048D14  @ gObject_32x16
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r3, [r0]
	lsls r3, r3, #2
	ldr r0, _08048D18  @ 0x00009340
	adds r3, r3, r0
	adds r0, r5, #0
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r6, #0x3c]
	adds r0, #1
	str r0, [r6, #0x3c]
	cmp r0, #0x20
	bls _08048D0C
	adds r0, r6, #0
	bl Proc_Break
_08048D0C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048D14: .4byte gObject_32x16
_08048D18: .4byte 0x00009340

	THUMB_FUNC_END sub_8048CB8

	THUMB_FUNC_START sub_8048D1C
sub_8048D1C: @ 0x08048D1C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r6, r3, #0
	bl ClearText
	adds r0, r5, #0
	movs r1, #0x18
	movs r2, #2
	adds r3, r6, #0
	bl SioDrawNumber
	adds r4, #1
	lsls r4, r4, #5
	adds r4, #1
	add r4, r8
	lsls r4, r4, #1
	ldr r0, _08048D60  @ gBG0TilemapBuffer
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl PutText
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048D60: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_8048D1C

	THUMB_FUNC_START sub_8048D64
sub_8048D64: @ 0x08048D64
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08048DC4  @ gUnknown_080D9F38
	adds r2, r6, #0
	adds r2, #0x32
	ldr r0, _08048DC8  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _08048DCC  @ gUnknown_080D9F98
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	movs r5, #0
	strh r1, [r6, #0x2a]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strh r0, [r6, #0x2c]
	movs r0, #0
	bl SetTextFont
	adds r0, r6, #0
	adds r0, #0x48
	movs r2, #0x2a
	ldrsh r1, [r6, r2]
	movs r3, #0x2c
	ldrsh r2, [r6, r3]
	ldr r3, [r6, #0x38]
	ldr r4, [r6, #0x34]
	subs r3, r3, r4
	bl sub_8048D1C
	str r5, [r6, #0x3c]
	ldr r0, [r6, #0x38]
	ldr r1, [r6, #0x34]
	subs r0, r0, r1
	str r0, [r6, #0x44]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08048DC4: .4byte gUnknown_080D9F38
_08048DC8: .4byte gSioSt
_08048DCC: .4byte gUnknown_080D9F98

	THUMB_FUNC_END sub_8048D64

	THUMB_FUNC_START sub_8048DD0
sub_8048DD0: @ 0x08048DD0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, [r4, #0x38]
	ldr r1, [r4, #0x34]
	subs r1, r2, r1
	ldr r3, [r4, #0x3c]
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0
	bl Interpolate
	adds r5, r0, #0
	movs r0, #0
	bl SetTextFont
	adds r0, r4, #0
	adds r0, #0x48
	movs r2, #0x2a
	ldrsh r1, [r4, r2]
	movs r3, #0x2c
	ldrsh r2, [r4, r3]
	adds r3, r5, #0
	bl sub_8048D1C
	ldr r0, [r4, #0x44]
	cmp r0, r5
	beq _08048E2E
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r1, [r0]
	ldr r0, _08048E60  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08048E2E
	ldr r0, _08048E64  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08048E2E
	movs r0, #0x80
	bl m4aSongNumStart
_08048E2E:
	str r5, [r4, #0x44]
	ldr r0, [r4, #0x3c]
	adds r0, #1
	str r0, [r4, #0x3c]
	cmp r0, #0xa
	bls _08048E56
	movs r0, #0
	str r0, [r4, #0x3c]
	ldr r1, _08048E68  @ gUnk_Sio_0203DD90
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r4, #0x38]
	str r1, [r0]
	adds r0, r4, #0
	bl Proc_Break
_08048E56:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08048E60: .4byte gSioSt
_08048E64: .4byte gPlaySt
_08048E68: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_8048DD0

	THUMB_FUNC_START sub_8048E6C
sub_8048E6C: @ 0x08048E6C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x3c]
	adds r0, #1
	str r0, [r1, #0x3c]
	cmp r0, #0x14
	bls _08048E80
	adds r0, r1, #0
	bl Proc_Break
_08048E80:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8048E6C

	THUMB_FUNC_START sub_8048E84
sub_8048E84: @ 0x08048E84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08048EB0  @ gUnk_Sio_02000C60
	bl SetTextFont
	ldr r1, [r4, #0x54]
	movs r0, #0x50
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	ldr r0, _08048EB4  @ gUnk_Sio_02000C78
	adds r1, #0x80
	ldr r3, [r4, #0x54]
	movs r2, #0
	bl Text_InsertDrawString
	adds r4, #0x4c
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08048EB0: .4byte gUnk_Sio_02000C60
_08048EB4: .4byte gUnk_Sio_02000C78

	THUMB_FUNC_END sub_8048E84

	THUMB_FUNC_START sub_8048EB8
sub_8048EB8: @ 0x08048EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x4c
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x10
	bgt _08048F4A
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r0, r9
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	movs r1, #0x10
	bl Interpolate
	mov sl, r0
	ldr r4, _08048FB8  @ gSinLookup
	ldr r2, _08048FBC  @ gSinLookup+0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	negs r0, r0
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r2, _08048FBC  @ gSinLookup+0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl SetObjAffine
_08048F4A:
	ldr r0, [r7, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r7, #0x30]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	ldr r5, _08048FC0  @ gObject_32x16
	ldr r3, _08048FC4  @ 0x00009350
	adds r2, r5, #0
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r7, #0x2c]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	adds r1, r1, r4
	ldr r3, _08048FC8  @ 0x00009354
	adds r2, r5, #0
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r7, #0x2c]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r7, #0x30]
	adds r1, r1, r4
	ldr r2, _08048FCC  @ gObject_16x16
	ldr r3, _08048FD0  @ 0x00009358
	bl CallARM_PushToSecondaryOAM
	mov r1, r9
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _08048FA6
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #0
	bl Proc_Break
_08048FA6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048FB8: .4byte gSinLookup
_08048FBC: .4byte gSinLookup+0x80
_08048FC0: .4byte gObject_32x16
_08048FC4: .4byte 0x00009350
_08048FC8: .4byte 0x00009354
_08048FCC: .4byte gObject_16x16
_08048FD0: .4byte 0x00009358

	THUMB_FUNC_END sub_8048EB8

	THUMB_FUNC_START sub_8048FD4
sub_8048FD4: @ 0x08048FD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r0, #0x4c
	str r0, [sp, #4]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x10
	bgt _0804906A
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	ldr r0, [sp, #4]
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	mov r1, r8
	movs r2, #0x10
	bl Interpolate
	mov sl, r0
	ldr r4, _080490D4  @ gSinLookup
	movs r2, #0x80
	adds r2, r2, r4
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	negs r0, r0
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl SetObjAffine
_0804906A:
	ldr r0, [r7, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r7, #0x30]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	ldr r5, _080490D8  @ gObject_32x16
	ldr r3, _080490DC  @ 0x00009350
	adds r2, r5, #0
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r7, #0x2c]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	adds r1, r1, r4
	ldr r3, _080490E0  @ 0x00009354
	adds r2, r5, #0
	bl CallARM_PushToSecondaryOAM
	ldr r0, [r7, #0x2c]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r7, #0x30]
	adds r1, r1, r4
	ldr r2, _080490E4  @ gObject_16x16
	ldr r3, _080490E8  @ 0x00009358
	bl CallARM_PushToSecondaryOAM
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _080490C2
	adds r0, r7, #0
	bl Proc_Break
_080490C2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080490D4: .4byte gSinLookup
_080490D8: .4byte gObject_32x16
_080490DC: .4byte 0x00009350
_080490E0: .4byte 0x00009354
_080490E4: .4byte gObject_16x16
_080490E8: .4byte 0x00009358

	THUMB_FUNC_END sub_8048FD4

	THUMB_FUNC_START sub_80490EC
sub_80490EC: @ 0x080490EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	movs r0, #0
	mov sl, r0
	ldr r0, _080491C4  @ Pal_Text
	movs r1, #0xc8
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _080491C8  @ gUnk_Sio_02000C60
	ldr r1, _080491CC  @ 0x06016800
	movs r2, #3
	bl InitSpriteTextFont
	movs r0, #0
	bl SetTextFontGlyphs
	bl ResetTextFont
	ldr r4, _080491D0  @ gUnk_Sio_02000C78
	adds r0, r4, #0
	bl InitSpriteText
	adds r0, r4, #0
	movs r1, #0
	bl SpriteText_DrawBackgroundExt
	movs r0, #0
	bl SetTextFont
	movs r1, #0
	mov r8, r1
_08049142:
	ldr r0, _080491D4  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	add r0, r8
	ldr r1, _080491D8  @ gUnknown_080D9F38
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8042194
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080491F0
	ldr r6, _080491DC  @ gUnk_Sio_0203DD90
	lsls r5, r4, #3
	adds r0, r6, #0
	adds r0, #0x30
	adds r7, r5, r0
	ldr r0, [r7]
	cmp r0, #0
	beq _080491E8
	ldr r0, _080491E0  @ gUnknown_085AA0F0
	ldr r1, [sp, #0x34]
	bl Proc_StartBlocking
	adds r2, r0, #0
	adds r0, #0x32
	strb r4, [r0]
	adds r0, r5, r6
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x33
	strb r0, [r1]
	lsls r1, r4, #2
	adds r0, r6, #0
	adds r0, #0x14
	adds r3, r1, r0
	ldr r1, [r3]
	ldr r0, [r7]
	adds r1, r1, r0
	str r1, [r2, #0x38]
	ldr r0, _080491E4  @ 0x0000270F
	cmp r1, r0
	bls _080491A4
	str r0, [r2, #0x38]
_080491A4:
	ldr r0, [r2, #0x38]
	ldr r1, [r3]
	subs r0, r0, r1
	str r0, [r2, #0x34]
	adds r0, r2, #0
	adds r0, #0x40
	mov r1, r9
	strb r1, [r0]
	adds r0, #8
	movs r1, #4
	bl InitTextDb
	movs r0, #1
	add sl, r0
	b _080491F0
	.align 2, 0
_080491C4: .4byte Pal_Text
_080491C8: .4byte gUnk_Sio_02000C60
_080491CC: .4byte 0x06016800
_080491D0: .4byte gUnk_Sio_02000C78
_080491D4: .4byte gSioSt
_080491D8: .4byte gUnknown_080D9F38
_080491DC: .4byte gUnk_Sio_0203DD90
_080491E0: .4byte gUnknown_085AA0F0
_080491E4: .4byte 0x0000270F
_080491E8:
	mov r0, sp
	movs r1, #4
	bl InitTextDb
_080491F0:
	movs r1, #1
	add r8, r1
	mov r0, r8
	cmp r0, #3
	ble _08049142
	mov r1, sl
	cmp r1, #0
	beq _08049224
	mov r0, r9
	cmp r0, #0
	beq _0804921A
	ldr r0, _08049220  @ gUnknown_085AA130
	ldr r1, [sp, #0x34]
	bl Proc_StartBlocking
	ldr r1, [sp, #8]
	str r1, [r0, #0x2c]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x30]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x54]
_0804921A:
	movs r0, #1
	b _08049226
	.align 2, 0
_08049220: .4byte gUnknown_085AA130
_08049224:
	movs r0, #0
_08049226:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80490EC

	THUMB_FUNC_START sub_8049238
sub_8049238: @ 0x08049238
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_8048A6C
	ldr r0, _08049268  @ 0x00000771
	bl GetStringFromIndex
	adds r2, r0, #0
	str r4, [sp]
	movs r0, #0x58
	movs r1, #0x3c
	movs r3, #1
	bl sub_80490EC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08049260
	bl sub_8048A94
_08049260:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049268: .4byte 0x00000771

	THUMB_FUNC_END sub_8049238

	THUMB_FUNC_START sub_804926C
sub_804926C: @ 0x0804926C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_8048A6C
	ldr r0, _08049294  @ 0x00000771
	bl GetStringFromIndex
	adds r2, r0, #0
	str r4, [sp]
	movs r0, #0x58
	movs r1, #0x3c
	movs r3, #0
	bl sub_80490EC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049294: .4byte 0x00000771

	THUMB_FUNC_END sub_804926C

	THUMB_FUNC_START sub_8049298
sub_8049298: @ 0x08049298
	push {lr}
	adds r1, r0, #0
	adds r1, #0x1e
	ldr r3, _080492B4  @ gUnknown_03001840
	movs r2, #4
_080492A2:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _080492A2
	pop {r0}
	bx r0
	.align 2, 0
_080492B4: .4byte gUnknown_03001840

	THUMB_FUNC_END sub_8049298

	THUMB_FUNC_START sub_80492B8
sub_80492B8: @ 0x080492B8
	push {lr}
	ldr r3, _080492D4  @ gUnknown_03001840
	adds r1, r0, #0
	adds r1, #0x1e
	movs r2, #4
_080492C2:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080492C2
	pop {r0}
	bx r0
	.align 2, 0
_080492D4: .4byte gUnknown_03001840

	THUMB_FUNC_END sub_80492B8

	THUMB_FUNC_START sub_80492D8
sub_80492D8: @ 0x080492D8
	push {lr}
	bl sub_8049594
	bl RefreshUnitSprites
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80492D8

	THUMB_FUNC_START sub_80492E8
sub_80492E8: @ 0x080492E8
	push {lr}
	movs r1, #0
	ldr r3, _08049304  @ gUnk_Sio_0203DD90
	adds r2, r3, #0
	adds r2, #0xa
_080492F2:
	cmp r0, #2
	beq _0804931A
	cmp r0, #2
	bgt _08049308
	cmp r0, #0
	beq _08049312
	cmp r0, #1
	beq _08049316
	b _08049324
	.align 2, 0
_08049304: .4byte gUnk_Sio_0203DD90
_08049308:
	cmp r0, #3
	beq _0804931E
	cmp r0, #0xff
	beq _08049322
	b _08049324
_08049312:
	movs r1, #2
	b _08049324
_08049316:
	movs r1, #3
	b _08049324
_0804931A:
	movs r1, #1
	b _08049324
_0804931E:
	movs r1, #0
	b _08049324
_08049322:
	movs r1, #0xff
_08049324:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08049334
	cmp r1, #0xff
	beq _08049334
	adds r0, r1, #0
	b _080492F2
_08049334:
	strb r1, [r3, #1]
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80492E8

	THUMB_FUNC_START sub_804933C
sub_804933C: @ 0x0804933C
	ldr r1, _0804934C  @ gUnknown_03001834
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	bx lr
	.align 2, 0
_0804934C: .4byte gUnknown_03001834

	THUMB_FUNC_END sub_804933C

	THUMB_FUNC_START sub_8049350
sub_8049350: @ 0x08049350
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r3, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	bl sub_804933C
	ldr r1, _0804938C  @ gUnknown_03001834
	strb r4, [r1]
	strb r5, [r1, #1]
	strb r6, [r1, #2]
	ldr r0, [sp]
	strb r0, [r1, #3]
	ldr r0, _08049390  @ gLinkArenaSt
	ldrb r0, [r0]
	cmp r0, #2
	beq _08049394
	movs r0, #0
	b _080493A0
	.align 2, 0
_0804938C: .4byte gUnknown_03001834
_08049390: .4byte gLinkArenaSt
_08049394:
	adds r0, r1, #0
	movs r1, #4
	bl SioEmitData
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080493A0:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8049350

	THUMB_FUNC_START sub_80493A8
sub_80493A8: @ 0x080493A8
	push {r4, lr}
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	movs r2, #0
	ldr r4, _080493C0  @ gUnknown_03001818
_080493B4:
	adds r1, r2, r4
	ldrb r1, [r1]
	cmp r1, r3
	bne _080493C4
	adds r0, r2, #0
	b _080493CA
	.align 2, 0
_080493C0: .4byte gUnknown_03001818
_080493C4:
	adds r2, #1
	cmp r2, #0x13
	ble _080493B4
_080493CA:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_80493A8

	THUMB_FUNC_START sub_80493D0
sub_80493D0: @ 0x080493D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp, #0x10]
	adds r5, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x34]
	mov r9, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080494C4  @ gUnknown_080D9FA0
	mov r0, sp
	movs r2, #8
	bl memcpy
	add r7, sp, #8
	ldr r1, _080494C8  @ gUnknown_080D9FA8
	adds r0, r7, #0
	movs r2, #8
	bl memcpy
	adds r0, r4, #0
	bl sub_80493A8
	adds r4, r0, #0
	movs r1, #5
	bl Div
	lsls r6, r0, #1
	strb r4, [r5]
	ldr r0, _080494CC  @ gUnknown_03001818
	adds r4, r4, r0
	ldrb r0, [r4]
	bl GetUnit
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	bne _0804944C
	adds r0, r5, #0
	bl MU_Create
	ldr r1, _080494D0  @ gUnknown_03001838
	ldr r2, [sp, #0x10]
	lsls r4, r2, #2
	adds r4, r4, r1
	str r0, [r4]
	bl MU_DisableAttractCamera
	ldr r0, [r4]
	mov r3, sp
	adds r1, r3, r6
	bl MU_StartMoveScript
_0804944C:
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	bl RefreshUnitSprites
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	adds r4, r7, r6
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1]
	movs r1, #0x11
	ldrsb r1, [r5, r1]
	adds r0, r6, #1
	adds r3, r7, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	mov r2, r9
	str r1, [r2]
	ldr r0, [r5, #0xc]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080494B4
	mov r2, r8
	ldr r0, [r2]
	movs r2, #0
	strb r0, [r5, #0x10]
	mov r1, r9
	ldr r0, [r1]
	strb r0, [r5, #0x11]
	movs r1, #0
	ldrsb r1, [r4, r1]
	mov r4, r8
	ldr r0, [r4]
	subs r0, r0, r1
	str r0, [r4]
	movs r1, #0
	ldrsb r1, [r3, r1]
	mov r3, r9
	ldr r0, [r3]
	subs r0, r0, r1
	str r0, [r3]
	ldr r1, _080494D0  @ gUnknown_03001838
	ldr r4, [sp, #0x10]
	lsls r0, r4, #2
	adds r0, r0, r1
	str r2, [r0]
_080494B4:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080494C4: .4byte gUnknown_080D9FA0
_080494C8: .4byte gUnknown_080D9FA8
_080494CC: .4byte gUnknown_03001818
_080494D0: .4byte gUnknown_03001838

	THUMB_FUNC_END sub_80493D0

	THUMB_FUNC_START sub_80494D4
sub_80494D4: @ 0x080494D4
	push {lr}
	ldr r1, _080494EC  @ gUnknown_03001818
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x13
_080494DE:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _080494DE
	pop {r0}
	bx r0
	.align 2, 0
_080494EC: .4byte gUnknown_03001818

	THUMB_FUNC_END sub_80494D4

	THUMB_FUNC_START sub_80494F0
sub_80494F0: @ 0x080494F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #0
_080494FE:
	ldr r0, _08049580  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, _08049584  @ gUnknown_080D9F28
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_8042194
	lsls r0, r0, #0x18
	adds r1, r7, #1
	mov r9, r1
	cmp r0, #0
	beq _08049568
	lsls r0, r4, #6
	adds r0, #1
	mov r8, r0
	movs r6, #0
	lsls r3, r7, #2
	ldr r0, _08049588  @ gUnknown_080D9F48
	mov sl, r0
_08049530:
	adds r0, r3, r7
	adds r5, r0, r6
	ldr r0, _0804958C  @ gUnknown_080D9FB0
	adds r0, r6, r0
	ldrb r0, [r0]
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	str r3, [sp]
	bl GetUnit
	adds r2, r0, #0
	ldr r0, [r2]
	ldr r3, [sp]
	cmp r0, #0
	beq _08049562
	ldr r0, _08049590  @ gUnknown_03001818
	adds r0, r5, r0
	strb r4, [r0]
	lsls r1, r5, #2
	add r1, sl
	ldrh r0, [r1]
	strb r0, [r2, #0x10]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x11]
_08049562:
	adds r6, #1
	cmp r6, #4
	ble _08049530
_08049568:
	mov r7, r9
	cmp r7, #3
	ble _080494FE
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049580: .4byte gSioSt
_08049584: .4byte gUnknown_080D9F28
_08049588: .4byte gUnknown_080D9F48
_0804958C: .4byte gUnknown_080D9FB0
_08049590: .4byte gUnknown_03001818

	THUMB_FUNC_END sub_80494F0

	THUMB_FUNC_START sub_8049594
sub_8049594: @ 0x08049594
	push {r4, lr}
	ldr r0, _080495EC  @ gBmMapUnit
	ldr r0, [r0]
	movs r1, #0
	bl BmMapFill
	ldr r0, _080495F0  @ gBmMapFog
	ldr r0, [r0]
	movs r1, #1
	bl BmMapFill
	movs r4, #1
_080495AC:
	adds r0, r4, #0
	bl GetUnit
	adds r2, r0, #0
	cmp r2, #0
	beq _080495E0
	ldr r0, [r2]
	cmp r0, #0
	beq _080495E0
	ldr r0, [r2, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080495E0
	movs r1, #0x11
	ldrsb r1, [r2, r1]
	ldr r0, _080495EC  @ gBmMapUnit
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r2, #0x10]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	ldr r0, [r1]
	adds r0, r0, r2
	strb r4, [r0]
_080495E0:
	adds r4, #1
	cmp r4, #0xc5
	ble _080495AC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080495EC: .4byte gBmMapUnit
_080495F0: .4byte gBmMapFog

	THUMB_FUNC_END sub_8049594

	THUMB_FUNC_START sub_80495F4
sub_80495F4: @ 0x080495F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r2, #0
	ldr r0, _08049670  @ gUnknown_080D9F28
	mov sl, r0
_08049606:
	ldr r0, _08049674  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r2, r0
	add r0, sl
	ldrb r4, [r0]
	adds r0, r4, #0
	str r2, [sp]
	bl sub_8042194
	lsls r0, r0, #0x18
	ldr r2, [sp]
	adds r1, r2, #1
	mov r9, r1
	cmp r0, #0
	beq _0804968E
	lsls r0, r4, #6
	adds r0, #1
	mov r8, r0
	movs r6, #0
	lsls r3, r2, #2
	ldr r7, _08049678  @ gUnknown_03001818
_08049638:
	adds r0, r3, r2
	adds r5, r0, r6
	ldr r0, _0804967C  @ gUnknown_080D9FB0
	adds r0, r6, r0
	ldrb r0, [r0]
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl GetUnit
	adds r1, r0, #0
	ldr r0, [r1]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _08049666
	ldr r0, [r1, #0xc]
	ldr r1, _08049680  @ 0x00010005
	ands r0, r1
	cmp r0, #0
	beq _08049684
_08049666:
	adds r1, r5, r7
	movs r0, #0
	strb r0, [r1]
	b _08049688
	.align 2, 0
_08049670: .4byte gUnknown_080D9F28
_08049674: .4byte gSioSt
_08049678: .4byte gUnknown_03001818
_0804967C: .4byte gUnknown_080D9FB0
_08049680: .4byte 0x00010005
_08049684:
	adds r0, r5, r7
	strb r4, [r0]
_08049688:
	adds r6, #1
	cmp r6, #4
	ble _08049638
_0804968E:
	mov r2, r9
	cmp r2, #3
	ble _08049606
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80495F4

	THUMB_FUNC_START sub_80496A4
sub_80496A4: @ 0x080496A4
	push {r4, r5, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08049700  @ gBmSt
	ldr r2, _08049704  @ 0x01000020
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldrb r1, [r4, #4]
	movs r0, #0x40
	movs r5, #0
	orrs r0, r1
	strb r0, [r4, #4]
	bl ClearTraps
	ldr r4, _08049708  @ gPlaySt
	movs r0, #0x40
	strb r0, [r4, #0xf]
	movs r0, #0x3a
	strb r0, [r4, #0xe]
	strh r5, [r4, #0x10]
	bl GetROMChapterStruct
	ldrb r0, [r0, #0xc]
	strb r0, [r4, #0xd]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	bl GetROMChapterStruct
	ldrb r0, [r0, #0x12]
	strb r0, [r4, #0x15]
	movs r0, #0x3a
	bl InitChapterMap
	bl GetGameClock
	str r0, [r4, #4]
	adds r4, #0x48
	strh r5, [r4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049700: .4byte gBmSt
_08049704: .4byte 0x01000020
_08049708: .4byte gPlaySt

	THUMB_FUNC_END sub_80496A4

	THUMB_FUNC_START sub_804970C
sub_804970C: @ 0x0804970C
	push {lr}
	bl sub_80496A4
	bl sub_80494D4
	bl sub_80494F0
	ldr r0, _0804973C  @ gBmMapFog
	ldr r2, [r0]
	movs r1, #0
	ldr r0, _08049740  @ gPlaySt
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _0804972A
	movs r1, #1
_0804972A:
	adds r0, r2, #0
	bl BmMapFill
	bl sub_8049594
	bl RenderBmMap
	pop {r0}
	bx r0
	.align 2, 0
_0804973C: .4byte gBmMapFog
_08049740: .4byte gPlaySt

	THUMB_FUNC_END sub_804970C

	THUMB_FUNC_START sub_8049744
sub_8049744: @ 0x08049744
	push {r4, lr}
	ldr r0, _0804977C  @ gUnk_Sio_0203DD90
	movs r1, #0
	movs r2, #3
	adds r0, #0xd
_0804974E:
	strb r1, [r0]
	subs r0, #1
	subs r2, #1
	cmp r2, #0
	bge _0804974E
	movs r2, #0
	ldr r4, _08049780  @ gUnknown_03001818
	ldr r3, _08049784  @ gUnk_Sio_0203DD9A
_0804975E:
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #0
	beq _08049770
	lsrs r1, r1, #6
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08049770:
	adds r2, #1
	cmp r2, #0x13
	ble _0804975E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804977C: .4byte gUnk_Sio_0203DD90
_08049780: .4byte gUnknown_03001818
_08049784: .4byte gUnk_Sio_0203DD9A

	THUMB_FUNC_END sub_8049744

	THUMB_FUNC_START sub_8049788
sub_8049788: @ 0x08049788
	push {lr}
	ldr r0, _08049798  @ gUnknown_085AD9CC
	ldr r1, _0804979C  @ 0x06013E00
	bl Decompress
	pop {r0}
	bx r0
	.align 2, 0
_08049798: .4byte gUnknown_085AD9CC
_0804979C: .4byte 0x06013E00

	THUMB_FUNC_END sub_8049788

	THUMB_FUNC_START sub_80497A0
sub_80497A0: @ 0x080497A0
	push {lr}
	movs r0, #0
	bl SetupBackgrounds
	bl sub_80156D4
	bl SetupMapSpritesPalettes
	bl ForceSyncUnitSpriteSheet
	bl sub_8049788
	bl InitSystemTextFont
	ldr r1, _080497C8  @ gUnk_Sio_0203DD90
	movs r0, #0xff
	strb r0, [r1, #3]
	pop {r0}
	bx r0
	.align 2, 0
_080497C8: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_80497A0

	THUMB_FUNC_START sub_80497CC
sub_80497CC: @ 0x080497CC
	push {r4, r5, lr}
	ldr r1, _08049824  @ gPlaySt
	movs r0, #0x42
	adds r0, r0, r1
	mov ip, r0
	ldrb r0, [r0]
	movs r3, #7
	negs r3, r3
	ands r3, r0
	adds r5, r1, #0
	adds r5, #0x40
	ldrb r2, [r5]
	movs r0, #0x10
	orrs r2, r0
	movs r0, #0x61
	negs r0, r0
	ands r2, r0
	movs r0, #0x40
	orrs r2, r0
	movs r0, #0x7f
	ands r2, r0
	adds r4, r1, #0
	adds r4, #0x41
	ldrb r1, [r4]
	subs r0, #0x81
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #0xa
	ands r0, r1
	strb r0, [r4]
	movs r0, #0x19
	negs r0, r0
	ands r3, r0
	mov r0, ip
	strb r3, [r0]
	movs r0, #1
	orrs r2, r0
	strb r2, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049824: .4byte gPlaySt

	THUMB_FUNC_END sub_80497CC

	THUMB_FUNC_START sub_8049828
sub_8049828: @ 0x08049828
	push {r4, r5, lr}
	movs r0, #0
	bl SetupBackgrounds
	bl ClearSioBG
	bl sub_804970C
	bl sub_8049744
	ldr r4, _080498D4  @ gUnk_Sio_0203DD90
	movs r5, #0
	strb r5, [r4, #9]
	ldr r0, _080498D8  @ gLinkArenaSt
	strb r5, [r0, #0xb]
	ldr r1, _080498DC  @ gUnknown_085AA158
	ldrb r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_80492E8
	movs r0, #1
	strb r0, [r4, #0xe]
	strb r5, [r4, #2]
	strb r0, [r4, #3]
	movs r1, #0
	movs r0, #3
	adds r4, #0x20
_08049860:
	str r1, [r4]
	subs r4, #4
	subs r0, #1
	cmp r0, #0
	bge _08049860
	movs r4, #0
	ldr r0, _080498E0  @ gUnknown_03001818
	ldrb r0, [r0, #3]
	bl GetUnit
	ldr r2, _080498E4  @ gUnknown_0300182C
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	lsls r1, r1, #4
	strh r1, [r2]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	lsls r1, r1, #4
	strh r1, [r2, #2]
	movs r2, #0x10
	ldrsb r2, [r0, r2]
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	adds r0, r2, #0
	bl SetCursorMapPosition
	ldr r0, _080498E8  @ gBmSt
	strh r4, [r0, #0xc]
	strh r4, [r0, #0xe]
	bl ReadGameSaveCoreGfx
	bl SetupMapSpritesPalettes
	bl ResetUnitSprites
	bl RefreshUnitSprites
	bl sub_8049788
	bl sub_804B38C
	ldr r0, _080498EC  @ gProc_MapTask
	movs r1, #4
	bl Proc_Start
	bl BMapVSync_Start
	bl sub_80497CC
	ldr r2, _080498F0  @ gPlaySt
	ldrb r1, [r2, #0x14]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2, #0x14]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080498D4: .4byte gUnk_Sio_0203DD90
_080498D8: .4byte gLinkArenaSt
_080498DC: .4byte gUnknown_085AA158
_080498E0: .4byte gUnknown_03001818
_080498E4: .4byte gUnknown_0300182C
_080498E8: .4byte gBmSt
_080498EC: .4byte gProc_MapTask
_080498F0: .4byte gPlaySt

	THUMB_FUNC_END sub_8049828

	THUMB_FUNC_START sub_80498F4
sub_80498F4: @ 0x080498F4
	push {r4, r5, lr}
	ldr r1, _08049934  @ gUnknown_03001818
	ldr r0, _08049938  @ gUnk_Sio_0203DD90
	ldrb r0, [r0, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	bl MU_Create
	ldr r5, _0804993C  @ gUnknown_03001838
	str r0, [r5]
	movs r1, #0x10
	ldrsb r1, [r4, r1]
	lsls r1, r1, #4
	movs r2, #0x11
	ldrsb r2, [r4, r2]
	subs r2, #1
	lsls r2, r2, #4
	bl MU_SetDisplayPosition
	ldr r0, [r5]
	bl MU_DisableAttractCamera
	ldr r0, [r5]
	movs r1, #3
	bl MU_SetFacing
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08049934: .4byte gUnknown_03001818
_08049938: .4byte gUnk_Sio_0203DD90
_0804993C: .4byte gUnknown_03001838

	THUMB_FUNC_END sub_80498F4

	THUMB_FUNC_START sub_8049940
sub_8049940: @ 0x08049940
	push {lr}
	adds r2, r0, #0
	ldr r0, _08049960  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804995A
	adds r0, r2, #0
	bl Proc_Break
_0804995A:
	pop {r0}
	bx r0
	.align 2, 0
_08049960: .4byte gKeyStatusPtr

	THUMB_FUNC_END sub_8049940

	THUMB_FUNC_START sub_8049964
sub_8049964: @ 0x08049964
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08049978  @ gLinkArenaSt
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804997C
	cmp r0, #2
	beq _08049990
	b _080499C0
	.align 2, 0
_08049978: .4byte gLinkArenaSt
_0804997C:
	ldr r0, _08049988  @ gPlaySt
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _080499A2
	ldr r0, _0804998C  @ gUnknown_085AA5BC
	b _080499A4
	.align 2, 0
_08049988: .4byte gPlaySt
_0804998C: .4byte gUnknown_085AA5BC
_08049990:
	ldr r0, _080499AC  @ gPlaySt
	ldrb r1, [r0, #0xf]
	ldr r0, _080499B0  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _080499B8
_080499A2:
	ldr r0, _080499B4  @ gUnknown_085AA2FC
_080499A4:
	adds r1, r4, #0
	bl Proc_StartBlocking
	b _080499C0
	.align 2, 0
_080499AC: .4byte gPlaySt
_080499B0: .4byte gSioSt
_080499B4: .4byte gUnknown_085AA2FC
_080499B8:
	ldr r0, _080499CC  @ gUnknown_085AA4CC
	adds r1, r4, #0
	bl Proc_StartBlocking
_080499C0:
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080499CC: .4byte gUnknown_085AA4CC

	THUMB_FUNC_END sub_8049964

	THUMB_FUNC_START sub_80499D0
sub_80499D0: @ 0x080499D0
	push {r4, lr}
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080499E8  @ gLinkArenaSt
	ldrb r0, [r2]
	cmp r0, #1
	bne _080499EC
	ldrb r0, [r2, #0xb]
	cmp r0, #1
	bne _080499FC
	b _080499F2
	.align 2, 0
_080499E8: .4byte gLinkArenaSt
_080499EC:
	ldrb r0, [r2, #0xb]
	cmp r0, #2
	bne _080499FC
_080499F2:
	adds r0, r3, #0
	movs r1, #3
	bl Proc_Goto
	b _08049A56
_080499FC:
	ldr r0, _08049A10  @ gUnk_Sio_0203DD90
	ldrb r2, [r0, #1]
	adds r0, r2, #0
	cmp r0, #0xff
	bne _08049A14
	adds r0, r3, #0
	movs r1, #2
	bl Proc_Goto
	b _08049A56
	.align 2, 0
_08049A10: .4byte gUnk_Sio_0203DD90
_08049A14:
	ldr r0, _08049A1C  @ gPlaySt
	strb r2, [r0, #0xf]
	ldr r2, _08049A20  @ gUnknown_03001818
	b _08049A26
	.align 2, 0
_08049A1C: .4byte gPlaySt
_08049A20: .4byte gUnknown_03001818
_08049A24:
	adds r1, #1
_08049A26:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08049A24
	ldr r4, _08049A5C  @ gUnk_Sio_0203DD90
	strb r1, [r4, #2]
	adds r0, r1, #1
	strb r0, [r4, #3]
	bl LoadObjUIGfx
	movs r0, #0
	adds r4, #0x2c
	movs r1, #3
_08049A40:
	str r0, [r4, #4]
	strb r0, [r4]
	adds r4, #8
	subs r1, #1
	cmp r1, #0
	bge _08049A40
	movs r0, #1
	negs r0, r0
	movs r1, #9
	bl SetupDebugFontForOBJ
_08049A56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049A5C: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_80499D0

	THUMB_FUNC_START sub_8049A60
sub_8049A60: @ 0x08049A60
	push {r4, r5, r6, r7, lr}
	movs r5, #4
	ldr r3, _08049AB8  @ gUnk_Sio_0203DD90
	ldr r0, _08049ABC  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r2, r3, #0
	adds r2, #0x14
	adds r0, r0, r2
	ldr r7, [r0]
	ldr r0, _08049AC0  @ gLinkArenaSt
	adds r0, #0xec
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08049AC8
	movs r4, #0
	adds r5, r3, #0
	adds r5, #0xf
_08049A8E:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8042194
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049AAC
	ldr r0, _08049ABC  @ gSioSt
	ldr r0, [r0]
	movs r1, #6
	ldrsb r1, [r0, r1]
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r1, r0
	beq _08049AC4
_08049AAC:
	adds r4, #1
	cmp r4, #3
	ble _08049A8E
	movs r5, #3
	b _08049AF8
	.align 2, 0
_08049AB8: .4byte gUnk_Sio_0203DD90
_08049ABC: .4byte gSioSt
_08049AC0: .4byte gLinkArenaSt
_08049AC4:
	adds r0, r4, #0
	b _08049AFA
_08049AC8:
	movs r4, #0
	adds r6, r2, #0
_08049ACC:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8042194
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049AEE
	ldr r0, _08049B00  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r4
	beq _08049AEE
	ldr r0, [r6]
	cmp r7, r0
	bls _08049AF0
_08049AEE:
	subs r5, #1
_08049AF0:
	adds r6, #4
	adds r4, #1
	cmp r4, #3
	ble _08049ACC
_08049AF8:
	adds r0, r5, #0
_08049AFA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08049B00: .4byte gSioSt

	THUMB_FUNC_END sub_8049A60

	THUMB_FUNC_START sub_8049B04
sub_8049B04: @ 0x08049B04
	push {lr}
	ldr r0, _08049B20  @ gProc_MapTask
	bl Proc_EndEach
	bl sub_804B3A0
	bl BMapVSync_End
	movs r0, #1
	bl Sound_FadeOutBGM
	pop {r0}
	bx r0
	.align 2, 0
_08049B20: .4byte gProc_MapTask

	THUMB_FUNC_END sub_8049B04

	THUMB_FUNC_START sub_8049B24
sub_8049B24: @ 0x08049B24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	ldr r1, _08049B54  @ gUnk_Sio_0203DD90
	ldrb r2, [r1, #2]
	adds r5, r2, #0
	strb r2, [r1, #3]
	movs r0, #0xf0
	ands r0, r3
	adds r7, r1, #0
	cmp r0, #0
	beq _08049C12
	lsls r4, r2, #2
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08049B5C
	ldr r0, _08049B58  @ gUnknown_085AA15C
	adds r0, r4, r0
	b _08049B92
	.align 2, 0
_08049B54: .4byte gUnk_Sio_0203DD90
_08049B58: .4byte gUnknown_085AA15C
_08049B5C:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08049B70
	ldr r1, _08049B6C  @ gUnknown_085AA15C
	adds r0, r4, #1
	b _08049B90
	.align 2, 0
_08049B6C: .4byte gUnknown_085AA15C
_08049B70:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08049B84
	ldr r1, _08049B80  @ gUnknown_085AA15C
	adds r0, r4, #2
	b _08049B90
	.align 2, 0
_08049B80: .4byte gUnknown_085AA15C
_08049B84:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08049B94
	ldr r1, _08049BF0  @ gUnknown_085AA15C
	adds r0, r4, #3
_08049B90:
	adds r0, r0, r1
_08049B92:
	ldrb r2, [r0]
_08049B94:
	subs r5, r2, r5
	ldrb r0, [r7, #3]
	cmp r0, #0
	bne _08049BA8
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08049BA8
	movs r5, #1
	negs r5, r5
_08049BA8:
	ldrb r0, [r7, #3]
	cmp r0, #0x13
	bne _08049BB8
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _08049BB8
	movs r5, #1
_08049BB8:
	ldr r6, _08049BF4  @ gUnknown_03001818
	mov r0, ip
	lsls r4, r0, #0x18
_08049BBE:
	adds r0, r2, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08049BDC
	cmp r4, #0
	beq _08049C10
	lsrs r1, r0, #0x1e
	ldr r0, _08049BF8  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08049C10
_08049BDC:
	cmp r5, #0
	bge _08049BFC
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xff
	bne _08049BBE
	movs r2, #0x13
	b _08049BBE
	.align 2, 0
_08049BF0: .4byte gUnknown_085AA15C
_08049BF4: .4byte gUnknown_03001818
_08049BF8: .4byte gSioSt
_08049BFC:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r2, #0
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	b _08049BBE
_08049C10:
	strb r2, [r7, #2]
_08049C12:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8049B24

	THUMB_FUNC_START sub_8049C18
sub_8049C18: @ 0x08049C18
	push {r4, r5, r6, r7, lr}
	ldr r6, _08049C88  @ gUnk_Sio_0203DD90
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	cmp r0, r1
	beq _08049C80
	ldr r7, _08049C8C  @ gUnknown_03001818
	ldrb r0, [r6, #3]
	adds r0, r0, r7
	ldrb r0, [r0]
	bl GetUnit
	adds r5, r0, #0
	ldrb r0, [r6, #2]
	adds r0, r0, r7
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	cmp r5, #0
	beq _08049C4C
	bl MU_EndAll
	adds r0, r5, #0
	bl ShowUnitSprite
_08049C4C:
	cmp r4, #0
	beq _08049C80
	ldr r0, [r4, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08049C80
	ldrb r0, [r6, #2]
	adds r0, r0, r7
	ldrb r1, [r0]
	lsrs r1, r1, #6
	ldr r0, _08049C90  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08049C80
	adds r0, r4, #0
	bl MU_Create
	bl MU_DisableAttractCamera
	adds r0, r4, #0
	bl HideUnitSprite
_08049C80:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049C88: .4byte gUnk_Sio_0203DD90
_08049C8C: .4byte gUnknown_03001818
_08049C90: .4byte gSioSt

	THUMB_FUNC_END sub_8049C18

	THUMB_FUNC_START sub_8049C94
sub_8049C94: @ 0x08049C94
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
_08049C9A:
	lsls r1, r5, #1
	adds r0, r6, #0
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl GetItemAttributes
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08049CC6
	adds r0, r6, #0
	adds r1, r4, #0
	bl CanUnitUseWeapon
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08049CC6
	movs r0, #1
	b _08049CCE
_08049CC6:
	adds r5, #1
	cmp r5, #4
	ble _08049C9A
	movs r0, #0
_08049CCE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8049C94

	THUMB_FUNC_START sub_8049CD4
sub_8049CD4: @ 0x08049CD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08049D04  @ gUnk_Sio_0203DD90
	ldrb r2, [r0, #9]
	ldr r0, _08049D08  @ gLinkArenaSt
	adds r0, #0xa0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r2, r0
	blt _08049CF6
	bl sub_8048A94
	adds r0, r4, #0
	movs r1, #3
	bl Proc_Goto
_08049CF6:
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08049D04: .4byte gUnk_Sio_0203DD90
_08049D08: .4byte gLinkArenaSt

	THUMB_FUNC_END sub_8049CD4

	THUMB_FUNC_START sub_8049D0C
sub_8049D0C: @ 0x08049D0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8042238
	cmp r0, #7
	bgt _08049D1E
	adds r0, r4, #0
	bl Proc_Break
_08049D1E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8049D0C

	THUMB_FUNC_START sub_8049D24
sub_8049D24: @ 0x08049D24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08049E0C  @ gUnknown_080D9FB5
	mov r0, sp
	movs r2, #2
	bl memcpy
	ldr r0, _08049E10  @ gUnk_Sio_0203DD90
	mov r9, r0
	ldrb r1, [r0, #2]
	mov sl, r1
	bl sub_8049C18
	ldr r4, _08049E14  @ gKeyStatusPtr
	ldr r0, [r4]
	ldrh r0, [r0, #6]
	movs r1, #0
	bl sub_8049B24
	ldr r2, _08049E18  @ gActiveUnitId
	mov r8, r2
	ldr r1, _08049E1C  @ gUnknown_03001818
	mov r2, r9
	ldrb r0, [r2, #2]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r1]
	bl GetUnit
	adds r2, r0, #0
	ldr r7, _08049E20  @ gActiveUnit
	str r2, [r7]
	ldr r0, [r4]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08049E42
	mov r0, r8
	ldrb r1, [r0]
	lsrs r1, r1, #6
	ldr r0, _08049E24  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08049E30
	adds r0, r2, #0
	bl sub_8049C94
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	cmp r5, #1
	bne _08049E30
	ldr r0, _08049E28  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08049DB2
	movs r0, #0x69
	bl m4aSongNumStart
_08049DB2:
	bl MU_EndAll
	ldr r0, [r7]
	bl MU_Create
	ldr r4, _08049E2C  @ gUnknown_03001838
	str r0, [r4]
	bl MU_DisableAttractCamera
	ldr r0, [r4]
	mov r1, sp
	bl MU_StartMoveScript
	ldr r1, [r7]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	str r0, [r6, #0x2c]
	movs r0, #0x11
	ldrsb r0, [r1, r0]
	subs r0, #1
	str r0, [r6, #0x30]
	ldr r0, [r1, #0xc]
	orrs r0, r5
	str r0, [r1, #0xc]
	bl sub_80492D8
	mov r1, r9
	ldrb r0, [r1, #2]
	strb r0, [r1, #4]
	movs r0, #0x40
	movs r1, #1
	bl sub_8049B24
	mov r2, r8
	ldrb r1, [r2]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_8049350
	adds r0, r6, #0
	movs r1, #5
	bl Proc_Goto
	b _08049F12
	.align 2, 0
_08049E0C: .4byte gUnknown_080D9FB5
_08049E10: .4byte gUnk_Sio_0203DD90
_08049E14: .4byte gKeyStatusPtr
_08049E18: .4byte gActiveUnitId
_08049E1C: .4byte gUnknown_03001818
_08049E20: .4byte gActiveUnit
_08049E24: .4byte gSioSt
_08049E28: .4byte gPlaySt
_08049E2C: .4byte gUnknown_03001838
_08049E30:
	ldr r0, _08049E70  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08049E42
	movs r0, #0x6c
	bl m4aSongNumStart
_08049E42:
	ldr r2, _08049E74  @ gKeyStatusPtr
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08049E7C
	ldr r0, _08049E78  @ gActiveUnit
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08049E7C
	bl MU_EndAll
	adds r0, r6, #0
	movs r1, #4
	bl Proc_Goto
	b _08049F12
	.align 2, 0
_08049E70: .4byte gPlaySt
_08049E74: .4byte gKeyStatusPtr
_08049E78: .4byte gActiveUnit
_08049E7C:
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08049EAC
	bl sub_8048A94
	ldr r0, _08049EA8  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08049F12
	movs r0, #0x68
	bl m4aSongNumStart
	adds r0, r6, #0
	movs r1, #2
	bl Proc_Goto
	b _08049F12
	.align 2, 0
_08049EA8: .4byte gPlaySt
_08049EAC:
	ldr r0, _08049F24  @ gActiveUnit
	ldr r1, [r0]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	lsls r5, r0, #4
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r4, r1, #4
	bl SetCursorMapPosition
	bl GetGameClock
	subs r0, #1
	ldr r6, _08049F28  @ gUnknown_03001830
	ldr r1, [r6]
	cmp r0, r1
	bne _08049EE2
	ldr r0, _08049F2C  @ gUnknown_0300182C
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, r5, r1
	asrs r5, r1, #1
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	asrs r4, r0, #1
_08049EE2:
	ldr r0, _08049F2C  @ gUnknown_0300182C
	strh r5, [r0]
	strh r4, [r0, #2]
	bl GetGameClock
	str r0, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PutMapCursor
	ldr r0, _08049F30  @ gUnk_Sio_0203DD90
	ldrb r0, [r0, #2]
	cmp sl, r0
	beq _08049F12
	ldr r0, _08049F34  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08049F12
	movs r0, #0x65
	bl m4aSongNumStart
_08049F12:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049F24: .4byte gActiveUnit
_08049F28: .4byte gUnknown_03001830
_08049F2C: .4byte gUnknown_0300182C
_08049F30: .4byte gUnk_Sio_0203DD90
_08049F34: .4byte gPlaySt

	THUMB_FUNC_END sub_8049D24

	THUMB_FUNC_START sub_8049F38
sub_8049F38: @ 0x08049F38
	push {lr}
	bl sub_8048A6C
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8049F38

	THUMB_FUNC_START sub_8049F44
sub_8049F44: @ 0x08049F44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r6, _0804A020  @ gUnk_Sio_0203DD90
	ldrb r0, [r6, #2]
	str r0, [sp, #4]
	ldr r1, _0804A024  @ gKeyStatusPtr
	ldr r0, [r1]
	ldrh r0, [r0, #6]
	movs r1, #1
	bl sub_8049B24
	ldr r2, _0804A028  @ gActiveUnitId
	mov sl, r2
	ldr r0, _0804A02C  @ gUnknown_03001818
	mov r9, r0
	ldrb r0, [r6, #2]
	add r0, r9
	ldrb r0, [r0]
	strb r0, [r2]
	ldrb r0, [r2]
	bl GetUnit
	ldr r1, _0804A030  @ gActiveUnit
	str r0, [r1]
	movs r2, #0x10
	ldrsb r2, [r0, r2]
	lsls r5, r2, #4
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	lsls r4, r1, #4
	adds r0, r2, #0
	bl SetCursorMapPosition
	bl GetGameClock
	subs r0, #1
	ldr r7, _0804A034  @ gUnknown_03001830
	ldr r1, [r7]
	cmp r0, r1
	bne _08049FB0
	ldr r0, _0804A038  @ gUnknown_0300182C
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, r5, r1
	asrs r5, r1, #1
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	asrs r4, r0, #1
_08049FB0:
	ldr r0, _0804A038  @ gUnknown_0300182C
	strh r5, [r0]
	strh r4, [r0, #2]
	bl GetGameClock
	str r0, [r7]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PutMapCursor
	ldr r2, _0804A024  @ gKeyStatusPtr
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A040
	ldr r0, _0804A03C  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08049FE6
	movs r0, #0x69
	bl m4aSongNumStart
_08049FE6:
	ldrb r0, [r6, #2]
	add r0, r9
	ldrb r0, [r0]
	adds r2, r6, #5
	mov r3, r8
	adds r3, #0x34
	mov r1, r8
	adds r1, #0x38
	str r1, [sp]
	movs r1, #1
	bl sub_80493D0
	ldrb r0, [r6, #5]
	add r0, r9
	ldrb r1, [r0]
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #3
	movs r3, #0
	bl sub_8049350
	bl sub_8048A94
	mov r0, r8
	movs r1, #7
	bl Proc_Goto
	b _0804A0F0
	.align 2, 0
_0804A020: .4byte gUnk_Sio_0203DD90
_0804A024: .4byte gKeyStatusPtr
_0804A028: .4byte gActiveUnitId
_0804A02C: .4byte gUnknown_03001818
_0804A030: .4byte gActiveUnit
_0804A034: .4byte gUnknown_03001830
_0804A038: .4byte gUnknown_0300182C
_0804A03C: .4byte gPlaySt
_0804A040:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A0A8
	ldr r0, _0804A0A0  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804A05A
	movs r0, #0x6b
	bl m4aSongNumStart
_0804A05A:
	ldr r0, _0804A0A4  @ gUnknown_03001838
	ldr r0, [r0]
	bl MU_End
	ldrb r0, [r6, #4]
	add r0, r9
	ldrb r0, [r0]
	bl GetUnit
	ldr r1, [r0, #0xc]
	movs r2, #2
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0xc]
	bl sub_80492D8
	ldrb r0, [r6, #4]
	strb r0, [r6, #2]
	adds r0, #1
	strb r0, [r6, #3]
	mov r2, sl
	ldrb r1, [r2]
	ldrb r0, [r6, #4]
	add r0, r9
	ldrb r2, [r0]
	movs r0, #2
	movs r3, #0
	bl sub_8049350
	mov r0, r8
	movs r1, #1
	bl Proc_Goto
	b _0804A0F0
	.align 2, 0
_0804A0A0: .4byte gPlaySt
_0804A0A4: .4byte gUnknown_03001838
_0804A0A8:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A0D4
	ldr r1, _0804A0D0  @ gActiveUnit
	ldr r0, [r1]
	ldr r0, [r0, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804A0D4
	bl MU_EndAll
	mov r0, r8
	movs r1, #6
	bl Proc_Goto
	b _0804A0F0
	.align 2, 0
_0804A0D0: .4byte gActiveUnit
_0804A0D4:
	ldr r0, _0804A100  @ gUnk_Sio_0203DD90
	ldr r2, [sp, #4]
	ldrb r0, [r0, #2]
	cmp r2, r0
	beq _0804A0F0
	ldr r0, _0804A104  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804A0F0
	movs r0, #0x65
	bl m4aSongNumStart
_0804A0F0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A100: .4byte gUnk_Sio_0203DD90
_0804A104: .4byte gPlaySt

	THUMB_FUNC_END sub_8049F44

	THUMB_FUNC_START sub_804A108
sub_804A108: @ 0x0804A108
	push {r4, lr}
	adds r4, r0, #0
	bl ResetTextFont
	ldr r2, _0804A148  @ gUnk_Sio_0203DD90
	movs r0, #0xff
	strb r0, [r2, #6]
	ldr r1, _0804A14C  @ gUnknown_03001818
	ldrb r0, [r2, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl GetUnit
	ldr r1, _0804A150  @ gActiveUnit
	str r0, [r1]
	bl sub_8049298
	bl GetGameLock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x64
	strh r0, [r4]
	movs r0, #4
	bl LoadIconPalettes
	ldr r0, _0804A154  @ gUnknown_085AADA0
	bl StartOrphanMenu
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A148: .4byte gUnk_Sio_0203DD90
_0804A14C: .4byte gUnknown_03001818
_0804A150: .4byte gActiveUnit
_0804A154: .4byte gUnknown_085AADA0

	THUMB_FUNC_END sub_804A108

	THUMB_FUNC_START sub_804A158
sub_804A158: @ 0x0804A158
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x64
	movs r1, #0
	ldrsh r4, [r0, r1]
	bl GetGameLock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	bne _0804A1C4
	ldr r0, _0804A194  @ gUnk_Sio_0203DD90
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0804A1A0
	ldr r0, _0804A198  @ gActiveUnit
	ldr r0, [r0]
	bl sub_80492B8
	adds r0, r5, #0
	bl Proc_End
	ldr r2, _0804A19C  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	b _0804A1B6
	.align 2, 0
_0804A194: .4byte gUnk_Sio_0203DD90
_0804A198: .4byte gActiveUnit
_0804A19C: .4byte gLCDControlBuffer
_0804A1A0:
	adds r0, r5, #0
	bl Proc_Break
	ldr r2, _0804A1CC  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
_0804A1B6:
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
_0804A1C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804A1CC: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804A158

	THUMB_FUNC_START sub_804A1D0
sub_804A1D0: @ 0x0804A1D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0804A208  @ gActiveUnit
	ldr r1, [r0]
	ldr r6, _0804A20C  @ gUnk_Sio_0203DD90
	ldrb r0, [r6, #7]
	lsls r0, r0, #1
	adds r1, #0x1e
	adds r1, r1, r0
	ldrh r5, [r1]
	bl GetGameLock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, #0x64
	strh r0, [r4]
	adds r0, r5, #0
	bl GetItemMinRange
	cmp r0, #1
	bne _0804A210
	adds r0, r5, #0
	bl GetItemMaxRange
	cmp r0, #1
	bne _0804A210
	strb r0, [r6, #6]
	b _0804A292
	.align 2, 0
_0804A208: .4byte gActiveUnit
_0804A20C: .4byte gUnk_Sio_0203DD90
_0804A210:
	adds r0, r5, #0
	bl GetItemMinRange
	cmp r0, #2
	bne _0804A230
	adds r0, r5, #0
	bl GetItemMaxRange
	adds r1, r0, #0
	cmp r1, #2
	bne _0804A230
	ldr r0, _0804A22C  @ gUnk_Sio_0203DD90
	strb r1, [r0, #6]
	b _0804A292
	.align 2, 0
_0804A22C: .4byte gUnk_Sio_0203DD90
_0804A230:
	adds r0, r5, #0
	bl GetItemMinRange
	adds r4, r0, #0
	cmp r4, #2
	bne _0804A250
	adds r0, r5, #0
	bl GetItemMaxRange
	cmp r0, #3
	bne _0804A250
	ldr r0, _0804A24C  @ gUnk_Sio_0203DD90
	strb r4, [r0, #6]
	b _0804A292
	.align 2, 0
_0804A24C: .4byte gUnk_Sio_0203DD90
_0804A250:
	ldr r1, _0804A270  @ gUnknown_03001818
	ldr r4, _0804A274  @ gUnk_Sio_0203DD90
	ldrb r0, [r4, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl GetUnit
	bl GetUnitEquippedWeapon
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _0804A278
	movs r0, #1
	strb r0, [r4, #6]
	b _0804A292
	.align 2, 0
_0804A270: .4byte gUnknown_03001818
_0804A274: .4byte gUnk_Sio_0203DD90
_0804A278:
	adds r0, r5, #0
	bl GetItemMinRange
	cmp r0, #1
	ble _0804A288
	movs r0, #2
	strb r0, [r4, #6]
	b _0804A292
_0804A288:
	movs r0, #1
	strb r0, [r4, #6]
	movs r0, #4
	bl LoadIconPalettes
_0804A292:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804A1D0

	THUMB_FUNC_START sub_804A298
sub_804A298: @ 0x0804A298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	movs r1, #1
	str r1, [sp, #4]
	ldr r4, _0804A320  @ gUnknown_03001818
	ldr r2, _0804A324  @ gUnk_Sio_0203DD90
	mov r8, r2
	ldrb r0, [r2, #4]
	adds r0, r0, r4
	ldrb r0, [r0]
	bl GetUnit
	mov r9, r0
	mov r1, r8
	ldrb r0, [r1, #5]
	adds r0, r0, r4
	ldrb r0, [r0]
	bl GetUnit
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x64
	movs r2, #0
	ldrsh r4, [r0, r2]
	bl GetGameLock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r4, r0
	bne _0804A396
	movs r0, #0x11
	ldrsb r0, [r5, r0]
	adds r0, #1
	ldr r1, _0804A328  @ gBmMapTerrain
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x10
	ldrsb r1, [r5, r1]
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0804A304
	movs r0, #1
	negs r0, r0
	str r0, [sp, #4]
_0804A304:
	mov r1, r8
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _0804A330
	ldr r0, _0804A32C  @ gActiveUnit
	ldr r0, [r0]
	bl sub_80492B8
	adds r0, r6, #0
	movs r1, #0
	bl Proc_Goto
	b _0804A396
	.align 2, 0
_0804A320: .4byte gUnknown_03001818
_0804A324: .4byte gUnk_Sio_0203DD90
_0804A328: .4byte gBmMapTerrain
_0804A32C: .4byte gActiveUnit
_0804A330:
	ldr r7, _0804A384  @ gActiveUnit
	ldr r0, [r7]
	mov r2, r8
	ldrb r1, [r2, #7]
	bl EquipUnitItemSlot
	ldr r4, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r4, r0
	cmp r4, #0
	bne _0804A388
	adds r0, r6, #0
	bl NewBattleForecast
	mov r1, r8
	ldrb r0, [r1, #6]
	cmp r0, #2
	bne _0804A35A
	movs r2, #1
	mov sl, r2
_0804A35A:
	movs r2, #0x10
	ldrsb r2, [r5, r2]
	add r2, sl
	movs r3, #0x11
	ldrsb r3, [r5, r3]
	ldr r0, [sp, #4]
	adds r3, r3, r0
	str r4, [sp]
	mov r0, r9
	adds r1, r5, #0
	bl BattleGenerateSimulation
	bl UpdateBattleForecastContents
	ldr r0, [r7]
	bl sub_80492B8
	adds r0, r6, #0
	bl Proc_Break
	b _0804A396
	.align 2, 0
_0804A384: .4byte gActiveUnit
_0804A388:
	ldr r0, [r7]
	bl sub_80492B8
	adds r0, r6, #0
	movs r1, #1
	bl Proc_Goto
_0804A396:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804A298

	THUMB_FUNC_START sub_804A3A8
sub_804A3A8: @ 0x0804A3A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0804A3F4  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _0804A3F8  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804A400
	ldr r0, _0804A3FC  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804A3E6
	movs r0, #0x6a
	bl m4aSongNumStart
_0804A3E6:
	bl CloseBattleForecast
	adds r0, r4, #0
	bl Proc_Break
	b _0804A426
	.align 2, 0
_0804A3F4: .4byte gLCDControlBuffer
_0804A3F8: .4byte gKeyStatusPtr
_0804A3FC: .4byte gPlaySt
_0804A400:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A426
	ldr r0, _0804A42C  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804A41A
	movs r0, #0x6b
	bl m4aSongNumStart
_0804A41A:
	bl CloseBattleForecast
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Goto
_0804A426:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A42C: .4byte gPlaySt

	THUMB_FUNC_END sub_804A3A8

	THUMB_FUNC_START sub_804A430
sub_804A430: @ 0x0804A430
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804A448  @ gUnknown_085AA1AC
	adds r1, r4, #0
	bl Proc_StartBlocking
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804A448: .4byte gUnknown_085AA1AC

	THUMB_FUNC_END sub_804A430

	THUMB_FUNC_START sub_804A44C
sub_804A44C: @ 0x0804A44C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _0804A480  @ gUnknown_03001818
	ldr r6, _0804A484  @ gUnk_Sio_0203DD90
	ldrb r0, [r6, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	bl ClearBg0Bg1
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _0804A4D8
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804A48C
	ldr r0, _0804A488  @ gUnknown_03001838
	ldr r0, [r0, #4]
	bl MU_End
	b _0804A494
	.align 2, 0
_0804A480: .4byte gUnknown_03001818
_0804A484: .4byte gUnk_Sio_0203DD90
_0804A488: .4byte gUnknown_03001838
_0804A48C:
	ldr r0, [r5, #0x34]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	strb r0, [r4, #0x11]
_0804A494:
	ldr r0, [r4, #0xc]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r4, #0xc]
	bl RefreshUnitSprites
	ldr r1, _0804A4D0  @ gUnk_Sio_0203DD90
	ldrb r0, [r1, #5]
	strb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #3]
	ldr r2, _0804A4D4  @ gUnknown_03001818
	ldrb r0, [r1, #5]
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #0
	movs r3, #0
	bl sub_8049350
	adds r0, r5, #0
	bl sub_8049F38
	adds r0, r5, #0
	movs r1, #5
	bl Proc_Goto
	b _0804A50E
	.align 2, 0
_0804A4D0: .4byte gUnk_Sio_0203DD90
_0804A4D4: .4byte gUnknown_03001818
_0804A4D8:
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804A502
	adds r0, r4, #0
	bl MU_Create
	ldr r1, _0804A514  @ gUnknown_03001838
	str r0, [r1, #4]
	movs r0, #0x10
	ldrsb r0, [r4, r0]
	str r0, [r5, #0x34]
	movs r0, #0x11
	ldrsb r0, [r4, r0]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0xc]
	ldr r1, _0804A518  @ 0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #0xc]
_0804A502:
	ldrb r2, [r6, #6]
	ldrb r3, [r6, #7]
	movs r0, #5
	movs r1, #0
	bl sub_8049350
_0804A50E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A514: .4byte gUnknown_03001838
_0804A518: .4byte 0xFFFFFDFF

	THUMB_FUNC_END sub_804A44C

	THUMB_FUNC_START sub_804A51C
sub_804A51C: @ 0x0804A51C
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0804A598  @ gUnknown_03001818
	mov r8, r0
	ldr r4, _0804A59C  @ gUnk_Sio_0203DD90
	ldrb r0, [r4, #4]
	add r0, r8
	ldrb r0, [r0]
	bl GetUnit
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	add r0, r8
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	ldr r0, [r5, #0x2c]
	movs r1, #0
	mov r9, r1
	strb r0, [r6, #0x10]
	ldr r0, [r5, #0x30]
	strb r0, [r6, #0x11]
	ldr r0, [r5, #0x34]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x38]
	strb r0, [r4, #0x11]
	ldr r0, _0804A5A0  @ gUnknown_03001838
	mov r8, r0
	ldr r1, [r0]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	adds r0, r6, #0
	movs r2, #6
	movs r3, #5
	bl sub_804C208
	mov r0, r8
	ldr r1, [r0, #4]
	mov r0, r9
	str r0, [sp]
	str r0, [sp, #4]
	str r5, [sp, #8]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #5
	bl sub_804C208
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804A598: .4byte gUnknown_03001818
_0804A59C: .4byte gUnk_Sio_0203DD90
_0804A5A0: .4byte gUnknown_03001838

	THUMB_FUNC_END sub_804A51C

	THUMB_FUNC_START sub_804A5A4
sub_804A5A4: @ 0x0804A5A4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _0804A600  @ gUnknown_03001818
	ldr r4, _0804A604  @ gUnk_Sio_0203DD90
	ldrb r0, [r4, #4]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	adds r7, r0, #0
	ldr r1, _0804A608  @ gUnknown_080D9FB7
	mov r0, sp
	movs r2, #2
	bl memcpy
	ldr r6, _0804A60C  @ gUnknown_03001838
	ldr r0, [r6, #4]
	bl MU_End
	ldrb r0, [r4, #5]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	ldr r1, [r0, #0xc]
	movs r2, #2
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0xc]
	ldr r0, _0804A610  @ gUnknown_03001834
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0804A5F2
	ldr r0, [r6]
	mov r1, sp
	bl MU_StartMoveScript
	movs r0, #7
	strb r0, [r7, #0x10]
_0804A5F2:
	bl sub_80492D8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A600: .4byte gUnknown_03001818
_0804A604: .4byte gUnk_Sio_0203DD90
_0804A608: .4byte gUnknown_080D9FB7
_0804A60C: .4byte gUnknown_03001838
_0804A610: .4byte gUnknown_03001834

	THUMB_FUNC_END sub_804A5A4

	THUMB_FUNC_START sub_804A614
sub_804A614: @ 0x0804A614
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl MU_IsAnyActive
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804A682
	ldr r5, _0804A68C  @ gUnknown_03001818
	ldr r4, _0804A690  @ gUnk_Sio_0203DD90
	ldrb r0, [r4, #4]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	mov r8, r0
	adds r0, r6, #0
	bl HideUnitSprite
	ldr r1, _0804A694  @ gActionData
	movs r0, #2
	strb r0, [r1, #0x11]
	ldrb r0, [r4, #5]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r1, #0xd]
	ldr r0, _0804A698  @ gUnknown_03001834
	ldrb r1, [r0, #3]
	adds r0, r6, #0
	bl EquipUnitItemSlot
	adds r0, r6, #0
	mov r1, r8
	bl BattleGenerateReal
	ldr r2, _0804A69C  @ gBmSt
	ldrb r1, [r2, #4]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2, #4]
	ldr r0, _0804A6A0  @ gUnknown_085AA75C
	adds r1, r7, #0
	bl Proc_StartBlocking
	adds r0, r7, #0
	bl Proc_Break
_0804A682:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A68C: .4byte gUnknown_03001818
_0804A690: .4byte gUnk_Sio_0203DD90
_0804A694: .4byte gActionData
_0804A698: .4byte gUnknown_03001834
_0804A69C: .4byte gBmSt
_0804A6A0: .4byte gUnknown_085AA75C

	THUMB_FUNC_END sub_804A614

	THUMB_FUNC_START sub_804A6A4
sub_804A6A4: @ 0x0804A6A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldr r1, _0804A790  @ gUnknown_03001818
	ldr r0, _0804A794  @ gUnk_Sio_0203DD90
	mov r8, r0
	ldrb r0, [r0, #4]
	adds r0, r0, r1
	ldrb r4, [r0]
	mov r2, r8
	ldrb r0, [r2, #5]
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r4, #0
	bl GetUnit
	adds r6, r0, #0
	adds r0, r5, #0
	bl GetUnit
	adds r7, r0, #0
	bl sub_8049788
	lsrs r0, r4, #6
	lsls r0, r0, #3
	mov r2, r8
	adds r2, #0x30
	adds r3, r0, r2
	ldr r1, _0804A798  @ gBattleActor
	mov r9, r1
	adds r1, #0x6e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [r3]
	add r0, r8
	adds r0, #0x2c
	movs r3, #0
	strb r4, [r0]
	strb r3, [r6, #9]
	lsrs r0, r5, #6
	lsls r0, r0, #3
	adds r2, r0, r2
	ldr r4, _0804A79C  @ gBattleTarget
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [r2]
	add r0, r8
	adds r0, #0x2c
	strb r5, [r0]
	strb r3, [r7, #9]
	adds r0, r6, #0
	bl sub_804D40C
	adds r0, r7, #0
	bl sub_804D40C
	adds r0, r6, #0
	movs r1, #0
	bl SetUnitStatus
	adds r0, r7, #0
	movs r1, #0
	bl SetUnitStatus
	bl MU_EndAll
	adds r0, r6, #0
	bl GetUnitCurrentHp
	cmp r0, #0
	beq _0804A750
	adds r0, r6, #0
	bl ShowUnitSprite
	ldr r0, [r6, #0xc]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r6, #0xc]
_0804A750:
	bl sub_80492D8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r0, r6, #0
	bl GetUnitCurrentHp
	mov r1, r9
	adds r1, #0x72
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _0804A7A0
	adds r0, r7, #0
	bl GetUnitCurrentHp
	adds r1, r4, #0
	adds r1, #0x72
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _0804A7A0
	mov r2, r8
	ldrb r0, [r2, #9]
	adds r0, #1
	strb r0, [r2, #9]
	b _0804A7A6
	.align 2, 0
_0804A790: .4byte gUnknown_03001818
_0804A794: .4byte gUnk_Sio_0203DD90
_0804A798: .4byte gBattleActor
_0804A79C: .4byte gBattleTarget
_0804A7A0:
	ldr r1, _0804A7BC  @ gUnk_Sio_0203DD90
	movs r0, #0
	strb r0, [r1, #9]
_0804A7A6:
	mov r0, sl
	bl Proc_Break
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A7BC: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804A6A4

	THUMB_FUNC_START sub_804A7C0
sub_804A7C0: @ 0x0804A7C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r1, _0804A830  @ gUnknown_03001818
	ldr r0, _0804A834  @ gUnk_Sio_0203DD90
	mov sl, r0
	ldrb r0, [r0, #4]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r0, #0
	mov r2, sl
	ldrb r0, [r2, #5]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r9, r0
	adds r0, r5, #0
	bl GetUnit
	adds r4, r0, #0
	mov r0, r9
	bl GetUnit
	mov r8, r0
	movs r7, #0
	adds r0, r5, #0
	bl sub_80493A8
	str r0, [sp, #0x10]
	mov r0, r9
	bl sub_80493A8
	str r0, [sp, #0x14]
	ldr r6, _0804A838  @ gUnknown_03001838
	str r7, [r6, #4]
	str r7, [r6]
	ldr r0, [r4, #0xc]
	ldr r1, _0804A83C  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _0804A81E
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A840
_0804A81E:
	lsrs r0, r5, #6
	mov r1, sl
	adds r1, #0xa
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	b _0804A878
	.align 2, 0
_0804A830: .4byte gUnknown_03001818
_0804A834: .4byte gUnk_Sio_0203DD90
_0804A838: .4byte gUnknown_03001838
_0804A83C: .4byte 0x00010004
_0804A840:
	adds r0, r4, #0
	bl MU_Create
	str r0, [r6]
	bl MU_DisableAttractCamera
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r7, #1
	ldr r1, [r6]
	ldr r2, _0804A8A0  @ gUnknown_080D9F48
	ldr r3, [sp, #0x10]
	lsls r0, r3, #2
	adds r0, r0, r2
	movs r5, #0
	ldrsh r2, [r0, r5]
	movs r5, #2
	ldrsh r3, [r0, r5]
	movs r0, #2
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_804C208
_0804A878:
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r1, _0804A8A4  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _0804A88C
	mov r2, r8
	ldr r0, [r2]
	cmp r0, #0
	bne _0804A8AC
_0804A88C:
	ldr r0, _0804A8A8  @ gUnk_Sio_0203DD90
	mov r3, r9
	lsrs r1, r3, #6
	adds r0, #0xa
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	b _0804A8F0
	.align 2, 0
_0804A8A0: .4byte gUnknown_080D9F48
_0804A8A4: .4byte 0x00010004
_0804A8A8: .4byte gUnk_Sio_0203DD90
_0804A8AC:
	mov r0, r8
	bl MU_Create
	ldr r4, _0804A90C  @ gUnknown_03001838
	str r0, [r4, #4]
	bl MU_DisableAttractCamera
	mov r5, r8
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r0, r7, #0
	movs r7, #0
	cmp r0, #0
	bne _0804A8CE
	movs r7, #1
_0804A8CE:
	ldr r1, [r4, #4]
	ldr r2, _0804A910  @ gUnknown_080D9F48
	ldr r3, [sp, #0x14]
	lsls r0, r3, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r5, #2
	ldrsh r3, [r0, r5]
	movs r0, #2
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r0, r8
	bl sub_804C208
_0804A8F0:
	bl sub_80492D8
	ldr r0, [sp, #0xc]
	bl Proc_Break
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A90C: .4byte gUnknown_03001838
_0804A910: .4byte gUnknown_080D9F48

	THUMB_FUNC_END sub_804A7C0

	THUMB_FUNC_START sub_804A914
sub_804A914: @ 0x0804A914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r3, #0
_0804A91E:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r3, [sp]
	bl sub_8042194
	lsls r0, r0, #0x18
	ldr r3, [sp]
	adds r1, r3, #1
	mov r8, r1
	cmp r0, #0
	beq _0804A984
	movs r6, #0
	movs r7, #0
	ldr r0, _0804A998  @ gUnknown_03001818
	adds r4, r3, r0
	movs r5, #4
_0804A93E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804A96C
	adds r7, #1
	str r3, [sp]
	bl GetUnit
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	ldr r1, _0804A99C  @ 0x00010004
	ands r0, r1
	ldr r3, [sp]
	cmp r0, #0
	bne _0804A96C
	adds r0, r2, #0
	bl sub_8049C94
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, [sp]
	cmp r0, #1
	bne _0804A96C
	adds r6, #1
_0804A96C:
	adds r4, #5
	subs r5, #1
	cmp r5, #0
	bge _0804A93E
	cmp r6, #0
	bne _0804A984
	cmp r7, #0
	beq _0804A984
	ldr r0, _0804A9A0  @ gUnk_Sio_0203DD90
	adds r0, #0xa
	adds r0, r3, r0
	strb r6, [r0]
_0804A984:
	mov r3, r8
	cmp r3, #3
	ble _0804A91E
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804A998: .4byte gUnknown_03001818
_0804A99C: .4byte 0x00010004
_0804A9A0: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804A914

	THUMB_FUNC_START sub_804A9A4
sub_804A9A4: @ 0x0804A9A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r1, _0804AA48  @ gUnknown_03001818
	ldr r5, _0804AA4C  @ gUnk_Sio_0203DD90
	ldrb r0, [r5, #4]
	adds r0, r0, r1
	ldrb r6, [r0]
	ldrb r0, [r5, #5]
	adds r0, r0, r1
	ldrb r7, [r0]
	adds r0, r6, #0
	bl GetUnit
	adds r4, r0, #0
	adds r0, r7, #0
	bl GetUnit
	adds r2, r0, #0
	ldr r1, [r4, #0xc]
	ldr r3, _0804AA50  @ 0x00010004
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0804A9E0
	movs r0, #2
	negs r0, r0
	ands r1, r0
	str r1, [r4, #0xc]
_0804A9E0:
	ldr r1, [r2, #0xc]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0804A9F2
	movs r0, #2
	negs r0, r0
	ands r1, r0
	str r1, [r2, #0xc]
_0804A9F2:
	lsrs r0, r6, #6
	adds r1, r0, #0
	adds r2, r5, #0
	adds r2, #0xa
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq _0804AA0E
	lsrs r1, r7, #6
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804AA6A
_0804AA0E:
	adds r4, r1, #0
	ldr r2, _0804AA4C  @ gUnk_Sio_0203DD90
	ldr r3, _0804AA54  @ gLinkArenaSt
	adds r3, #0xa0
	ldrb r0, [r3]
	ldrb r1, [r2, #0xe]
	subs r0, r0, r1
	adds r1, r2, #0
	adds r1, #0xf
	adds r0, r0, r1
	strb r4, [r0]
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r3]
	cmp r0, r3
	bne _0804AA6A
	adds r1, r5, #0
	adds r0, r2, #0
	adds r0, #0xa
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AA58
	adds r4, r1, #0
	b _0804AA5A
	.align 2, 0
_0804AA48: .4byte gUnknown_03001818
_0804AA4C: .4byte gUnk_Sio_0203DD90
_0804AA50: .4byte 0x00010004
_0804AA54: .4byte gLinkArenaSt
_0804AA58:
	lsrs r4, r7, #6
_0804AA5A:
	strb r4, [r2, #0xf]
	movs r0, #0xff
	bl sub_80492E8
	mov r0, r8
	bl Proc_Break
	b _0804AA78
_0804AA6A:
	ldr r0, _0804AA84  @ gPlaySt
	ldrb r0, [r0, #0xf]
	bl sub_80492E8
	mov r0, r8
	bl Proc_Break
_0804AA78:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AA84: .4byte gPlaySt

	THUMB_FUNC_END sub_804A9A4

	THUMB_FUNC_START sub_804AA88
sub_804AA88: @ 0x0804AA88
	push {lr}
	bl MU_EndAll
	bl MU_EndAll
	bl sub_8049594
	bl sub_80495F4
	bl RefreshUnitSprites
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804AA88

	THUMB_FUNC_START sub_804AAA4
sub_804AAA4: @ 0x0804AAA4
	push {lr}
	ldr r0, _0804AAD0  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0804AACC
	ldr r0, _0804AAD4  @ gSioMsgBuf
	movs r2, #0
	movs r1, #0x84
	strb r1, [r0]
	ldr r1, _0804AAD8  @ gSioSt
	ldr r1, [r1]
	ldrb r1, [r1, #6]
	strb r1, [r0, #1]
	strh r2, [r0, #2]
	movs r1, #4
	bl SioSend
_0804AACC:
	pop {r0}
	bx r0
	.align 2, 0
_0804AAD0: .4byte gKeyStatusPtr
_0804AAD4: .4byte gSioMsgBuf
_0804AAD8: .4byte gSioSt

	THUMB_FUNC_END sub_804AAA4

	THUMB_FUNC_START sub_804AADC
sub_804AADC: @ 0x0804AADC
	push {lr}
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804AAF0
	cmp r0, #1
	blt _0804AAF4
	cmp r0, #7
	bgt _0804AAF4
	cmp r0, #6
	blt _0804AAF4
_0804AAF0:
	movs r0, #1
	b _0804AAF6
_0804AAF4:
	movs r0, #0
_0804AAF6:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804AADC

	THUMB_FUNC_START sub_804AAFC
sub_804AAFC: @ 0x0804AAFC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, _0804AB24  @ gUnknown_03001834
	ldr r2, _0804AB28  @ sub_804AADC
	adds r0, r4, #0
	add r1, sp, #4
	bl SioReceiveData
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804ABA4
	ldrb r0, [r4]
	cmp r0, #6
	beq _0804AB54
	cmp r0, #6
	bgt _0804AB2C
	cmp r0, #1
	beq _0804AB32
	b _0804ABA4
	.align 2, 0
_0804AB24: .4byte gUnknown_03001834
_0804AB28: .4byte sub_804AADC
_0804AB2C:
	cmp r0, #7
	beq _0804AB8C
	b _0804ABA4
_0804AB32:
	ldrb r0, [r4, #1]
	ldr r2, _0804AB50  @ gUnk_Sio_0203DD94
	adds r3, r5, #0
	adds r3, #0x2c
	adds r1, r5, #0
	adds r1, #0x30
	str r1, [sp]
	movs r1, #0
	bl sub_80493D0
	adds r0, r5, #0
	movs r1, #1
	bl Proc_Goto
	b _0804ABA4
	.align 2, 0
_0804AB50: .4byte gUnk_Sio_0203DD94
_0804AB54:
	bl sub_8048A94
	add r0, sp, #4
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	ldr r1, _0804AB80  @ gUnk_Sio_0203DAC5
	adds r0, r0, r1
	ldr r1, _0804AB84  @ gUnknown_03001850
	bl SioStrCpy
	ldr r0, _0804AB88  @ gUnknown_085AA1FC
	movs r1, #0x60
	movs r2, #0
	movs r3, #0
	bl NewPopup_Simple
	adds r0, r5, #0
	movs r1, #3
	bl Proc_Goto
	b _0804ABA4
	.align 2, 0
_0804AB80: .4byte gUnk_Sio_0203DAC5
_0804AB84: .4byte gUnknown_03001850
_0804AB88: .4byte gUnknown_085AA1FC
_0804AB8C:
	bl sub_8048A94
	ldr r0, _0804ABB0  @ gUnknown_085AA21C
	movs r1, #0x60
	movs r2, #0
	movs r3, #0
	bl NewPopup_Simple
	adds r0, r5, #0
	movs r1, #4
	bl Proc_Goto
_0804ABA4:
	bl sub_804AAA4
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804ABB0: .4byte gUnknown_085AA21C

	THUMB_FUNC_END sub_804AAFC

	THUMB_FUNC_START sub_804ABB4
sub_804ABB4: @ 0x0804ABB4
	push {lr}
	ldrb r0, [r0]
	cmp r0, #3
	bgt _0804ABC4
	cmp r0, #2
	blt _0804ABC4
	movs r0, #1
	b _0804ABC6
_0804ABC4:
	movs r0, #0
_0804ABC6:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804ABB4

	THUMB_FUNC_START sub_804ABCC
sub_804ABCC: @ 0x0804ABCC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r4, _0804ABF0  @ gUnknown_03001834
	ldr r2, _0804ABF4  @ sub_804ABB4
	adds r0, r4, #0
	add r1, sp, #4
	bl SioReceiveData
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804AC58
	ldrb r0, [r4]
	cmp r0, #2
	beq _0804ABF8
	cmp r0, #3
	beq _0804AC3C
	b _0804AC58
	.align 2, 0
_0804ABF0: .4byte gUnknown_03001834
_0804ABF4: .4byte sub_804ABB4
_0804ABF8:
	ldrb r0, [r4, #2]
	bl GetUnit
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804AC1C
	ldr r0, _0804AC18  @ gUnknown_03001838
	ldr r0, [r0]
	bl MU_End
	b _0804AC24
	.align 2, 0
_0804AC18: .4byte gUnknown_03001838
_0804AC1C:
	ldr r0, [r5, #0x2c]
	strb r0, [r4, #0x10]
	ldr r0, [r5, #0x30]
	strb r0, [r4, #0x11]
_0804AC24:
	ldr r0, [r4, #0xc]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r4, #0xc]
	bl RefreshUnitSprites
	adds r0, r5, #0
	movs r1, #0
	bl Proc_Goto
	b _0804AC58
_0804AC3C:
	ldrb r0, [r4, #1]
	ldr r2, _0804AC64  @ gUnk_Sio_0203DD95
	adds r3, r5, #0
	adds r3, #0x34
	adds r1, r5, #0
	adds r1, #0x38
	str r1, [sp]
	movs r1, #1
	bl sub_80493D0
	adds r0, r5, #0
	movs r1, #2
	bl Proc_Goto
_0804AC58:
	bl sub_804AAA4
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804AC64: .4byte gUnk_Sio_0203DD95

	THUMB_FUNC_END sub_804ABCC

	THUMB_FUNC_START sub_804AC68
sub_804AC68: @ 0x0804AC68
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	bl MU_Create
	ldr r1, _0804ACA4  @ gUnknown_03001838
	lsls r4, r4, #2
	adds r4, r4, r1
	str r0, [r4]
	movs r0, #0x10
	ldrsb r0, [r5, r0]
	str r0, [r6]
	movs r0, #0x11
	ldrsb r0, [r5, r0]
	mov r1, r8
	str r0, [r1]
	ldr r0, [r5, #0xc]
	ldr r1, _0804ACA8  @ 0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #0xc]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804ACA4: .4byte gUnknown_03001838
_0804ACA8: .4byte 0xFFFFFDFF

	THUMB_FUNC_END sub_804AC68

	THUMB_FUNC_START sub_804ACAC
sub_804ACAC: @ 0x0804ACAC
	push {lr}
	ldrb r0, [r0]
	cmp r0, #5
	bgt _0804ACBC
	cmp r0, #4
	blt _0804ACBC
	movs r0, #1
	b _0804ACBE
_0804ACBC:
	movs r0, #0
_0804ACBE:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804ACAC

	THUMB_FUNC_START sub_804ACC4
sub_804ACC4: @ 0x0804ACC4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r4, _0804ACE8  @ gUnknown_03001834
	ldr r2, _0804ACEC  @ sub_804ACAC
	adds r0, r4, #0
	mov r1, sp
	bl SioReceiveData
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804AD8A
	ldrb r0, [r4]
	cmp r0, #4
	beq _0804ACF0
	cmp r0, #5
	beq _0804AD34
	b _0804AD8A
	.align 2, 0
_0804ACE8: .4byte gUnknown_03001834
_0804ACEC: .4byte sub_804ACAC
_0804ACF0:
	ldrb r0, [r4, #2]
	bl GetUnit
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0804AD14
	ldr r0, _0804AD10  @ gUnknown_03001838
	ldr r0, [r0, #4]
	bl MU_End
	b _0804AD1C
	.align 2, 0
_0804AD10: .4byte gUnknown_03001838
_0804AD14:
	ldr r0, [r7, #0x34]
	strb r0, [r6, #0x10]
	ldr r0, [r7, #0x38]
	strb r0, [r6, #0x11]
_0804AD1C:
	ldr r0, [r6, #0xc]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r6, #0xc]
	bl RefreshUnitSprites
	adds r0, r7, #0
	movs r1, #1
	bl Proc_Goto
	b _0804AD8A
_0804AD34:
	ldr r5, _0804AD98  @ gUnknown_03001818
	ldr r4, _0804AD9C  @ gUnk_Sio_0203DD90
	ldrb r0, [r4, #4]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	adds r6, r0, #0
	ldrb r0, [r4, #5]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	ldr r0, [r6, #0xc]
	movs r5, #0x80
	lsls r5, r5, #2
	ands r0, r5
	cmp r0, #0
	beq _0804AD6C
	adds r2, r7, #0
	adds r2, #0x2c
	adds r3, r7, #0
	adds r3, #0x30
	adds r0, r6, #0
	movs r1, #0
	bl sub_804AC68
_0804AD6C:
	ldr r0, [r4, #0xc]
	ands r0, r5
	cmp r0, #0
	beq _0804AD84
	adds r2, r7, #0
	adds r2, #0x34
	adds r3, r7, #0
	adds r3, #0x38
	adds r0, r4, #0
	movs r1, #1
	bl sub_804AC68
_0804AD84:
	adds r0, r7, #0
	bl Proc_Break
_0804AD8A:
	bl sub_804AAA4
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AD98: .4byte gUnknown_03001818
_0804AD9C: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804ACC4

	THUMB_FUNC_START sub_804ADA0
sub_804ADA0: @ 0x0804ADA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r5, #0
	ldrh r4, [r6, #0x1e]
	cmp r4, #0
	beq _0804ADEC
_0804ADB6:
	adds r0, r6, #0
	adds r1, r4, #0
	bl CanUnitUseWeapon
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804ADD8
	adds r0, r4, #0
	bl GetItemMight
	cmp r0, r8
	bls _0804ADD8
	adds r7, r4, #0
	adds r0, r7, #0
	bl GetItemMight
	mov r8, r0
_0804ADD8:
	adds r5, #1
	cmp r5, #4
	bgt _0804ADEC
	lsls r1, r5, #1
	adds r0, r6, #0
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r4, [r0]
	cmp r4, #0
	bne _0804ADB6
_0804ADEC:
	cmp r7, #0
	beq _0804ADFA
	adds r0, r6, #0
	bl GetUnitPower
	add r0, r8
	b _0804ADFC
_0804ADFA:
	movs r0, #0
_0804ADFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804ADA0

	THUMB_FUNC_START sub_804AE08
sub_804AE08: @ 0x0804AE08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
	adds r5, r7, #0
	adds r0, r7, #5
	cmp r7, r0
	bge _0804AE52
_0804AE1E:
	adds r0, r5, #0
	bl GetUnit
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, _0804AE74  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _0804AE4A
	ldr r0, [r4]
	cmp r0, #0
	beq _0804AE4A
	movs r0, #1
	add r8, r0
	adds r0, r4, #0
	bl sub_804ADA0
	adds r6, r6, r0
	adds r0, r4, #0
	bl GetUnitCurrentHp
	adds r6, r6, r0
_0804AE4A:
	adds r5, #1
	adds r0, r7, #5
	cmp r5, r0
	blt _0804AE1E
_0804AE52:
	ldr r0, _0804AE78  @ gUnk_Sio_0203DD90
	asrs r1, r7, #6
	lsls r1, r1, #2
	adds r0, #0x14
	adds r1, r1, r0
	ldr r0, [r1]
	adds r6, r6, r0
	adds r0, r6, #0
	mov r1, r8
	bl Div
	adds r6, r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804AE74: .4byte 0x00010004
_0804AE78: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804AE08

	THUMB_FUNC_START sub_804AE7C
sub_804AE7C: @ 0x0804AE7C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0804AEB4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0804AEBC
	bl sub_8048A94
	str r4, [r5, #0x58]
	ldr r0, _0804AEB8  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804AEB0
	movs r0, #0x68
	bl m4aSongNumStart
	adds r0, r5, #0
	movs r1, #3
	bl Proc_Goto
_0804AEB0:
	movs r0, #1
	b _0804AEBE
	.align 2, 0
_0804AEB4: .4byte gKeyStatusPtr
_0804AEB8: .4byte gPlaySt
_0804AEBC:
	movs r0, #0
_0804AEBE:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804AE7C

	THUMB_FUNC_START sub_804AEC4
sub_804AEC4: @ 0x0804AEC4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #1
	negs r6, r6
	movs r1, #0
	bl sub_804AE7C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804AF1C
	movs r4, #0
_0804AEDC:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8042194
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804AF10
	ldr r5, _0804AF24  @ gUnk_Sio_0203DD90
	adds r0, r5, #0
	adds r0, #0xa
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804AF10
	ldr r0, _0804AF28  @ gPlaySt
	ldrb r0, [r0, #0xf]
	cmp r0, r4
	beq _0804AF10
	lsls r0, r4, #6
	adds r0, #1
	bl sub_804AE08
	cmp r6, r0
	bls _0804AF10
	adds r6, r0, #0
	strb r4, [r5, #2]
_0804AF10:
	adds r4, #1
	cmp r4, #3
	ble _0804AEDC
	adds r0, r7, #0
	bl Proc_Break
_0804AF1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804AF24: .4byte gUnk_Sio_0203DD90
_0804AF28: .4byte gPlaySt

	THUMB_FUNC_END sub_804AEC4

	THUMB_FUNC_START ITEMRANGEDONE_sub_804AF2C
ITEMRANGEDONE_sub_804AF2C: @ 0x0804AF2C
	push {r4, lr}
	adds r0, r1, #0
	bl GetUnitEquippedWeapon
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r0, #0
	beq _0804AF50
	bl GetItemMaxRange
	cmp r0, #1
	beq _0804AF50
	adds r0, r4, #0
	bl GetItemMinRange
	cmp r0, #1
	bgt _0804AF54
_0804AF50:
	movs r0, #1
	b _0804AF56
_0804AF54:
	movs r0, #2
_0804AF56:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END ITEMRANGEDONE_sub_804AF2C

	THUMB_FUNC_START sub_804AF5C
sub_804AF5C: @ 0x0804AF5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x1c]
	movs r2, #0
	str r2, [sp, #0x20]
	ldr r0, [sp, #0x10]
	movs r1, #1
	bl sub_804AE7C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0804AF88
	b _0804B176
_0804AF88:
	ldr r0, _0804B0C8  @ gAiState
	adds r0, #0x7d
	movs r1, #0xe
	strb r1, [r0]
	ldr r0, _0804B0CC  @ gPlaySt
	ldrb r0, [r0, #0xf]
	lsls r0, r0, #6
	str r0, [sp, #0x14]
	adds r4, r0, #0
	adds r4, #1
	adds r0, #6
	ldr r1, [sp, #0x10]
	adds r1, #0x2c
	str r1, [sp, #0x34]
	ldr r2, [sp, #0x10]
	adds r2, #0x30
	str r2, [sp, #0x38]
	cmp r4, r0
	blt _0804AFB0
	b _0804B158
_0804AFB0:
	ldr r0, _0804B0D0  @ gActiveUnitId
	strb r4, [r0]
	ldrb r0, [r0]
	bl GetUnit
	adds r2, r0, #0
	ldr r0, _0804B0D4  @ gActiveUnit
	str r2, [r0]
	ldr r1, [r2, #0xc]
	ldr r0, _0804B0D8  @ 0x00010004
	ands r1, r0
	ldr r0, [sp, #0x14]
	adds r0, #6
	str r0, [sp, #0x30]
	adds r4, #1
	str r4, [sp, #0x28]
	cmp r1, #0
	beq _0804AFD6
	b _0804B14E
_0804AFD6:
	ldr r0, [r2]
	cmp r0, #0
	bne _0804AFDE
	b _0804B14E
_0804AFDE:
	movs r5, #0
_0804AFE0:
	ldr r0, _0804B0D4  @ gActiveUnit
	ldr r2, [r0]
	lsls r1, r5, #1
	adds r0, r2, #0
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r6, r4, #0
	adds r1, r5, #1
	str r1, [sp, #0x2c]
	cmp r4, #0
	bne _0804AFFA
	b _0804B146
_0804AFFA:
	adds r0, r2, #0
	adds r1, r4, #0
	bl CanUnitUseWeapon
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B00A
	b _0804B146
_0804B00A:
	mov sl, r5
	movs r2, #0
	mov r8, r2
	adds r0, r4, #0
	bl GetItemMinRange
	cmp r0, #2
	ble _0804B01C
	b _0804B146
_0804B01C:
	adds r0, r4, #0
	bl GetItemAttributes
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0804B02C
	b _0804B146
_0804B02C:
	adds r0, r4, #0
	bl GetItemMinRange
	cmp r0, #1
	bne _0804B03A
	movs r0, #2
	mov r8, r0
_0804B03A:
	adds r0, r6, #0
	bl GetItemMaxRange
	cmp r0, #1
	ble _0804B04C
	movs r0, #1
	mov r1, r8
	orrs r1, r0
	mov r8, r1
_0804B04C:
	add r0, sp, #4
	strh r5, [r0, #4]
	ldr r0, _0804B0DC  @ gUnk_Sio_0203DD90
	ldrb r0, [r0, #2]
	lsls r0, r0, #6
	mov r9, r0
	mov r5, r9
	adds r5, #1
	adds r0, #6
	cmp r5, r0
	bge _0804B146
	add r6, sp, #4
	ldr r7, _0804B0E0  @ gUnknown_03001834
	mov r0, r8
	movs r2, #2
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
_0804B072:
	adds r0, r5, #0
	bl GetUnit
	adds r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, _0804B0D8  @ 0x00010004
	ands r1, r0
	cmp r1, #0
	bne _0804B13C
	ldr r0, [r4]
	cmp r0, #0
	beq _0804B13C
	strb r5, [r6, #2]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0804B0EC
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r6]
	ldrb r0, [r4, #0x11]
	strb r0, [r6, #1]
	add r0, sp, #4
	bl AiSimulateBattleAgainstTargetAtPosition
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bhi _0804B0EC
	str r0, [sp, #0x18]
	ldr r0, _0804B0D0  @ gActiveUnitId
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	mov r2, r8
	cmp r2, #3
	bne _0804B0E4
	movs r0, #3
	adds r1, r4, #0
	bl ITEMRANGEDONE_sub_804AF2C
	b _0804B0E6
	.align 2, 0
_0804B0C8: .4byte gAiState
_0804B0CC: .4byte gPlaySt
_0804B0D0: .4byte gActiveUnitId
_0804B0D4: .4byte gActiveUnit
_0804B0D8: .4byte 0x00010004
_0804B0DC: .4byte gUnk_Sio_0203DD90
_0804B0E0: .4byte gUnknown_03001834
_0804B0E4:
	movs r0, #1
_0804B0E6:
	strb r0, [r7, #2]
	mov r0, sl
	strb r0, [r7, #3]
_0804B0EC:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0804B13C
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r6]
	ldrb r0, [r4, #0x11]
	subs r0, #1
	strb r0, [r6, #1]
	add r0, sp, #4
	bl AiSimulateBattleAgainstTargetAtPosition
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	cmp r2, r0
	bhi _0804B13C
	str r0, [sp, #0x18]
	ldr r0, _0804B130  @ gActiveUnitId
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	mov r0, r8
	cmp r0, #3
	bne _0804B134
	movs r0, #3
	adds r1, r4, #0
	bl ITEMRANGEDONE_sub_804AF2C
	strb r0, [r7, #2]
	b _0804B138
	.align 2, 0
_0804B130: .4byte gActiveUnitId
_0804B134:
	movs r1, #2
	strb r1, [r7, #2]
_0804B138:
	mov r2, sl
	strb r2, [r7, #3]
_0804B13C:
	adds r5, #1
	mov r0, r9
	adds r0, #6
	cmp r5, r0
	blt _0804B072
_0804B146:
	ldr r5, [sp, #0x2c]
	cmp r5, #4
	bgt _0804B14E
	b _0804AFE0
_0804B14E:
	ldr r4, [sp, #0x28]
	ldr r0, [sp, #0x30]
	cmp r4, r0
	bge _0804B158
	b _0804AFB0
_0804B158:
	ldr r2, _0804B188  @ gUnk_Sio_0203DD94
	ldr r1, [sp, #0x38]
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	ldr r3, [sp, #0x34]
	bl sub_80493D0
	ldr r0, _0804B18C  @ gUnknown_03001834
	add r2, sp, #0x20
	ldrb r2, [r2]
	strb r2, [r0, #1]
	ldr r0, [sp, #0x10]
	bl Proc_Break
_0804B176:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B188: .4byte gUnk_Sio_0203DD94
_0804B18C: .4byte gUnknown_03001834

	THUMB_FUNC_END sub_804AF5C

	THUMB_FUNC_START sub_804B190
sub_804B190: @ 0x0804B190
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804B1BC  @ gUnknown_03001834
	ldrb r0, [r0, #1]
	bl GetUnit
	adds r1, r0, #0
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	lsls r0, r0, #4
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #4
	movs r2, #2
	adds r3, r4, #0
	bl StartAiTargetCursor
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B1BC: .4byte gUnknown_03001834

	THUMB_FUNC_END sub_804B190

	THUMB_FUNC_START sub_804B1C0
sub_804B1C0: @ 0x0804B1C0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0804B244  @ gUnknown_03001834
	ldrb r0, [r0, #1]
	ldr r4, _0804B248  @ gUnk_Sio_0203DD95
	movs r1, #0x34
	adds r1, r1, r6
	mov r8, r1
	movs r1, #0x38
	adds r1, r1, r6
	mov r9, r1
	str r1, [sp]
	movs r1, #1
	adds r2, r4, #0
	mov r3, r8
	bl sub_80493D0
	ldr r5, _0804B24C  @ gUnknown_03001818
	subs r4, #5
	ldrb r0, [r4, #4]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	adds r7, r0, #0
	ldrb r0, [r4, #5]
	adds r0, r0, r5
	ldrb r0, [r0]
	bl GetUnit
	adds r4, r0, #0
	ldr r0, [r7, #0xc]
	movs r5, #0x80
	lsls r5, r5, #2
	ands r0, r5
	cmp r0, #0
	beq _0804B222
	adds r2, r6, #0
	adds r2, #0x2c
	adds r3, r6, #0
	adds r3, #0x30
	adds r0, r7, #0
	movs r1, #0
	bl sub_804AC68
_0804B222:
	ldr r0, [r4, #0xc]
	ands r0, r5
	cmp r0, #0
	beq _0804B236
	adds r0, r4, #0
	movs r1, #1
	mov r2, r8
	mov r3, r9
	bl sub_804AC68
_0804B236:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B244: .4byte gUnknown_03001834
_0804B248: .4byte gUnk_Sio_0203DD95
_0804B24C: .4byte gUnknown_03001818

	THUMB_FUNC_END sub_804B1C0

	THUMB_FUNC_START sub_804B250
sub_804B250: @ 0x0804B250
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_804AE7C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0804B272
	bl MU_IsAnyActive
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804B272
	adds r0, r4, #0
	bl Proc_Break
_0804B272:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804B250

	THUMB_FUNC_START sub_804B278
sub_804B278: @ 0x0804B278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	bl GetGameClock
	ldr r2, _0804B374  @ gUnknown_085AA22C
	movs r1, #0x1f
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #4
	asrs r0, r0, #1
	str r0, [sp]
	movs r0, #0
	mov r8, r0
_0804B29C:
	ldr r1, _0804B378  @ gUnknown_080D9F28
	ldr r0, _0804B37C  @ gSioSt
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	add r0, r8
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_8042194
	lsls r0, r0, #0x18
	mov r1, r8
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, #0
	beq _0804B35A
	movs r7, #0
	mov r0, r8
	lsls r0, r0, #2
	str r0, [sp, #8]
	ldr r1, _0804B380  @ gObject_16x8
	mov sl, r1
	movs r0, #0xf
	mov r9, r0
_0804B2D0:
	ldr r0, _0804B384  @ gUnknown_03001818
	ldr r1, [sp, #8]
	add r1, r8
	adds r1, r1, r7
	adds r1, r1, r0
	ldrb r0, [r1]
	bl GetUnit
	adds r6, r0, #0
	cmp r6, #0
	beq _0804B354
	ldr r0, [r6]
	cmp r0, #0
	beq _0804B354
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0804B354
	movs r5, #0x10
	ldrsb r5, [r6, r5]
	lsls r5, r5, #4
	movs r4, #0x11
	ldrsb r4, [r6, r4]
	lsls r4, r4, #4
	ldr r1, [sp]
	subs r4, r4, r1
	adds r0, r6, #0
	bl GetUnitDisplayedSpritePalette
	adds r3, r0, #0
	mov r0, r9
	ands r3, r0
	lsls r3, r3, #0xc
	movs r1, #0x9f
	lsls r1, r1, #4
	adds r3, r3, r1
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	bl CallARM_PushToSecondaryOAM
	movs r5, #0x10
	ldrsb r5, [r6, r5]
	lsls r5, r5, #4
	movs r4, #0x11
	ldrsb r4, [r6, r4]
	lsls r4, r4, #4
	ldr r0, [sp]
	subs r4, r4, r0
	adds r4, #8
	adds r0, r6, #0
	bl GetUnitDisplayedSpritePalette
	adds r3, r0, #0
	mov r1, r9
	ands r3, r1
	lsls r3, r3, #0xc
	ldr r0, _0804B388  @ 0x000009F2
	adds r3, r3, r0
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sl
	bl CallARM_PushToSecondaryOAM
_0804B354:
	adds r7, #1
	cmp r7, #4
	ble _0804B2D0
_0804B35A:
	ldr r1, [sp, #4]
	mov r8, r1
	cmp r1, #3
	ble _0804B29C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B374: .4byte gUnknown_085AA22C
_0804B378: .4byte gUnknown_080D9F28
_0804B37C: .4byte gSioSt
_0804B380: .4byte gObject_16x8
_0804B384: .4byte gUnknown_03001818
_0804B388: .4byte 0x000009F2

	THUMB_FUNC_END sub_804B278

	THUMB_FUNC_START sub_804B38C
sub_804B38C: @ 0x0804B38C
	push {lr}
	ldr r0, _0804B39C  @ gUnknown_085AA24C
	movs r1, #4
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0804B39C: .4byte gUnknown_085AA24C

	THUMB_FUNC_END sub_804B38C

	THUMB_FUNC_START sub_804B3A0
sub_804B3A0: @ 0x0804B3A0
	push {lr}
	ldr r0, _0804B3AC  @ gUnknown_085AA24C
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_0804B3AC: .4byte gUnknown_085AA24C

	THUMB_FUNC_END sub_804B3A0

	THUMB_FUNC_START sub_804B3B0
sub_804B3B0: @ 0x0804B3B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	bl SetStatScreenConfig
	ldr r0, _0804B3CC  @ gActiveUnit
	ldr r0, [r0]
	adds r1, r4, #0
	bl StartStatScreen
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B3CC: .4byte gActiveUnit

	THUMB_FUNC_END sub_804B3B0

	THUMB_FUNC_START sub_804B3D0
sub_804B3D0: @ 0x0804B3D0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0804B3E8  @ gUnk_Sio_0203DD90
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0804B3EC
	adds r0, r1, #0
	movs r1, #0
	bl Proc_Goto
	b _0804B3FE
	.align 2, 0
_0804B3E8: .4byte gUnk_Sio_0203DD90
_0804B3EC:
	bl MU_EndAll
	ldr r0, _0804B404  @ gPlaySt
	ldrb r1, [r0, #0xf]
	movs r0, #6
	movs r2, #0
	movs r3, #0
	bl sub_8049350
_0804B3FE:
	pop {r0}
	bx r0
	.align 2, 0
_0804B404: .4byte gPlaySt

	THUMB_FUNC_END sub_804B3D0

	THUMB_FUNC_START sub_804B408
sub_804B408: @ 0x0804B408
	push {lr}
	ldr r2, _0804B41C  @ gUnk_Sio_0203DD90
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _0804B420
	strb r1, [r2, #9]
	movs r1, #0
	bl Proc_Goto
	b _0804B432
	.align 2, 0
_0804B41C: .4byte gUnk_Sio_0203DD90
_0804B420:
	bl MU_EndAll
	ldr r0, _0804B438  @ gPlaySt
	ldrb r1, [r0, #0xf]
	movs r0, #7
	movs r2, #0
	movs r3, #0
	bl sub_8049350
_0804B432:
	pop {r0}
	bx r0
	.align 2, 0
_0804B438: .4byte gPlaySt

	THUMB_FUNC_END sub_804B408

	THUMB_FUNC_START sub_804B43C
sub_804B43C: @ 0x0804B43C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804B454  @ gUnk_Sio_0203DD90
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0804B458
	ldr r1, [r4, #0x58]
	adds r0, r4, #0
	bl Proc_Goto
	b _0804B474
	.align 2, 0
_0804B454: .4byte gUnk_Sio_0203DD90
_0804B458:
	bl MU_EndAll
	bl MU_EndAll
	ldr r1, _0804B47C  @ gLinkArenaSt
	movs r0, #1
	strb r0, [r1, #0xb]
	movs r0, #0xff
	bl sub_80492E8
	adds r0, r4, #0
	movs r1, #5
	bl Proc_Goto
_0804B474:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B47C: .4byte gLinkArenaSt

	THUMB_FUNC_END sub_804B43C

	THUMB_FUNC_START sub_804B480
sub_804B480: @ 0x0804B480
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	ldr r1, _0804B494  @ gLinkArenaSt
	ldrb r0, [r1]
	cmp r0, #1
	bne _0804B498
	strb r0, [r1, #0xb]
	b _0804B4EA
	.align 2, 0
_0804B494: .4byte gLinkArenaSt
_0804B498:
	ldr r2, _0804B4FC  @ gUnk_Sio_0203DD90
	adds r4, r1, #0
	adds r4, #0xa0
	ldrb r1, [r4]
	ldrb r0, [r2, #0xe]
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0xf
	adds r1, r1, r0
	ldr r3, _0804B500  @ gPlaySt
	ldrb r0, [r3, #0xf]
	strb r0, [r1]
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	ldrb r0, [r3, #0xf]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x14
	adds r0, r0, r1
	str r6, [r0]
	ldrb r0, [r2, #0xe]
	ldrb r1, [r4]
	cmp r0, r1
	bne _0804B504
	movs r1, #0
	ldrb r0, [r4]
	cmp r6, r0
	bge _0804B4E8
	adds r4, r2, #0
	adds r4, #0xa
	adds r3, r0, #0
_0804B4D8:
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B4E2
	adds r6, r1, #0
_0804B4E2:
	adds r1, #1
	cmp r1, r3
	blt _0804B4D8
_0804B4E8:
	strb r6, [r2, #0xf]
_0804B4EA:
	movs r0, #0xff
	bl sub_80492E8
	adds r0, r5, #0
	movs r1, #8
	bl Proc_Goto
	b _0804B512
	.align 2, 0
_0804B4FC: .4byte gUnk_Sio_0203DD90
_0804B500: .4byte gPlaySt
_0804B504:
	ldrb r0, [r3, #0xf]
	bl sub_80492E8
	adds r0, r5, #0
	movs r1, #8
	bl Proc_Goto
_0804B512:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804B480

	THUMB_FUNC_START sub_804B518
sub_804B518: @ 0x0804B518
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804B538  @ gLinkArenaSt
	ldrb r0, [r1]
	cmp r0, #1
	bne _0804B53C
	strb r0, [r1, #0xb]
	movs r0, #0xff
	bl sub_80492E8
	adds r0, r4, #0
	movs r1, #8
	bl Proc_Goto
	b _0804B54E
	.align 2, 0
_0804B538: .4byte gLinkArenaSt
_0804B53C:
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r0, #0xff
	bl sub_80492E8
	adds r0, r4, #0
	movs r1, #8
	bl Proc_Goto
_0804B54E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804B518

	THUMB_FUNC_START sub_804B554
sub_804B554: @ 0x0804B554
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r2, _0804B5C0  @ gUnk_Sio_0203DD90
	ldr r0, _0804B5C4  @ gLinkArenaSt
	adds r4, r0, #0
	adds r4, #0xa0
	ldrb r1, [r4]
	ldrb r0, [r2, #0xe]
	subs r1, r1, r0
	adds r0, r2, #0
	adds r0, #0xf
	adds r1, r1, r0
	ldr r3, _0804B5C8  @ gPlaySt
	ldrb r0, [r3, #0xf]
	strb r0, [r1]
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	ldrb r0, [r3, #0xf]
	lsls r0, r0, #2
	adds r1, r2, #0
	adds r1, #0x14
	adds r0, r0, r1
	str r5, [r0]
	ldrb r0, [r2, #0xe]
	ldrb r1, [r4]
	cmp r0, r1
	bne _0804B5CC
	movs r1, #0
	ldrb r0, [r4]
	cmp r5, r0
	bge _0804B5AC
	adds r4, r2, #0
	adds r4, #0xa
	adds r3, r0, #0
_0804B59C:
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B5A6
	adds r5, r1, #0
_0804B5A6:
	adds r1, #1
	cmp r1, r3
	blt _0804B59C
_0804B5AC:
	strb r5, [r2, #0xf]
	movs r0, #0xff
	bl sub_80492E8
	adds r0, r6, #0
	movs r1, #5
	bl Proc_Goto
	b _0804B5DA
	.align 2, 0
_0804B5C0: .4byte gUnk_Sio_0203DD90
_0804B5C4: .4byte gLinkArenaSt
_0804B5C8: .4byte gPlaySt
_0804B5CC:
	ldrb r0, [r3, #0xf]
	bl sub_80492E8
	adds r0, r6, #0
	movs r1, #5
	bl Proc_Goto
_0804B5DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804B554

	THUMB_FUNC_START sub_804B5E0
sub_804B5E0: @ 0x0804B5E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804B600  @ gLinkArenaSt
	movs r0, #2
	strb r0, [r1, #0xb]
	movs r0, #0xff
	bl sub_80492E8
	adds r0, r4, #0
	movs r1, #5
	bl Proc_Goto
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B600: .4byte gLinkArenaSt

	THUMB_FUNC_END sub_804B5E0

	THUMB_FUNC_START sub_804B604
sub_804B604: @ 0x0804B604
	movs r3, #0
	str r3, [r0, #0x58]
	ldr r2, _0804B61C  @ gPlaySt
	ldrb r1, [r2, #0xf]
	lsls r1, r1, #6
	str r1, [r0, #0x5c]
	ldr r0, _0804B620  @ gUnk_Sio_0203DD90
	adds r0, #0xa
	ldrb r2, [r2, #0xf]
	adds r0, r0, r2
	strb r3, [r0]
	bx lr
	.align 2, 0
_0804B61C: .4byte gPlaySt
_0804B620: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804B604

	THUMB_FUNC_START sub_804B624
sub_804B624: @ 0x0804B624
	push {r4, r5, r6, lr}
	adds r5, r0, #0
_0804B628:
	ldr r1, [r5, #0x58]
	cmp r1, #5
	bne _0804B638
	adds r0, r5, #0
	movs r1, #1
	bl Proc_Goto
	b _0804B69C
_0804B638:
	ldr r0, [r5, #0x5c]
	adds r0, r0, r1
	adds r0, #1
	bl GetUnit
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	ldr r1, _0804B65C  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _0804B654
	ldr r0, [r6]
	cmp r0, #0
	bne _0804B660
_0804B654:
	ldr r0, [r5, #0x58]
	adds r0, #1
	str r0, [r5, #0x58]
	b _0804B628
	.align 2, 0
_0804B65C: .4byte 0x00010004
_0804B660:
	bl RefreshUnitSprites
	adds r0, r6, #0
	bl HideUnitSprite
	adds r0, r6, #0
	bl MU_Create
	adds r4, r0, #0
	ldr r1, _0804B6A4  @ gWorkingMovementScript
	movs r0, #2
	strb r0, [r1]
	movs r0, #4
	strb r0, [r1, #1]
	adds r0, r4, #0
	bl MU_StartMoveScript
	adds r0, r4, #0
	bl sub_804BF4C
	str r4, [r5, #0x54]
	ldr r0, [r5, #0x58]
	adds r0, #1
	str r0, [r5, #0x58]
	ldr r0, [r6, #0xc]
	ldr r1, _0804B6A8  @ 0xFFFFFDFF
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	str r0, [r6, #0xc]
_0804B69C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B6A4: .4byte gWorkingMovementScript
_0804B6A8: .4byte 0xFFFFFDFF

	THUMB_FUNC_END sub_804B624

	THUMB_FUNC_START sub_804B6AC
sub_804B6AC: @ 0x0804B6AC
	push {lr}
	ldr r0, [r0, #0x54]
	bl MU_End
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804B6AC

	THUMB_FUNC_START sub_804B6B8
sub_804B6B8: @ 0x0804B6B8
	push {lr}
	bl sub_8049594
	bl sub_80495F4
	bl RefreshUnitSprites
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804B6B8

	THUMB_FUNC_START sub_804B6CC
sub_804B6CC: @ 0x0804B6CC
	push {lr}
	bl GetTalkChoiceResult
	adds r1, r0, #0
	cmp r1, #1
	bne _0804B6E4
	ldr r0, _0804B6E0  @ gUnk_Sio_0203DD90
	strb r1, [r0, #8]
	b _0804B6EA
	.align 2, 0
_0804B6E0: .4byte gUnk_Sio_0203DD90
_0804B6E4:
	ldr r1, _0804B6F0  @ gUnk_Sio_0203DD90
	movs r0, #0
	strb r0, [r1, #8]
_0804B6EA:
	pop {r0}
	bx r0
	.align 2, 0
_0804B6F0: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804B6CC

	THUMB_FUNC_START sub_804B6F4
sub_804B6F4: @ 0x0804B6F4
	push {lr}
	ldr r0, _0804B704  @ gUnknown_085AA2B4
	movs r1, #1
	bl CallEvent
	pop {r0}
	bx r0
	.align 2, 0
_0804B704: .4byte gUnknown_085AA2B4

	THUMB_FUNC_END sub_804B6F4

	THUMB_FUNC_START sub_804B708
sub_804B708: @ 0x0804B708
	push {lr}
	ldr r0, _0804B718  @ gUnknown_085AA2D8
	movs r1, #1
	bl CallEvent
	pop {r0}
	bx r0
	.align 2, 0
_0804B718: .4byte gUnknown_085AA2D8

	THUMB_FUNC_END sub_804B708

	THUMB_FUNC_START sub_804B71C
sub_804B71C: @ 0x0804B71C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0804B760  @ 0x06015000
	movs r1, #6
	bl LoadHelpBoxGfx
	ldr r2, _0804B764  @ 0x00000756
	movs r0, #0x40
	movs r1, #0x38
	bl StartHelpBoxExt_Unk
	movs r4, #0
	ldr r6, _0804B768  @ gUnk_Sio_0203DD9A
_0804B736:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_8042194
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804B74E
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804B74E
	str r4, [r5, #0x58]
_0804B74E:
	adds r4, #1
	cmp r4, #3
	ble _0804B736
	movs r0, #0
	str r0, [r5, #0x5c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804B760: .4byte 0x06015000
_0804B764: .4byte 0x00000756
_0804B768: .4byte gUnk_Sio_0203DD9A

	THUMB_FUNC_END sub_804B71C

	THUMB_FUNC_START sub_804B76C
sub_804B76C: @ 0x0804B76C
	push {r4, lr}
	adds r4, r0, #0
_0804B770:
	ldr r1, [r4, #0x5c]
	cmp r1, #4
	ble _0804B782
	bl CloseHelpBox
	adds r0, r4, #0
	bl Proc_Break
	b _0804B7DA
_0804B782:
	ldr r0, [r4, #0x58]
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #1
	bl GetUnit
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	ldr r1, _0804B7A8  @ 0x00010004
	ands r0, r1
	cmp r0, #0
	bne _0804B7A0
	ldr r0, [r2]
	cmp r0, #0
	bne _0804B7AC
_0804B7A0:
	ldr r0, [r4, #0x5c]
	adds r0, #1
	str r0, [r4, #0x5c]
	b _0804B770
	.align 2, 0
_0804B7A8: .4byte 0x00010004
_0804B7AC:
	ldr r3, _0804B7E0  @ gUnk_Sio_0203DD90
	ldr r0, [r4, #0x58]
	lsls r0, r0, #3
	adds r1, r3, #0
	adds r1, #0x30
	adds r0, r0, r1
	movs r1, #0x1e
	str r1, [r0]
	ldr r1, [r4, #0x58]
	lsls r2, r1, #3
	adds r2, r2, r3
	lsls r1, r1, #6
	ldr r0, [r4, #0x5c]
	adds r0, r0, r1
	adds r0, #1
	adds r2, #0x2c
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_804926C
	ldr r0, [r4, #0x5c]
	adds r0, #1
	str r0, [r4, #0x5c]
_0804B7DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804B7E0: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804B76C

	THUMB_FUNC_START sub_804B7E4
sub_804B7E4: @ 0x0804B7E4
	push {lr}
	adds r1, r0, #0
	ldr r0, _0804B7FC  @ gLinkArenaSt
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804B7F8
	adds r0, r1, #0
	movs r1, #1
	bl Proc_Goto
_0804B7F8:
	pop {r0}
	bx r0
	.align 2, 0
_0804B7FC: .4byte gLinkArenaSt

	THUMB_FUNC_END sub_804B7E4

	THUMB_FUNC_START sub_804B800
sub_804B800: @ 0x0804B800
	push {lr}
	ldr r0, _0804B82C  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	bl RenderBmMap
	bl sub_8055BB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804B830
	movs r0, #1
	bl SetBanimLinkArenaFlag
	bl BeginAnimsOnBattleAnimations
	b _0804B846
	.align 2, 0
_0804B82C: .4byte gBG2TilemapBuffer
_0804B830:
	bl MU_EndAll
	bl RenderBmMap
	bl BeginBattleMapAnims
	ldr r2, _0804B84C  @ gBattleStats
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
_0804B846:
	pop {r0}
	bx r0
	.align 2, 0
_0804B84C: .4byte gBattleStats

	THUMB_FUNC_END sub_804B800

	THUMB_FUNC_START sub_804B850
sub_804B850: @ 0x0804B850
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _0804B8C0  @ gBattleActor
	movs r0, #0x13
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _0804B86C
	ldr r0, _0804B8C4  @ gProcScr_MoveUnit
	bl Proc_Find
	adds r4, r0, #0
	bl sub_804BF4C
	str r4, [r7, #0x54]
_0804B86C:
	ldr r5, _0804B8C8  @ gBattleTarget
	movs r0, #0x13
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0804B8B8
	bl RefreshUnitSprites
	movs r0, #0xb
	ldrsb r0, [r5, r0]
	bl GetUnit
	bl HideUnitSprite
	adds r0, r5, #0
	bl MU_Create
	adds r4, r0, #0
	movs r0, #0x10
	ldrsb r0, [r6, r0]
	movs r1, #0x11
	ldrsb r1, [r6, r1]
	movs r2, #0x10
	ldrsb r2, [r5, r2]
	movs r3, #0x11
	ldrsb r3, [r5, r3]
	bl GetFacingDirection
	ldr r1, _0804B8CC  @ gWorkingMovementScript
	strb r0, [r1]
	movs r0, #4
	strb r0, [r1, #1]
	adds r0, r4, #0
	bl MU_StartMoveScript
	adds r0, r4, #0
	bl sub_804BF4C
	str r4, [r7, #0x54]
_0804B8B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B8C0: .4byte gBattleActor
_0804B8C4: .4byte gProcScr_MoveUnit
_0804B8C8: .4byte gBattleTarget
_0804B8CC: .4byte gWorkingMovementScript

	THUMB_FUNC_END sub_804B850

	THUMB_FUNC_START sub_804B8D0
sub_804B8D0: @ 0x0804B8D0
	push {r4, r5, lr}
	ldr r0, _0804B918  @ gBattleActor
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetUnit
	adds r4, r0, #0
	ldr r0, _0804B91C  @ gBattleTarget
	ldrb r0, [r0, #0xb]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetUnit
	adds r5, r0, #0
	adds r0, r4, #0
	bl GetUnitCurrentHp
	cmp r0, #0
	bne _0804B900
	ldr r0, [r4, #0xc]
	movs r1, #5
	orrs r0, r1
	str r0, [r4, #0xc]
_0804B900:
	adds r0, r5, #0
	bl GetUnitCurrentHp
	cmp r0, #0
	bne _0804B912
	ldr r0, [r5, #0xc]
	movs r1, #5
	orrs r0, r1
	str r0, [r5, #0xc]
_0804B912:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804B918: .4byte gBattleActor
_0804B91C: .4byte gBattleTarget

	THUMB_FUNC_END sub_804B8D0

	THUMB_FUNC_START Set_0203DDDC
Set_0203DDDC: @ 0x0804B920
	ldr r1, _0804B928  @ gUnk_Sio_0203DDDC
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804B928: .4byte gUnk_Sio_0203DDDC

	THUMB_FUNC_END Set_0203DDDC

	THUMB_FUNC_START Clear_0203DDDC
Clear_0203DDDC: @ 0x0804B92C
	ldr r1, _0804B934  @ gUnk_Sio_0203DDDC
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804B934: .4byte gUnk_Sio_0203DDDC

	THUMB_FUNC_END Clear_0203DDDC

	THUMB_FUNC_START sub_804B938
sub_804B938: @ 0x0804B938
	push {lr}
	ldr r2, _0804B960  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendConfig
	pop {r0}
	bx r0
	.align 2, 0
_0804B960: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804B938

	THUMB_FUNC_START sub_804B964
sub_804B964: @ 0x0804B964
	push {lr}
	ldr r0, _0804B994  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r3, _0804B998  @ gUnk_Sio_02001188
	cmp r1, #0xa0
	bls _0804B97E
	ldr r0, _0804B99C  @ gUnk_Sio_02001180
	ldr r0, [r0]
	str r0, [r3]
	movs r1, #0
_0804B97E:
	ldr r2, _0804B9A0  @ 0x04000042
	ldr r0, [r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #8
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_0804B994: .4byte 0x04000006
_0804B998: .4byte gUnk_Sio_02001188
_0804B99C: .4byte gUnk_Sio_02001180
_0804B9A0: .4byte 0x04000042

	THUMB_FUNC_END sub_804B964

	THUMB_FUNC_START sub_804B9A4
sub_804B9A4: @ 0x0804B9A4
	ldr r2, _0804B9B4  @ gUnk_Sio_02001180
	ldr r3, [r2]
	ldr r1, _0804B9B8  @ gUnk_Sio_02001184
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	bx lr
	.align 2, 0
_0804B9B4: .4byte gUnk_Sio_02001180
_0804B9B8: .4byte gUnk_Sio_02001184

	THUMB_FUNC_END sub_804B9A4

	THUMB_FUNC_START sub_804B9BC
sub_804B9BC: @ 0x0804B9BC
	push {lr}
	ldr r2, _0804B9E0  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	bl SetPrimaryHBlankHandler
	pop {r0}
	bx r0
	.align 2, 0
_0804B9E0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804B9BC

	THUMB_FUNC_START sub_804B9E4
sub_804B9E4: @ 0x0804B9E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	subs r1, #0x78
	subs r2, #0x50
	subs r3, #0x78
	subs r7, #0x50
	ldr r4, [sp, #0x38]
	subs r4, #0x78
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	subs r4, #0x50
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x40]
	subs r4, #0x78
	str r4, [sp, #0x40]
	ldr r4, [sp, #0x44]
	subs r4, #0x50
	str r4, [sp, #0x44]
	ldr r4, _0804BB50  @ gSinLookup
	mov r9, r4
	lsls r0, r0, #0x10
	movs r4, #0xff
	lsls r4, r4, #0x10
	ands r4, r0
	asrs r4, r4, #0x10
	mov ip, r4
	lsls r0, r4, #1
	add r0, r9
	movs r4, #0
	ldrsh r5, [r0, r4]
	adds r0, r1, #0
	muls r0, r5, r0
	mov r8, r0
	mov r4, ip
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, r9
	movs r0, #0
	ldrsh r4, [r4, r0]
	adds r0, r2, #0
	muls r0, r4, r0
	add r0, r8
	str r0, [sp, #8]
	muls r1, r4, r1
	adds r0, r2, #0
	muls r0, r5, r0
	subs r1, r1, r0
	str r1, [sp, #0xc]
	adds r1, r3, #0
	muls r1, r5, r1
	adds r0, r7, #0
	muls r0, r4, r0
	adds r1, r1, r0
	mov r9, r1
	adds r1, r3, #0
	muls r1, r4, r1
	adds r0, r7, #0
	muls r0, r5, r0
	subs r7, r1, r0
	ldr r2, [sp, #0x38]
	adds r1, r2, #0
	muls r1, r5, r1
	ldr r2, [sp, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r1, r0
	mov sl, r1
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r2, #0
	muls r0, r5, r0
	subs r1, r1, r0
	mov r8, r1
	ldr r2, [sp, #0x40]
	adds r1, r2, #0
	muls r1, r5, r1
	ldr r2, [sp, #0x44]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r1, r0
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x40]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r2, #0
	muls r0, r5, r0
	subs r4, r1, r0
	ldr r1, [sp, #8]
	asrs r0, r1, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r0, #0x78
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	asrs r0, r2, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r0, #0x50
	str r0, [sp, #0xc]
	mov r1, r9
	asrs r0, r1, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r0, #0x78
	mov r9, r0
	asrs r0, r7, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r7, r0, #0
	adds r7, #0x50
	mov r2, sl
	asrs r0, r2, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r0, #0x78
	mov sl, r0
	mov r1, r8
	asrs r0, r1, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r0, #0x50
	mov r8, r0
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r0, #0x78
	str r0, [sp, #0x10]
	asrs r0, r4, #0xc
	muls r0, r6, r0
	asrs r0, r0, #8
	adds r4, r0, #0
	adds r4, #0x50
	str r7, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r3, r9
	bl sub_80131F0
	mov r0, r8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, r9
	adds r2, r7, #0
	mov r3, sl
	bl sub_80131F0
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r1, sl
	mov r2, r8
	ldr r3, [sp, #0x10]
	bl sub_80131F0
	ldr r1, [sp, #0xc]
	str r1, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	ldr r3, [sp, #8]
	bl sub_80131F0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB50: .4byte gSinLookup

	THUMB_FUNC_END sub_804B9E4

	THUMB_FUNC_START sub_804BB54
sub_804BB54: @ 0x0804BB54
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0804BB88  @ gUnk_Sio_02001180
	ldr r0, _0804BB8C  @ gUnk_Sio_02000F00
	str r0, [r1]
	ldr r5, _0804BB90  @ gUnk_Sio_02001184
	ldr r2, _0804BB94  @ 0xFFFFFD80
	adds r1, r0, r2
	str r1, [r5]
	ldr r1, _0804BB98  @ gUnk_Sio_02001188
	str r0, [r1]
	bl sub_80131D0
	ldr r0, [r5]
	bl sub_80131D0
	adds r4, #0x4c
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0804BB9C  @ sub_804B964
	bl SetPrimaryHBlankHandler
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BB88: .4byte gUnk_Sio_02001180
_0804BB8C: .4byte gUnk_Sio_02000F00
_0804BB90: .4byte gUnk_Sio_02001184
_0804BB94: .4byte 0xFFFFFD80
_0804BB98: .4byte gUnk_Sio_02001188
_0804BB9C: .4byte sub_804B964

	THUMB_FUNC_END sub_804BB54

	THUMB_FUNC_START sub_804BBA0
sub_804BBA0: @ 0x0804BBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x4c
	adds r5, r4, #0
	adds r5, #0x64
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0804BBC8
	movs r0, #0
	bl SetPrimaryHBlankHandler
	adds r0, r4, #0
	bl Proc_Break
	b _0804BC2E
_0804BBC8:
	movs r0, #0
	ldrsh r3, [r7, r0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0xc0
	bl Interpolate
	adds r6, r0, #0
	movs r2, #0x88
	lsls r2, r2, #1
	movs r0, #0
	ldrsh r3, [r7, r0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #1
	movs r1, #0x10
	bl Interpolate
	adds r5, r0, #0
	ldr r4, _0804BC38  @ gUnk_Sio_02001184
	ldr r0, [r4]
	bl sub_80131D0
	ldr r0, [r4]
	movs r2, #0
	str r2, [sp]
	movs r1, #0xf0
	str r1, [sp, #4]
	movs r1, #0xa0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	str r6, [sp, #0x14]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x18]
	movs r1, #0
	movs r3, #0xf0
	bl sub_804B9E4
	bl sub_804B9A4
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
_0804BC2E:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BC38: .4byte gUnk_Sio_02001184

	THUMB_FUNC_END sub_804BBA0

	THUMB_FUNC_START sub_804BC3C
sub_804BC3C: @ 0x0804BC3C
	ldr r2, _0804BC80  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	adds r1, r2, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804BC80: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804BC3C

	THUMB_FUNC_START sub_804BC84
sub_804BC84: @ 0x0804BC84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0804BD24  @ gUnknown_085AA7B4
	bl Proc_StartBlocking
	adds r0, #0x64
	movs r2, #0
	strh r4, [r0]
	ldr r0, _0804BD28  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r1, #1
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	movs r6, #2
	orrs r0, r6
	movs r5, #4
	orrs r0, r5
	movs r4, #8
	orrs r0, r4
	movs r3, #0x10
	orrs r0, r3
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x2f
	strb r2, [r0]
	adds r0, #4
	strb r2, [r0]
	adds r1, #0x2e
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	mov r7, ip
	adds r7, #0x35
	ldrb r1, [r7]
	mov r0, r8
	orrs r1, r0
	orrs r1, r6
	orrs r1, r5
	orrs r1, r4
	orrs r1, r3
	mov r3, ip
	adds r3, #0x36
	ldrb r2, [r3]
	movs r0, #2
	negs r0, r0
	ands r0, r2
	movs r2, #3
	negs r2, r2
	ands r0, r2
	subs r2, #2
	ands r0, r2
	subs r2, #4
	ands r0, r2
	subs r2, #8
	ands r0, r2
	strb r0, [r3]
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BD24: .4byte gUnknown_085AA7B4
_0804BD28: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804BC84

	THUMB_FUNC_START sub_804BD2C
sub_804BD2C: @ 0x0804BD2C
	push {lr}
	adds r1, r0, #0
	movs r0, #0x40
	bl sub_804BC84
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804BD2C

	THUMB_FUNC_START sub_804BD3C
sub_804BD3C: @ 0x0804BD3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x4c
	adds r5, r4, #0
	adds r5, #0x64
	movs r0, #0
	ldrsh r1, [r7, r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _0804BD64
	movs r0, #0
	bl SetPrimaryHBlankHandler
	adds r0, r4, #0
	bl Proc_Break
	b _0804BDCA
_0804BD64:
	movs r0, #0
	ldrsh r3, [r7, r0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #4
	movs r1, #0xc0
	movs r2, #0xa0
	bl Interpolate
	adds r6, r0, #0
	movs r1, #0x88
	lsls r1, r1, #1
	movs r2, #0
	ldrsh r3, [r7, r2]
	movs r2, #0
	ldrsh r0, [r5, r2]
	str r0, [sp]
	movs r0, #5
	movs r2, #0x10
	bl Interpolate
	adds r5, r0, #0
	ldr r4, _0804BDD4  @ gUnk_Sio_02001184
	ldr r0, [r4]
	bl sub_80131D0
	ldr r0, [r4]
	movs r2, #0
	str r2, [sp]
	movs r1, #0xf0
	str r1, [sp, #4]
	movs r1, #0xa0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	str r6, [sp, #0x14]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x18]
	movs r1, #0
	movs r3, #0xf0
	bl sub_804B9E4
	bl sub_804B9A4
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
_0804BDCA:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804BDD4: .4byte gUnk_Sio_02001184

	THUMB_FUNC_END sub_804BD3C

	THUMB_FUNC_START sub_804BDD8
sub_804BDD8: @ 0x0804BDD8
	ldr r2, _0804BDF8  @ gLCDControlBuffer
	movs r0, #0
	strb r0, [r2, #1]
	adds r1, r2, #0
	adds r1, #0x2f
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804BDF8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804BDD8

	THUMB_FUNC_START sub_804BDFC
sub_804BDFC: @ 0x0804BDFC
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0804BE80  @ gUnknown_085AA7EC
	bl Proc_StartBlocking
	adds r0, #0x64
	movs r2, #0
	strh r4, [r0]
	ldr r3, _0804BE84  @ gLCDControlBuffer
	ldrb r1, [r3, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3, #1]
	adds r0, r3, #0
	adds r0, #0x2f
	strb r2, [r0]
	adds r0, #4
	strb r2, [r0]
	adds r1, r3, #0
	adds r1, #0x2e
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	adds r4, r3, #0
	adds r4, #0x35
	ldrb r2, [r4]
	movs r0, #1
	orrs r2, r0
	movs r0, #2
	orrs r2, r0
	movs r0, #4
	orrs r2, r0
	movs r0, #8
	orrs r2, r0
	movs r0, #0x10
	orrs r2, r0
	adds r3, #0x36
	ldrb r1, [r3]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	movs r1, #3
	negs r1, r1
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r3]
	movs r0, #0x20
	orrs r2, r0
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BE80: .4byte gUnknown_085AA7EC
_0804BE84: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804BDFC

	THUMB_FUNC_START sub_804BE88
sub_804BE88: @ 0x0804BE88
	push {lr}
	adds r1, r0, #0
	movs r0, #0x40
	bl sub_804BDFC
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804BE88

	THUMB_FUNC_START sub_804BE98
sub_804BE98: @ 0x0804BE98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804BEB4  @ gUnknown_085AA7B4
	bl Proc_Find
	cmp r0, #0
	bne _0804BEAC
	adds r0, r4, #0
	bl Proc_Break
_0804BEAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BEB4: .4byte gUnknown_085AA7B4

	THUMB_FUNC_END sub_804BE98

	THUMB_FUNC_START sub_804BEB8
sub_804BEB8: @ 0x0804BEB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804BED4  @ gUnknown_085AA7EC
	bl Proc_Find
	cmp r0, #0
	bne _0804BECC
	adds r0, r4, #0
	bl Proc_Break
_0804BECC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BED4: .4byte gUnknown_085AA7EC

	THUMB_FUNC_END sub_804BEB8

	THUMB_FUNC_START sub_804BED8
sub_804BED8: @ 0x0804BED8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804BF24  @ gUnknown_085AA824
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r2, [r4, #0x30]
	ldr r1, [r4, #0x34]
	movs r3, #0xd0
	lsls r3, r3, #7
	adds r0, r3, #0
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r2, #0x22]
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #1]
	adds r0, #0x10
	lsls r0, r0, #5
	ldr r1, _0804BF28  @ gPaletteBuffer
	adds r0, r0, r1
	movs r1, #0x16
	movs r2, #0x14
	adds r3, r4, #0
	bl StartPalFade
	ldr r0, _0804BF2C  @ gUnknown_085AA83C
	adds r1, r4, #0
	bl Proc_Start
	str r4, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804BF24: .4byte gUnknown_085AA824
_0804BF28: .4byte gPaletteBuffer
_0804BF2C: .4byte gUnknown_085AA83C

	THUMB_FUNC_END sub_804BED8

	THUMB_FUNC_START sub_804BF30
sub_804BF30: @ 0x0804BF30
	ldr r0, [r0, #0x2c]
	ldr r3, [r0, #0x30]
	ldr r2, [r0, #0x34]
	ldrb r1, [r2, #1]
	movs r0, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	strh r0, [r3, #0x22]
	bx lr

	THUMB_FUNC_END sub_804BF30

	THUMB_FUNC_START sub_804BF4C
sub_804BF4C: @ 0x0804BF4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x3f
	movs r5, #0
	movs r0, #7
	strb r0, [r1]
	ldr r0, _0804BFA4  @ gProcScr_MUDeathFade
	adds r1, r4, #0
	bl Proc_Start
	str r4, [r0, #0x54]
	adds r0, #0x64
	movs r1, #0x20
	strh r1, [r0]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetBlendConfig
	ldr r0, [r4, #0x30]
	strh r5, [r0, #0x18]
	ldr r0, [r4, #0x30]
	strh r5, [r0, #0x1a]
	adds r0, r4, #0
	movs r1, #0
	bl sub_804BED8
	ldr r1, [r4, #0x30]
	movs r0, #0xd
	strh r0, [r1, #0x1e]
	ldr r0, _0804BFA8  @ gPlaySt
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0804BF9E
	movs r0, #0xd6
	bl m4aSongNumStart
_0804BF9E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BFA4: .4byte gProcScr_MUDeathFade
_0804BFA8: .4byte gPlaySt

	THUMB_FUNC_END sub_804BF4C

	THUMB_FUNC_START sub_804BFAC
sub_804BFAC: @ 0x0804BFAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, [r5, #0x30]
	ldr r1, [r5, #0x34]
	movs r3, #0xd0
	lsls r3, r3, #7
	adds r0, r3, #0
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r2, #0x22]
	ldr r0, [r5, #0x34]
	ldrb r0, [r0, #1]
	adds r0, #0x10
	lsls r0, r0, #5
	ldr r1, _0804BFF0  @ gPaletteBuffer
	adds r0, r0, r1
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _0804BFF4  @ gUnknown_085AA824
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0x16
	movs r2, #8
	adds r3, r5, #0
	bl StartPalFade
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804BFF0: .4byte gPaletteBuffer
_0804BFF4: .4byte gUnknown_085AA824

	THUMB_FUNC_END sub_804BFAC

	THUMB_FUNC_START sub_804BFF8
sub_804BFF8: @ 0x0804BFF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldrb r0, [r0, #1]
	adds r0, #0x10
	lsls r0, r0, #5
	ldr r1, _0804C024  @ gPaletteBuffer
	adds r0, r0, r1
	movs r1, #0x16
	movs r2, #8
	adds r3, r4, #0
	bl StartPalFade
	ldr r0, _0804C028  @ gProcScr_MU_89A2CF8
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x54]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C024: .4byte gPaletteBuffer
_0804C028: .4byte gProcScr_MU_89A2CF8

	THUMB_FUNC_END sub_804BFF8

	THUMB_FUNC_START sub_804C02C
sub_804C02C: @ 0x0804C02C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804C06C  @ gUnknown_089AE224
	ldr r1, _0804C070  @ 0x06004400
	bl Decompress
	ldr r0, _0804C074  @ gUnknown_089AE484
	movs r1, #0x60
	movs r2, #0x20
	bl CopyToPaletteBuffer
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0804C064
	ldr r2, [r4, #0x34]
	lsls r2, r2, #3
	movs r0, #0x7f
	movs r1, #2
	bl MU_StartStepSfx
_0804C064:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C06C: .4byte gUnknown_089AE224
_0804C070: .4byte 0x06004400
_0804C074: .4byte gUnknown_089AE484

	THUMB_FUNC_END sub_804C02C

	THUMB_FUNC_START sub_804C078
sub_804C078: @ 0x0804C078
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _0804C118  @ gBG2TilemapBuffer
	ldr r1, [r7, #0x34]
	subs r1, #1
	ldr r2, [r7, #0x38]
	subs r2, #3
	ldr r3, _0804C11C  @ 0x00003220
	movs r4, #4
	str r4, [sp]
	movs r4, #6
	str r4, [sp, #4]
	ldr r4, _0804C120  @ gUnknown_089AE4A4
	str r4, [sp, #8]
	ldr r6, _0804C124  @ gUnknown_085AA854
	adds r5, r7, #0
	adds r5, #0x40
	ldrb r4, [r5]
	adds r4, r4, r6
	ldrb r4, [r4]
	str r4, [sp, #0xc]
	bl sub_80146A0
	movs r0, #4
	bl BG_EnableSyncByMask
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r0, [r5]
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0804C0C4
	adds r0, r7, #0
	bl Proc_Break
_0804C0C4:
	ldr r2, _0804C128  @ gLCDControlBuffer
	ldrb r3, [r2, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xc]
	ldrb r3, [r2, #0x10]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0x10]
	ldrb r0, [r2, #0x14]
	ands r1, r0
	strb r1, [r2, #0x14]
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	movs r0, #1
	movs r1, #0xc
	movs r2, #0xc
	movs r3, #0
	bl SetBlendConfig
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C118: .4byte gBG2TilemapBuffer
_0804C11C: .4byte 0x00003220
_0804C120: .4byte gUnknown_089AE4A4
_0804C124: .4byte gUnknown_085AA854
_0804C128: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804C078

	THUMB_FUNC_START sub_804C12C
sub_804C12C: @ 0x0804C12C
	push {lr}
	ldr r0, _0804C144  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	bl SetDefaultColorEffects
	pop {r0}
	bx r0
	.align 2, 0
_0804C144: .4byte gBG2TilemapBuffer

	THUMB_FUNC_END sub_804C12C

	THUMB_FUNC_START sub_804C148
sub_804C148: @ 0x0804C148
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804C174  @ ProcScr_SIOWARP
	movs r1, #2
	bl Proc_Start
	ldr r2, [r4, #0x2c]
	movs r1, #0x10
	ldrsb r1, [r2, r1]
	lsls r1, r1, #1
	str r1, [r0, #0x34]
	movs r1, #0x11
	ldrsb r1, [r2, r1]
	lsls r1, r1, #1
	str r1, [r0, #0x38]
	adds r4, #0x41
	ldrb r1, [r4]
	adds r0, #0x41
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C174: .4byte ProcScr_SIOWARP

	THUMB_FUNC_END sub_804C148

	THUMB_FUNC_START sub_804C178
sub_804C178: @ 0x0804C178
	push {lr}
	ldr r0, [r0, #0x30]
	movs r1, #0
	bl sub_804BFAC
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C178

	THUMB_FUNC_START sub_804C188
sub_804C188: @ 0x0804C188
	push {lr}
	ldr r0, [r0, #0x30]
	bl MU_Hide
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C188

	THUMB_FUNC_START sub_804C194
sub_804C194: @ 0x0804C194
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	lsls r1, r1, #4
	ldr r2, [r4, #0x38]
	lsls r2, r2, #4
	bl MU_SetDisplayPosition
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	strb r0, [r1, #0x10]
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x38]
	strb r0, [r1, #0x11]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C194

	THUMB_FUNC_START sub_804C1B8
sub_804C1B8: @ 0x0804C1B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0804C1CC
	ldr r0, [r4, #0x30]
	bl MU_SetFacing
_0804C1CC:
	ldr r0, [r4, #0x30]
	bl MU_Show
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C1B8

	THUMB_FUNC_START sub_804C1D8
sub_804C1D8: @ 0x0804C1D8
	push {lr}
	ldr r0, [r0, #0x30]
	bl sub_804BFF8
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C1D8

	THUMB_FUNC_START sub_804C1E4
sub_804C1E4: @ 0x0804C1E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804C204  @ ProcScr_SIOWARP
	bl Proc_Find
	negs r1, r0
	orrs r1, r0
	cmp r1, #0
	blt _0804C1FC
	adds r0, r4, #0
	bl Proc_Break
_0804C1FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C204: .4byte ProcScr_SIOWARP

	THUMB_FUNC_END sub_804C1E4

	THUMB_FUNC_START sub_804C208
sub_804C208: @ 0x0804C208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r1, #0
	beq _0804C230
	ldr r0, _0804C22C  @ ProcScr_SIOWARPFX
	bl Proc_StartBlocking
	b _0804C238
	.align 2, 0
_0804C22C: .4byte ProcScr_SIOWARPFX
_0804C230:
	ldr r0, _0804C25C  @ ProcScr_SIOWARPFX
	movs r1, #2
	bl Proc_Start
_0804C238:
	adds r1, r0, #0
	str r5, [r1, #0x2c]
	str r6, [r1, #0x30]
	str r7, [r1, #0x34]
	mov r0, r8
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x41
	strb r4, [r0]
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C25C: .4byte ProcScr_SIOWARPFX

	THUMB_FUNC_END sub_804C208

	THUMB_FUNC_START sub_804C260
sub_804C260: @ 0x0804C260
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r1, #0
	beq _0804C288
	ldr r0, _0804C284  @ gUnknown_085AA914
	bl Proc_StartBlocking
	b _0804C290
	.align 2, 0
_0804C284: .4byte gUnknown_085AA914
_0804C288:
	ldr r0, _0804C2B4  @ gUnknown_085AA914
	movs r1, #2
	bl Proc_Start
_0804C290:
	adds r1, r0, #0
	str r5, [r1, #0x2c]
	str r6, [r1, #0x30]
	str r7, [r1, #0x34]
	mov r0, r8
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x3c]
	adds r0, r1, #0
	adds r0, #0x41
	strb r4, [r0]
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804C2B4: .4byte gUnknown_085AA914

	THUMB_FUNC_END sub_804C260

	THUMB_FUNC_START sub_804C2B8
sub_804C2B8: @ 0x0804C2B8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r3, _0804C2D8  @ gUnknown_080D9FD6
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	adds r1, r4, #0
	bl PutSprite
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C2D8: .4byte gUnknown_080D9FD6

	THUMB_FUNC_END sub_804C2B8

	THUMB_FUNC_START sub_804C2DC
sub_804C2DC: @ 0x0804C2DC
	push {lr}
	ldr r2, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	adds r0, r2, #0
	bl sub_804C2B8
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C2DC

	THUMB_FUNC_START sub_804C2EC
sub_804C2EC: @ 0x0804C2EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r4, _0804C318  @ gUnknown_085AA954
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	str r6, [r0, #0x2c]
	mov r1, r8
	str r1, [r0, #0x30]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C318: .4byte gUnknown_085AA954

	THUMB_FUNC_END sub_804C2EC

	THUMB_FUNC_START sub_804C31C
sub_804C31C: @ 0x0804C31C
	push {r4, lr}
	ldr r4, _0804C338  @ gUnknown_085AA954
	adds r0, r4, #0
	bl Proc_Find
	cmp r0, #0
	beq _0804C330
	adds r0, r4, #0
	bl Proc_EndEach
_0804C330:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C338: .4byte gUnknown_085AA954

	THUMB_FUNC_END sub_804C31C

	THUMB_FUNC_START InitSioBG
InitSioBG: @ 0x0804C33C
	push {lr}
	sub sp, #0x18
	ldr r1, _0804C394  @ SioDefaultBgConfig
	mov r0, sp
	movs r2, #0x18
	bl memcpy
	mov r0, sp
	bl SetupBackgrounds
	ldr r3, _0804C398  @ gLCDControlBuffer
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xc]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
	bl ReadGameSaveCoreGfx
	ldr r0, _0804C39C  @ Pal_LinkArenaRankIcons
	movs r1, #0xc0
	lsls r1, r1, #2
	movs r2, #0x40
	bl CopyToPaletteBuffer
	add sp, #0x18
	pop {r0}
	bx r0
	.align 2, 0
_0804C394: .4byte SioDefaultBgConfig
_0804C398: .4byte gLCDControlBuffer
_0804C39C: .4byte Pal_LinkArenaRankIcons

	THUMB_FUNC_END InitSioBG

	THUMB_FUNC_START sub_804C3A0
sub_804C3A0: @ 0x0804C3A0
	bx lr

	THUMB_FUNC_END sub_804C3A0

	THUMB_FUNC_START sub_804C3A4
sub_804C3A4: @ 0x0804C3A4
	bx lr

	THUMB_FUNC_END sub_804C3A4

	THUMB_FUNC_START nullsub_13
nullsub_13: @ 0x0804C3A8
	bx lr

	THUMB_FUNC_END nullsub_13

	THUMB_FUNC_START sub_804C3AC
sub_804C3AC: @ 0x0804C3AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #5
	mov r8, r2
	cmp r3, #0
	ble _0804C3E2
	movs r7, #0x80
	lsls r7, r7, #3
	adds r4, r3, #0
_0804C3C4:
	mov r2, r8
	cmp r2, #0
	bge _0804C3CC
	adds r2, #3
_0804C3CC:
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r6, r6, r7
	adds r5, r5, r7
	subs r4, #1
	cmp r4, #0
	bne _0804C3C4
_0804C3E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C3AC

	THUMB_FUNC_START sub_804C3EC
sub_804C3EC: @ 0x0804C3EC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r5, [r0, #0x58]
	adds r0, r5, #0
	movs r1, #3
	bl __modsi3
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #6
	adds r0, r5, #0
	movs r1, #3
	bl __divsi3
	adds r5, r0, #0
	lsls r5, r5, #0xb
	ldr r0, _0804C464  @ gUnknown_085B0DE8
	mov r2, r8
	ldr r1, [r2, #0x5c]
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	bl Decompress
	ldr r0, _0804C468  @ gUnknown_085AAE0C
	ldr r6, _0804C46C  @ gGenericBuffer
	adds r1, r6, #0
	bl Decompress
	adds r4, r4, r5
	adds r4, r4, r6
	ldr r1, _0804C470  @ 0x06014000
	adds r0, r4, #0
	movs r2, #0xa
	movs r3, #2
	bl sub_804C3AC
	ldr r0, _0804C474  @ gBG2TilemapBuffer
	ldr r1, _0804C478  @ gUnknown_085B0F2C
	mov r4, r8
	ldr r2, [r4, #0x5c]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x14
	movs r4, #0x80
	lsls r4, r4, #5
	adds r3, r4, #0
	orrs r2, r3
	bl CallARM_FillTileRect
	movs r0, #4
	bl BG_EnableSyncByMask
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C464: .4byte gUnknown_085B0DE8
_0804C468: .4byte gUnknown_085AAE0C
_0804C46C: .4byte gGenericBuffer
_0804C470: .4byte 0x06014000
_0804C474: .4byte gBG2TilemapBuffer
_0804C478: .4byte gUnknown_085B0F2C

	THUMB_FUNC_END sub_804C3EC

	THUMB_FUNC_START sub_804C47C
sub_804C47C: @ 0x0804C47C
	push {lr}
	sub sp, #4
	ldr r3, _0804C498  @ gUnknown_085AA96C
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	movs r1, #0x14
	movs r2, #8
	bl PutSpriteExt
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0804C498: .4byte gUnknown_085AA96C

	THUMB_FUNC_END sub_804C47C

	THUMB_FUNC_START NewProc085AA980
NewProc085AA980: @ 0x0804C49C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r4, _0804C4F4  @ ProcScr_085AA980
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r6, #0
	bl Proc_Start
	adds r6, r0, #0
	mov r0, r8
	str r0, [r6, #0x58]
	str r5, [r6, #0x5c]
	cmp r5, #0
	bne _0804C4CA
	movs r0, #0xb8
	lsls r0, r0, #7
	str r0, [r6, #0x5c]
_0804C4CA:
	ldr r4, [r6, #0x58]
	adds r0, r4, #0
	movs r1, #3
	bl __modsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #6
	str r1, [r6, #0x2c]
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	lsls r0, r0, #0xb
	str r0, [r6, #0x30]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4F4: .4byte ProcScr_085AA980

	THUMB_FUNC_END NewProc085AA980

	THUMB_FUNC_START sub_804C4F8
sub_804C4F8: @ 0x0804C4F8
	push {lr}
	ldr r0, _0804C504  @ ProcScr_085AA980
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_0804C504: .4byte ProcScr_085AA980

	THUMB_FUNC_END sub_804C4F8

	THUMB_FUNC_START sub_804C508
sub_804C508: @ 0x0804C508
	push {r4, lr}
	sub sp, #4
	movs r0, #1
	movs r1, #0x10
	movs r2, #4
	movs r3, #0
	bl SetBlendConfig
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	ldr r2, _0804C554  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C554: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804C508

	THUMB_FUNC_START sub_804C558
sub_804C558: @ 0x0804C558
	push {r4, lr}
	sub sp, #4
	movs r0, #1
	movs r1, #0x10
	movs r2, #4
	movs r3, #0
	bl SetBlendConfig
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C558

	THUMB_FUNC_START sub_804C590
sub_804C590: @ 0x0804C590
	push {lr}
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendConfig
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C590

	THUMB_FUNC_START sub_804C5A4
sub_804C5A4: @ 0x0804C5A4
	push {r4, lr}
	sub sp, #0x20
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0804C5E8  @ gUnknown_080DA0DA
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r0, _0804C5EC  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804C5DE
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	adds r1, #0x10
	ldr r3, _0804C5F0  @ gPaletteBuffer
	lsls r0, r1, #0xa
	lsls r2, r1, #5
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r1, _0804C5F4  @ 0x00000262
	adds r3, r3, r1
	strh r0, [r3]
	bl EnablePaletteSync
_0804C5DE:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C5E8: .4byte gUnknown_080DA0DA
_0804C5EC: .4byte gUnk_Sio_0203DDDC
_0804C5F0: .4byte gPaletteBuffer
_0804C5F4: .4byte 0x00000262

	THUMB_FUNC_END sub_804C5A4

	THUMB_FUNC_START sub_804C5F8
sub_804C5F8: @ 0x0804C5F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _0804C73C  @ 0x000082C8
	mov r8, r0
	movs r2, #0x2a
	ldrsh r1, [r7, r2]
	movs r3, #0x2c
	ldrsh r2, [r7, r3]
	ldr r3, _0804C740  @ gUnknown_085AA9A0
	adds r0, r7, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldr r4, _0804C744  @ gUnknown_080DA09C
	adds r5, r7, #0
	adds r5, #0x2e
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #4
	bl PutSprite
	ldrb r0, [r5]
	cmp r0, #2
	bne _0804C642
	adds r0, r7, #0
	adds r0, #0x30
	ldrb r0, [r0]
	bl sub_804C5A4
_0804C642:
	adds r2, r7, #0
	adds r2, #0x30
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r7, #0x2e]
	movs r0, #0x81
	lsls r0, r0, #1
	cmp r1, r0
	bne _0804C72E
	ldrh r1, [r7, #0x3a]
	ldrh r2, [r7, #0x36]
	adds r0, r1, r2
	strh r0, [r7, #0x36]
	ldrh r2, [r7, #0x3c]
	ldrh r3, [r7, #0x38]
	adds r0, r2, r3
	strh r0, [r7, #0x38]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0804C676
	subs r0, r1, #1
	strh r0, [r7, #0x3a]
_0804C676:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0804C682
	subs r0, r2, #1
	strh r0, [r7, #0x3c]
_0804C682:
	bl GetGameClock
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0804C6AA
	ldrh r1, [r7, #0x32]
	movs r2, #0x32
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _0804C69C
	adds r0, r1, #1
	strh r0, [r7, #0x32]
_0804C69C:
	ldrh r1, [r7, #0x34]
	movs r3, #0x34
	ldrsh r0, [r7, r3]
	cmp r0, #0x34
	ble _0804C6AA
	subs r0, r1, #1
	strh r0, [r7, #0x34]
_0804C6AA:
	movs r0, #0x2a
	ldrsh r5, [r7, r0]
	movs r1, #0x32
	ldrsh r0, [r7, r1]
	adds r0, #0x4b
	adds r5, r5, r0
	movs r2, #0x2c
	ldrsh r4, [r7, r2]
	adds r4, #8
	ldr r6, _0804C748  @ gObject_8x16
	ldrh r0, [r7, #0x36]
	lsrs r0, r0, #5
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, r8
	str r0, [sp]
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSprite
	movs r3, #0x2a
	ldrsh r5, [r7, r3]
	movs r1, #0x34
	ldrsh r0, [r7, r1]
	adds r0, #0x49
	adds r5, r5, r0
	movs r2, #0x2c
	ldrsh r4, [r7, r2]
	adds r4, #8
	ldr r6, _0804C74C  @ gObject_8x16_HFlipped
	ldrh r0, [r7, #0x38]
	lsrs r0, r0, #5
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, r8
	str r0, [sp]
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl PutSprite
	movs r3, #0x2a
	ldrsh r1, [r7, r3]
	adds r1, #0x50
	movs r0, #0x2c
	ldrsh r2, [r7, r0]
	adds r2, #9
	ldr r3, _0804C750  @ gUnknown_085AA9B4
	ldr r0, _0804C754  @ gLinkArenaSt
	ldrb r0, [r0, #5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	movs r0, #0
	str r0, [sp]
	bl PutSpriteExt
_0804C72E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804C73C: .4byte 0x000082C8
_0804C740: .4byte gUnknown_085AA9A0
_0804C744: .4byte gUnknown_080DA09C
_0804C748: .4byte gObject_8x16
_0804C74C: .4byte gObject_8x16_HFlipped
_0804C750: .4byte gUnknown_085AA9B4
_0804C754: .4byte gLinkArenaSt

	THUMB_FUNC_END sub_804C5F8

	THUMB_FUNC_START sub_804C758
sub_804C758: @ 0x0804C758
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r6, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0804C7C4  @ gUnknown_085AA9C0
	mov r1, r8
	str r2, [sp]
	bl Proc_Start
	mov r8, r0
	movs r3, #0
	movs r1, #0
	strh r4, [r0, #0x2a]
	strh r5, [r0, #0x2c]
	adds r0, #0x2e
	strb r6, [r0]
	adds r0, #1
	ldr r2, [sp]
	strb r2, [r0]
	mov r0, r8
	strh r1, [r0, #0x32]
	movs r0, #0x34
	mov r2, r8
	strh r0, [r2, #0x34]
	strh r1, [r2, #0x38]
	strh r1, [r2, #0x36]
	movs r0, #4
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x3a]
	mov r0, r8
	adds r0, #0x3e
	strb r3, [r0]
	subs r0, #0xe
	strb r3, [r0]
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804C7C4: .4byte gUnknown_085AA9C0

	THUMB_FUNC_END sub_804C758

	THUMB_FUNC_START sub_804C7C8
sub_804C7C8: @ 0x0804C7C8
	push {r4, lr}
	ldr r4, [sp, #8]
	strh r1, [r0, #0x32]
	strh r2, [r0, #0x34]
	strh r3, [r0, #0x3a]
	strh r4, [r0, #0x3c]
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804C7C8

	THUMB_FUNC_START sub_804C7DC
sub_804C7DC: @ 0x0804C7DC
	strh r1, [r0, #0x2a]
	strh r2, [r0, #0x2c]
	bx lr

	THUMB_FUNC_END sub_804C7DC

	THUMB_FUNC_START sub_804C7E4
sub_804C7E4: @ 0x0804C7E4
	push {r4, lr}
	sub sp, #0x20
	ldr r4, _0804C82C  @ gUnknown_085ADDE8
	ldr r1, _0804C830  @ gUnknown_080DA102
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r0, _0804C834  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804C824
	bl GetGameClock
	movs r1, #0x3f
	ands r1, r0
	asrs r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	ldr r1, _0804C838  @ gPaletteBuffer
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r2, #0xc7
	lsls r2, r2, #2
	adds r1, r1, r2
	strh r0, [r1]
	bl EnablePaletteSync
_0804C824:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C82C: .4byte gUnknown_085ADDE8
_0804C830: .4byte gUnknown_080DA102
_0804C834: .4byte gUnk_Sio_0203DDDC
_0804C838: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_804C7E4

	THUMB_FUNC_START sub_804C83C
sub_804C83C: @ 0x0804C83C
	push {r4, lr}
	sub sp, #0x20
	ldr r4, _0804C884  @ gUnknown_085ADE48
	ldr r1, _0804C888  @ gUnknown_080DA0DA
	mov r0, sp
	movs r2, #0x20
	bl memcpy
	ldr r0, _0804C88C  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804C87C
	bl GetGameClock
	movs r1, #0x3f
	ands r1, r0
	asrs r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
	ldrb r0, [r0]
	ldr r1, _0804C890  @ gPaletteBuffer
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r1, r2
	strh r0, [r1]
	bl EnablePaletteSync
_0804C87C:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C884: .4byte gUnknown_085ADE48
_0804C888: .4byte gUnknown_080DA0DA
_0804C88C: .4byte gUnk_Sio_0203DDDC
_0804C890: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_804C83C

	THUMB_FUNC_START sub_804C894
sub_804C894: @ 0x0804C894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _0804C9E4  @ gLinkArenaSt
	ldrb r0, [r0]
	cmp r0, #1
	beq _0804C8AC
	b _0804CA08
_0804C8AC:
	adds r0, r7, #0
	adds r0, #0x44
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #0xc0
	lsls r2, r2, #4
	mov r8, r2
	str r0, [sp, #4]
	cmp r1, #0
	beq _0804C8C6
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
_0804C8C6:
	ldr r3, _0804C9E8  @ gUnknown_085AA9D8
	movs r0, #0
	str r0, [sp]
	movs r1, #0x58
	movs r2, #0x20
	bl PutSprite
	movs r6, #0
	ldr r0, [r7, #0x2c]
	cmp r6, r0
	bge _0804C92A
	movs r5, #0x20
_0804C8DE:
	lsls r1, r6, #1
	adds r0, r7, #0
	adds r0, #0x30
	adds r4, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r1, #6
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #0xc
	add r0, r8
	str r0, [sp]
	movs r0, #4
	adds r2, r5, #0
	ldr r3, _0804C9EC  @ gUnknown_085AAA50
	bl PutSprite
	adds r0, r7, #0
	adds r0, #0x3a
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804C920
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r1, #6
	mov r2, r8
	str r2, [sp]
	movs r0, #4
	adds r2, r5, #0
	ldr r3, _0804C9F0  @ gUnknown_085AAA5E
	bl PutSprite
_0804C920:
	adds r5, #0x18
	adds r6, #1
	ldr r0, [r7, #0x2c]
	cmp r6, r0
	blt _0804C8DE
_0804C92A:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _0804C9DE
	ldr r0, _0804C9F4  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804C95C
	bl GetGameClock
	ldr r2, _0804C9F8  @ gPaletteBuffer
	movs r1, #0x3f
	ands r1, r0
	lsrs r1, r1, #2
	lsls r1, r1, #1
	ldr r0, _0804C9FC  @ gUnknown_08A1BD40
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r2, r2, r1
	strh r0, [r2]
	bl EnablePaletteSync
_0804C95C:
	ldr r0, [r7, #0x40]
	cmp r0, #0xff
	bgt _0804C966
	adds r0, #0x10
	str r0, [r7, #0x40]
_0804C966:
	ldr r4, _0804CA00  @ gSinLookup
	movs r2, #0x80
	adds r2, r2, r4
	mov r9, r2
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	negs r0, r0
	lsls r0, r0, #4
	ldr r1, [r7, #0x40]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	ldr r1, [r7, #0x40]
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl SetObjAffine
	ldr r3, _0804CA04  @ gUnknown_080DA0FA
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #4
	movs r1, #0x78
	movs r2, #0
	bl PutSprite
_0804C9DE:
	bl sub_804C83C
	b _0804CA96
	.align 2, 0
_0804C9E4: .4byte gLinkArenaSt
_0804C9E8: .4byte gUnknown_085AA9D8
_0804C9EC: .4byte gUnknown_085AAA50
_0804C9F0: .4byte gUnknown_085AAA5E
_0804C9F4: .4byte gUnk_Sio_0203DDDC
_0804C9F8: .4byte gPaletteBuffer
_0804C9FC: .4byte gUnknown_08A1BD40
_0804CA00: .4byte gSinLookup
_0804CA04: .4byte gUnknown_080DA0FA
_0804CA08:
	ldr r3, _0804CA70  @ gUnknown_085AA9D8
	movs r0, #0
	str r0, [sp]
	movs r0, #0xb
	movs r1, #0x58
	movs r2, #0x20
	bl PutSprite
	movs r6, #0
	ldr r0, [r7, #0x2c]
	adds r1, r7, #0
	adds r1, #0x44
	str r1, [sp, #4]
	cmp r6, r0
	bge _0804CA92
	ldr r2, _0804CA74  @ gUnknown_085AAA48
	mov sl, r2
	movs r0, #8
	negs r0, r0
	mov r9, r0
	movs r1, #0x30
	mov r8, r1
_0804CA34:
	lsls r1, r6, #1
	adds r0, r7, #0
	adds r0, #0x30
	adds r5, r0, r1
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r4, r7, #0
	adds r4, #0x3a
	adds r4, r4, r6
	ldrb r0, [r4]
	lsls r0, r0, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	mov r2, r8
	bl PutSprite
	ldrb r0, [r4]
	cmp r0, #0
	beq _0804CA78
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bge _0804CA86
	adds r0, r1, #1
	b _0804CA84
	.align 2, 0
_0804CA70: .4byte gUnknown_085AA9D8
_0804CA74: .4byte gUnknown_085AAA48
_0804CA78:
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, r9
	ble _0804CA86
	subs r0, r1, #1
_0804CA84:
	strh r0, [r5]
_0804CA86:
	movs r0, #0x10
	add r8, r0
	adds r6, #1
	ldr r0, [r7, #0x2c]
	cmp r6, r0
	blt _0804CA34
_0804CA92:
	bl sub_804C7E4
_0804CA96:
	ldr r0, _0804CAE4  @ gLinkArenaSt
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	cmp r0, #1
	bne _0804CAAA
	movs r2, #0x80
	lsls r2, r2, #3
	mov r8, r2
_0804CAAA:
	ldr r1, [sp, #4]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0804CABC
	movs r0, #0xc0
	movs r1, #0x10
	bl sub_804C2B8
_0804CABC:
	ldr r0, [r7, #0x48]
	cmp r0, #0
	blt _0804CAD4
	adds r2, r0, #0
	adds r2, #8
	ldr r3, _0804CAE8  @ gUnknown_085AAA0E
	mov r0, r8
	str r0, [sp]
	movs r0, #4
	movs r1, #0x50
	bl PutSprite
_0804CAD4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CAE4: .4byte gLinkArenaSt
_0804CAE8: .4byte gUnknown_085AAA0E

	THUMB_FUNC_END sub_804C894

	THUMB_FUNC_START sub_804CAEC
sub_804CAEC: @ 0x0804CAEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r4, _0804CB8C  @ gUnknown_085AAA78
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r6, #0
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x44
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r4, #0x40]
	subs r0, #2
	str r0, [r4, #0x48]
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x3a
	ldr r0, _0804CB90  @ 0x0000FFF8
	mov ip, r0
	adds r2, r4, #0
	adds r2, #0x30
_0804CB2C:
	adds r0, r5, r3
	mov r7, r8
	adds r1, r7, r3
	ldrb r1, [r1]
	strb r1, [r0]
	mov r0, ip
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #4
	ble _0804CB2C
	ldr r2, [r6, #0x38]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	adds r0, #0x28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0xe1
	movs r1, #0x28
	movs r3, #6
	bl sub_804D1E0
	adds r0, r6, #0
	adds r0, #0x48
	ldrb r0, [r0]
	lsls r0, r0, #4
	movs r1, #0x28
	subs r1, r1, r0
	ldr r0, [r6, #0x38]
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x98
	movs r2, #0x88
	movs r3, #0x27
	bl sub_804CC14
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804CB8C: .4byte gUnknown_085AAA78
_0804CB90: .4byte 0x0000FFF8

	THUMB_FUNC_END sub_804CAEC

	THUMB_FUNC_START sub_804CB94
sub_804CB94: @ 0x0804CB94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	mov r8, r0
	b _0804CBFC
_0804CBA8:
	mov r1, r8
	lsls r0, r1, #4
	ldr r1, [r4, #0x30]
	adds r5, r1, r0
	ldr r0, [r4, #0x38]
	movs r1, #1
	add r1, r8
	mov sl, r1
	cmp r5, r0
	bge _0804CBFA
	ldr r0, [r4, #0x34]
	cmp r5, r0
	ble _0804CBFA
	movs r6, #0
	mov r0, r8
	lsls r0, r0, #2
	mov r9, r0
	movs r7, #0
_0804CBCC:
	mov r0, r9
	add r0, r8
	adds r0, r0, r6
	adds r0, #1
	bl GetUnit
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _0804CBF2
	ldr r1, [r4, #0x2c]
	adds r1, r1, r7
	str r2, [sp]
	movs r0, #4
	adds r2, r5, #0
	movs r3, #0x80
	lsls r3, r3, #3
	bl sub_8027E4C
_0804CBF2:
	adds r7, #0xe
	adds r6, #1
	cmp r6, #4
	ble _0804CBCC
_0804CBFA:
	mov r8, sl
_0804CBFC:
	ldr r0, [r4, #0x3c]
	cmp r8, r0
	blt _0804CBA8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804CB94

	THUMB_FUNC_START sub_804CC14
sub_804CC14: @ 0x0804CC14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	mov sl, r1
	adds r7, r2, #0
	mov r8, r3
	ldr r6, [sp, #0x20]
	ldr r5, [sp, #0x24]
	ldr r4, _0804CC58  @ gUnknown_085AAA90
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	str r6, [r0, #0x3c]
	mov r1, r9
	str r1, [r0, #0x2c]
	mov r1, sl
	str r1, [r0, #0x30]
	mov r1, r8
	str r1, [r0, #0x34]
	str r7, [r0, #0x38]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC58: .4byte gUnknown_085AAA90

	THUMB_FUNC_END sub_804CC14

	THUMB_FUNC_START sub_804CC5C
sub_804CC5C: @ 0x0804CC5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0804CC74  @ gUnknown_085AAA90
	bl Proc_Find
	ldr r1, [r0, #0x30]
	adds r1, r1, r4
	str r1, [r0, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804CC74: .4byte gUnknown_085AAA90

	THUMB_FUNC_END sub_804CC5C

	THUMB_FUNC_START sub_804CC78
sub_804CC78: @ 0x0804CC78
	push {r4, r5, r6, lr}
	ldr r5, _0804CCBC  @ gUnknown_085ADE28
	ldr r0, _0804CCC0  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804CCB6
	bl GetGameClock
	adds r2, r0, #0
	movs r0, #0x1f
	ands r2, r0
	asrs r2, r2, #1
	movs r1, #0
	ldr r0, _0804CCC4  @ gPaletteBuffer
	movs r4, #0xf
	ldr r6, _0804CCC8  @ 0x00000336
	adds r3, r0, r6
_0804CC9E:
	adds r0, r2, r1
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r1, #1
	cmp r1, #4
	ble _0804CC9E
	bl EnablePaletteSync
_0804CCB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CCBC: .4byte gUnknown_085ADE28
_0804CCC0: .4byte gUnk_Sio_0203DDDC
_0804CCC4: .4byte gPaletteBuffer
_0804CCC8: .4byte 0x00000336

	THUMB_FUNC_END sub_804CC78

	THUMB_FUNC_START sub_804CCCC
sub_804CCCC: @ 0x0804CCCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, [r7, #0x2c]
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r2, [r7, #0x38]
	ldr r0, [r7, #0x30]
	adds r2, r2, r0
	asrs r2, r2, #1
	str r1, [r7, #0x2c]
	str r2, [r7, #0x30]
	ldr r3, _0804CD54  @ gUnknown_085AAAA8
	ldr r0, [r7, #0x3c]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r3, [r0]
	movs r4, #0
	str r4, [sp]
	movs r0, #2
	bl PutSprite
	ldr r1, [r7, #0x40]
	adds r1, #0x60
	ldr r3, _0804CD58  @ gUnknown_080DA132
	str r4, [sp]
	movs r0, #2
	movs r2, #0x30
	bl PutSprite
	ldr r3, _0804CD5C  @ gUnknown_085AA9D8
	str r4, [sp]
	movs r0, #2
	movs r1, #0x60
	movs r2, #0x20
	bl PutSprite
	ldr r3, _0804CD60  @ gUnknown_085AAA50
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #4
	movs r1, #0x50
	movs r2, #0x20
	bl PutSprite
	movs r4, #3
	ldr r0, _0804CD64  @ gUnknown_085AAAB0
	adds r6, r0, #0
	adds r6, #0xc
	movs r5, #0x78
_0804CD34:
	ldr r0, [r7, #0x44]
	cmp r0, r4
	bne _0804CD68
	cmp r4, #2
	bgt _0804CD68
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [sp]
	movs r0, #4
	movs r1, #0xc4
	adds r2, r5, #0
	bl PutSprite
	b _0804CD7A
	.align 2, 0
_0804CD54: .4byte gUnknown_085AAAA8
_0804CD58: .4byte gUnknown_080DA132
_0804CD5C: .4byte gUnknown_085AA9D8
_0804CD60: .4byte gUnknown_085AAA50
_0804CD64: .4byte gUnknown_085AAAB0
_0804CD68:
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #4
	movs r1, #0xc4
	adds r2, r5, #0
	bl PutSprite
_0804CD7A:
	adds r6, #4
	adds r5, #0x10
	adds r4, #1
	cmp r4, #4
	ble _0804CD34
	bl sub_804CC78
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804CCCC

	THUMB_FUNC_START NewProc_085AAAC4
NewProc_085AAAC4: @ 0x0804CD90
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	ldr r4, _0804CDCC  @ Proc_085AAAC4
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r6, #0
	bl Proc_Start
	str r5, [r0, #0x34]
	str r5, [r0, #0x2c]
	mov r1, r8
	str r1, [r0, #0x38]
	str r1, [r0, #0x30]
	movs r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	movs r1, #1
	str r1, [r0, #0x44]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804CDCC: .4byte Proc_085AAAC4

	THUMB_FUNC_END NewProc_085AAAC4

	THUMB_FUNC_START sub_804CDD0
sub_804CDD0: @ 0x0804CDD0
	push {r4, r5, lr}
	ldr r4, [sp, #0xc]
	ldr r5, [sp, #0x10]
	str r1, [r0, #0x34]
	str r2, [r0, #0x38]
	str r4, [r0, #0x3c]
	str r3, [r0, #0x40]
	str r5, [r0, #0x44]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804CDD0

	THUMB_FUNC_START sub_804CDE8
sub_804CDE8: @ 0x0804CDE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	movs r2, #0x2a
	ldrsh r0, [r5, r2]
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r7, r0, #2
	ldrh r0, [r5, #0x2c]
	strh r0, [r5, #0x2a]
	ldr r0, _0804CE58  @ gUnknown_085AAADC
	mov r8, r0
	movs r6, #0x30
	movs r4, #2
_0804CE0E:
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	ldm r1!, {r3}
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	movs r1, #0x20
	adds r2, r6, #0
	bl PutSprite
	adds r6, #0x18
	subs r4, #1
	cmp r4, #0
	bge _0804CE0E
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #0x20
	bl DisplayFrozenUiHand
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r2, #0x30
	ldrsh r1, [r5, r2]
	bl DisplayUiHand
	movs r0, #0xc0
	movs r1, #0x10
	bl sub_804C2B8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CE58: .4byte gUnknown_085AAADC

	THUMB_FUNC_END sub_804CDE8

	THUMB_FUNC_START sub_804CE5C
sub_804CE5C: @ 0x0804CE5C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0804CE88  @ gUnknown_085AAADC
	movs r5, #0x30
	movs r4, #2
_0804CE66:
	ldm r6!, {r3}
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	movs r1, #0x20
	adds r2, r5, #0
	bl PutSprite
	adds r5, #0x18
	subs r4, #1
	cmp r4, #0
	bge _0804CE66
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CE88: .4byte gUnknown_085AAADC

	THUMB_FUNC_END sub_804CE5C

	THUMB_FUNC_START sub_804CE8C
sub_804CE8C: @ 0x0804CE8C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0804CEAC  @ gUnknown_085AAAE8
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	movs r1, #0
	strh r1, [r0, #0x2a]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804CEAC: .4byte gUnknown_085AAAE8

	THUMB_FUNC_END sub_804CE8C

	THUMB_FUNC_START sub_804CEB0
sub_804CEB0: @ 0x0804CEB0
	push {lr}
	ldr r0, _0804CEC0  @ gUnknown_085AAB00
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0804CEC0: .4byte gUnknown_085AAB00

	THUMB_FUNC_END sub_804CEB0

	THUMB_FUNC_START sub_804CEC4
sub_804CEC4: @ 0x0804CEC4
	strh r1, [r0, #0x2c]
	strh r2, [r0, #0x2e]
	strh r3, [r0, #0x30]
	bx lr

	THUMB_FUNC_END sub_804CEC4

	THUMB_FUNC_START sub_804CECC
sub_804CECC: @ 0x0804CECC
	push {lr}
	adds r1, r0, #0
	ldr r2, _0804CEF8  @ gUnknown_085ADE28
	ldr r0, _0804CEFC  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804CEF2
	ldr r0, _0804CF00  @ gPaletteBuffer
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r0, r2
	strh r1, [r0]
	bl EnablePaletteSync
_0804CEF2:
	pop {r0}
	bx r0
	.align 2, 0
_0804CEF8: .4byte gUnknown_085ADE28
_0804CEFC: .4byte gUnk_Sio_0203DDDC
_0804CF00: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_804CECC

	THUMB_FUNC_START sub_804CF04
sub_804CF04: @ 0x0804CF04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x4c
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0
	ldrsh r5, [r0, r1]
	lsls r4, r5, #1
	adds r0, r5, #0
	bl sub_804CECC
	ldr r0, _0804CFA4  @ gUnknown_080DA1CA
	adds r4, #1
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r1, #0
	ldrsh r6, [r4, r1]
	ldr r1, [r7, #0x2c]
	subs r1, r1, r6
	lsls r5, r5, #2
	adds r5, r5, r0
	movs r0, #0
	ldrsh r5, [r5, r0]
	ldr r2, [r7, #0x30]
	subs r2, r2, r5
	ldr r3, _0804CFA8  @ gUnknown_080DA17A
	movs r4, #0
	str r4, [sp]
	movs r0, #2
	bl PutSprite
	ldr r1, [r7, #0x2c]
	adds r1, r1, r6
	adds r1, #0x10
	ldr r2, [r7, #0x30]
	subs r2, r2, r5
	ldr r3, _0804CFAC  @ gUnknown_080DA18E
	str r4, [sp]
	movs r0, #2
	bl PutSprite
	ldr r1, [r7, #0x2c]
	subs r1, r1, r6
	ldr r2, [r7, #0x30]
	adds r2, r2, r5
	ldr r3, _0804CFB0  @ gUnknown_080DA1A2
	str r4, [sp]
	movs r0, #2
	bl PutSprite
	ldr r1, [r7, #0x2c]
	adds r1, r1, r6
	adds r1, #0x10
	ldr r2, [r7, #0x30]
	adds r2, r2, r5
	ldr r3, _0804CFB4  @ gUnknown_080DA1B6
	str r4, [sp]
	movs r0, #2
	bl PutSprite
	mov r1, r8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bne _0804CF98
	adds r0, r7, #0
	bl Proc_Break
_0804CF98:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804CFA4: .4byte gUnknown_080DA1CA
_0804CFA8: .4byte gUnknown_080DA17A
_0804CFAC: .4byte gUnknown_080DA18E
_0804CFB0: .4byte gUnknown_080DA1A2
_0804CFB4: .4byte gUnknown_080DA1B6

	THUMB_FUNC_END sub_804CF04

	THUMB_FUNC_START sub_804CFB8
sub_804CFB8: @ 0x0804CFB8
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _0804CFDC  @ gUnknown_085AAB18
	adds r1, r3, #0
	bl Proc_Start
	adds r1, r0, #0
	str r4, [r1, #0x2c]
	str r5, [r1, #0x30]
	adds r1, #0x4c
	movs r2, #0
	strh r2, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0804CFDC: .4byte gUnknown_085AAB18

	THUMB_FUNC_END sub_804CFB8

	THUMB_FUNC_START sub_804CFE0
sub_804CFE0: @ 0x0804CFE0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x45
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #7
	ldrb r0, [r0]
	ldr r4, [r6, #0x34]
	muls r0, r4, r0
	lsls r0, r0, #3
	adds r5, r6, #0
	adds r5, #0x3c
	ldrb r1, [r5]
	bl __divsi3
	str r0, [r6, #0x38]
	lsls r4, r4, #0xb
	ldrb r1, [r5]
	lsls r1, r1, #4
	adds r0, r4, #0
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804CFE0

	THUMB_FUNC_START sub_804D01C
sub_804D01C: @ 0x0804D01C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r7, r0, #0
	ldr r0, [r7, #0x2c]
	mov r8, r0
	ldr r1, [r7, #0x30]
	str r1, [sp, #0xc]
	adds r1, #8
	mov sl, r1
	ldr r0, [r7, #0x38]
	asrs r2, r0, #3
	str r2, [sp, #0x10]
	movs r1, #7
	ands r0, r1
	movs r1, #8
	subs r0, r1, r0
	str r0, [sp, #0x14]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	adds r0, r7, #0
	adds r0, #0x42
	ldrh r0, [r0]
	muls r0, r1, r0
	asrs r0, r0, #8
	str r0, [sp, #0x18]
	movs r0, #0x3c
	adds r0, r0, r7
	mov ip, r0
	movs r1, #0x3d
	adds r1, r1, r7
	mov r9, r1
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, r2
	bhi _0804D06C
	b _0804D1C4
_0804D06C:
	adds r5, r7, #0
	adds r5, #0x44
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	adds r4, r7, #0
	adds r4, #0x45
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x40
	movs r3, #0x3e
	ldrsh r2, [r7, r3]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r5, #0
	str r0, [sp, #0x2c]
	cmp r2, r1
	bge _0804D09A
	ldrb r0, [r3]
	adds r0, #2
	strb r0, [r3]
_0804D09A:
	movs r0, #0x3e
	ldrsh r1, [r7, r0]
	ldr r2, [sp, #0x2c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r1, r0
	ble _0804D0AE
	ldrb r0, [r4]
	adds r0, #2
	strb r0, [r4]
_0804D0AE:
	movs r6, #0
	mov r0, ip
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x18]
	add r1, sl
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	lsls r2, r2, #3
	str r2, [sp, #0x24]
	ldr r3, [sp, #0xc]
	str r3, [sp, #0x20]
_0804D0C4:
	ldrb r0, [r5]
	cmp r0, #0x30
	bls _0804D0CE
	movs r0, #0
	strb r0, [r5]
_0804D0CE:
	lsls r4, r6, #2
	add r4, sp
	adds r4, #4
	ldrb r0, [r5]
	lsrs r0, r0, #3
	movs r1, #6
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r4]
	adds r5, #1
	adds r6, #1
	cmp r6, #1
	ble _0804D0C4
	movs r1, #0x3e
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _0804D106
	mov r2, sl
	subs r2, #9
	ldr r3, _0804D1D4  @ gUnknown_085AAB38
	ldr r0, [sp, #4]
	str r0, [sp]
	movs r0, #3
	mov r1, r8
	bl PutSprite
_0804D106:
	movs r2, #0x3e
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bge _0804D110
	adds r0, #0xf
_0804D110:
	asrs r0, r0, #4
	mov r3, r9
	ldrb r3, [r3]
	adds r0, r0, r3
	ldr r1, [sp, #0x28]
	ldrb r1, [r1]
	cmp r0, r1
	bge _0804D136
	ldr r2, [r7, #0x34]
	lsls r2, r2, #3
	add r2, sl
	adds r2, #1
	ldr r3, _0804D1D8  @ gUnknown_085AAB30
	ldr r0, [sp, #8]
	str r0, [sp]
	movs r0, #3
	mov r1, r8
	bl PutSprite
_0804D136:
	movs r6, #0
	ldr r0, [r7, #0x34]
	cmp r6, r0
	bge _0804D15A
	mov r4, sl
	movs r5, #1
_0804D142:
	str r5, [sp]
	movs r0, #2
	mov r1, r8
	adds r2, r4, #0
	ldr r3, _0804D1DC  @ gUnknown_085AAB40
	bl PutSprite
	adds r4, #8
	adds r6, #1
	ldr r0, [r7, #0x34]
	cmp r6, r0
	blt _0804D142
_0804D15A:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ble _0804D17C
	ldr r4, [sp, #0x1c]
	movs r5, #0
	adds r6, r2, #0
_0804D166:
	str r5, [sp]
	movs r0, #2
	mov r1, r8
	adds r2, r4, #0
	ldr r3, _0804D1DC  @ gUnknown_085AAB40
	bl PutSprite
	adds r4, #8
	subs r6, #1
	cmp r6, #0
	bne _0804D166
_0804D17C:
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	adds r2, r3, r0
	ldr r1, [sp, #0x14]
	subs r2, r2, r1
	ldr r4, _0804D1DC  @ gUnknown_085AAB40
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	mov r1, r8
	adds r3, r4, #0
	bl PutSprite
	movs r5, #2
	str r5, [sp]
	movs r0, #2
	mov r1, r8
	ldr r2, [sp, #0x20]
	adds r3, r4, #0
	bl PutSprite
	movs r1, #0x80
	lsls r1, r1, #6
	add r1, r8
	ldr r2, [r7, #0x34]
	lsls r2, r2, #3
	add r2, sl
	subs r2, #7
	str r5, [sp]
	movs r0, #2
	adds r3, r4, #0
	bl PutSprite
	ldrh r0, [r7, #0x3e]
	ldr r2, [sp, #0x2c]
	strh r0, [r2]
_0804D1C4:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D1D4: .4byte gUnknown_085AAB38
_0804D1D8: .4byte gUnknown_085AAB30
_0804D1DC: .4byte gUnknown_085AAB40

	THUMB_FUNC_END sub_804D01C

	THUMB_FUNC_START sub_804D1E0
sub_804D1E0: @ 0x0804D1E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	mov sl, r1
	mov r8, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x20]
	ldr r7, [sp, #0x24]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r4, _0804D248  @ gUnknown_085AAB48
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r7, #0
	bl Proc_Start
	adds r1, r0, #0
	mov r2, r9
	str r2, [r1, #0x2c]
	mov r0, sl
	str r0, [r1, #0x30]
	lsls r0, r5, #1
	subs r0, #2
	str r0, [r1, #0x34]
	adds r0, r1, #0
	adds r0, #0x3c
	mov r2, r8
	strb r2, [r0]
	adds r0, #1
	strb r5, [r0]
	strh r6, [r1, #0x3e]
	adds r0, #3
	strh r6, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D248: .4byte gUnknown_085AAB48

	THUMB_FUNC_END sub_804D1E0

	THUMB_FUNC_START sub_804D24C
sub_804D24C: @ 0x0804D24C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0804D2A0  @ gUnknown_085AAB48
	bl Proc_Find
	adds r6, r0, #0
	cmp r6, #0
	beq _0804D298
	adds r5, r6, #0
	adds r5, #0x3c
	strb r7, [r5]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	strh r0, [r6, #0x3e]
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	ldr r4, [r6, #0x34]
	muls r0, r4, r0
	lsls r0, r0, #3
	ldrb r1, [r5]
	bl __divsi3
	str r0, [r6, #0x38]
	lsls r4, r4, #0xb
	ldrb r1, [r5]
	lsls r1, r1, #4
	adds r0, r4, #0
	bl __divsi3
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
_0804D298:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D2A0: .4byte gUnknown_085AAB48

	THUMB_FUNC_END sub_804D24C

	THUMB_FUNC_START sub_804D2A4
sub_804D2A4: @ 0x0804D2A4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x30
	mov r1, sp
	ldr r0, _0804D348  @ gUnknown_080DA20C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r6, sp, #0x10
	adds r1, r6, #0
	ldr r0, _0804D34C  @ gUnknown_080DA21C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r0, sp, #0x20
	mov r8, r0
	mov r1, r8
	ldr r0, _0804D350  @ gUnknown_080DA22C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0804D354  @ Img_PhaseChangeUnk
	ldr r1, _0804D358  @ 0x06014000
	bl Decompress
	ldr r0, _0804D35C  @ Img_PhaseChangeSquares
	ldr r1, _0804D360  @ 0x06002000
	bl Decompress
	ldr r0, _0804D364  @ gUnknown_085AE7EC
	ldr r1, _0804D368  @ 0x06002800
	bl Decompress
	ldr r5, _0804D36C  @ gPlaySt
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	ldr r4, _0804D370  @ gGenericBuffer
	adds r1, r4, #0
	bl Decompress
	ldr r1, _0804D374  @ 0x06002980
	adds r0, r4, #0
	movs r2, #3
	movs r3, #3
	bl Copy2dChr
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r0, [r6]
	movs r1, #0xa0
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldrb r0, [r5, #0xf]
	lsls r0, r0, #2
	add r8, r0
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r1, _0804D378  @ gUnknown_03001860
	ldrb r0, [r5, #0xf]
	str r0, [r1]
	movs r0, #0
	strb r0, [r5, #0xf]
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D348: .4byte gUnknown_080DA20C
_0804D34C: .4byte gUnknown_080DA21C
_0804D350: .4byte gUnknown_080DA22C
_0804D354: .4byte Img_PhaseChangeUnk
_0804D358: .4byte 0x06014000
_0804D35C: .4byte Img_PhaseChangeSquares
_0804D360: .4byte 0x06002000
_0804D364: .4byte gUnknown_085AE7EC
_0804D368: .4byte 0x06002800
_0804D36C: .4byte gPlaySt
_0804D370: .4byte gGenericBuffer
_0804D374: .4byte 0x06002980
_0804D378: .4byte gUnknown_03001860

	THUMB_FUNC_END sub_804D2A4

	THUMB_FUNC_START sub_804D37C
sub_804D37C: @ 0x0804D37C
	push {r4, lr}
	ldr r1, _0804D3D0  @ gPlaySt
	ldr r0, _0804D3D4  @ gUnknown_03001860
	ldr r0, [r0]
	strb r0, [r1, #0xf]
	ldr r4, _0804D3D8  @ gLCDControlBuffer
	ldrb r1, [r4, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	bl SetDefaultColorEffects
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D3D0: .4byte gPlaySt
_0804D3D4: .4byte gUnknown_03001860
_0804D3D8: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_804D37C

	THUMB_FUNC_START StopBGM2
StopBGM2: @ 0x0804D3DC
	push {lr}
	ldr r1, _0804D3EC  @ gMPlayInfo_BGM2
	movs r0, #0x34
	bl StartBgm
	pop {r0}
	bx r0
	.align 2, 0
_0804D3EC: .4byte gMPlayInfo_BGM2

	THUMB_FUNC_END StopBGM2

	THUMB_FUNC_START sub_804D3F0
sub_804D3F0: @ 0x0804D3F0
	push {lr}
	lsls r1, r1, #1
	adds r0, #0x1e
	adds r2, r0, r1
	ldrh r1, [r2]
	cmp r1, #0
	beq _0804D408
	movs r3, #0xff
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2]
_0804D408:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804D3F0

	THUMB_FUNC_START sub_804D40C
sub_804D40C: @ 0x0804D40C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0804D412:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_804D3F0
	adds r4, #1
	cmp r4, #4
	ble _0804D412
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804D40C

	THUMB_FUNC_START sub_804D428
sub_804D428: @ 0x0804D428
	push {r4, r5, r6, lr}
	ldr r5, _0804D46C  @ gUnknown_085ADE08
	ldr r0, _0804D470  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804D466
	bl GetGameClock
	adds r2, r0, #0
	movs r0, #0x1f
	ands r2, r0
	asrs r2, r2, #1
	movs r1, #0
	ldr r0, _0804D474  @ gPaletteBuffer
	movs r4, #0xf
	ldr r6, _0804D478  @ 0x00000322
	adds r3, r0, r6
_0804D44E:
	adds r0, r2, r1
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r1, #1
	cmp r1, #0xe
	ble _0804D44E
	bl EnablePaletteSync
_0804D466:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D46C: .4byte gUnknown_085ADE08
_0804D470: .4byte gUnk_Sio_0203DDDC
_0804D474: .4byte gPaletteBuffer
_0804D478: .4byte 0x00000322

	THUMB_FUNC_END sub_804D428

	THUMB_FUNC_START sub_804D47C
sub_804D47C: @ 0x0804D47C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	mov r9, r0
	movs r1, #0
	str r1, [sp, #4]
	mov sl, r1
_0804D494:
	ldr r1, [r7, #0x2c]
	ldr r2, [r7, #0x30]
	ldr r3, [sp, #4]
	adds r2, r2, r3
	movs r0, #0xf
	mov r4, r9
	ands r0, r4
	lsls r0, r0, #0xc
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [sp]
	movs r0, #4
	ldr r3, _0804D648  @ gUnknown_085AAA50
	bl PutSprite
	ldr r4, _0804D64C  @ gSinLookup+0x80
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r2, _0804D650  @ gSinLookup
	movs r3, #0
	ldrsh r0, [r2, r3]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r4, _0804D650  @ gSinLookup
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r2, _0804D64C  @ gSinLookup+0x80
	movs r3, #0
	ldrsh r0, [r2, r3]
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #1
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl SetObjAffine
	ldr r1, [r7, #0x38]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0804D5BE
	adds r3, r7, #0
	adds r3, #0x3c
	cmp r1, r9
	beq _0804D544
	mov r4, sl
	adds r1, r3, r4
	ldrh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bls _0804D53E
	subs r0, #8
	strh r0, [r1]
_0804D53E:
	ldr r0, [r7, #0x38]
	cmp r0, r9
	bne _0804D556
_0804D544:
	mov r4, sl
	adds r2, r3, r4
	ldrh r1, [r2]
	ldr r0, _0804D654  @ 0x0000014F
	cmp r1, r0
	bhi _0804D556
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r2]
_0804D556:
	ldr r1, _0804D64C  @ gSinLookup+0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	add r3, sl
	mov r8, r3
	ldrh r1, [r3]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r3, _0804D650  @ gSinLookup
	movs r4, #0
	ldrsh r0, [r3, r4]
	negs r0, r0
	lsls r0, r0, #4
	mov r2, r8
	ldrh r1, [r2]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r3, _0804D650  @ gSinLookup
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #4
	mov r2, r8
	ldrh r1, [r2]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r3, _0804D64C  @ gSinLookup+0x80
	movs r1, #0
	ldrsh r0, [r3, r1]
	lsls r0, r0, #4
	mov r2, r8
	ldrh r1, [r2]
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl SetObjAffine
_0804D5BE:
	ldr r1, [r7, #0x2c]
	subs r1, #0x30
	ldr r2, [r7, #0x30]
	ldr r3, [sp, #4]
	adds r2, r2, r3
	ldr r3, _0804D658  @ gUnknown_085AABB8
	mov r4, r9
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r3, [r0]
	movs r4, #0
	str r4, [sp]
	movs r0, #4
	bl PutSprite
	ldr r0, [sp, #4]
	adds r0, #0x18
	str r0, [sp, #4]
	movs r1, #2
	add sl, r1
	movs r2, #1
	add r9, r2
	mov r3, r9
	cmp r3, #3
	bgt _0804D5F2
	b _0804D494
_0804D5F2:
	ldr r2, [r7, #0x34]
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	beq _0804D636
	ldr r1, [r7, #0x2c]
	subs r1, #0x48
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [r7, #0x30]
	adds r2, r2, r0
	adds r2, #8
	ldr r3, _0804D65C  @ gUnknown_080DA25C
	str r4, [sp]
	movs r0, #4
	bl PutSprite
	ldr r1, [r7, #0x2c]
	subs r1, #0x48
	ldr r2, [r7, #0x34]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [r7, #0x30]
	adds r2, r2, r0
	adds r2, #0x12
	ldr r3, _0804D660  @ gUnknown_080DA26A
	str r4, [sp]
	movs r0, #4
	bl PutSprite
	bl sub_804D428
_0804D636:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804D648: .4byte gUnknown_085AAA50
_0804D64C: .4byte gSinLookup+0x80
_0804D650: .4byte gSinLookup
_0804D654: .4byte 0x0000014F
_0804D658: .4byte gUnknown_085AABB8
_0804D65C: .4byte gUnknown_080DA25C
_0804D660: .4byte gUnknown_080DA26A

	THUMB_FUNC_END sub_804D47C

	THUMB_FUNC_START sub_804D664
sub_804D664: @ 0x0804D664
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r4, _0804D6B0  @ gUnknown_085AABC8
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	adds r1, r0, #0
	str r6, [r1, #0x2c]
	mov r0, r8
	str r0, [r1, #0x30]
	movs r0, #1
	negs r0, r0
	str r0, [r1, #0x34]
	str r0, [r1, #0x38]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #3
	adds r0, r1, #0
	adds r0, #0x42
_0804D69A:
	strh r3, [r0]
	subs r0, #2
	subs r2, #1
	cmp r2, #0
	bge _0804D69A
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804D6B0: .4byte gUnknown_085AABC8

	THUMB_FUNC_END sub_804D664

	THUMB_FUNC_START sub_804D6B4
sub_804D6B4: @ 0x0804D6B4
	push {lr}
	ldr r0, _0804D6C0  @ gUnknown_085AABC8
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_0804D6C0: .4byte gUnknown_085AABC8

	THUMB_FUNC_END sub_804D6B4

	THUMB_FUNC_START sub_804D6C4
sub_804D6C4: @ 0x0804D6C4
	push {lr}
	ldr r0, _0804D6D0  @ gUnknown_085AABC8
	bl Proc_Find
	pop {r1}
	bx r1
	.align 2, 0
_0804D6D0: .4byte gUnknown_085AABC8

	THUMB_FUNC_END sub_804D6C4

	THUMB_FUNC_START sub_804D6D4
sub_804D6D4: @ 0x0804D6D4
	push {r4, r5, lr}
	ldr r5, _0804D718  @ gUnknown_085ADE08
	ldr r0, _0804D71C  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804D712
	bl GetGameClock
	adds r2, r0, #0
	movs r0, #0x1f
	ands r2, r0
	asrs r2, r2, #1
	movs r1, #0
	ldr r0, _0804D720  @ gPaletteBuffer
	movs r4, #0xf
	adds r3, r0, #0
	adds r3, #0x42
_0804D6FA:
	adds r0, r2, r1
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r1, #1
	cmp r1, #0xe
	ble _0804D6FA
	bl EnablePaletteSync
_0804D712:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804D718: .4byte gUnknown_085ADE08
_0804D71C: .4byte gUnk_Sio_0203DDDC
_0804D720: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_804D6D4

	THUMB_FUNC_START sub_804D724
sub_804D724: @ 0x0804D724
	push {r4, r5, r6, lr}
	ldr r5, _0804D768  @ gUnknown_085ADE08
	ldr r0, _0804D76C  @ gUnk_Sio_0203DDDC
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0804D762
	bl GetGameClock
	adds r2, r0, #0
	movs r0, #0x1f
	ands r2, r0
	asrs r2, r2, #1
	movs r1, #0
	ldr r0, _0804D770  @ gPaletteBuffer
	movs r4, #0xf
	ldr r6, _0804D774  @ 0x00000262
	adds r3, r0, r6
_0804D74A:
	adds r0, r2, r1
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r1, #1
	cmp r1, #0xe
	ble _0804D74A
	bl EnablePaletteSync
_0804D762:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804D768: .4byte gUnknown_085ADE08
_0804D76C: .4byte gUnk_Sio_0203DDDC
_0804D770: .4byte gPaletteBuffer
_0804D774: .4byte 0x00000262

	THUMB_FUNC_END sub_804D724

	THUMB_FUNC_START sub_804D778
sub_804D778: @ 0x0804D778
	push {r4, lr}
	sub sp, #4
	movs r0, #1
	movs r1, #8
	movs r2, #0xc
	movs r3, #0
	bl SetBlendConfig
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl SetBlendTargetA
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804D778

	THUMB_FUNC_START sub_804D7B0
sub_804D7B0: @ 0x0804D7B0
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, [r1, #0x30]
	adds r0, r2, #0
	subs r0, #0x1f
	cmp r0, #0x79
	bhi _0804D7D2
	ldr r1, [r1, #0x2c]
	ldr r3, _0804D7D8  @ gUnknown_080DA27E
	movs r0, #0
	str r0, [sp]
	movs r0, #4
	bl PutSprite
	bl sub_804D724
_0804D7D2:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0804D7D8: .4byte gUnknown_080DA27E

	THUMB_FUNC_END sub_804D7B0

	THUMB_FUNC_START sub_804D7DC
sub_804D7DC: @ 0x0804D7DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r4, _0804D808  @ gUnknown_085AABD8
	adds r0, r4, #0
	bl Proc_EndEach
	adds r0, r4, #0
	adds r1, r5, #0
	bl Proc_Start
	str r6, [r0, #0x2c]
	mov r1, r8
	str r1, [r0, #0x30]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804D808: .4byte gUnknown_085AABD8

	THUMB_FUNC_END sub_804D7DC

	THUMB_FUNC_START sub_804D80C
sub_804D80C: @ 0x0804D80C
	push {lr}
	ldr r0, _0804D828  @ gGfx_SupportMenu
	ldr r1, _0804D82C  @ 0x06016800
	bl Decompress
	ldr r0, _0804D830  @ gPal_SupportMenu
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	pop {r0}
	bx r0
	.align 2, 0
_0804D828: .4byte gGfx_SupportMenu
_0804D82C: .4byte 0x06016800
_0804D830: .4byte gPal_SupportMenu

	THUMB_FUNC_END sub_804D80C

	THUMB_FUNC_START sub_804D834
sub_804D834: @ 0x0804D834
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r3, _0804D854  @ gUnknown_080DA2B0
	movs r0, #0x9d
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #1
	adds r1, r4, #0
	bl PutSprite
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D854: .4byte gUnknown_080DA2B0

	THUMB_FUNC_END sub_804D834

	THUMB_FUNC_START sub_804D858
sub_804D858: @ 0x0804D858
	push {r4, r5, lr}
	ldr r5, _0804D884  @ gActiveUnit
	ldr r0, [r5]
	lsls r1, r1, #1
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl GetItemAttributes
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0804D89A
	adds r0, r4, #0
	bl GetItemMinRange
	cmp r0, #2
	ble _0804D888
	movs r0, #2
	b _0804D89C
	.align 2, 0
_0804D884: .4byte gActiveUnit
_0804D888:
	ldr r0, [r5]
	adds r1, r4, #0
	bl CanUnitUseWeapon
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0804D89A
	movs r0, #1
	b _0804D89C
_0804D89A:
	movs r0, #3
_0804D89C:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804D858

	THUMB_FUNC_START sub_804D8A4
sub_804D8A4: @ 0x0804D8A4
	push {lr}
	adds r0, r1, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #2
	beq _0804D8C0
	ldr r0, _0804D8BC  @ gUnk_Sio_0203DD90
	adds r1, #0x3c
	ldrb r1, [r1]
	strb r1, [r0, #7]
	movs r0, #0x84
	b _0804D8C2
	.align 2, 0
_0804D8BC: .4byte gUnk_Sio_0203DD90
_0804D8C0:
	movs r0, #8
_0804D8C2:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804D8A4

	THUMB_FUNC_START sub_804D8C8
sub_804D8C8: @ 0x0804D8C8
	ldr r2, _0804D8D8  @ gUnk_Sio_0203DD90
	adds r1, #0x3c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r2, #6]
	movs r0, #0x17
	bx lr
	.align 2, 0
_0804D8D8: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804D8C8

	THUMB_FUNC_START sub_804D8DC
sub_804D8DC: @ 0x0804D8DC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r0, _0804D938  @ gActiveUnit
	ldr r0, [r0]
	adds r1, #0x3c
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #1
	adds r1, r0, #0
	adds r1, #0x1e
	adds r1, r1, r2
	ldrh r6, [r1]
	adds r1, r6, #0
	bl CanUnitUseWeapon
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0
	bl GetItemMinRange
	cmp r0, #2
	ble _0804D90A
	movs r5, #0
_0804D90A:
	adds r0, r4, #0
	adds r0, #0x34
	lsls r2, r5, #0x18
	asrs r2, r2, #0x18
	movs r1, #0x2c
	ldrsh r3, [r4, r1]
	lsls r3, r3, #5
	movs r5, #0x2a
	ldrsh r1, [r4, r5]
	adds r3, r3, r1
	lsls r3, r3, #1
	ldr r1, _0804D93C  @ gBG0TilemapBuffer
	adds r3, r3, r1
	adds r1, r6, #0
	bl DrawItemMenuLine
	movs r0, #1
	bl BG_EnableSyncByMask
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0804D938: .4byte gActiveUnit
_0804D93C: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_804D8DC

	THUMB_FUNC_START sub_804D940
sub_804D940: @ 0x0804D940
	ldr r1, _0804D94C  @ gUnk_Sio_0203DD90
	movs r0, #0
	strb r0, [r1, #6]
	movs r0, #0x1b
	bx lr
	.align 2, 0
_0804D94C: .4byte gUnk_Sio_0203DD90

	THUMB_FUNC_END sub_804D940

	THUMB_FUNC_START sub_804D950
sub_804D950: @ 0x0804D950
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r1, _0804D9B8  @ gUnk_Sio_0203DD90
	movs r0, #0
	strb r0, [r1, #6]
	adds r7, r2, #0
	adds r7, #0x2d
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #5
	adds r5, r2, #0
	adds r5, #0x2c
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0804D9BC  @ gBG0TilemapBuffer
	adds r0, r0, r1
	adds r6, r2, #0
	adds r6, #0x2e
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r4, r2, #0
	adds r4, #0x2f
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #0
	bl TileMap_FillRect
	movs r0, #0
	ldrsb r0, [r7, r0]
	lsls r0, r0, #5
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0804D9C0  @ gBG1TilemapBuffer
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r6, r1]
	movs r2, #0
	ldrsb r2, [r4, r2]
	movs r3, #0
	bl TileMap_FillRect
	movs r0, #3
	bl BG_EnableSyncByMask
	movs r0, #0xb
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804D9B8: .4byte gUnk_Sio_0203DD90
_0804D9BC: .4byte gBG0TilemapBuffer
_0804D9C0: .4byte gBG1TilemapBuffer

	THUMB_FUNC_END sub_804D950

	THUMB_FUNC_START sub_804D9C4
sub_804D9C4: @ 0x0804D9C4
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _0804D9F0  @ 0x04000134
	strh r1, [r0]
	ldr r2, _0804D9F4  @ 0x04000128
	ldr r3, _0804D9F8  @ 0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _0804D9FC  @ 0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_0804D9F0: .4byte 0x04000134
_0804D9F4: .4byte 0x04000128
_0804D9F8: .4byte 0x00002003
_0804D9FC: .4byte 0x0400012A

	THUMB_FUNC_END sub_804D9C4

	THUMB_FUNC_START sub_804DA00
sub_804DA00: @ 0x0804DA00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_804DF24
	cmp r0, #0
	beq _0804DA16
	b _0804DDDE
_0804DA16:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0xf
	bls _0804DA2A
	subs r0, r1, #1
	mov r1, sl
	strb r0, [r1]
	b _0804DDDE
_0804DA2A:
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0804DA54
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0804DA50  @ 0x04000128
	ldrh r0, [r0]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _0804DA54
	adds r0, r7, #0
	bl sub_804D9C4
	movs r0, #8
	eors r0, r5
	b _0804DDE0
	.align 2, 0
_0804DA50: .4byte 0x04000128
_0804DA54:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _0804DAA6
	adds r0, r7, #0
	bl sub_804DF38
	adds r5, r0, #0
	cmp r5, #0
	beq _0804DA68
	b _0804DDE0
_0804DA68:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804DA84
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _0804DA84
	adds r0, r7, #0
	bl sub_804DF24
	cmp r0, #0
	bne _0804DA84
	b _0804DDCE
_0804DA84:
	adds r0, r7, #0
	bl sub_804DF24
	cmp r0, #0
	beq _0804DA90
	b _0804DDDE
_0804DA90:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _0804DAA0
	adds r0, r7, #0
	bl sub_804D9C4
	movs r0, #0x71
	b _0804DDE0
_0804DAA0:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _0804DDDE
_0804DAA6:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _0804DAAE
	b _0804DBE4
_0804DAAE:
	cmp r0, #2
	bgt _0804DABC
	cmp r0, #0
	beq _0804DACA
	cmp r0, #1
	beq _0804DB86
	b _0804DD1C
_0804DABC:
	cmp r0, #0xd0
	bne _0804DAC2
	b _0804DC30
_0804DAC2:
	cmp r0, #0xd1
	bne _0804DAC8
	b _0804DCCA
_0804DAC8:
	b _0804DD1C
_0804DACA:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _0804DB10  @ 0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _0804DB14  @ 0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _0804DAF2
	adds r4, r1, #0
	ldr r1, _0804DB18  @ 0x04000126
_0804DAE2:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _0804DAF2
	ldrh r0, [r1]
	cmp r0, r4
	beq _0804DAE2
_0804DAF2:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _0804DB10  @ 0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DB20
	ldr r0, _0804DB1C  @ 0x00007208
	b _0804DB46
	.align 2, 0
_0804DB10: .4byte 0x04000120
_0804DB14: .4byte 0x0000FFFF
_0804DB18: .4byte 0x04000126
_0804DB1C: .4byte 0x00007208
_0804DB20:
	subs r5, #1
	cmp r5, #0
	beq _0804DB4C
	lsls r0, r5, #1
	ldr r1, _0804DB74  @ 0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DB20
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_0804DB46:
	cmp r4, r0
	beq _0804DB20
	movs r3, #0
_0804DB4C:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _0804DB5C
	movs r0, #0xf
	mov r2, sl
	strb r0, [r2]
_0804DB5C:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804DB78
	ldrb r0, [r7, #0x1d]
	ldrb r2, [r7, #0x1e]
	cmp r0, r2
	beq _0804DB7E
	adds r0, r7, #0
	bl sub_804DE3C
	b _0804DB86
	.align 2, 0
_0804DB74: .4byte 0x04000120
_0804DB78:
	subs r0, #1
	mov r1, sl
	strb r0, [r1]
_0804DB7E:
	ldrb r1, [r7, #0x1e]
	movs r2, #0xc4
	lsls r2, r2, #7
	b _0804DC86
_0804DB86:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _0804DBDC  @ gUnknown_03001864
_0804DB94:
	lsls r0, r5, #1
	ldr r2, _0804DBE0  @ 0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _0804DBBE
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _0804DBBE
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_0804DBBE:
	adds r5, r2, #0
	cmp r5, #0
	bne _0804DB94
	ldrb r0, [r7, #0x1d]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bne _0804DB7E
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r2, ip
	ldrb r1, [r2]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _0804DC86
	.align 2, 0
_0804DBDC: .4byte gUnknown_03001864
_0804DBE0: .4byte 0x04000120
_0804DBE4:
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	mov r4, ip
	movs r6, #1
	ldr r1, _0804DC28  @ gUnknown_03001864
	mov r9, r1
	ldr r2, _0804DC2C  @ 0x04000120
	mov r8, r2
_0804DBF8:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _0804DC1E
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, r9
	ldrh r0, [r0]
	cmp r1, r0
	beq _0804DC1E
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_0804DC1E:
	adds r5, r2, #0
	cmp r5, #0
	bne _0804DBF8
	b _0804DD84
	.align 2, 0
_0804DC28: .4byte gUnknown_03001864
_0804DC2C: .4byte 0x04000120
_0804DC30:
	movs r3, #1
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x19
	ldr r1, _0804DC94  @ gUnknown_03001864
	mov r8, r1
_0804DC42:
	lsls r0, r5, #1
	ldr r2, _0804DC98  @ 0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	adds r0, r6, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0804DC76
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _0804DC6A
	b _0804DDD4
_0804DC6A:
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r4, r0
	bne _0804DC76
	movs r3, #0
_0804DC76:
	adds r5, r2, #0
	cmp r5, #0
	bne _0804DC42
	cmp r3, #0
	bne _0804DC9C
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_0804DC86:
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r7, #0
	bl sub_804DDF0
	b _0804DDE0
	.align 2, 0
_0804DC94: .4byte gUnknown_03001864
_0804DC98: .4byte 0x04000120
_0804DC9C:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	adds r1, r6, #2
_0804DCA6:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _0804DCA6
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_804DDF0
	b _0804DDE0
_0804DCCA:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _0804DD08  @ 0x04000126
	movs r3, #1
_0804DCD4:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _0804DCE8
	asrs r0, r4, #8
	cmp r0, #0x73
	bne _0804DDD4
_0804DCE8:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _0804DCD4
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _0804DD0C
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _0804DDDE
	.align 2, 0
_0804DD08: .4byte 0x04000126
_0804DD0C:
	adds r0, r7, #0
	bl sub_804D9C4
	movs r0, #0x1e
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x70
	b _0804DDE0
_0804DD1C:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r0, #1
	mov r9, r0
_0804DD2A:
	mov r1, r8
	ldrb r6, [r1]
	adds r0, r6, #0
	asrs r0, r5
	mov r2, r9
	ands r0, r2
	cmp r0, #0
	beq _0804DD64
	lsls r0, r5, #1
	ldr r1, _0804DD80  @ 0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, r9
	lsls r3, r5
	cmp r2, r1
	bne _0804DD5E
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _0804DD64
_0804DD5E:
	eors r6, r3
	mov r2, r8
	strb r6, [r2]
_0804DD64:
	subs r5, #1
	cmp r5, #0
	bne _0804DD2A
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _0804DD84
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _0804DB7E
	.align 2, 0
_0804DD80: .4byte 0x04000120
_0804DD84:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0804DD96
	adds r0, r7, #0
	bl sub_804D9C4
	movs r0, #0x50
	b _0804DDE0
_0804DD96:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _0804DDA6
	b _0804DB7E
_0804DDA6:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_804DDF0
	adds r5, r0, #0
	cmp r5, #0
	bne _0804DDE0
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804DDDE
_0804DDCE:
	bl sub_804E03C
	b _0804DA2A
_0804DDD4:
	adds r0, r7, #0
	bl sub_804D9C4
	movs r0, #0x60
	b _0804DDE0
_0804DDDE:
	movs r0, #0
_0804DDE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804DA00

	THUMB_FUNC_START sub_804DDF0
sub_804DDF0: @ 0x0804DDF0
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0804DE1C  @ 0x04000128
	ldrh r0, [r3]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _0804DE28
	ldr r0, _0804DE20  @ 0x0400012A
	strh r1, [r0]
	ldr r1, _0804DE24  @ 0x00002083
	adds r0, r1, #0
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _0804DE34
	.align 2, 0
_0804DE1C: .4byte 0x04000128
_0804DE20: .4byte 0x0400012A
_0804DE24: .4byte 0x00002083
_0804DE28:
	adds r0, r2, #0
	bl sub_804D9C4
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_0804DE34:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804DDF0

	THUMB_FUNC_START sub_804DE3C
sub_804DE3C: @ 0x0804DE3C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0804DE4E
	adds r0, r1, #0
	bl sub_804D9C4
	b _0804DE5A
_0804DE4E:
	adds r2, r1, #0
	adds r2, #0x4a
	strb r0, [r2]
	strb r0, [r1, #0x1e]
	movs r0, #1
	strb r0, [r1, #0x18]
_0804DE5A:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804DE3C

	THUMB_FUNC_START sub_804DE60
sub_804DE60: @ 0x0804DE60
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0804DE9A
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	beq _0804DE9A
	adds r0, r5, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804DE9A
	str r6, [r5, #0x20]
	adds r2, #0xf
	movs r0, #0x10
	negs r0, r0
	ands r2, r0
	subs r0, #0xf0
	adds r1, r2, r0
	ldr r0, _0804DEA4  @ 0x0003FF00
	cmp r1, r0
	bls _0804DEA8
_0804DE9A:
	adds r0, r5, #0
	bl sub_804D9C4
	b _0804DF1C
	.align 2, 0
_0804DEA4: .4byte 0x0003FF00
_0804DEA8:
	adds r0, r6, r2
	str r0, [r5, #0x24]
	lsls r1, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _0804DF08
	lsls r0, r0, #2
	ldr r1, _0804DEC8  @ _0804DECC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804DEC8: .4byte _0804DECC
_0804DECC: @ jump table
	.4byte _0804DEF0 @ case 0
	.4byte _0804DEF0 @ case 1
	.4byte _0804DEF0 @ case 2
	.4byte _0804DEF0 @ case 3
	.4byte _0804DEFA @ case 4
	.4byte _0804DF00 @ case 5
	.4byte _0804DF00 @ case 6
	.4byte _0804DF00 @ case 7
	.4byte _0804DF00 @ case 8
_0804DEF0:
	lsls r4, r3, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _0804DF06
_0804DEFA:
	movs r0, #0x38
	adds r4, r3, #0
	b _0804DF06
_0804DF00:
	lsls r4, r3, #3
	asrs r0, r2, #0x18
	subs r0, #1
_0804DF06:
	orrs r4, r0
_0804DF08:
	movs r0, #0x3f
	ands r4, r0
	lsls r0, r4, #1
	movs r2, #0x7f
	negs r2, r2
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r5, #0x1c]
	movs r0, #0xd0
	strb r0, [r5, #0x18]
_0804DF1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_804DE60

	THUMB_FUNC_START sub_804DF24
sub_804DF24: @ 0x0804DF24
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _0804DF30
	movs r0, #0
	b _0804DF32
_0804DF30:
	movs r0, #1
_0804DF32:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804DF24

	THUMB_FUNC_START sub_804DF38
sub_804DF38: @ 0x0804DF38
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x18]
	cmp r0, #0xe0
	beq _0804DF54
	cmp r0, #0xe0
	blt _0804DF64
	cmp r0, #0xe8
	bgt _0804DF64
	cmp r0, #0xe7
	blt _0804DF64
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	b _0804DFC4
_0804DF54:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r3, #0x18]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r3]
	b _0804DFB6
_0804DF64:
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	movs r6, #1
	ldr r1, _0804DFC0  @ 0x04000126
_0804DF6C:
	ldrh r0, [r1]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _0804DF80
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _0804DF54
_0804DF80:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _0804DF6C
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	ldr r1, [r3]
	ldrh r0, [r3]
	str r0, [r3, #4]
	cmp r1, #0
	bne _0804DFAE
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3, #4]
	lsls r1, r1, #5
	str r1, [r3]
_0804DFAE:
	ldr r0, [r3]
	lsrs r0, r0, #5
	str r0, [r3]
_0804DFB4:
	ldrh r1, [r3]
_0804DFB6:
	adds r0, r3, #0
	bl sub_804DDF0
	b _0804E01C
	.align 2, 0
_0804DFC0: .4byte 0x04000126
_0804DFC4:
	lsls r0, r4, #1
	ldr r1, _0804E00C  @ 0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0804DFE0
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _0804E010
_0804DFE0:
	subs r4, #1
	cmp r4, #0
	bne _0804DFC4
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _0804E01A
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3]
	str r1, [r3, #4]
	b _0804DFB4
	.align 2, 0
_0804E00C: .4byte 0x04000120
_0804E010:
	adds r0, r3, #0
	bl sub_804D9C4
	movs r0, #0x71
	b _0804E01C
_0804E01A:
	movs r0, #0
_0804E01C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_804DF38

	THUMB_FUNC_START sub_804E024
sub_804E024: @ 0x0804E024
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _0804E036
	movs r1, #0xd
	cmp r2, #8
	beq _0804E036
	movs r1, #4
_0804E036:
	subs r0, r0, r1
	bgt _0804E036
	bx lr

	THUMB_FUNC_END sub_804E024

	THUMB_FUNC_START sub_804E03C
sub_804E03C: @ 0x0804E03C
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _0804E070  @ 0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0804E060
	ldr r5, _0804E074  @ 0x0000795C
	movs r4, #0x80
_0804E050:
	adds r2, #1
	cmp r2, r5
	bgt _0804E060
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0804E050
_0804E060:
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_804E024
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804E070: .4byte 0x04000128
_0804E074: .4byte 0x0000795C

	THUMB_FUNC_END sub_804E03C

.align 2, 0
