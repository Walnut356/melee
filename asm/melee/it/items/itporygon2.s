.include "macros.inc"

.section .text

.global it_802D5ABC
it_802D5ABC:
/* 802D5ABC 002D269C  7C 08 02 A6 */	mflr r0
/* 802D5AC0 002D26A0  90 01 00 04 */	stw r0, 4(r1)
/* 802D5AC4 002D26A4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D5AC8 002D26A8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D5ACC 002D26AC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D5AD0 002D26B0  7C 7E 1B 78 */	mr r30, r3
/* 802D5AD4 002D26B4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D5AD8 002D26B8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 802D5ADC 002D26BC  4B FA 42 01 */	bl it_80279CDC
/* 802D5AE0 002D26C0  38 7F 00 00 */	addi r3, r31, 0
/* 802D5AE4 002D26C4  38 80 27 3E */	li r4, 0x273e
/* 802D5AE8 002D26C8  38 A0 00 7F */	li r5, 0x7f
/* 802D5AEC 002D26CC  38 C0 00 40 */	li r6, 0x40
/* 802D5AF0 002D26D0  4B F9 53 95 */	bl Item_8026AE84
/* 802D5AF4 002D26D4  7F C3 F3 78 */	mr r3, r30
/* 802D5AF8 002D26D8  48 00 00 1D */	bl it_802D5B14
/* 802D5AFC 002D26DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D5B00 002D26E0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D5B04 002D26E4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D5B08 002D26E8  38 21 00 18 */	addi r1, r1, 0x18
/* 802D5B0C 002D26EC  7C 08 03 A6 */	mtlr r0
/* 802D5B10 002D26F0  4E 80 00 20 */	blr

.global it_802D5B14
it_802D5B14:
/* 802D5B14 002D26F4  7C 08 02 A6 */	mflr r0
/* 802D5B18 002D26F8  38 80 00 00 */	li r4, 0
/* 802D5B1C 002D26FC  90 01 00 04 */	stw r0, 4(r1)
/* 802D5B20 002D2700  38 A0 00 02 */	li r5, 2
/* 802D5B24 002D2704  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D5B28 002D2708  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D5B2C 002D270C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D5B30 002D2710  4B F9 33 2D */	bl Item_80268E5C
/* 802D5B34 002D2714  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D5B38 002D2718  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D5B3C 002D271C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D5B40 002D2720  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D5B44 002D2724  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D5B48 002D2728  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D5B4C 002D272C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D5B50 002D2730  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D5B54 002D2734  38 21 00 18 */	addi r1, r1, 0x18
/* 802D5B58 002D2738  7C 08 03 A6 */	mtlr r0
/* 802D5B5C 002D273C  4E 80 00 20 */	blr

.global it_802D5B60
it_802D5B60:
/* 802D5B60 002D2740  7C 08 02 A6 */	mflr r0
/* 802D5B64 002D2744  90 01 00 04 */	stw r0, 4(r1)
/* 802D5B68 002D2748  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D5B6C 002D274C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D5B70 002D2750  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D5B74 002D2754  7C 7E 1B 78 */	mr r30, r3
/* 802D5B78 002D2758  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D5B7C 002D275C  4B F9 D0 F1 */	bl it_80272C6C
/* 802D5B80 002D2760  2C 03 00 00 */	cmpwi r3, 0
/* 802D5B84 002D2764  40 82 00 0C */	bne .L_802D5B90
/* 802D5B88 002D2768  7F C3 F3 78 */	mr r3, r30
/* 802D5B8C 002D276C  48 00 00 75 */	bl it_802D5C00
.L_802D5B90:
/* 802D5B90 002D2770  80 7F 0B BC */	lwz r3, 0xbbc(r31)
/* 802D5B94 002D2774  7F E4 FB 78 */	mr r4, r31
/* 802D5B98 002D2778  80 63 00 04 */	lwz r3, 4(r3)
/* 802D5B9C 002D277C  4B FA 45 C5 */	bl it_8027A160
/* 802D5BA0 002D2780  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D5BA4 002D2784  38 60 00 00 */	li r3, 0
/* 802D5BA8 002D2788  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D5BAC 002D278C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D5BB0 002D2790  38 21 00 18 */	addi r1, r1, 0x18
/* 802D5BB4 002D2794  7C 08 03 A6 */	mtlr r0
/* 802D5BB8 002D2798  4E 80 00 20 */	blr

.global it_802D5BBC
it_802D5BBC:
/* 802D5BBC 002D279C  7C 08 02 A6 */	mflr r0
/* 802D5BC0 002D27A0  90 01 00 04 */	stw r0, 4(r1)
/* 802D5BC4 002D27A4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D5BC8 002D27A8  4B FA 47 7D */	bl it_8027A344
/* 802D5BCC 002D27AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D5BD0 002D27B0  38 21 00 08 */	addi r1, r1, 8
/* 802D5BD4 002D27B4  7C 08 03 A6 */	mtlr r0
/* 802D5BD8 002D27B8  4E 80 00 20 */	blr

.global it_802D5BDC
it_802D5BDC:
/* 802D5BDC 002D27BC  7C 08 02 A6 */	mflr r0
/* 802D5BE0 002D27C0  90 01 00 04 */	stw r0, 4(r1)
/* 802D5BE4 002D27C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D5BE8 002D27C8  4B F9 7E 21 */	bl it_8026DA08
/* 802D5BEC 002D27CC  38 60 00 00 */	li r3, 0
/* 802D5BF0 002D27D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D5BF4 002D27D4  38 21 00 08 */	addi r1, r1, 8
/* 802D5BF8 002D27D8  7C 08 03 A6 */	mtlr r0
/* 802D5BFC 002D27DC  4E 80 00 20 */	blr

.global it_802D5C00
it_802D5C00:
/* 802D5C00 002D27E0  7C 08 02 A6 */	mflr r0
/* 802D5C04 002D27E4  38 80 00 01 */	li r4, 1
/* 802D5C08 002D27E8  90 01 00 04 */	stw r0, 4(r1)
/* 802D5C0C 002D27EC  38 A0 00 02 */	li r5, 2
/* 802D5C10 002D27F0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D5C14 002D27F4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D5C18 002D27F8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D5C1C 002D27FC  4B F9 32 41 */	bl Item_80268E5C
/* 802D5C20 002D2800  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D5C24 002D2804  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D5C28 002D2808  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D5C2C 002D280C  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D5C30 002D2810  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D5C34 002D2814  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D5C38 002D2818  38 7F 00 00 */	addi r3, r31, 0
/* 802D5C3C 002D281C  38 80 27 3F */	li r4, 0x273f
/* 802D5C40 002D2820  38 A0 00 7F */	li r5, 0x7f
/* 802D5C44 002D2824  38 C0 00 40 */	li r6, 0x40
/* 802D5C48 002D2828  4B F9 52 3D */	bl Item_8026AE84
/* 802D5C4C 002D282C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D5C50 002D2830  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D5C54 002D2834  38 21 00 18 */	addi r1, r1, 0x18
/* 802D5C58 002D2838  7C 08 03 A6 */	mtlr r0
/* 802D5C5C 002D283C  4E 80 00 20 */	blr

.global it_802D5C60
it_802D5C60:
/* 802D5C60 002D2840  7C 08 02 A6 */	mflr r0
/* 802D5C64 002D2844  90 01 00 04 */	stw r0, 4(r1)
/* 802D5C68 002D2848  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D5C6C 002D284C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D5C70 002D2850  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D5C74 002D2854  4B F9 CF F9 */	bl it_80272C6C
/* 802D5C78 002D2858  2C 03 00 00 */	cmpwi r3, 0
/* 802D5C7C 002D285C  40 82 00 0C */	bne .L_802D5C88
/* 802D5C80 002D2860  38 60 00 01 */	li r3, 1
/* 802D5C84 002D2864  48 00 00 18 */	b .L_802D5C9C
.L_802D5C88:
/* 802D5C88 002D2868  80 7F 0B BC */	lwz r3, 0xbbc(r31)
/* 802D5C8C 002D286C  7F E4 FB 78 */	mr r4, r31
/* 802D5C90 002D2870  80 63 00 04 */	lwz r3, 4(r3)
/* 802D5C94 002D2874  4B FA 44 CD */	bl it_8027A160
/* 802D5C98 002D2878  38 60 00 00 */	li r3, 0
.L_802D5C9C:
/* 802D5C9C 002D287C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D5CA0 002D2880  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D5CA4 002D2884  38 21 00 18 */	addi r1, r1, 0x18
/* 802D5CA8 002D2888  7C 08 03 A6 */	mtlr r0
/* 802D5CAC 002D288C  4E 80 00 20 */	blr

.global it_802D5CB0
it_802D5CB0:
/* 802D5CB0 002D2890  7C 08 02 A6 */	mflr r0
/* 802D5CB4 002D2894  90 01 00 04 */	stw r0, 4(r1)
/* 802D5CB8 002D2898  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D5CBC 002D289C  4B FA 46 89 */	bl it_8027A344
/* 802D5CC0 002D28A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D5CC4 002D28A4  38 21 00 08 */	addi r1, r1, 8
/* 802D5CC8 002D28A8  7C 08 03 A6 */	mtlr r0
/* 802D5CCC 002D28AC  4E 80 00 20 */	blr

.global it_802D5CD0
it_802D5CD0:
/* 802D5CD0 002D28B0  38 60 00 00 */	li r3, 0
/* 802D5CD4 002D28B4  4E 80 00 20 */	blr

.global it_802D5CD8
it_802D5CD8:
/* 802D5CD8 002D28B8  7C 08 02 A6 */	mflr r0
/* 802D5CDC 002D28BC  90 01 00 04 */	stw r0, 4(r1)
/* 802D5CE0 002D28C0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D5CE4 002D28C4  4B F9 5B B1 */	bl it_8026B894
/* 802D5CE8 002D28C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D5CEC 002D28CC  38 21 00 08 */	addi r1, r1, 8
/* 802D5CF0 002D28D0  7C 08 03 A6 */	mtlr r0
/* 802D5CF4 002D28D4  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F8250
it_803F8250:
    .4byte 0
    .4byte it_802D5B60
    .4byte it_802D5BBC
    .4byte it_802D5BDC
    .4byte 1
    .4byte it_802D5C60
    .4byte it_802D5CB0
    .4byte it_802D5CD0
