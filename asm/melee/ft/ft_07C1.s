.include "macros.inc"
.file "ft_07C1.c"

# 0x00000000 - 0x0000051C
.text
.balign 4

.fn ft_8007C114, global
/* 00000000 00000040  7C 08 02 A6 */	mflr r0
/* 00000004 00000044  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000008 00000048  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 0000000C 0000004C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 00000010 00000050  93 C1 00 10 */	stw r30, 0x10(r1)
/* 00000014 00000054  7C 7E 1B 78 */	mr r30, r3
/* 00000018 00000058  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 0000001C 0000005C  80 7F 19 74 */	lwz r3, 0x1974(r31)
/* 00000020 00000060  28 03 00 00 */	cmplwi r3, 0x0
/* 00000024 00000064  41 82 00 1C */	beq .L_00000040
/* 00000028 00000068  48 00 00 01 */	bl itGetKind
/* 0000002C 0000006C  2C 03 00 1C */	cmpwi r3, 0x1c
/* 00000030 00000070  41 82 00 08 */	beq .L_00000038
/* 00000034 00000074  48 00 00 0C */	b .L_00000040
.L_00000038:
/* 00000038 00000078  7F C3 F3 78 */	mr r3, r30
/* 0000003C 0000007C  48 00 00 01 */	bl ftCo_800C555C
.L_00000040:
/* 00000040 00000080  88 1F 22 19 */	lbz r0, 0x2219(r31)
/* 00000044 00000084  38 60 00 00 */	li r3, 0x0
/* 00000048 00000088  50 60 1F 38 */	rlwimi r0, r3, 3, 28, 28
/* 0000004C 0000008C  98 1F 22 19 */	stb r0, 0x2219(r31)
/* 00000050 00000090  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00000054 00000094  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 00000058 00000098  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 0000005C 0000009C  38 21 00 18 */	addi r1, r1, 0x18
/* 00000060 000000A0  7C 08 03 A6 */	mtlr r0
/* 00000064 000000A4  4E 80 00 20 */	blr
.endfn ft_8007C114

.fn ft_8007C17C, global
/* 00000068 000000A8  7C 08 02 A6 */	mflr r0
/* 0000006C 000000AC  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000070 000000B0  38 00 00 01 */	li r0, 0x1
/* 00000074 000000B4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 00000078 000000B8  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 0000007C 000000BC  3B E0 00 00 */	li r31, 0x0
/* 00000080 000000C0  7C 7B 1B 78 */	mr r27, r3
/* 00000084 000000C4  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 00000088 000000C8  80 9E 01 0C */	lwz r4, 0x10c(r30)
/* 0000008C 000000CC  3B BE 10 64 */	addi r29, r30, 0x1064
/* 00000090 000000D0  38 7D 00 00 */	addi r3, r29, 0x0
/* 00000094 000000D4  83 84 00 34 */	lwz r28, 0x34(r4)
/* 00000098 000000D8  93 FE 10 68 */	stw r31, 0x1068(r30)
/* 0000009C 000000DC  90 1E 10 64 */	stw r0, 0x1064(r30)
/* 000000A0 000000E0  48 00 00 01 */	bl lbColl_80008440
/* 000000A4 000000E4  80 1C 00 00 */	lwz r0, 0x0(r28)
/* 000000A8 000000E8  7F 63 DB 78 */	mr r3, r27
/* 000000AC 000000EC  80 9E 05 E8 */	lwz r4, 0x5e8(r30)
/* 000000B0 000000F0  54 00 20 36 */	slwi r0, r0, 4
/* 000000B4 000000F4  7C 04 00 2E */	lwzx r0, r4, r0
/* 000000B8 000000F8  90 1D 00 48 */	stw r0, 0x48(r29)
/* 000000BC 000000FC  C0 1C 00 04 */	lfs f0, 0x4(r28)
/* 000000C0 00000100  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 000000C4 00000104  C0 00 00 00 */	lfs f0, ft_804D8320@sda21(r0)
/* 000000C8 00000108  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 000000CC 0000010C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 000000D0 00000110  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 000000D4 00000114  88 1D 00 43 */	lbz r0, 0x43(r29)
/* 000000D8 00000118  53 E0 36 72 */	rlwimi r0, r31, 6, 25, 25
/* 000000DC 0000011C  98 1D 00 43 */	stb r0, 0x43(r29)
/* 000000E0 00000120  88 1D 00 43 */	lbz r0, 0x43(r29)
/* 000000E4 00000124  53 E0 2E B4 */	rlwimi r0, r31, 5, 26, 26
/* 000000E8 00000128  98 1D 00 43 */	stb r0, 0x43(r29)
/* 000000EC 0000012C  88 1E 22 27 */	lbz r0, 0x2227(r30)
/* 000000F0 00000130  53 E0 2E B4 */	rlwimi r0, r31, 5, 26, 26
/* 000000F4 00000134  98 1E 22 27 */	stb r0, 0x2227(r30)
/* 000000F8 00000138  48 00 00 01 */	bl ft_8007C224
/* 000000FC 0000013C  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 00000100 00000140  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 00000104 00000144  38 21 00 28 */	addi r1, r1, 0x28
/* 00000108 00000148  7C 08 03 A6 */	mtlr r0
/* 0000010C 0000014C  4E 80 00 20 */	blr
.endfn ft_8007C17C

.fn ft_8007C224, global
/* 00000110 00000150  7C 08 02 A6 */	mflr r0
/* 00000114 00000154  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000118 00000158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000011C 0000015C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00000120 00000160  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 00000124 00000164  80 03 10 64 */	lwz r0, 0x1064(r3)
/* 00000128 00000168  3B E3 10 64 */	addi r31, r3, 0x1064
/* 0000012C 0000016C  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000130 00000170  41 82 00 58 */	beq .L_00000188
/* 00000134 00000174  40 80 00 14 */	bge .L_00000148
/* 00000138 00000178  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000013C 0000017C  41 82 00 7C */	beq .L_000001B8
/* 00000140 00000180  40 80 00 14 */	bge .L_00000154
/* 00000144 00000184  48 00 00 74 */	b .L_000001B8
.L_00000148:
/* 00000148 00000188  2C 00 00 04 */	cmpwi r0, 0x4
/* 0000014C 0000018C  40 80 00 6C */	bge .L_000001B8
/* 00000150 00000190  48 00 00 40 */	b .L_00000190
.L_00000154:
/* 00000154 00000194  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 00000158 00000198  38 9F 00 10 */	addi r4, r31, 0x10
/* 0000015C 0000019C  38 BF 00 4C */	addi r5, r31, 0x4c
/* 00000160 000001A0  48 00 00 01 */	bl lb_8000B1CC
/* 00000164 000001A4  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 00000168 000001A8  38 00 00 02 */	li r0, 0x2
/* 0000016C 000001AC  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 00000170 000001B0  90 9F 00 58 */	stw r4, 0x58(r31)
/* 00000174 000001B4  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 00000178 000001B8  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 0000017C 000001BC  90 7F 00 60 */	stw r3, 0x60(r31)
/* 00000180 000001C0  90 1F 00 00 */	stw r0, 0x0(r31)
/* 00000184 000001C4  48 00 00 34 */	b .L_000001B8
.L_00000188:
/* 00000188 000001C8  38 00 00 03 */	li r0, 0x3
/* 0000018C 000001CC  90 1F 00 00 */	stw r0, 0x0(r31)
.L_00000190:
/* 00000190 000001D0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 00000194 000001D4  38 9F 00 10 */	addi r4, r31, 0x10
/* 00000198 000001D8  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 0000019C 000001DC  38 BF 00 4C */	addi r5, r31, 0x4c
/* 000001A0 000001E0  90 7F 00 58 */	stw r3, 0x58(r31)
/* 000001A4 000001E4  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 000001A8 000001E8  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 000001AC 000001EC  90 1F 00 60 */	stw r0, 0x60(r31)
/* 000001B0 000001F0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 000001B4 000001F4  48 00 00 01 */	bl lb_8000B1CC
.L_000001B8:
/* 000001B8 000001F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000001BC 000001FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 000001C0 00000200  38 21 00 20 */	addi r1, r1, 0x20
/* 000001C4 00000204  7C 08 03 A6 */	mtlr r0
/* 000001C8 00000208  4E 80 00 20 */	blr
.endfn ft_8007C224

.fn ft_8007C2E0, global
/* 000001CC 0000020C  7C 08 02 A6 */	mflr r0
/* 000001D0 00000210  90 01 00 04 */	stw r0, 0x4(r1)
/* 000001D4 00000214  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 000001D8 00000218  93 E1 00 34 */	stw r31, 0x34(r1)
/* 000001DC 0000021C  3B E6 00 00 */	addi r31, r6, 0x0
/* 000001E0 00000220  93 C1 00 30 */	stw r30, 0x30(r1)
/* 000001E4 00000224  3B C5 00 00 */	addi r30, r5, 0x0
/* 000001E8 00000228  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 000001EC 0000022C  3B A4 00 00 */	addi r29, r4, 0x0
/* 000001F0 00000230  93 81 00 28 */	stw r28, 0x28(r1)
/* 000001F4 00000234  3B 83 00 00 */	addi r28, r3, 0x0
/* 000001F8 00000238  38 7E 00 00 */	addi r3, r30, 0x0
/* 000001FC 0000023C  48 00 00 01 */	bl lbColl_8000ACFC
/* 00000200 00000240  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000204 00000244  40 82 01 84 */	bne .L_00000388
/* 00000208 00000248  38 7F 00 00 */	addi r3, r31, 0x0
/* 0000020C 0000024C  38 BC 00 00 */	addi r5, r28, 0x0
/* 00000210 00000250  38 80 00 03 */	li r4, 0x3
/* 00000214 00000254  48 00 00 01 */	bl lbColl_80008688
/* 00000218 00000258  80 1E 00 E0 */	lwz r0, 0xe0(r30)
/* 0000021C 0000025C  2C 00 00 01 */	cmpwi r0, 0x1
/* 00000220 00000260  40 82 00 A8 */	bne .L_000002C8
/* 00000224 00000264  C0 5C 01 98 */	lfs f2, 0x198(r28)
/* 00000228 00000268  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 0000022C 0000026C  C0 00 00 00 */	lfs f0, ft_804D8324@sda21(r0)
/* 00000230 00000270  EC 22 08 24 */	fdivs f1, f2, f1
/* 00000234 00000274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000238 00000278  FC A0 08 90 */	fmr f5, f1
/* 0000023C 0000027C  40 81 00 08 */	ble .L_00000244
/* 00000240 00000280  FC A0 00 90 */	fmr f5, f0
.L_00000244:
/* 00000244 00000284  C0 9C 00 C8 */	lfs f4, 0xc8(r28)
/* 00000248 00000288  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 0000024C 0000028C  80 60 00 00 */	lwz r3, p_ftCommonData@sda21(r0)
/* 00000250 00000290  EC 24 00 F2 */	fmuls f1, f4, f3
/* 00000254 00000294  C0 00 00 00 */	lfs f0, ft_804D8320@sda21(r0)
/* 00000258 00000298  C0 43 07 D4 */	lfs f2, 0x7d4(r3)
/* 0000025C 0000029C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000260 000002A0  EC A5 00 B2 */	fmuls f5, f5, f2
/* 00000264 000002A4  4C 41 13 82 */	cror eq, gt, eq
/* 00000268 000002A8  40 82 00 18 */	bne .L_00000280
/* 0000026C 000002AC  EC 24 18 28 */	fsubs f1, f4, f3
/* 00000270 000002B0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 00000274 000002B4  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 00000278 000002B8  D0 1E 00 98 */	stfs f0, 0x98(r30)
/* 0000027C 000002BC  48 00 00 10 */	b .L_0000028C
.L_00000280:
/* 00000280 000002C0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 00000284 000002C4  EC 04 01 7A */	fmadds f0, f4, f5, f0
/* 00000288 000002C8  D0 1E 00 98 */	stfs f0, 0x98(r30)
.L_0000028C:
/* 0000028C 000002CC  C0 7C 00 CC */	lfs f3, 0xcc(r28)
/* 00000290 000002D0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 00000294 000002D4  C0 00 00 00 */	lfs f0, ft_804D8320@sda21(r0)
/* 00000298 000002D8  EC 23 00 B2 */	fmuls f1, f3, f2
/* 0000029C 000002DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000002A0 000002E0  4C 41 13 82 */	cror eq, gt, eq
/* 000002A4 000002E4  40 82 00 18 */	bne .L_000002BC
/* 000002A8 000002E8  EC 23 10 28 */	fsubs f1, f3, f2
/* 000002AC 000002EC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 000002B0 000002F0  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 000002B4 000002F4  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 000002B8 000002F8  48 00 00 10 */	b .L_000002C8
.L_000002BC:
/* 000002BC 000002FC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 000002C0 00000300  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 000002C4 00000304  D0 1E 00 9C */	stfs f0, 0x9c(r30)
.L_000002C8:
/* 000002C8 00000308  38 7D 00 00 */	addi r3, r29, 0x0
/* 000002CC 0000030C  38 BE 00 00 */	addi r5, r30, 0x0
/* 000002D0 00000310  38 80 00 03 */	li r4, 0x3
/* 000002D4 00000314  48 00 00 01 */	bl lbColl_80008688
/* 000002D8 00000318  80 1C 00 E0 */	lwz r0, 0xe0(r28)
/* 000002DC 0000031C  2C 00 00 01 */	cmpwi r0, 0x1
/* 000002E0 00000320  40 82 00 A8 */	bne .L_00000388
/* 000002E4 00000324  C0 5E 01 98 */	lfs f2, 0x198(r30)
/* 000002E8 00000328  C0 3C 01 98 */	lfs f1, 0x198(r28)
/* 000002EC 0000032C  C0 00 00 00 */	lfs f0, ft_804D8324@sda21(r0)
/* 000002F0 00000330  EC 22 08 24 */	fdivs f1, f2, f1
/* 000002F4 00000334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000002F8 00000338  FC A0 08 90 */	fmr f5, f1
/* 000002FC 0000033C  40 81 00 08 */	ble .L_00000304
/* 00000300 00000340  FC A0 00 90 */	fmr f5, f0
.L_00000304:
/* 00000304 00000344  C0 7C 00 C8 */	lfs f3, 0xc8(r28)
/* 00000308 00000348  C0 9E 00 C8 */	lfs f4, 0xc8(r30)
/* 0000030C 0000034C  80 60 00 00 */	lwz r3, p_ftCommonData@sda21(r0)
/* 00000310 00000350  EC 23 01 32 */	fmuls f1, f3, f4
/* 00000314 00000354  C0 00 00 00 */	lfs f0, ft_804D8320@sda21(r0)
/* 00000318 00000358  C0 43 07 D4 */	lfs f2, 0x7d4(r3)
/* 0000031C 0000035C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000320 00000360  EC A5 00 B2 */	fmuls f5, f5, f2
/* 00000324 00000364  4C 41 13 82 */	cror eq, gt, eq
/* 00000328 00000368  40 82 00 18 */	bne .L_00000340
/* 0000032C 0000036C  EC 24 18 28 */	fsubs f1, f4, f3
/* 00000330 00000370  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 00000334 00000374  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 00000338 00000378  D0 1C 00 98 */	stfs f0, 0x98(r28)
/* 0000033C 0000037C  48 00 00 10 */	b .L_0000034C
.L_00000340:
/* 00000340 00000380  C0 1C 00 98 */	lfs f0, 0x98(r28)
/* 00000344 00000384  EC 04 01 7A */	fmadds f0, f4, f5, f0
/* 00000348 00000388  D0 1C 00 98 */	stfs f0, 0x98(r28)
.L_0000034C:
/* 0000034C 0000038C  C0 5C 00 CC */	lfs f2, 0xcc(r28)
/* 00000350 00000390  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 00000354 00000394  C0 00 00 00 */	lfs f0, ft_804D8320@sda21(r0)
/* 00000358 00000398  EC 22 00 F2 */	fmuls f1, f2, f3
/* 0000035C 0000039C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000360 000003A0  4C 41 13 82 */	cror eq, gt, eq
/* 00000364 000003A4  40 82 00 18 */	bne .L_0000037C
/* 00000368 000003A8  EC 23 10 28 */	fsubs f1, f3, f2
/* 0000036C 000003AC  C0 1C 00 9C */	lfs f0, 0x9c(r28)
/* 00000370 000003B0  EC 05 00 7A */	fmadds f0, f5, f1, f0
/* 00000374 000003B4  D0 1C 00 9C */	stfs f0, 0x9c(r28)
/* 00000378 000003B8  48 00 00 10 */	b .L_00000388
.L_0000037C:
/* 0000037C 000003BC  C0 1C 00 9C */	lfs f0, 0x9c(r28)
/* 00000380 000003C0  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 00000384 000003C4  D0 1C 00 9C */	stfs f0, 0x9c(r28)
.L_00000388:
/* 00000388 000003C8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 0000038C 000003CC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 00000390 000003D0  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 00000394 000003D4  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 00000398 000003D8  83 81 00 28 */	lwz r28, 0x28(r1)
/* 0000039C 000003DC  38 21 00 38 */	addi r1, r1, 0x38
/* 000003A0 000003E0  7C 08 03 A6 */	mtlr r0
/* 000003A4 000003E4  4E 80 00 20 */	blr
.endfn ft_8007C2E0

.fn ft_8007C4BC, global
/* 000003A8 000003E8  7C 08 02 A6 */	mflr r0
/* 000003AC 000003EC  90 01 00 04 */	stw r0, 0x4(r1)
/* 000003B0 000003F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000003B4 000003F4  BF 01 00 20 */	stmw r24, 0x20(r1)
/* 000003B8 000003F8  7C 7C 1B 78 */	mr r28, r3
/* 000003BC 000003FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 000003C0 00000400  88 03 22 27 */	lbz r0, 0x2227(r3)
/* 000003C4 00000404  3B E3 00 00 */	addi r31, r3, 0x0
/* 000003C8 00000408  54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 000003CC 0000040C  41 82 01 3C */	beq .L_00000508
/* 000003D0 00000410  7F 83 E3 78 */	mr r3, r28
/* 000003D4 00000414  48 00 00 01 */	bl ftColl_8007B868
/* 000003D8 00000418  2C 03 00 02 */	cmpwi r3, 0x2
/* 000003DC 0000041C  41 82 01 2C */	beq .L_00000508
/* 000003E0 00000420  88 1F 22 1F */	lbz r0, 0x221f(r31)
/* 000003E4 00000424  54 00 EF FF */	extrwi. r0, r0, 1, 28
/* 000003E8 00000428  40 82 01 20 */	bne .L_00000508
/* 000003EC 0000042C  80 1F 1A 58 */	lwz r0, 0x1a58(r31)
/* 000003F0 00000430  3B C0 00 00 */	li r30, 0x0
/* 000003F4 00000434  28 00 00 00 */	cmplwi r0, 0x0
/* 000003F8 00000438  41 82 00 0C */	beq .L_00000404
/* 000003FC 0000043C  7C 1A 03 78 */	mr r26, r0
/* 00000400 00000440  48 00 00 1C */	b .L_0000041C
.L_00000404:
/* 00000404 00000444  88 1F 22 1C */	lbz r0, 0x221c(r31)
/* 00000408 00000448  54 00 FF FF */	extrwi. r0, r0, 1, 30
/* 0000040C 0000044C  41 82 00 0C */	beq .L_00000418
/* 00000410 00000450  83 5F 18 68 */	lwz r26, 0x1868(r31)
/* 00000414 00000454  48 00 00 08 */	b .L_0000041C
.L_00000418:
/* 00000418 00000458  3B 40 00 00 */	li r26, 0x0
.L_0000041C:
/* 0000041C 0000045C  80 60 00 00 */	lwz r3, HSD_GObj_Entities@sda21(r0)
/* 00000420 00000460  3B BF 10 64 */	addi r29, r31, 0x1064
/* 00000424 00000464  83 63 00 20 */	lwz r27, 0x20(r3)
/* 00000428 00000468  48 00 00 D8 */	b .L_00000500
.L_0000042C:
/* 0000042C 0000046C  7C 1C D8 40 */	cmplw r28, r27
/* 00000430 00000470  40 82 00 0C */	bne .L_0000043C
/* 00000434 00000474  3B C0 00 01 */	li r30, 0x1
/* 00000438 00000478  48 00 00 C4 */	b .L_000004FC
.L_0000043C:
/* 0000043C 0000047C  7C 1B D0 40 */	cmplw r27, r26
/* 00000440 00000480  41 82 00 BC */	beq .L_000004FC
/* 00000444 00000484  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 00000448 00000488  88 03 22 19 */	lbz r0, 0x2219(r3)
/* 0000044C 0000048C  3B 23 00 00 */	addi r25, r3, 0x0
/* 00000450 00000490  54 00 D7 FF */	extrwi. r0, r0, 1, 25
/* 00000454 00000494  40 82 00 A8 */	bne .L_000004FC
/* 00000458 00000498  88 19 22 27 */	lbz r0, 0x2227(r25)
/* 0000045C 0000049C  54 00 DF FF */	extrwi. r0, r0, 1, 26
/* 00000460 000004A0  41 82 00 9C */	beq .L_000004FC
/* 00000464 000004A4  7F 63 DB 78 */	mr r3, r27
/* 00000468 000004A8  48 00 00 01 */	bl ftColl_8007B868
/* 0000046C 000004AC  2C 03 00 02 */	cmpwi r3, 0x2
/* 00000470 000004B0  41 82 00 8C */	beq .L_000004FC
/* 00000474 000004B4  88 19 22 1F */	lbz r0, 0x221f(r25)
/* 00000478 000004B8  54 00 EF FF */	extrwi. r0, r0, 1, 28
/* 0000047C 000004BC  40 82 00 80 */	bne .L_000004FC
/* 00000480 000004C0  88 19 22 1C */	lbz r0, 0x221c(r25)
/* 00000484 000004C4  54 00 FF FF */	extrwi. r0, r0, 1, 30
/* 00000488 000004C8  41 82 00 10 */	beq .L_00000498
/* 0000048C 000004CC  80 19 18 68 */	lwz r0, 0x1868(r25)
/* 00000490 000004D0  7C 00 E0 40 */	cmplw r0, r28
/* 00000494 000004D4  41 82 00 68 */	beq .L_000004FC
.L_00000498:
/* 00000498 000004D8  80 19 10 64 */	lwz r0, 0x1064(r25)
/* 0000049C 000004DC  3B 19 10 64 */	addi r24, r25, 0x1064
/* 000004A0 000004E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 000004A4 000004E4  41 82 00 58 */	beq .L_000004FC
/* 000004A8 000004E8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000004AC 000004EC  41 82 00 50 */	beq .L_000004FC
/* 000004B0 000004F0  C0 39 00 38 */	lfs f1, 0x38(r25)
/* 000004B4 000004F4  7F 03 C3 78 */	mr r3, r24
/* 000004B8 000004F8  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 000004BC 000004FC  7F A4 EB 78 */	mr r4, r29
/* 000004C0 00000500  48 00 00 01 */	bl lbColl_80007AFC
/* 000004C4 00000504  2C 03 00 00 */	cmpwi r3, 0x0
/* 000004C8 00000508  41 82 00 1C */	beq .L_000004E4
/* 000004CC 0000050C  38 79 00 00 */	addi r3, r25, 0x0
/* 000004D0 00000510  38 98 00 00 */	addi r4, r24, 0x0
/* 000004D4 00000514  38 BF 00 00 */	addi r5, r31, 0x0
/* 000004D8 00000518  38 DD 00 00 */	addi r6, r29, 0x0
/* 000004DC 0000051C  48 00 00 01 */	bl ft_8007C2E0
/* 000004E0 00000520  48 00 00 1C */	b .L_000004FC
.L_000004E4:
/* 000004E4 00000524  38 7D 00 00 */	addi r3, r29, 0x0
/* 000004E8 00000528  38 99 00 00 */	addi r4, r25, 0x0
/* 000004EC 0000052C  48 00 00 01 */	bl lbColl_800089B8
/* 000004F0 00000530  38 78 00 00 */	addi r3, r24, 0x0
/* 000004F4 00000534  38 9F 00 00 */	addi r4, r31, 0x0
/* 000004F8 00000538  48 00 00 01 */	bl lbColl_800089B8
.L_000004FC:
/* 000004FC 0000053C  83 7B 00 08 */	lwz r27, 0x8(r27)
.L_00000500:
/* 00000500 00000540  28 1B 00 00 */	cmplwi r27, 0x0
/* 00000504 00000544  40 82 FF 28 */	bne .L_0000042C
.L_00000508:
/* 00000508 00000548  BB 01 00 20 */	lmw r24, 0x20(r1)
/* 0000050C 0000054C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00000510 00000550  38 21 00 40 */	addi r1, r1, 0x40
/* 00000514 00000554  7C 08 03 A6 */	mtlr r0
/* 00000518 00000558  4E 80 00 20 */	blr
.endfn ft_8007C4BC

# 0x00000000 - 0x00000008
.section .sdata2, "a"
.balign 8

.obj ft_804D8320, local
	.4byte 0x00000000
.endobj ft_804D8320

.obj ft_804D8324, local
	.4byte 0x3F800000
.endobj ft_804D8324
