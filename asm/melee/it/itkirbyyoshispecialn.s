.include "macros.inc"

.section .text

.global it_802F2D98
it_802F2D98:
/* 802F2D98 002EF978  7C 08 02 A6 */	mflr r0
/* 802F2D9C 002EF97C  90 01 00 04 */	stw r0, 4(r1)
/* 802F2DA0 002EF980  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802F2DA4 002EF984  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802F2DA8 002EF988  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802F2DAC 002EF98C  7C 9E 23 78 */	mr r30, r4
/* 802F2DB0 002EF990  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802F2DB4 002EF994  7C 7D 1B 78 */	mr r29, r3
/* 802F2DB8 002EF998  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802F2DBC 002EF99C  93 DF 0D 04 */	stw r30, 0xd04(r31)
/* 802F2DC0 002EF9A0  93 DF 0D 00 */	stw r30, 0xd00(r31)
/* 802F2DC4 002EF9A4  4B F7 94 5D */	bl it_8026C220
/* 802F2DC8 002EF9A8  88 1F 0D D0 */	lbz r0, 0xdd0(r31)
/* 802F2DCC 002EF9AC  38 60 00 00 */	li r3, 0
/* 802F2DD0 002EF9B0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802F2DD4 002EF9B4  3C 60 80 40 */	lis r3, it_803F9490@ha
/* 802F2DD8 002EF9B8  98 1F 0D D0 */	stb r0, 0xdd0(r31)
/* 802F2DDC 002EF9BC  38 03 94 90 */	addi r0, r3, it_803F9490@l
/* 802F2DE0 002EF9C0  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 802F2DE4 002EF9C4  7F C3 F3 78 */	mr r3, r30
/* 802F2DE8 002EF9C8  4B E1 64 51 */	bl ftKb_SpecialNYs_80109238
/* 802F2DEC 002EF9CC  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802F2DF0 002EF9D0  38 C3 00 00 */	addi r6, r3, 0
/* 802F2DF4 002EF9D4  38 7D 00 00 */	addi r3, r29, 0
/* 802F2DF8 002EF9D8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 802F2DFC 002EF9DC  7F C5 F3 78 */	mr r5, r30
/* 802F2E00 002EF9E0  80 84 00 08 */	lwz r4, 8(r4)
/* 802F2E04 002EF9E4  4B F8 21 45 */	bl it_80274F48
/* 802F2E08 002EF9E8  38 7D 00 00 */	addi r3, r29, 0
/* 802F2E0C 002EF9EC  38 80 00 00 */	li r4, 0
/* 802F2E10 002EF9F0  38 A0 00 00 */	li r5, 0
/* 802F2E14 002EF9F4  4B F7 60 49 */	bl Item_80268E5C
/* 802F2E18 002EF9F8  7F E3 FB 78 */	mr r3, r31
/* 802F2E1C 002EF9FC  4B F8 34 A1 */	bl it_802762BC
/* 802F2E20 002EFA00  7F A3 EB 78 */	mr r3, r29
/* 802F2E24 002EFA04  4B F8 28 AD */	bl it_802756D0
/* 802F2E28 002EFA08  38 7D 00 00 */	addi r3, r29, 0
/* 802F2E2C 002EFA0C  38 80 00 01 */	li r4, 1
/* 802F2E30 002EFA10  4B F8 20 9D */	bl it_80274ECC
/* 802F2E34 002EFA14  7F A3 EB 78 */	mr r3, r29
/* 802F2E38 002EFA18  4B F8 1E 51 */	bl it_80274C88
/* 802F2E3C 002EFA1C  7F A3 EB 78 */	mr r3, r29
/* 802F2E40 002EFA20  4B F7 8F 15 */	bl it_8026BD54
/* 802F2E44 002EFA24  7F A3 EB 78 */	mr r3, r29
/* 802F2E48 002EFA28  4B F8 05 C1 */	bl it_80273408
/* 802F2E4C 002EFA2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F2E50 002EFA30  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802F2E54 002EFA34  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802F2E58 002EFA38  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 802F2E5C 002EFA3C  38 21 00 28 */	addi r1, r1, 0x28
/* 802F2E60 002EFA40  7C 08 03 A6 */	mtlr r0
/* 802F2E64 002EFA44  4E 80 00 20 */	blr

.global it_802F2E68
it_802F2E68:
/* 802F2E68 002EFA48  38 60 00 00 */	li r3, 0
/* 802F2E6C 002EFA4C  4E 80 00 20 */	blr

.global it_802F2E70
it_802F2E70:
/* 802F2E70 002EFA50  4E 80 00 20 */	blr

.global it_802F2E74
it_802F2E74:
/* 802F2E74 002EFA54  38 60 00 00 */	li r3, 0
/* 802F2E78 002EFA58  4E 80 00 20 */	blr

.global it_802F2E7C
it_802F2E7C:
/* 802F2E7C 002EFA5C  7C 08 02 A6 */	mflr r0
/* 802F2E80 002EFA60  90 01 00 04 */	stw r0, 4(r1)
/* 802F2E84 002EFA64  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802F2E88 002EFA68  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802F2E8C 002EFA6C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802F2E90 002EFA70  7C 9E 23 78 */	mr r30, r4
/* 802F2E94 002EFA74  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802F2E98 002EFA78  7C 7D 1B 78 */	mr r29, r3
/* 802F2E9C 002EFA7C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802F2EA0 002EFA80  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802F2EA4 002EFA84  80 84 00 10 */	lwz r4, 0x10(r4)
/* 802F2EA8 002EFA88  80 84 00 08 */	lwz r4, 8(r4)
/* 802F2EAC 002EFA8C  4B F8 21 C5 */	bl it_80275070
/* 802F2EB0 002EFA90  80 7F 0D 00 */	lwz r3, 0xd00(r31)
/* 802F2EB4 002EFA94  4B E1 63 85 */	bl ftKb_SpecialNYs_80109238
/* 802F2EB8 002EFA98  7C 64 1B 78 */	mr r4, r3
/* 802F2EBC 002EFA9C  80 7F 0D 00 */	lwz r3, 0xd00(r31)
/* 802F2EC0 002EFAA0  4B D9 37 71 */	bl ftLib_80086630
/* 802F2EC4 002EFAA4  38 BF 00 4C */	addi r5, r31, 0x4c
/* 802F2EC8 002EFAA8  38 80 00 00 */	li r4, 0
/* 802F2ECC 002EFAAC  4B D1 83 01 */	bl lb_8000B1CC
/* 802F2ED0 002EFAB0  80 7F 0D 00 */	lwz r3, 0xd00(r31)
/* 802F2ED4 002EFAB4  7F A4 EB 78 */	mr r4, r29
/* 802F2ED8 002EFAB8  4B F8 85 CD */	bl it_8027B4A4
/* 802F2EDC 002EFABC  80 7F 0D 00 */	lwz r3, 0xd00(r31)
/* 802F2EE0 002EFAC0  7F A4 EB 78 */	mr r4, r29
/* 802F2EE4 002EFAC4  C0 22 E0 30 */	lfs f1, it_804DDA10@sda21(r2)
/* 802F2EE8 002EFAC8  4B F8 84 91 */	bl it_8027B378
/* 802F2EEC 002EFACC  2C 1E 00 00 */	cmpwi r30, 0
/* 802F2EF0 002EFAD0  41 82 00 0C */	beq .L_802F2EFC
/* 802F2EF4 002EFAD4  38 00 00 00 */	li r0, 0
/* 802F2EF8 002EFAD8  90 1F 0D 60 */	stw r0, 0xd60(r31)
.L_802F2EFC:
/* 802F2EFC 002EFADC  38 00 00 00 */	li r0, 0
/* 802F2F00 002EFAE0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 802F2F04 002EFAE4  7F A3 EB 78 */	mr r3, r29
/* 802F2F08 002EFAE8  90 1F 0D 00 */	stw r0, 0xd00(r31)
/* 802F2F0C 002EFAEC  4B F8 9F 39 */	bl it_8027CE44
/* 802F2F10 002EFAF0  7F A3 EB 78 */	mr r3, r29
/* 802F2F14 002EFAF4  4B F7 79 D9 */	bl Item_8026A8EC
/* 802F2F18 002EFAF8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F2F1C 002EFAFC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802F2F20 002EFB00  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802F2F24 002EFB04  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 802F2F28 002EFB08  38 21 00 28 */	addi r1, r1, 0x28
/* 802F2F2C 002EFB0C  7C 08 03 A6 */	mtlr r0
/* 802F2F30 002EFB10  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F9490
it_803F9490:
    .4byte -1
    .4byte it_802F2E68
    .4byte it_802F2E70
    .4byte it_802F2E74


.section .sdata2
    .balign 8
.global it_804DDA10
it_804DDA10:
    .4byte 0x00000000
