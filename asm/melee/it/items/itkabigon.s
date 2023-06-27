.include "macros.inc"

.section .text

.global it_802C9D40
it_802C9D40:
/* 802C9D40 002C6920  7C 08 02 A6 */	mflr r0
/* 802C9D44 002C6924  38 A0 00 01 */	li r5, 1
/* 802C9D48 002C6928  90 01 00 04 */	stw r0, 4(r1)
/* 802C9D4C 002C692C  38 00 00 00 */	li r0, 0
/* 802C9D50 002C6930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C9D54 002C6934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C9D58 002C6938  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C9D5C 002C693C  7C 7E 1B 78 */	mr r30, r3
/* 802C9D60 002C6940  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802C9D64 002C6944  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802C9D68 002C6948  80 C4 00 04 */	lwz r6, 4(r4)
/* 802C9D6C 002C694C  C0 06 00 04 */	lfs f0, 4(r6)
/* 802C9D70 002C6950  D0 1F 0E 34 */	stfs f0, 0xe34(r31)
/* 802C9D74 002C6954  C0 06 00 08 */	lfs f0, 8(r6)
/* 802C9D78 002C6958  D0 1F 0E 38 */	stfs f0, 0xe38(r31)
/* 802C9D7C 002C695C  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 802C9D80 002C6960  D0 1F 0E 3C */	stfs f0, 0xe3c(r31)
/* 802C9D84 002C6964  80 86 00 10 */	lwz r4, 0x10(r6)
/* 802C9D88 002C6968  90 9F 0E 40 */	stw r4, 0xe40(r31)
/* 802C9D8C 002C696C  80 86 00 14 */	lwz r4, 0x14(r6)
/* 802C9D90 002C6970  90 9F 0E 44 */	stw r4, 0xe44(r31)
/* 802C9D94 002C6974  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 802C9D98 002C6978  FC 00 00 1E */	fctiwz f0, f0
/* 802C9D9C 002C697C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802C9DA0 002C6980  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802C9DA4 002C6984  90 9F 0E 48 */	stw r4, 0xe48(r31)
/* 802C9DA8 002C6988  88 9F 0D CC */	lbz r4, 0xdcc(r31)
/* 802C9DAC 002C698C  50 A4 26 F6 */	rlwimi r4, r5, 4, 0x1b, 0x1b
/* 802C9DB0 002C6990  98 9F 0D CC */	stb r4, 0xdcc(r31)
/* 802C9DB4 002C6994  90 1F 0D AC */	stw r0, 0xdac(r31)
/* 802C9DB8 002C6998  90 1F 0D B0 */	stw r0, 0xdb0(r31)
/* 802C9DBC 002C699C  90 BF 0D B4 */	stw r5, 0xdb4(r31)
/* 802C9DC0 002C69A0  C0 26 00 00 */	lfs f1, 0(r6)
/* 802C9DC4 002C69A4  4B FA FF 19 */	bl it_80279CDC
/* 802C9DC8 002C69A8  38 7F 00 00 */	addi r3, r31, 0
/* 802C9DCC 002C69AC  38 80 27 23 */	li r4, 0x2723
/* 802C9DD0 002C69B0  38 A0 00 7F */	li r5, 0x7f
/* 802C9DD4 002C69B4  38 C0 00 40 */	li r6, 0x40
/* 802C9DD8 002C69B8  4B FA 10 AD */	bl Item_8026AE84
/* 802C9DDC 002C69BC  7F C3 F3 78 */	mr r3, r30
/* 802C9DE0 002C69C0  48 00 05 45 */	bl it_802CA324
/* 802C9DE4 002C69C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C9DE8 002C69C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C9DEC 002C69CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C9DF0 002C69D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802C9DF4 002C69D4  7C 08 03 A6 */	mtlr r0
/* 802C9DF8 002C69D8  4E 80 00 20 */	blr

.global it_802C9DFC
it_802C9DFC:
/* 802C9DFC 002C69DC  4E 80 00 20 */	blr

.global it_802C9E00
it_802C9E00:
/* 802C9E00 002C69E0  7C 08 02 A6 */	mflr r0
/* 802C9E04 002C69E4  38 60 00 02 */	li r3, 2
/* 802C9E08 002C69E8  90 01 00 04 */	stw r0, 4(r1)
/* 802C9E0C 002C69EC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C9E10 002C69F0  4B D6 72 35 */	bl Camera_80031044
/* 802C9E14 002C69F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C9E18 002C69F8  38 21 00 08 */	addi r1, r1, 8
/* 802C9E1C 002C69FC  7C 08 03 A6 */	mtlr r0
/* 802C9E20 002C6A00  4E 80 00 20 */	blr

.global it_802C9E24
it_802C9E24:
/* 802C9E24 002C6A04  7C 08 02 A6 */	mflr r0
/* 802C9E28 002C6A08  90 01 00 04 */	stw r0, 4(r1)
/* 802C9E2C 002C6A0C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C9E30 002C6A10  4B FA 1A 65 */	bl it_8026B894
/* 802C9E34 002C6A14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C9E38 002C6A18  38 21 00 08 */	addi r1, r1, 8
/* 802C9E3C 002C6A1C  7C 08 03 A6 */	mtlr r0
/* 802C9E40 002C6A20  4E 80 00 20 */	blr

.global it_802C9E44
it_802C9E44:
/* 802C9E44 002C6A24  7C 08 02 A6 */	mflr r0
/* 802C9E48 002C6A28  38 A0 00 0E */	li r5, 0xe
/* 802C9E4C 002C6A2C  90 01 00 04 */	stw r0, 4(r1)
/* 802C9E50 002C6A30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C9E54 002C6A34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C9E58 002C6A38  7C 7F 1B 78 */	mr r31, r3
/* 802C9E5C 002C6A3C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802C9E60 002C6A40  88 04 0D CC */	lbz r0, 0xdcc(r4)
/* 802C9E64 002C6A44  50 A0 07 3E */	rlwimi r0, r5, 0, 0x1c, 0x1f
/* 802C9E68 002C6A48  98 04 0D CC */	stb r0, 0xdcc(r4)
/* 802C9E6C 002C6A4C  4B FA 95 E9 */	bl it_80273454
/* 802C9E70 002C6A50  7F E3 FB 78 */	mr r3, r31
/* 802C9E74 002C6A54  48 00 00 19 */	bl it_802C9E8C
/* 802C9E78 002C6A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C9E7C 002C6A5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C9E80 002C6A60  38 21 00 20 */	addi r1, r1, 0x20
/* 802C9E84 002C6A64  7C 08 03 A6 */	mtlr r0
/* 802C9E88 002C6A68  4E 80 00 20 */	blr

.global it_802C9E8C
it_802C9E8C:
/* 802C9E8C 002C6A6C  7C 08 02 A6 */	mflr r0
/* 802C9E90 002C6A70  38 80 00 00 */	li r4, 0
/* 802C9E94 002C6A74  90 01 00 04 */	stw r0, 4(r1)
/* 802C9E98 002C6A78  38 A0 00 02 */	li r5, 2
/* 802C9E9C 002C6A7C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802C9EA0 002C6A80  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802C9EA4 002C6A84  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802C9EA8 002C6A88  4B F9 EF B5 */	bl Item_80268E5C
/* 802C9EAC 002C6A8C  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802C9EB0 002C6A90  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802C9EB4 002C6A94  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802C9EB8 002C6A98  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802C9EBC 002C6A9C  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802C9EC0 002C6AA0  3C 60 80 2D */	lis r3, it_802CA014@ha
/* 802C9EC4 002C6AA4  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802C9EC8 002C6AA8  38 03 A0 14 */	addi r0, r3, it_802CA014@l
/* 802C9ECC 002C6AAC  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 802C9ED0 002C6AB0  38 60 00 03 */	li r3, 3
/* 802C9ED4 002C6AB4  38 80 00 00 */	li r4, 0
/* 802C9ED8 002C6AB8  4B D6 6F 6D */	bl Camera_80030E44
/* 802C9EDC 002C6ABC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C9EE0 002C6AC0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802C9EE4 002C6AC4  38 21 00 18 */	addi r1, r1, 0x18
/* 802C9EE8 002C6AC8  7C 08 03 A6 */	mtlr r0
/* 802C9EEC 002C6ACC  4E 80 00 20 */	blr

.global it_802C9EF0
it_802C9EF0:
/* 802C9EF0 002C6AD0  7C 08 02 A6 */	mflr r0
/* 802C9EF4 002C6AD4  90 01 00 04 */	stw r0, 4(r1)
/* 802C9EF8 002C6AD8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802C9EFC 002C6ADC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802C9F00 002C6AE0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802C9F04 002C6AE4  7C 7E 1B 78 */	mr r30, r3
/* 802C9F08 002C6AE8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802C9F0C 002C6AEC  80 03 0D B0 */	lwz r0, 0xdb0(r3)
/* 802C9F10 002C6AF0  3B E3 00 00 */	addi r31, r3, 0
/* 802C9F14 002C6AF4  28 00 00 00 */	cmplwi r0, 0
/* 802C9F18 002C6AF8  41 82 00 28 */	beq .L_802C9F40
/* 802C9F1C 002C6AFC  C0 1F 0E 34 */	lfs f0, 0xe34(r31)
/* 802C9F20 002C6B00  7F E3 FB 78 */	mr r3, r31
/* 802C9F24 002C6B04  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 802C9F28 002C6B08  4B FA C3 95 */	bl it_802762BC
/* 802C9F2C 002C6B0C  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 802C9F30 002C6B10  28 00 00 00 */	cmplwi r0, 0
/* 802C9F34 002C6B14  41 82 00 0C */	beq .L_802C9F40
/* 802C9F38 002C6B18  38 00 00 00 */	li r0, 0
/* 802C9F3C 002C6B1C  90 1F 0D B4 */	stw r0, 0xdb4(r31)
.L_802C9F40:
/* 802C9F40 002C6B20  4B F5 AC 29 */	bl Stage_GetBlastZoneTopOffset
/* 802C9F44 002C6B24  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 802C9F48 002C6B28  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C9F4C 002C6B2C  40 81 00 0C */	ble .L_802C9F58
/* 802C9F50 002C6B30  7F C3 F3 78 */	mr r3, r30
/* 802C9F54 002C6B34  48 00 01 21 */	bl it_802CA074
.L_802C9F58:
/* 802C9F58 002C6B38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C9F5C 002C6B3C  38 60 00 00 */	li r3, 0
/* 802C9F60 002C6B40  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802C9F64 002C6B44  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802C9F68 002C6B48  38 21 00 18 */	addi r1, r1, 0x18
/* 802C9F6C 002C6B4C  7C 08 03 A6 */	mtlr r0
/* 802C9F70 002C6B50  4E 80 00 20 */	blr

.global it_802C9F74
it_802C9F74:
/* 802C9F74 002C6B54  7C 08 02 A6 */	mflr r0
/* 802C9F78 002C6B58  90 01 00 04 */	stw r0, 4(r1)
/* 802C9F7C 002C6B5C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C9F80 002C6B60  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802C9F84 002C6B64  80 04 0D B0 */	lwz r0, 0xdb0(r4)
/* 802C9F88 002C6B68  28 00 00 00 */	cmplwi r0, 0
/* 802C9F8C 002C6B6C  40 82 00 20 */	bne .L_802C9FAC
/* 802C9F90 002C6B70  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802C9F94 002C6B74  2C 00 00 01 */	cmpwi r0, 1
/* 802C9F98 002C6B78  40 82 00 14 */	bne .L_802C9FAC
/* 802C9F9C 002C6B7C  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802C9FA0 002C6B80  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802C9FA4 002C6B84  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802C9FA8 002C6B88  4B FA 88 B9 */	bl it_80272860
.L_802C9FAC:
/* 802C9FAC 002C6B8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C9FB0 002C6B90  38 21 00 08 */	addi r1, r1, 8
/* 802C9FB4 002C6B94  7C 08 03 A6 */	mtlr r0
/* 802C9FB8 002C6B98  4E 80 00 20 */	blr

.global it_802C9FBC
it_802C9FBC:
/* 802C9FBC 002C6B9C  7C 08 02 A6 */	mflr r0
/* 802C9FC0 002C6BA0  90 01 00 04 */	stw r0, 4(r1)
/* 802C9FC4 002C6BA4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C9FC8 002C6BA8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802C9FCC 002C6BAC  80 04 0D B0 */	lwz r0, 0xdb0(r4)
/* 802C9FD0 002C6BB0  28 00 00 00 */	cmplwi r0, 0
/* 802C9FD4 002C6BB4  40 82 00 2C */	bne .L_802CA000
/* 802C9FD8 002C6BB8  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802C9FDC 002C6BBC  2C 00 00 01 */	cmpwi r0, 1
/* 802C9FE0 002C6BC0  40 82 00 14 */	bne .L_802C9FF4
/* 802C9FE4 002C6BC4  3C 80 80 2D */	lis r4, it_802C9DFC@ha
/* 802C9FE8 002C6BC8  38 84 9D FC */	addi r4, r4, it_802C9DFC@l
/* 802C9FEC 002C6BCC  4B FA 41 71 */	bl it_8026E15C
/* 802C9FF0 002C6BD0  48 00 00 10 */	b .L_802CA000
.L_802C9FF4:
/* 802C9FF4 002C6BD4  3C 80 80 2D */	lis r4, it_802C9DFC@ha
/* 802C9FF8 002C6BD8  38 84 9D FC */	addi r4, r4, it_802C9DFC@l
/* 802C9FFC 002C6BDC  4B FA 36 31 */	bl it_8026D62C
.L_802CA000:
/* 802CA000 002C6BE0  38 60 00 00 */	li r3, 0
/* 802CA004 002C6BE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CA008 002C6BE8  38 21 00 08 */	addi r1, r1, 8
/* 802CA00C 002C6BEC  7C 08 03 A6 */	mtlr r0
/* 802CA010 002C6BF0  4E 80 00 20 */	blr

.global it_802CA014
it_802CA014:
/* 802CA014 002C6BF4  7C 08 02 A6 */	mflr r0
/* 802CA018 002C6BF8  90 01 00 04 */	stw r0, 4(r1)
/* 802CA01C 002C6BFC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802CA020 002C6C00  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CA024 002C6C04  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802CA028 002C6C08  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802CA02C 002C6C0C  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 802CA030 002C6C10  28 00 00 00 */	cmplwi r0, 0
/* 802CA034 002C6C14  41 82 00 28 */	beq .L_802CA05C
/* 802CA038 002C6C18  80 9F 0E 44 */	lwz r4, 0xe44(r31)
/* 802CA03C 002C6C1C  34 04 FF FF */	addic. r0, r4, -1
/* 802CA040 002C6C20  90 1F 0E 44 */	stw r0, 0xe44(r31)
/* 802CA044 002C6C24  40 82 00 18 */	bne .L_802CA05C
/* 802CA048 002C6C28  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802CA04C 002C6C2C  83 C4 00 04 */	lwz r30, 4(r4)
/* 802CA050 002C6C30  48 00 03 A5 */	bl it_802CA3F4
/* 802CA054 002C6C34  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802CA058 002C6C38  90 1F 0E 44 */	stw r0, 0xe44(r31)
.L_802CA05C:
/* 802CA05C 002C6C3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802CA060 002C6C40  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802CA064 002C6C44  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802CA068 002C6C48  38 21 00 18 */	addi r1, r1, 0x18
/* 802CA06C 002C6C4C  7C 08 03 A6 */	mtlr r0
/* 802CA070 002C6C50  4E 80 00 20 */	blr

.global it_802CA074
it_802CA074:
/* 802CA074 002C6C54  7C 08 02 A6 */	mflr r0
/* 802CA078 002C6C58  38 80 00 10 */	li r4, 0x10
/* 802CA07C 002C6C5C  90 01 00 04 */	stw r0, 4(r1)
/* 802CA080 002C6C60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CA084 002C6C64  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802CA088 002C6C68  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802CA08C 002C6C6C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802CA090 002C6C70  7C 7D 1B 78 */	mr r29, r3
/* 802CA094 002C6C74  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 802CA098 002C6C78  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 802CA09C 002C6C7C  7F E3 FB 78 */	mr r3, r31
/* 802CA0A0 002C6C80  48 0A 7C FD */	bl HSD_JObjSetFlagsAll
/* 802CA0A4 002C6C84  38 7D 00 00 */	addi r3, r29, 0
/* 802CA0A8 002C6C88  38 80 00 01 */	li r4, 1
/* 802CA0AC 002C6C8C  38 A0 00 02 */	li r5, 2
/* 802CA0B0 002C6C90  4B F9 ED AD */	bl Item_80268E5C
/* 802CA0B4 002C6C94  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802CA0B8 002C6C98  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802CA0BC 002C6C9C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802CA0C0 002C6CA0  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 802CA0C4 002C6CA4  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802CA0C8 002C6CA8  90 1E 0D 2C */	stw r0, 0xd2c(r30)
/* 802CA0CC 002C6CAC  28 1F 00 00 */	cmplwi r31, 0
/* 802CA0D0 002C6CB0  C0 02 D9 58 */	lfs f0, it_804DD338@sda21(r2)
/* 802CA0D4 002C6CB4  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 802CA0D8 002C6CB8  C0 1E 0E 3C */	lfs f0, 0xe3c(r30)
/* 802CA0DC 002C6CBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802CA0E0 002C6CC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802CA0E4 002C6CC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802CA0E8 002C6CC8  40 82 00 14 */	bne .L_802CA0FC
/* 802CA0EC 002C6CCC  38 6D 9F 20 */	addi r3, r13, it_804D55C0@sda21
/* 802CA0F0 002C6CD0  38 80 02 F8 */	li r4, 0x2f8
/* 802CA0F4 002C6CD4  38 AD 9F 28 */	addi r5, r13, it_804D55C8@sda21
/* 802CA0F8 002C6CD8  48 0B E1 29 */	bl __assert
.L_802CA0FC:
/* 802CA0FC 002C6CDC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CA100 002C6CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CA104 002C6CE4  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 802CA108 002C6CE8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802CA10C 002C6CEC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802CA110 002C6CF0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802CA114 002C6CF4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802CA118 002C6CF8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 802CA11C 002C6CFC  40 82 00 4C */	bne .L_802CA168
/* 802CA120 002C6D00  28 1F 00 00 */	cmplwi r31, 0
/* 802CA124 002C6D04  41 82 00 44 */	beq .L_802CA168
/* 802CA128 002C6D08  40 82 00 14 */	bne .L_802CA13C
/* 802CA12C 002C6D0C  38 6D 9F 20 */	addi r3, r13, it_804D55C0@sda21
/* 802CA130 002C6D10  38 80 02 34 */	li r4, 0x234
/* 802CA134 002C6D14  38 AD 9F 28 */	addi r5, r13, it_804D55C8@sda21
/* 802CA138 002C6D18  48 0B E0 E9 */	bl __assert
.L_802CA13C:
/* 802CA13C 002C6D1C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802CA140 002C6D20  38 60 00 00 */	li r3, 0
/* 802CA144 002C6D24  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 802CA148 002C6D28  40 82 00 10 */	bne .L_802CA158
/* 802CA14C 002C6D2C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 802CA150 002C6D30  41 82 00 08 */	beq .L_802CA158
/* 802CA154 002C6D34  38 60 00 01 */	li r3, 1
.L_802CA158:
/* 802CA158 002C6D38  2C 03 00 00 */	cmpwi r3, 0
/* 802CA15C 002C6D3C  40 82 00 0C */	bne .L_802CA168
/* 802CA160 002C6D40  7F E3 FB 78 */	mr r3, r31
/* 802CA164 002C6D44  48 0A 91 85 */	bl HSD_JObjSetMtxDirtySub
.L_802CA168:
/* 802CA168 002C6D48  38 7E 00 00 */	addi r3, r30, 0
/* 802CA16C 002C6D4C  38 80 27 24 */	li r4, 0x2724
/* 802CA170 002C6D50  38 A0 00 7F */	li r5, 0x7f
/* 802CA174 002C6D54  38 C0 00 40 */	li r6, 0x40
/* 802CA178 002C6D58  4B FA 0D 0D */	bl Item_8026AE84
/* 802CA17C 002C6D5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CA180 002C6D60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802CA184 002C6D64  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802CA188 002C6D68  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802CA18C 002C6D6C  38 21 00 30 */	addi r1, r1, 0x30
/* 802CA190 002C6D70  7C 08 03 A6 */	mtlr r0
/* 802CA194 002C6D74  4E 80 00 20 */	blr

.global it_802CA198
it_802CA198:
/* 802CA198 002C6D78  7C 08 02 A6 */	mflr r0
/* 802CA19C 002C6D7C  90 01 00 04 */	stw r0, 4(r1)
/* 802CA1A0 002C6D80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CA1A4 002C6D84  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802CA1A8 002C6D88  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802CA1AC 002C6D8C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802CA1B0 002C6D90  7C 7D 1B 78 */	mr r29, r3
/* 802CA1B4 002C6D94  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 802CA1B8 002C6D98  80 1E 0D AC */	lwz r0, 0xdac(r30)
/* 802CA1BC 002C6D9C  28 00 00 00 */	cmplwi r0, 0
/* 802CA1C0 002C6DA0  40 82 00 50 */	bne .L_802CA210
/* 802CA1C4 002C6DA4  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 802CA1C8 002C6DA8  2C 03 00 00 */	cmpwi r3, 0
/* 802CA1CC 002C6DAC  41 81 00 38 */	bgt .L_802CA204
/* 802CA1D0 002C6DB0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802CA1D4 002C6DB4  38 00 00 01 */	li r0, 1
/* 802CA1D8 002C6DB8  38 80 00 10 */	li r4, 0x10
/* 802CA1DC 002C6DBC  90 1E 0D AC */	stw r0, 0xdac(r30)
/* 802CA1E0 002C6DC0  48 0A 7D BD */	bl HSD_JObjClearFlagsAll
/* 802CA1E4 002C6DC4  4B F5 A9 85 */	bl Stage_GetBlastZoneTopOffset
/* 802CA1E8 002C6DC8  D0 3E 00 50 */	stfs f1, 0x50(r30)
/* 802CA1EC 002C6DCC  38 60 00 02 */	li r3, 2
/* 802CA1F0 002C6DD0  38 80 00 00 */	li r4, 0
/* 802CA1F4 002C6DD4  C0 1E 0E 38 */	lfs f0, 0xe38(r30)
/* 802CA1F8 002C6DD8  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 802CA1FC 002C6DDC  4B D6 6C 49 */	bl Camera_80030E44
/* 802CA200 002C6DE0  48 00 00 28 */	b .L_802CA228
.L_802CA204:
/* 802CA204 002C6DE4  38 03 FF FF */	addi r0, r3, -1
/* 802CA208 002C6DE8  90 1E 0E 40 */	stw r0, 0xe40(r30)
/* 802CA20C 002C6DEC  48 00 00 1C */	b .L_802CA228
.L_802CA210:
/* 802CA210 002C6DF0  4B F5 A9 71 */	bl Stage_GetBlastZoneBottomOffset
/* 802CA214 002C6DF4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 802CA218 002C6DF8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802CA21C 002C6DFC  40 80 00 0C */	bge .L_802CA228
/* 802CA220 002C6E00  38 60 00 01 */	li r3, 1
/* 802CA224 002C6E04  48 00 00 D8 */	b .L_802CA2FC
.L_802CA228:
/* 802CA228 002C6E08  7F A3 EB 78 */	mr r3, r29
/* 802CA22C 002C6E0C  4B FA 8A 41 */	bl it_80272C6C
/* 802CA230 002C6E10  2C 03 00 00 */	cmpwi r3, 0
/* 802CA234 002C6E14  40 82 00 C4 */	bne .L_802CA2F8
/* 802CA238 002C6E18  83 FD 00 28 */	lwz r31, 0x28(r29)
/* 802CA23C 002C6E1C  38 7D 00 00 */	addi r3, r29, 0
/* 802CA240 002C6E20  38 80 00 01 */	li r4, 1
/* 802CA244 002C6E24  38 A0 00 02 */	li r5, 2
/* 802CA248 002C6E28  4B F9 EC 15 */	bl Item_80268E5C
/* 802CA24C 002C6E2C  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802CA250 002C6E30  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802CA254 002C6E34  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802CA258 002C6E38  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 802CA25C 002C6E3C  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802CA260 002C6E40  90 1E 0D 2C */	stw r0, 0xd2c(r30)
/* 802CA264 002C6E44  28 1F 00 00 */	cmplwi r31, 0
/* 802CA268 002C6E48  C0 1E 0E 3C */	lfs f0, 0xe3c(r30)
/* 802CA26C 002C6E4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802CA270 002C6E50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802CA274 002C6E54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802CA278 002C6E58  40 82 00 14 */	bne .L_802CA28C
/* 802CA27C 002C6E5C  38 6D 9F 20 */	addi r3, r13, it_804D55C0@sda21
/* 802CA280 002C6E60  38 80 02 F8 */	li r4, 0x2f8
/* 802CA284 002C6E64  38 AD 9F 28 */	addi r5, r13, it_804D55C8@sda21
/* 802CA288 002C6E68  48 0B DF 99 */	bl __assert
.L_802CA28C:
/* 802CA28C 002C6E6C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802CA290 002C6E70  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802CA294 002C6E74  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 802CA298 002C6E78  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802CA29C 002C6E7C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802CA2A0 002C6E80  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802CA2A4 002C6E84  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802CA2A8 002C6E88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 802CA2AC 002C6E8C  40 82 00 4C */	bne .L_802CA2F8
/* 802CA2B0 002C6E90  28 1F 00 00 */	cmplwi r31, 0
/* 802CA2B4 002C6E94  41 82 00 44 */	beq .L_802CA2F8
/* 802CA2B8 002C6E98  40 82 00 14 */	bne .L_802CA2CC
/* 802CA2BC 002C6E9C  38 6D 9F 20 */	addi r3, r13, it_804D55C0@sda21
/* 802CA2C0 002C6EA0  38 80 02 34 */	li r4, 0x234
/* 802CA2C4 002C6EA4  38 AD 9F 28 */	addi r5, r13, it_804D55C8@sda21
/* 802CA2C8 002C6EA8  48 0B DF 59 */	bl __assert
.L_802CA2CC:
/* 802CA2CC 002C6EAC  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 802CA2D0 002C6EB0  38 60 00 00 */	li r3, 0
/* 802CA2D4 002C6EB4  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 802CA2D8 002C6EB8  40 82 00 10 */	bne .L_802CA2E8
/* 802CA2DC 002C6EBC  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 802CA2E0 002C6EC0  41 82 00 08 */	beq .L_802CA2E8
/* 802CA2E4 002C6EC4  38 60 00 01 */	li r3, 1
.L_802CA2E8:
/* 802CA2E8 002C6EC8  2C 03 00 00 */	cmpwi r3, 0
/* 802CA2EC 002C6ECC  40 82 00 0C */	bne .L_802CA2F8
/* 802CA2F0 002C6ED0  7F E3 FB 78 */	mr r3, r31
/* 802CA2F4 002C6ED4  48 0A 8F F5 */	bl HSD_JObjSetMtxDirtySub
.L_802CA2F8:
/* 802CA2F8 002C6ED8  38 60 00 00 */	li r3, 0
.L_802CA2FC:
/* 802CA2FC 002C6EDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CA300 002C6EE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802CA304 002C6EE4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802CA308 002C6EE8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802CA30C 002C6EEC  38 21 00 30 */	addi r1, r1, 0x30
/* 802CA310 002C6EF0  7C 08 03 A6 */	mtlr r0
/* 802CA314 002C6EF4  4E 80 00 20 */	blr

.global it_802CA318
it_802CA318:
/* 802CA318 002C6EF8  4E 80 00 20 */	blr

.global it_802CA31C
it_802CA31C:
/* 802CA31C 002C6EFC  38 60 00 00 */	li r3, 0
/* 802CA320 002C6F00  4E 80 00 20 */	blr

.global it_802CA324
it_802CA324:
/* 802CA324 002C6F04  7C 08 02 A6 */	mflr r0
/* 802CA328 002C6F08  90 01 00 04 */	stw r0, 4(r1)
/* 802CA32C 002C6F0C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802CA330 002C6F10  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CA334 002C6F14  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802CA338 002C6F18  7C 7E 1B 78 */	mr r30, r3
/* 802CA33C 002C6F1C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802CA340 002C6F20  7F E3 FB 78 */	mr r3, r31
/* 802CA344 002C6F24  4B FA BF 79 */	bl it_802762BC
/* 802CA348 002C6F28  38 7E 00 00 */	addi r3, r30, 0
/* 802CA34C 002C6F2C  38 80 00 02 */	li r4, 2
/* 802CA350 002C6F30  38 A0 00 02 */	li r5, 2
/* 802CA354 002C6F34  4B F9 EB 09 */	bl Item_80268E5C
/* 802CA358 002C6F38  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802CA35C 002C6F3C  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802CA360 002C6F40  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802CA364 002C6F44  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802CA368 002C6F48  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802CA36C 002C6F4C  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802CA370 002C6F50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802CA374 002C6F54  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802CA378 002C6F58  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802CA37C 002C6F5C  38 21 00 18 */	addi r1, r1, 0x18
/* 802CA380 002C6F60  7C 08 03 A6 */	mtlr r0
/* 802CA384 002C6F64  4E 80 00 20 */	blr

.global it_802CA388
it_802CA388:
/* 802CA388 002C6F68  7C 08 02 A6 */	mflr r0
/* 802CA38C 002C6F6C  90 01 00 04 */	stw r0, 4(r1)
/* 802CA390 002C6F70  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CA394 002C6F74  4B FA FC 65 */	bl it_80279FF8
/* 802CA398 002C6F78  38 60 00 00 */	li r3, 0
/* 802CA39C 002C6F7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CA3A0 002C6F80  38 21 00 08 */	addi r1, r1, 8
/* 802CA3A4 002C6F84  7C 08 03 A6 */	mtlr r0
/* 802CA3A8 002C6F88  4E 80 00 20 */	blr

.global it_802CA3AC
it_802CA3AC:
/* 802CA3AC 002C6F8C  7C 08 02 A6 */	mflr r0
/* 802CA3B0 002C6F90  90 01 00 04 */	stw r0, 4(r1)
/* 802CA3B4 002C6F94  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CA3B8 002C6F98  4B FA FC E5 */	bl it_8027A09C
/* 802CA3BC 002C6F9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CA3C0 002C6FA0  38 21 00 08 */	addi r1, r1, 8
/* 802CA3C4 002C6FA4  7C 08 03 A6 */	mtlr r0
/* 802CA3C8 002C6FA8  4E 80 00 20 */	blr

.global it_802CA3CC
it_802CA3CC:
/* 802CA3CC 002C6FAC  7C 08 02 A6 */	mflr r0
/* 802CA3D0 002C6FB0  3C 80 80 2D */	lis r4, it_802C9E44@ha
/* 802CA3D4 002C6FB4  90 01 00 04 */	stw r0, 4(r1)
/* 802CA3D8 002C6FB8  38 84 9E 44 */	addi r4, r4, it_802C9E44@l
/* 802CA3DC 002C6FBC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CA3E0 002C6FC0  4B FA FD 39 */	bl it_8027A118
/* 802CA3E4 002C6FC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CA3E8 002C6FC8  38 21 00 08 */	addi r1, r1, 8
/* 802CA3EC 002C6FCC  7C 08 03 A6 */	mtlr r0
/* 802CA3F0 002C6FD0  4E 80 00 20 */	blr

.global it_802CA3F4
it_802CA3F4:
/* 802CA3F4 002C6FD4  7C 08 02 A6 */	mflr r0
/* 802CA3F8 002C6FD8  90 01 00 04 */	stw r0, 4(r1)
/* 802CA3FC 002C6FDC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802CA400 002C6FE0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802CA404 002C6FE4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802CA408 002C6FE8  7C 7E 1B 78 */	mr r30, r3
/* 802CA40C 002C6FEC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 802CA410 002C6FF0  80 85 00 C4 */	lwz r4, 0xc4(r5)
/* 802CA414 002C6FF4  80 65 00 4C */	lwz r3, 0x4c(r5)
/* 802CA418 002C6FF8  83 E4 00 04 */	lwz r31, 4(r4)
/* 802CA41C 002C6FFC  80 05 00 50 */	lwz r0, 0x50(r5)
/* 802CA420 002C7000  90 61 00 10 */	stw r3, 0x10(r1)
/* 802CA424 002C7004  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CA428 002C7008  80 05 00 54 */	lwz r0, 0x54(r5)
/* 802CA42C 002C700C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CA430 002C7010  48 0B 60 F9 */	bl HSD_Randf
/* 802CA434 002C7014  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 802CA438 002C7018  C0 02 D9 5C */	lfs f0, it_804DD33C@sda21(r2)
/* 802CA43C 002C701C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 802CA440 002C7020  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802CA444 002C7024  EC 00 18 78 */	fmsubs f0, f0, f1, f3
/* 802CA448 002C7028  EC 02 00 2A */	fadds f0, f2, f0
/* 802CA44C 002C702C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802CA450 002C7030  48 0B 60 D9 */	bl HSD_Randf
/* 802CA454 002C7034  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 802CA458 002C7038  7F C4 F3 78 */	mr r4, r30
/* 802CA45C 002C703C  C0 02 D9 5C */	lfs f0, it_804DD33C@sda21(r2)
/* 802CA460 002C7040  38 A1 00 10 */	addi r5, r1, 0x10
/* 802CA464 002C7044  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802CA468 002C7048  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802CA46C 002C704C  4C C6 31 82 */	crclr 6
/* 802CA470 002C7050  38 60 04 05 */	li r3, 0x405
/* 802CA474 002C7054  EC 00 18 78 */	fmsubs f0, f0, f1, f3
/* 802CA478 002C7058  EC 02 00 2A */	fadds f0, f2, f0
/* 802CA47C 002C705C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802CA480 002C7060  4B D9 59 5D */	bl efSync_Spawn
/* 802CA484 002C7064  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802CA488 002C7068  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802CA48C 002C706C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802CA490 002C7070  38 21 00 28 */	addi r1, r1, 0x28
/* 802CA494 002C7074  7C 08 03 A6 */	mtlr r0
/* 802CA498 002C7078  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F7AD8
it_803F7AD8:
    .4byte 0
    .4byte it_802C9EF0
    .4byte it_802C9F74
    .4byte it_802C9FBC
    .4byte 1
    .4byte it_802CA198
    .4byte it_802CA318
    .4byte it_802CA31C
    .4byte -1
    .4byte it_802CA388
    .4byte it_802CA3AC
    .4byte it_802CA3CC


.section .sdata
    .balign 8
.global it_804D55C0
it_804D55C0:
    .asciz "jobj.h"
    .balign 4
.global it_804D55C8
it_804D55C8:
    .asciz "jobj"


.section .sdata2
    .balign 8
.global it_804DD338
it_804DD338:
    .4byte 0x00000000
.global it_804DD33C
it_804DD33C:
    .4byte 0x40000000
