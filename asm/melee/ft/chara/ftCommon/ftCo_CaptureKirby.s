.include "macros.inc"
.file "ftCo_CaptureKirby.c"

# 0x00000000 - 0x00000484
.text
.balign 4

.fn ftCo_800BD19C, global
/* 00000000 00000040  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 00000004 00000044  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00000008 00000048  C0 63 00 B0 */	lfs f3, 0xb0(r3)
/* 0000000C 0000004C  C0 23 00 B4 */	lfs f1, 0xb4(r3)
/* 00000010 00000050  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 00000014 00000054  EC 83 10 28 */	fsubs f4, f3, f2
/* 00000018 00000058  C0 43 00 B8 */	lfs f2, 0xb8(r3)
/* 0000001C 0000005C  EC 61 00 28 */	fsubs f3, f1, f0
/* 00000020 00000060  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 00000024 00000064  EC 24 01 32 */	fmuls f1, f4, f4
/* 00000028 00000068  EC 42 00 28 */	fsubs f2, f2, f0
/* 0000002C 0000006C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 00000030 00000070  EC 42 00 B2 */	fmuls f2, f2, f2
/* 00000034 00000074  EC 01 00 2A */	fadds f0, f1, f0
/* 00000038 00000078  EC 22 00 2A */	fadds f1, f2, f0
/* 0000003C 0000007C  4E 80 00 20 */	blr
.endfn ftCo_800BD19C

.fn ftCo_800BD1DC, global
/* 00000040 00000080  7C 08 02 A6 */	mflr r0
/* 00000044 00000084  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000048 00000088  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 0000004C 0000008C  BF 61 00 44 */	stmw r27, 0x44(r1)
/* 00000050 00000090  3B 63 00 00 */	addi r27, r3, 0x0
/* 00000054 00000094  3B C4 00 00 */	addi r30, r4, 0x0
/* 00000058 00000098  83 83 00 2C */	lwz r28, 0x2c(r3)
/* 0000005C 0000009C  83 A4 00 2C */	lwz r29, 0x2c(r4)
/* 00000060 000000A0  48 00 00 01 */	bl ftCommon_8007DB58
/* 00000064 000000A4  7F 63 DB 78 */	mr r3, r27
/* 00000068 000000A8  48 00 00 01 */	bl ftCo_8009750C
/* 0000006C 000000AC  7F 63 DB 78 */	mr r3, r27
/* 00000070 000000B0  48 00 00 01 */	bl ftCo_800DD168
/* 00000074 000000B4  93 DC 1A 5C */	stw r30, 0x1a5c(r28)
/* 00000078 000000B8  38 E0 00 00 */	li r7, 0x0
/* 0000007C 000000BC  38 7B 00 00 */	addi r3, r27, 0x0
/* 00000080 000000C0  93 DC 1A 58 */	stw r30, 0x1a58(r28)
/* 00000084 000000C4  38 80 01 20 */	li r4, 0x120
/* 00000088 000000C8  38 A0 00 00 */	li r5, 0x0
/* 0000008C 000000CC  88 1C 22 1B */	lbz r0, 0x221b(r28)
/* 00000090 000000D0  50 E0 17 7A */	rlwimi r0, r7, 2, 29, 29
/* 00000094 000000D4  38 C0 00 00 */	li r6, 0x0
/* 00000098 000000D8  98 1C 22 1B */	stb r0, 0x221b(r28)
/* 0000009C 000000DC  88 1C 22 1B */	lbz r0, 0x221b(r28)
/* 000000A0 000000E0  50 E0 07 FE */	rlwimi r0, r7, 0, 31, 31
/* 000000A4 000000E4  98 1C 22 1B */	stb r0, 0x221b(r28)
/* 000000A8 000000E8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 000000AC 000000EC  FC 00 00 50 */	fneg f0, f0
/* 000000B0 000000F0  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 000000B4 000000F4  C0 20 00 00 */	lfs f1, ftCo_804D8BA8@sda21(r0)
/* 000000B8 000000F8  C0 40 00 00 */	lfs f2, ftCo_804D8BAC@sda21(r0)
/* 000000BC 000000FC  FC 60 08 90 */	fmr f3, f1
/* 000000C0 00000100  48 00 00 01 */	bl Fighter_ChangeMotionState
/* 000000C4 00000104  7F 83 E3 78 */	mr r3, r28
/* 000000C8 00000108  48 00 00 01 */	bl ftCommon_8007D5D4
/* 000000CC 0000010C  83 DB 00 2C */	lwz r30, 0x2c(r27)
/* 000000D0 00000110  83 FB 00 28 */	lwz r31, 0x28(r27)
/* 000000D4 00000114  80 7E 1A 58 */	lwz r3, 0x1a58(r30)
/* 000000D8 00000118  48 00 00 01 */	bl ftKb_SpecialN_800F5B4C
/* 000000DC 0000011C  D0 3E 23 48 */	stfs f1, 0x2348(r30)
/* 000000E0 00000120  80 7E 1A 58 */	lwz r3, 0x1a58(r30)
/* 000000E4 00000124  48 00 00 01 */	bl ftKb_SpecialN_800F5B3C
/* 000000E8 00000128  D0 3E 23 4C */	stfs f1, 0x234c(r30)
/* 000000EC 0000012C  38 81 00 24 */	addi r4, r1, 0x24
/* 000000F0 00000130  80 7E 1A 58 */	lwz r3, 0x1a58(r30)
/* 000000F4 00000134  48 00 00 01 */	bl ftKb_SpecialN_800F5B5C
/* 000000F8 00000138  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 000000FC 0000013C  38 81 00 30 */	addi r4, r1, 0x30
/* 00000100 00000140  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 00000104 00000144  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000108 00000148  D0 1E 23 40 */	stfs f0, 0x2340(r30)
/* 0000010C 0000014C  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 00000110 00000150  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 00000114 00000154  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000118 00000158  D0 1E 23 44 */	stfs f0, 0x2344(r30)
/* 0000011C 0000015C  80 7E 1A 58 */	lwz r3, 0x1a58(r30)
/* 00000120 00000160  48 00 00 01 */	bl ftKb_SpecialN_800F5B20
/* 00000124 00000164  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 00000128 00000168  28 1F 00 00 */	cmplwi r31, 0x0
/* 0000012C 0000016C  3B BE 23 6C */	addi r29, r30, 0x236c
/* 00000130 00000170  D0 1E 23 50 */	stfs f0, 0x2350(r30)
/* 00000134 00000174  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 00000138 00000178  D0 1E 23 54 */	stfs f0, 0x2354(r30)
/* 0000013C 0000017C  40 82 00 14 */	bne .L_00000150
/* 00000140 00000180  38 60 00 00 */	li r3, ftCo_804D3BB0@sda21
/* 00000144 00000184  38 80 03 37 */	li r4, 0x337
/* 00000148 00000188  38 A0 00 00 */	li r5, ftCo_804D3BB8@sda21
/* 0000014C 0000018C  48 00 00 01 */	bl __assert
.L_00000150:
/* 00000150 00000190  28 1D 00 00 */	cmplwi r29, 0x0
/* 00000154 00000194  40 82 00 14 */	bne .L_00000168
/* 00000158 00000198  38 60 00 00 */	li r3, ftCo_804D3BB0@sda21
/* 0000015C 0000019C  38 80 03 38 */	li r4, 0x338
/* 00000160 000001A0  38 A0 00 00 */	li r5, ftCo_804D3BC0@sda21
/* 00000164 000001A4  48 00 00 01 */	bl __assert
.L_00000168:
/* 00000168 000001A8  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 0000016C 000001AC  38 60 00 01 */	li r3, 0x1
/* 00000170 000001B0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 00000174 000001B4  90 9D 00 00 */	stw r4, 0x0(r29)
/* 00000178 000001B8  90 1D 00 04 */	stw r0, 0x4(r29)
/* 0000017C 000001BC  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 00000180 000001C0  90 1D 00 08 */	stw r0, 0x8(r29)
/* 00000184 000001C4  88 1E 22 26 */	lbz r0, 0x2226(r30)
/* 00000188 000001C8  50 60 2E B4 */	rlwimi r0, r3, 5, 26, 26
/* 0000018C 000001CC  98 1E 22 26 */	stb r0, 0x2226(r30)
/* 00000190 000001D0  80 7C 1A 58 */	lwz r3, 0x1a58(r28)
/* 00000194 000001D4  48 00 00 01 */	bl ftKb_SpecialN_800F5AF0
/* 00000198 000001D8  38 7C 00 00 */	addi r3, r28, 0x0
/* 0000019C 000001DC  38 80 00 00 */	li r4, 0x0
/* 000001A0 000001E0  48 00 00 01 */	bl ftCommon_8007DBCC
/* 000001A4 000001E4  38 7C 00 00 */	addi r3, r28, 0x0
/* 000001A8 000001E8  38 80 01 FF */	li r4, 0x1ff
/* 000001AC 000001EC  48 00 00 01 */	bl ftCommon_8007E2F4
/* 000001B0 000001F0  7F 63 DB 78 */	mr r3, r27
/* 000001B4 000001F4  48 00 00 01 */	bl ftAnim_8006EBA4
/* 000001B8 000001F8  38 7C 00 00 */	addi r3, r28, 0x0
/* 000001BC 000001FC  38 80 00 01 */	li r4, 0x1
/* 000001C0 00000200  38 A0 00 00 */	li r5, 0x0
/* 000001C4 00000204  48 00 00 01 */	bl ftCommon_8007EBAC
/* 000001C8 00000208  7F 63 DB 78 */	mr r3, r27
/* 000001CC 0000020C  48 00 00 01 */	bl ftCommon_8007E2FC
/* 000001D0 00000210  3C 60 00 00 */	lis r3, ftCo_800BD39C@ha
/* 000001D4 00000214  38 03 00 00 */	addi r0, r3, ftCo_800BD39C@l
/* 000001D8 00000218  90 1C 21 B0 */	stw r0, 0x21b0(r28)
/* 000001DC 0000021C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 000001E0 00000220  BB 61 00 44 */	lmw r27, 0x44(r1)
/* 000001E4 00000224  38 21 00 58 */	addi r1, r1, 0x58
/* 000001E8 00000228  7C 08 03 A6 */	mtlr r0
/* 000001EC 0000022C  4E 80 00 20 */	blr
.endfn ftCo_800BD1DC

.fn ftCo_CaptureKirby_Anim, global
/* 000001F0 00000230  4E 80 00 20 */	blr
.endfn ftCo_CaptureKirby_Anim

.fn ftCo_CaptureKirby_IASA, global
/* 000001F4 00000234  4E 80 00 20 */	blr
.endfn ftCo_CaptureKirby_IASA

.fn ftCo_CaptureKirby_Phys, global
/* 000001F8 00000238  4E 80 00 20 */	blr
.endfn ftCo_CaptureKirby_Phys

.fn ftCo_CaptureKirby_Coll, global
/* 000001FC 0000023C  4E 80 00 20 */	blr
.endfn ftCo_CaptureKirby_Coll

.fn ftCo_800BD39C, global
/* 00000200 00000240  7C 08 02 A6 */	mflr r0
/* 00000204 00000244  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000208 00000248  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 0000020C 0000024C  93 E1 00 54 */	stw r31, 0x54(r1)
/* 00000210 00000250  93 C1 00 50 */	stw r30, 0x50(r1)
/* 00000214 00000254  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 00000218 00000258  7C 7D 1B 78 */	mr r29, r3
/* 0000021C 0000025C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 00000220 00000260  C0 03 23 40 */	lfs f0, 0x2340(r3)
/* 00000224 00000264  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 00000228 00000268  C0 03 23 44 */	lfs f0, 0x2344(r3)
/* 0000022C 0000026C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 00000230 00000270  C0 00 00 00 */	lfs f0, ftCo_804D8BA8@sda21(r0)
/* 00000234 00000274  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 00000238 00000278  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 0000023C 0000027C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 00000240 00000280  EC 21 00 72 */	fmuls f1, f1, f1
/* 00000244 00000284  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 00000248 00000288  EC 00 00 32 */	fmuls f0, f0, f0
/* 0000024C 0000028C  83 FD 00 2C */	lwz r31, 0x2c(r29)
/* 00000250 00000290  EC 42 00 B2 */	fmuls f2, f2, f2
/* 00000254 00000294  EC 01 00 2A */	fadds f0, f1, f0
/* 00000258 00000298  83 DD 00 28 */	lwz r30, 0x28(r29)
/* 0000025C 0000029C  EC 22 00 2A */	fadds f1, f2, f0
/* 00000260 000002A0  48 00 00 01 */	bl sqrtf__Ff
/* 00000264 000002A4  C0 1F 23 48 */	lfs f0, 0x2348(r31)
/* 00000268 000002A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000026C 000002AC  40 80 00 DC */	bge .L_00000348
/* 00000270 000002B0  EC 21 00 24 */	fdivs f1, f1, f0
/* 00000274 000002B4  C0 5F 23 4C */	lfs f2, 0x234c(r31)
/* 00000278 000002B8  C0 00 00 00 */	lfs f0, ftCo_804D8BAC@sda21(r0)
/* 0000027C 000002BC  28 1E 00 00 */	cmplwi r30, 0x0
/* 00000280 000002C0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 00000284 000002C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 00000288 000002C8  EC 00 08 2A */	fadds f0, f0, f1
/* 0000028C 000002CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 00000290 000002D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 00000294 000002D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 00000298 000002D8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 0000029C 000002DC  C0 1F 23 6C */	lfs f0, 0x236c(r31)
/* 000002A0 000002E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 000002A4 000002E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 000002A8 000002E8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 000002AC 000002EC  C0 1F 23 70 */	lfs f0, 0x2370(r31)
/* 000002B0 000002F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 000002B4 000002F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 000002B8 000002F8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 000002BC 000002FC  C0 1F 23 74 */	lfs f0, 0x2374(r31)
/* 000002C0 00000300  EC 01 00 32 */	fmuls f0, f1, f0
/* 000002C4 00000304  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 000002C8 00000308  40 82 00 14 */	bne .L_000002DC
/* 000002CC 0000030C  38 60 00 00 */	li r3, ftCo_804D3BB0@sda21
/* 000002D0 00000310  38 80 02 F8 */	li r4, 0x2f8
/* 000002D4 00000314  38 A0 00 00 */	li r5, ftCo_804D3BB8@sda21
/* 000002D8 00000318  48 00 00 01 */	bl __assert
.L_000002DC:
/* 000002DC 0000031C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 000002E0 00000320  80 01 00 28 */	lwz r0, 0x28(r1)
/* 000002E4 00000324  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 000002E8 00000328  90 1E 00 30 */	stw r0, 0x30(r30)
/* 000002EC 0000032C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 000002F0 00000330  90 1E 00 34 */	stw r0, 0x34(r30)
/* 000002F4 00000334  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 000002F8 00000338  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 000002FC 0000033C  40 82 00 4C */	bne .L_00000348
/* 00000300 00000340  28 1E 00 00 */	cmplwi r30, 0x0
/* 00000304 00000344  41 82 00 44 */	beq .L_00000348
/* 00000308 00000348  40 82 00 14 */	bne .L_0000031C
/* 0000030C 0000034C  38 60 00 00 */	li r3, ftCo_804D3BB0@sda21
/* 00000310 00000350  38 80 02 34 */	li r4, 0x234
/* 00000314 00000354  38 A0 00 00 */	li r5, ftCo_804D3BB8@sda21
/* 00000318 00000358  48 00 00 01 */	bl __assert
.L_0000031C:
/* 0000031C 0000035C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 00000320 00000360  38 60 00 00 */	li r3, 0x0
/* 00000324 00000364  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 00000328 00000368  40 82 00 10 */	bne .L_00000338
/* 0000032C 0000036C  54 80 06 73 */	rlwinm. r0, r4, 0, 25, 25
/* 00000330 00000370  41 82 00 08 */	beq .L_00000338
/* 00000334 00000374  38 60 00 01 */	li r3, 0x1
.L_00000338:
/* 00000338 00000378  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000033C 0000037C  40 82 00 0C */	bne .L_00000348
/* 00000340 00000380  7F C3 F3 78 */	mr r3, r30
/* 00000344 00000384  48 00 00 01 */	bl HSD_JObjSetMtxDirtySub
.L_00000348:
/* 00000348 00000388  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 0000034C 0000038C  C0 00 00 00 */	lfs f0, ftCo_804D8BA8@sda21(r0)
/* 00000350 00000390  83 FD 00 2C */	lwz r31, 0x2c(r29)
/* 00000354 00000394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000358 00000398  40 80 00 0C */	bge .L_00000364
/* 0000035C 0000039C  FC 00 08 50 */	fneg f0, f1
/* 00000360 000003A0  48 00 00 08 */	b .L_00000368
.L_00000364:
/* 00000364 000003A4  FC 00 08 90 */	fmr f0, f1
.L_00000368:
/* 00000368 000003A8  C0 5F 23 50 */	lfs f2, 0x2350(r31)
/* 0000036C 000003AC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 00000370 000003B0  40 81 00 40 */	ble .L_000003B0
/* 00000374 000003B4  C0 00 00 00 */	lfs f0, ftCo_804D8BA8@sda21(r0)
/* 00000378 000003B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000037C 000003BC  40 80 00 0C */	bge .L_00000388
/* 00000380 000003C0  38 00 FF FF */	li r0, -0x1
/* 00000384 000003C4  48 00 00 08 */	b .L_0000038C
.L_00000388:
/* 00000388 000003C8  38 00 00 01 */	li r0, 0x1
.L_0000038C:
/* 0000038C 000003CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000390 000003D0  C8 20 00 00 */	lfd f1, ftCo_804D8BB0@sda21(r0)
/* 00000394 000003D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 00000398 000003D8  3C 00 43 30 */	lis r0, 0x4330
/* 0000039C 000003DC  90 01 00 40 */	stw r0, 0x40(r1)
/* 000003A0 000003E0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 000003A4 000003E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 000003A8 000003E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 000003AC 000003EC  D0 01 00 34 */	stfs f0, 0x34(r1)
.L_000003B0:
/* 000003B0 000003F0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 000003B4 000003F4  C0 00 00 00 */	lfs f0, ftCo_804D8BA8@sda21(r0)
/* 000003B8 000003F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000003BC 000003FC  40 80 00 0C */	bge .L_000003C8
/* 000003C0 00000400  FC 00 08 50 */	fneg f0, f1
/* 000003C4 00000404  48 00 00 08 */	b .L_000003CC
.L_000003C8:
/* 000003C8 00000408  FC 00 08 90 */	fmr f0, f1
.L_000003CC:
/* 000003CC 0000040C  C0 5F 23 54 */	lfs f2, 0x2354(r31)
/* 000003D0 00000410  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 000003D4 00000414  40 81 00 40 */	ble .L_00000414
/* 000003D8 00000418  C0 00 00 00 */	lfs f0, ftCo_804D8BA8@sda21(r0)
/* 000003DC 0000041C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000003E0 00000420  40 80 00 0C */	bge .L_000003EC
/* 000003E4 00000424  38 00 FF FF */	li r0, -0x1
/* 000003E8 00000428  48 00 00 08 */	b .L_000003F0
.L_000003EC:
/* 000003EC 0000042C  38 00 00 01 */	li r0, 0x1
.L_000003F0:
/* 000003F0 00000430  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000003F4 00000434  C8 20 00 00 */	lfd f1, ftCo_804D8BB0@sda21(r0)
/* 000003F8 00000438  90 01 00 44 */	stw r0, 0x44(r1)
/* 000003FC 0000043C  3C 00 43 30 */	lis r0, 0x4330
/* 00000400 00000440  90 01 00 40 */	stw r0, 0x40(r1)
/* 00000404 00000444  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 00000408 00000448  EC 00 08 28 */	fsubs f0, f0, f1
/* 0000040C 0000044C  EC 02 00 32 */	fmuls f0, f2, f0
/* 00000410 00000450  D0 01 00 38 */	stfs f0, 0x38(r1)
.L_00000414:
/* 00000414 00000454  C0 3F 23 40 */	lfs f1, 0x2340(r31)
/* 00000418 00000458  38 81 00 34 */	addi r4, r1, 0x34
/* 0000041C 0000045C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 00000420 00000460  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000424 00000464  D0 1F 23 40 */	stfs f0, 0x2340(r31)
/* 00000428 00000468  C0 3F 23 44 */	lfs f1, 0x2344(r31)
/* 0000042C 0000046C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 00000430 00000470  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000434 00000474  D0 1F 23 44 */	stfs f0, 0x2344(r31)
/* 00000438 00000478  80 7F 1A 58 */	lwz r3, 0x1a58(r31)
/* 0000043C 0000047C  48 00 00 01 */	bl ftKb_SpecialN_800F5B5C
/* 00000440 00000480  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 00000444 00000484  C0 1F 23 40 */	lfs f0, 0x2340(r31)
/* 00000448 00000488  EC 01 00 2A */	fadds f0, f1, f0
/* 0000044C 0000048C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 00000450 00000490  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 00000454 00000494  C0 1F 23 44 */	lfs f0, 0x2344(r31)
/* 00000458 00000498  EC 01 00 2A */	fadds f0, f1, f0
/* 0000045C 0000049C  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 00000460 000004A0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 00000464 000004A4  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 00000468 000004A8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 0000046C 000004AC  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 00000470 000004B0  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 00000474 000004B4  83 A1 00 4C */	lwz r29, 0x4c(r1)
/* 00000478 000004B8  38 21 00 58 */	addi r1, r1, 0x58
/* 0000047C 000004BC  7C 08 03 A6 */	mtlr r0
/* 00000480 000004C0  4E 80 00 20 */	blr
.endfn ftCo_800BD39C

# 0x00000000 - 0x00000048
.section .sdata, "wa"
.balign 8

.obj ftCo_804D3BB0, global
	.4byte 0x6A6F626A
	.4byte 0x2E680000
.endobj ftCo_804D3BB0

.obj ftCo_804D3BB8, global
	.4byte 0x6A6F626A
	.4byte 0x00000000
.endobj ftCo_804D3BB8

.obj ftCo_804D3BC0, global
	.4byte 0x7363616C
	.4byte 0x65000000
.endobj ftCo_804D3BC0

.obj ftCo_804D3BC8, global
	.4byte 0x6A6F626A
	.4byte 0x2E680000
.endobj ftCo_804D3BC8

.obj ftCo_804D3BD0, global
	.4byte 0x6A6F626A
	.4byte 0x00000000
.endobj ftCo_804D3BD0

.obj ftCo_804D3BD8, global
	.4byte 0x7363616C
	.4byte 0x65000000
.endobj ftCo_804D3BD8

.obj ftCo_804D3BE0, global
	.4byte 0x6A6F626A
	.4byte 0x2E680000
.endobj ftCo_804D3BE0

.obj ftCo_804D3BE8, global
	.4byte 0x6A6F626A
	.4byte 0x00000000
.endobj ftCo_804D3BE8

.obj ftCo_804D3BF0, global
	.4byte 0x7363616C
	.4byte 0x65000000
.endobj ftCo_804D3BF0

# 0x00000000 - 0x00000010
.section .sdata2, "a"
.balign 8

.obj ftCo_804D8BA8, global
	.4byte 0x00000000
.endobj ftCo_804D8BA8

.obj ftCo_804D8BAC, global
	.4byte 0x3F800000
.endobj ftCo_804D8BAC

.obj ftCo_804D8BB0, global
	.4byte 0x43300000
	.4byte 0x80000000
.endobj ftCo_804D8BB0
