.include "macros.inc"

.section .text

.global it_802D09D0
it_802D09D0:
/* 802D09D0 002CD5B0  7C 08 02 A6 */	mflr r0
/* 802D09D4 002CD5B4  90 01 00 04 */	stw r0, 4(r1)
/* 802D09D8 002CD5B8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D09DC 002CD5BC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D09E0 002CD5C0  88 04 0D CA */	lbz r0, 0xdca(r4)
/* 802D09E4 002CD5C4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802D09E8 002CD5C8  40 82 00 14 */	bne .L_802D09FC
/* 802D09EC 002CD5CC  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802D09F0 002CD5D0  2C 00 00 06 */	cmpwi r0, 6
/* 802D09F4 002CD5D4  41 82 00 08 */	beq .L_802D09FC
/* 802D09F8 002CD5D8  48 00 08 0D */	bl it_802D1204
.L_802D09FC:
/* 802D09FC 002CD5DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0A00 002CD5E0  38 21 00 08 */	addi r1, r1, 8
/* 802D0A04 002CD5E4  7C 08 03 A6 */	mtlr r0
/* 802D0A08 002CD5E8  4E 80 00 20 */	blr

.global it_802D0A0C
it_802D0A0C:
/* 802D0A0C 002CD5EC  7C 08 02 A6 */	mflr r0
/* 802D0A10 002CD5F0  90 01 00 04 */	stw r0, 4(r1)
/* 802D0A14 002CD5F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0A18 002CD5F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0A1C 002CD5FC  3B E0 00 01 */	li r31, 1
/* 802D0A20 002CD600  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0A24 002CD604  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D0A28 002CD608  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D0A2C 002CD60C  7C 7C 1B 78 */	mr r28, r3
/* 802D0A30 002CD610  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 802D0A34 002CD614  C0 02 DA 60 */	lfs f0, it_804DD440@sda21(r2)
/* 802D0A38 002CD618  80 9E 00 C4 */	lwz r4, 0xc4(r30)
/* 802D0A3C 002CD61C  83 A4 00 04 */	lwz r29, 4(r4)
/* 802D0A40 002CD620  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 802D0A44 002CD624  88 1E 0D C8 */	lbz r0, 0xdc8(r30)
/* 802D0A48 002CD628  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 802D0A4C 002CD62C  98 1E 0D C8 */	stb r0, 0xdc8(r30)
/* 802D0A50 002CD630  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D0A54 002CD634  20 00 00 B4 */	subfic r0, r0, 0xb4
/* 802D0A58 002CD638  90 1E 0E 34 */	stw r0, 0xe34(r30)
/* 802D0A5C 002CD63C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 802D0A60 002CD640  4B FA 92 7D */	bl it_80279CDC
/* 802D0A64 002CD644  7F 83 E3 78 */	mr r3, r28
/* 802D0A68 002CD648  4B FA 29 ED */	bl it_80273454
/* 802D0A6C 002CD64C  7F 83 E3 78 */	mr r3, r28
/* 802D0A70 002CD650  48 00 08 B1 */	bl it_802D1320
/* 802D0A74 002CD654  88 1E 0D C8 */	lbz r0, 0xdc8(r30)
/* 802D0A78 002CD658  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 802D0A7C 002CD65C  98 1E 0D C8 */	stb r0, 0xdc8(r30)
/* 802D0A80 002CD660  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802D0A84 002CD664  90 1E 0E 38 */	stw r0, 0xe38(r30)
/* 802D0A88 002CD668  93 FE 0D AC */	stw r31, 0xdac(r30)
/* 802D0A8C 002CD66C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0A90 002CD670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0A94 002CD674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0A98 002CD678  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D0A9C 002CD67C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D0AA0 002CD680  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0AA4 002CD684  7C 08 03 A6 */	mtlr r0
/* 802D0AA8 002CD688  4E 80 00 20 */	blr

.global it_802D0AAC
it_802D0AAC:
/* 802D0AAC 002CD68C  4E 80 00 20 */	blr

.global it_802D0AB0
it_802D0AB0:
/* 802D0AB0 002CD690  7C 08 02 A6 */	mflr r0
/* 802D0AB4 002CD694  90 01 00 04 */	stw r0, 4(r1)
/* 802D0AB8 002CD698  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D0ABC 002CD69C  4B F9 AD D9 */	bl it_8026B894
/* 802D0AC0 002CD6A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0AC4 002CD6A4  38 21 00 08 */	addi r1, r1, 8
/* 802D0AC8 002CD6A8  7C 08 03 A6 */	mtlr r0
/* 802D0ACC 002CD6AC  4E 80 00 20 */	blr

.global it_802D0AD0
it_802D0AD0:
/* 802D0AD0 002CD6B0  7C 08 02 A6 */	mflr r0
/* 802D0AD4 002CD6B4  90 01 00 04 */	stw r0, 4(r1)
/* 802D0AD8 002CD6B8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D0ADC 002CD6BC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D0AE0 002CD6C0  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802D0AE4 002CD6C4  2C 00 00 04 */	cmpwi r0, 4
/* 802D0AE8 002CD6C8  40 82 00 08 */	bne .L_802D0AF0
/* 802D0AEC 002CD6CC  48 00 07 19 */	bl it_802D1204
.L_802D0AF0:
/* 802D0AF0 002CD6D0  38 60 00 00 */	li r3, 0
/* 802D0AF4 002CD6D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0AF8 002CD6D8  38 21 00 08 */	addi r1, r1, 8
/* 802D0AFC 002CD6DC  7C 08 03 A6 */	mtlr r0
/* 802D0B00 002CD6E0  4E 80 00 20 */	blr

.global it_802D0B04
it_802D0B04:
/* 802D0B04 002CD6E4  7C 08 02 A6 */	mflr r0
/* 802D0B08 002CD6E8  90 01 00 04 */	stw r0, 4(r1)
/* 802D0B0C 002CD6EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0B10 002CD6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0B14 002CD6F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0B18 002CD6F8  7C 7E 1B 78 */	mr r30, r3
/* 802D0B1C 002CD6FC  C0 02 DA 64 */	lfs f0, it_804DD444@sda21(r2)
/* 802D0B20 002CD700  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802D0B24 002CD704  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 802D0B28 002CD708  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 802D0B2C 002CD70C  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 802D0B30 002CD710  4B D3 AE DD */	bl lb_8000BA0C
/* 802D0B34 002CD714  38 7E 00 00 */	addi r3, r30, 0
/* 802D0B38 002CD718  38 80 00 01 */	li r4, 1
/* 802D0B3C 002CD71C  38 A0 00 01 */	li r5, 1
/* 802D0B40 002CD720  4B F9 83 1D */	bl Item_80268E5C
/* 802D0B44 002CD724  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D0B48 002CD728  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D0B4C 002CD72C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D0B50 002CD730  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D0B54 002CD734  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D0B58 002CD738  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D0B5C 002CD73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0B60 002CD740  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0B64 002CD744  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0B68 002CD748  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0B6C 002CD74C  7C 08 03 A6 */	mtlr r0
/* 802D0B70 002CD750  4E 80 00 20 */	blr

.global it_802D0B74
it_802D0B74:
/* 802D0B74 002CD754  7C 08 02 A6 */	mflr r0
/* 802D0B78 002CD758  90 01 00 04 */	stw r0, 4(r1)
/* 802D0B7C 002CD75C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D0B80 002CD760  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D0B84 002CD764  7C 7F 1B 78 */	mr r31, r3
/* 802D0B88 002CD768  4B FA 20 E5 */	bl it_80272C6C
/* 802D0B8C 002CD76C  2C 03 00 00 */	cmpwi r3, 0
/* 802D0B90 002CD770  40 82 00 0C */	bne .L_802D0B9C
/* 802D0B94 002CD774  7F E3 FB 78 */	mr r3, r31
/* 802D0B98 002CD778  48 00 04 75 */	bl it_802D100C
.L_802D0B9C:
/* 802D0B9C 002CD77C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D0BA0 002CD780  38 60 00 00 */	li r3, 0
/* 802D0BA4 002CD784  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D0BA8 002CD788  38 21 00 18 */	addi r1, r1, 0x18
/* 802D0BAC 002CD78C  7C 08 03 A6 */	mtlr r0
/* 802D0BB0 002CD790  4E 80 00 20 */	blr

.global it_802D0BB4
it_802D0BB4:
/* 802D0BB4 002CD794  4E 80 00 20 */	blr

.global it_802D0BB8
it_802D0BB8:
/* 802D0BB8 002CD798  7C 08 02 A6 */	mflr r0
/* 802D0BBC 002CD79C  90 01 00 04 */	stw r0, 4(r1)
/* 802D0BC0 002CD7A0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802D0BC4 002CD7A4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802D0BC8 002CD7A8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802D0BCC 002CD7AC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802D0BD0 002CD7B0  7C 7D 1B 78 */	mr r29, r3
/* 802D0BD4 002CD7B4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D0BD8 002CD7B8  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802D0BDC 002CD7BC  83 C4 00 04 */	lwz r30, 4(r4)
/* 802D0BE0 002CD7C0  4B F9 CE 29 */	bl it_8026DA08
/* 802D0BE4 002CD7C4  2C 03 00 00 */	cmpwi r3, 0
/* 802D0BE8 002CD7C8  40 82 00 3C */	bne .L_802D0C24
/* 802D0BEC 002CD7CC  80 7E 00 04 */	lwz r3, 4(r30)
/* 802D0BF0 002CD7D0  3C 00 43 30 */	lis r0, 0x4330
/* 802D0BF4 002CD7D4  C8 22 DA 68 */	lfd f1, it_804DD448@sda21(r2)
/* 802D0BF8 002CD7D8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802D0BFC 002CD7DC  C0 5F 05 CC */	lfs f2, 0x5cc(r31)
/* 802D0C00 002CD7E0  90 61 00 14 */	stw r3, 0x14(r1)
/* 802D0C04 002CD7E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D0C08 002CD7E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802D0C0C 002CD7EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802D0C10 002CD7F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802D0C14 002CD7F4  4C 41 13 82 */	cror 2, 1, 2
/* 802D0C18 002CD7F8  40 82 00 0C */	bne .L_802D0C24
/* 802D0C1C 002CD7FC  7F A3 EB 78 */	mr r3, r29
/* 802D0C20 002CD800  48 00 00 25 */	bl it_802D0C44
.L_802D0C24:
/* 802D0C24 002CD804  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802D0C28 002CD808  38 60 00 00 */	li r3, 0
/* 802D0C2C 002CD80C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802D0C30 002CD810  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802D0C34 002CD814  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 802D0C38 002CD818  38 21 00 28 */	addi r1, r1, 0x28
/* 802D0C3C 002CD81C  7C 08 03 A6 */	mtlr r0
/* 802D0C40 002CD820  4E 80 00 20 */	blr

.global it_802D0C44
it_802D0C44:
/* 802D0C44 002CD824  7C 08 02 A6 */	mflr r0
/* 802D0C48 002CD828  90 01 00 04 */	stw r0, 4(r1)
/* 802D0C4C 002CD82C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0C50 002CD830  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0C54 002CD834  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0C58 002CD838  7C 7E 1B 78 */	mr r30, r3
/* 802D0C5C 002CD83C  C0 02 DA 60 */	lfs f0, it_804DD440@sda21(r2)
/* 802D0C60 002CD840  80 63 00 28 */	lwz r3, 0x28(r3)
/* 802D0C64 002CD844  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 802D0C68 002CD848  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 802D0C6C 002CD84C  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 802D0C70 002CD850  4B D3 AD 9D */	bl lb_8000BA0C
/* 802D0C74 002CD854  38 7E 00 00 */	addi r3, r30, 0
/* 802D0C78 002CD858  38 80 00 02 */	li r4, 2
/* 802D0C7C 002CD85C  38 A0 00 01 */	li r5, 1
/* 802D0C80 002CD860  4B F9 81 DD */	bl Item_80268E5C
/* 802D0C84 002CD864  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D0C88 002CD868  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D0C8C 002CD86C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D0C90 002CD870  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D0C94 002CD874  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D0C98 002CD878  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D0C9C 002CD87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0CA0 002CD880  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0CA4 002CD884  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0CA8 002CD888  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0CAC 002CD88C  7C 08 03 A6 */	mtlr r0
/* 802D0CB0 002CD890  4E 80 00 20 */	blr

.global it_802D0CB4
it_802D0CB4:
/* 802D0CB4 002CD894  38 60 00 00 */	li r3, 0
/* 802D0CB8 002CD898  4E 80 00 20 */	blr

.global it_802D0CBC
it_802D0CBC:
/* 802D0CBC 002CD89C  7C 08 02 A6 */	mflr r0
/* 802D0CC0 002CD8A0  90 01 00 04 */	stw r0, 4(r1)
/* 802D0CC4 002CD8A4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D0CC8 002CD8A8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D0CCC 002CD8AC  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802D0CD0 002CD8B0  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802D0CD4 002CD8B4  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802D0CD8 002CD8B8  4B FA 1B 89 */	bl it_80272860
/* 802D0CDC 002CD8BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0CE0 002CD8C0  38 21 00 08 */	addi r1, r1, 8
/* 802D0CE4 002CD8C4  7C 08 03 A6 */	mtlr r0
/* 802D0CE8 002CD8C8  4E 80 00 20 */	blr

.global it_802D0CEC
it_802D0CEC:
/* 802D0CEC 002CD8CC  7C 08 02 A6 */	mflr r0
/* 802D0CF0 002CD8D0  3C 80 80 2D */	lis r4, it_802D0B04@ha
/* 802D0CF4 002CD8D4  90 01 00 04 */	stw r0, 4(r1)
/* 802D0CF8 002CD8D8  38 84 0B 04 */	addi r4, r4, it_802D0B04@l
/* 802D0CFC 002CD8DC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D0D00 002CD8E0  4B F9 D4 5D */	bl it_8026E15C
/* 802D0D04 002CD8E4  38 60 00 00 */	li r3, 0
/* 802D0D08 002CD8E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0D0C 002CD8EC  38 21 00 08 */	addi r1, r1, 8
/* 802D0D10 002CD8F0  7C 08 03 A6 */	mtlr r0
/* 802D0D14 002CD8F4  4E 80 00 20 */	blr

.global it_802D0D18
it_802D0D18:
/* 802D0D18 002CD8F8  7C 08 02 A6 */	mflr r0
/* 802D0D1C 002CD8FC  38 80 00 03 */	li r4, 3
/* 802D0D20 002CD900  90 01 00 04 */	stw r0, 4(r1)
/* 802D0D24 002CD904  38 A0 00 01 */	li r5, 1
/* 802D0D28 002CD908  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D0D2C 002CD90C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D0D30 002CD910  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D0D34 002CD914  4B F9 81 29 */	bl Item_80268E5C
/* 802D0D38 002CD918  3C 60 80 2D */	lis r3, it_802D0DBC@ha
/* 802D0D3C 002CD91C  38 03 0D BC */	addi r0, r3, it_802D0DBC@l
/* 802D0D40 002CD920  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D0D44 002CD924  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 802D0D48 002CD928  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D0D4C 002CD92C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D0D50 002CD930  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D0D54 002CD934  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D0D58 002CD938  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D0D5C 002CD93C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D0D60 002CD940  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D0D64 002CD944  38 21 00 18 */	addi r1, r1, 0x18
/* 802D0D68 002CD948  7C 08 03 A6 */	mtlr r0
/* 802D0D6C 002CD94C  4E 80 00 20 */	blr

.global it_802D0D70
it_802D0D70:
/* 802D0D70 002CD950  7C 08 02 A6 */	mflr r0
/* 802D0D74 002CD954  90 01 00 04 */	stw r0, 4(r1)
/* 802D0D78 002CD958  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D0D7C 002CD95C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D0D80 002CD960  7C 7F 1B 78 */	mr r31, r3
/* 802D0D84 002CD964  4B FA 1E E9 */	bl it_80272C6C
/* 802D0D88 002CD968  2C 03 00 00 */	cmpwi r3, 0
/* 802D0D8C 002CD96C  40 82 00 0C */	bne .L_802D0D98
/* 802D0D90 002CD970  7F E3 FB 78 */	mr r3, r31
/* 802D0D94 002CD974  48 00 04 71 */	bl it_802D1204
.L_802D0D98:
/* 802D0D98 002CD978  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D0D9C 002CD97C  38 60 00 00 */	li r3, 0
/* 802D0DA0 002CD980  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D0DA4 002CD984  38 21 00 18 */	addi r1, r1, 0x18
/* 802D0DA8 002CD988  7C 08 03 A6 */	mtlr r0
/* 802D0DAC 002CD98C  4E 80 00 20 */	blr

.global it_802D0DB0
it_802D0DB0:
/* 802D0DB0 002CD990  4E 80 00 20 */	blr

.global it_802D0DB4
it_802D0DB4:
/* 802D0DB4 002CD994  38 60 00 00 */	li r3, 0
/* 802D0DB8 002CD998  4E 80 00 20 */	blr

.global it_802D0DBC
it_802D0DBC:
/* 802D0DBC 002CD99C  7C 08 02 A6 */	mflr r0
/* 802D0DC0 002CD9A0  90 01 00 04 */	stw r0, 4(r1)
/* 802D0DC4 002CD9A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0DC8 002CD9A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0DCC 002CD9AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0DD0 002CD9B0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D0DD4 002CD9B4  80 9F 0E 38 */	lwz r4, 0xe38(r31)
/* 802D0DD8 002CD9B8  34 04 FF FF */	addic. r0, r4, -1
/* 802D0DDC 002CD9BC  90 1F 0E 38 */	stw r0, 0xe38(r31)
/* 802D0DE0 002CD9C0  40 82 00 38 */	bne .L_802D0E18
/* 802D0DE4 002CD9C4  80 BF 00 C4 */	lwz r5, 0xc4(r31)
/* 802D0DE8 002CD9C8  7C 64 1B 78 */	mr r4, r3
/* 802D0DEC 002CD9CC  C0 02 DA 64 */	lfs f0, it_804DD444@sda21(r2)
/* 802D0DF0 002CD9D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 802D0DF4 002CD9D4  83 C5 00 04 */	lwz r30, 4(r5)
/* 802D0DF8 002CD9D8  4C C6 31 82 */	crclr 6
/* 802D0DFC 002CD9DC  38 60 04 71 */	li r3, 0x471
/* 802D0E00 002CD9E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802D0E04 002CD9E4  80 BF 0B BC */	lwz r5, 0xbbc(r31)
/* 802D0E08 002CD9E8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802D0E0C 002CD9EC  4B D8 EF D1 */	bl efSync_Spawn
/* 802D0E10 002CD9F0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D0E14 002CD9F4  90 1F 0E 38 */	stw r0, 0xe38(r31)
.L_802D0E18:
/* 802D0E18 002CD9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0E1C 002CD9FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0E20 002CDA00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0E24 002CDA04  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0E28 002CDA08  7C 08 03 A6 */	mtlr r0
/* 802D0E2C 002CDA0C  4E 80 00 20 */	blr

.global it_802D0E30
it_802D0E30:
/* 802D0E30 002CDA10  7C 08 02 A6 */	mflr r0
/* 802D0E34 002CDA14  38 80 00 04 */	li r4, 4
/* 802D0E38 002CDA18  90 01 00 04 */	stw r0, 4(r1)
/* 802D0E3C 002CDA1C  38 A0 00 01 */	li r5, 1
/* 802D0E40 002CDA20  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D0E44 002CDA24  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D0E48 002CDA28  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D0E4C 002CDA2C  7C 7E 1B 78 */	mr r30, r3
/* 802D0E50 002CDA30  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D0E54 002CDA34  4B F9 80 09 */	bl Item_80268E5C
/* 802D0E58 002CDA38  7F C3 F3 78 */	mr r3, r30
/* 802D0E5C 002CDA3C  4B F9 A5 4D */	bl it_8026B3A8
/* 802D0E60 002CDA40  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D0E64 002CDA44  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D0E68 002CDA48  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D0E6C 002CDA4C  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D0E70 002CDA50  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D0E74 002CDA54  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D0E78 002CDA58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D0E7C 002CDA5C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D0E80 002CDA60  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D0E84 002CDA64  38 21 00 18 */	addi r1, r1, 0x18
/* 802D0E88 002CDA68  7C 08 03 A6 */	mtlr r0
/* 802D0E8C 002CDA6C  4E 80 00 20 */	blr

.global it_802D0E90
it_802D0E90:
/* 802D0E90 002CDA70  7C 08 02 A6 */	mflr r0
/* 802D0E94 002CDA74  38 80 00 04 */	li r4, 4
/* 802D0E98 002CDA78  90 01 00 04 */	stw r0, 4(r1)
/* 802D0E9C 002CDA7C  38 A0 00 01 */	li r5, 1
/* 802D0EA0 002CDA80  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D0EA4 002CDA84  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D0EA8 002CDA88  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D0EAC 002CDA8C  7C 7E 1B 78 */	mr r30, r3
/* 802D0EB0 002CDA90  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D0EB4 002CDA94  4B F9 7F A9 */	bl Item_80268E5C
/* 802D0EB8 002CDA98  7F C3 F3 78 */	mr r3, r30
/* 802D0EBC 002CDA9C  4B F9 A4 ED */	bl it_8026B3A8
/* 802D0EC0 002CDAA0  3C 60 80 2D */	lis r3, .L_802D0F98@ha
/* 802D0EC4 002CDAA4  38 03 0F 98 */	addi r0, r3, .L_802D0F98@l
/* 802D0EC8 002CDAA8  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D0ECC 002CDAAC  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 802D0ED0 002CDAB0  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D0ED4 002CDAB4  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D0ED8 002CDAB8  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D0EDC 002CDABC  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D0EE0 002CDAC0  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D0EE4 002CDAC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D0EE8 002CDAC8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D0EEC 002CDACC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D0EF0 002CDAD0  38 21 00 18 */	addi r1, r1, 0x18
/* 802D0EF4 002CDAD4  7C 08 03 A6 */	mtlr r0
/* 802D0EF8 002CDAD8  4E 80 00 20 */	blr

.global it_802D0EFC
it_802D0EFC:
/* 802D0EFC 002CDADC  7C 08 02 A6 */	mflr r0
/* 802D0F00 002CDAE0  90 01 00 04 */	stw r0, 4(r1)
/* 802D0F04 002CDAE4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D0F08 002CDAE8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D0F0C 002CDAEC  7C 7F 1B 78 */	mr r31, r3
/* 802D0F10 002CDAF0  4B FA 1D 5D */	bl it_80272C6C
/* 802D0F14 002CDAF4  2C 03 00 00 */	cmpwi r3, 0
/* 802D0F18 002CDAF8  40 82 00 0C */	bne .L_802D0F24
/* 802D0F1C 002CDAFC  7F E3 FB 78 */	mr r3, r31
/* 802D0F20 002CDB00  48 00 02 E5 */	bl it_802D1204
.L_802D0F24:
/* 802D0F24 002CDB04  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D0F28 002CDB08  38 60 00 00 */	li r3, 0
/* 802D0F2C 002CDB0C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D0F30 002CDB10  38 21 00 18 */	addi r1, r1, 0x18
/* 802D0F34 002CDB14  7C 08 03 A6 */	mtlr r0
/* 802D0F38 002CDB18  4E 80 00 20 */	blr

.global it_802D0F3C
it_802D0F3C:
/* 802D0F3C 002CDB1C  7C 08 02 A6 */	mflr r0
/* 802D0F40 002CDB20  90 01 00 04 */	stw r0, 4(r1)
/* 802D0F44 002CDB24  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D0F48 002CDB28  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D0F4C 002CDB2C  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802D0F50 002CDB30  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802D0F54 002CDB34  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802D0F58 002CDB38  4B FA 19 09 */	bl it_80272860
/* 802D0F5C 002CDB3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0F60 002CDB40  38 21 00 08 */	addi r1, r1, 8
/* 802D0F64 002CDB44  7C 08 03 A6 */	mtlr r0
/* 802D0F68 002CDB48  4E 80 00 20 */	blr
.global it_802D0F6C
it_802D0F6C:
/* 802D0F6C 002CDB4C  7C 08 02 A6 */	mflr r0
/* 802D0F70 002CDB50  3C 80 80 2D */	lis r4, it_802D1204@ha
/* 802D0F74 002CDB54  90 01 00 04 */	stw r0, 4(r1)
/* 802D0F78 002CDB58  38 84 12 04 */	addi r4, r4, it_802D1204@l
/* 802D0F7C 002CDB5C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D0F80 002CDB60  4B F9 D7 9D */	bl it_8026E71C
/* 802D0F84 002CDB64  38 60 00 00 */	li r3, 0
/* 802D0F88 002CDB68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D0F8C 002CDB6C  38 21 00 08 */	addi r1, r1, 8
/* 802D0F90 002CDB70  7C 08 03 A6 */	mtlr r0
/* 802D0F94 002CDB74  4E 80 00 20 */	blr
.L_802D0F98:
/* 802D0F98 002CDB78  7C 08 02 A6 */	mflr r0
/* 802D0F9C 002CDB7C  90 01 00 04 */	stw r0, 4(r1)
/* 802D0FA0 002CDB80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0FA4 002CDB84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D0FA8 002CDB88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0FAC 002CDB8C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D0FB0 002CDB90  80 9F 0E 38 */	lwz r4, 0xe38(r31)
/* 802D0FB4 002CDB94  34 04 FF FF */	addic. r0, r4, -1
/* 802D0FB8 002CDB98  90 1F 0E 38 */	stw r0, 0xe38(r31)
/* 802D0FBC 002CDB9C  40 82 00 38 */	bne .L_802D0FF4
/* 802D0FC0 002CDBA0  80 BF 00 C4 */	lwz r5, 0xc4(r31)
/* 802D0FC4 002CDBA4  7C 64 1B 78 */	mr r4, r3
/* 802D0FC8 002CDBA8  C0 02 DA 64 */	lfs f0, it_804DD444@sda21(r2)
/* 802D0FCC 002CDBAC  38 C1 00 10 */	addi r6, r1, 0x10
/* 802D0FD0 002CDBB0  83 C5 00 04 */	lwz r30, 4(r5)
/* 802D0FD4 002CDBB4  4C C6 31 82 */	crclr 6
/* 802D0FD8 002CDBB8  38 60 04 71 */	li r3, 0x471
/* 802D0FDC 002CDBBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802D0FE0 002CDBC0  80 BF 0B BC */	lwz r5, 0xbbc(r31)
/* 802D0FE4 002CDBC4  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802D0FE8 002CDBC8  4B D8 ED F5 */	bl efSync_Spawn
/* 802D0FEC 002CDBCC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D0FF0 002CDBD0  90 1F 0E 38 */	stw r0, 0xe38(r31)
.L_802D0FF4:
/* 802D0FF4 002CDBD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0FF8 002CDBD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0FFC 002CDBDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D1000 002CDBE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1004 002CDBE4  7C 08 03 A6 */	mtlr r0
/* 802D1008 002CDBE8  4E 80 00 20 */	blr

.global it_802D100C
it_802D100C:
/* 802D100C 002CDBEC  7C 08 02 A6 */	mflr r0
/* 802D1010 002CDBF0  90 01 00 04 */	stw r0, 4(r1)
/* 802D1014 002CDBF4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D1018 002CDBF8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D101C 002CDBFC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D1020 002CDC00  7C 7E 1B 78 */	mr r30, r3
/* 802D1024 002CDC04  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D1028 002CDC08  4B F9 A3 81 */	bl it_8026B3A8
/* 802D102C 002CDC0C  38 7E 00 00 */	addi r3, r30, 0
/* 802D1030 002CDC10  38 80 00 05 */	li r4, 5
/* 802D1034 002CDC14  38 A0 00 02 */	li r5, 2
/* 802D1038 002CDC18  4B F9 7E 25 */	bl Item_80268E5C
/* 802D103C 002CDC1C  3C 60 80 2D */	lis r3, it_802D1140@ha
/* 802D1040 002CDC20  38 03 11 40 */	addi r0, r3, it_802D1140@l
/* 802D1044 002CDC24  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D1048 002CDC28  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 802D104C 002CDC2C  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D1050 002CDC30  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D1054 002CDC34  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D1058 002CDC38  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D105C 002CDC3C  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D1060 002CDC40  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D1064 002CDC44  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D1068 002CDC48  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D106C 002CDC4C  38 21 00 18 */	addi r1, r1, 0x18
/* 802D1070 002CDC50  7C 08 03 A6 */	mtlr r0
/* 802D1074 002CDC54  4E 80 00 20 */	blr

.global it_802D1078
it_802D1078:
/* 802D1078 002CDC58  7C 08 02 A6 */	mflr r0
/* 802D107C 002CDC5C  90 01 00 04 */	stw r0, 4(r1)
/* 802D1080 002CDC60  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D1084 002CDC64  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D1088 002CDC68  7C 7F 1B 78 */	mr r31, r3
/* 802D108C 002CDC6C  4B FA 1B E1 */	bl it_80272C6C
/* 802D1090 002CDC70  2C 03 00 00 */	cmpwi r3, 0
/* 802D1094 002CDC74  40 82 00 0C */	bne .L_802D10A0
/* 802D1098 002CDC78  7F E3 FB 78 */	mr r3, r31
/* 802D109C 002CDC7C  48 00 01 69 */	bl it_802D1204
.L_802D10A0:
/* 802D10A0 002CDC80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D10A4 002CDC84  38 60 00 00 */	li r3, 0
/* 802D10A8 002CDC88  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D10AC 002CDC8C  38 21 00 18 */	addi r1, r1, 0x18
/* 802D10B0 002CDC90  7C 08 03 A6 */	mtlr r0
/* 802D10B4 002CDC94  4E 80 00 20 */	blr

.global it_802D10B8
it_802D10B8:
/* 802D10B8 002CDC98  7C 08 02 A6 */	mflr r0
/* 802D10BC 002CDC9C  90 01 00 04 */	stw r0, 4(r1)
/* 802D10C0 002CDCA0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D10C4 002CDCA4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D10C8 002CDCA8  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802D10CC 002CDCAC  2C 00 00 01 */	cmpwi r0, 1
/* 802D10D0 002CDCB0  40 82 00 14 */	bne .L_802D10E4
/* 802D10D4 002CDCB4  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802D10D8 002CDCB8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802D10DC 002CDCBC  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802D10E0 002CDCC0  4B FA 17 81 */	bl it_80272860
.L_802D10E4:
/* 802D10E4 002CDCC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D10E8 002CDCC8  38 21 00 08 */	addi r1, r1, 8
/* 802D10EC 002CDCCC  7C 08 03 A6 */	mtlr r0
/* 802D10F0 002CDCD0  4E 80 00 20 */	blr

.global it_802D10F4
it_802D10F4:
/* 802D10F4 002CDCD4  7C 08 02 A6 */	mflr r0
/* 802D10F8 002CDCD8  90 01 00 04 */	stw r0, 4(r1)
/* 802D10FC 002CDCDC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D1100 002CDCE0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D1104 002CDCE4  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802D1108 002CDCE8  2C 00 00 01 */	cmpwi r0, 1
/* 802D110C 002CDCEC  40 82 00 14 */	bne .L_802D1120
/* 802D1110 002CDCF0  3C 80 80 2D */	lis r4, it_802D0AAC@ha
/* 802D1114 002CDCF4  38 84 0A AC */	addi r4, r4, it_802D0AAC@l
/* 802D1118 002CDCF8  4B F9 D0 45 */	bl it_8026E15C
/* 802D111C 002CDCFC  48 00 00 10 */	b .L_802D112C
.L_802D1120:
/* 802D1120 002CDD00  3C 80 80 2D */	lis r4, it_802D0AAC@ha
/* 802D1124 002CDD04  38 84 0A AC */	addi r4, r4, it_802D0AAC@l
/* 802D1128 002CDD08  4B F9 C5 05 */	bl it_8026D62C
.L_802D112C:
/* 802D112C 002CDD0C  38 60 00 00 */	li r3, 0
/* 802D1130 002CDD10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D1134 002CDD14  38 21 00 08 */	addi r1, r1, 8
/* 802D1138 002CDD18  7C 08 03 A6 */	mtlr r0
/* 802D113C 002CDD1C  4E 80 00 20 */	blr

.global it_802D1140
it_802D1140:
/* 802D1140 002CDD20  7C 08 02 A6 */	mflr r0
/* 802D1144 002CDD24  90 01 00 04 */	stw r0, 4(r1)
/* 802D1148 002CDD28  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802D114C 002CDD2C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802D1150 002CDD30  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802D1154 002CDD34  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802D1158 002CDD38  7C 7D 1B 78 */	mr r29, r3
/* 802D115C 002CDD3C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D1160 002CDD40  80 64 0E 34 */	lwz r3, 0xe34(r4)
/* 802D1164 002CDD44  3B E4 00 00 */	addi r31, r4, 0
/* 802D1168 002CDD48  34 03 FF FF */	addic. r0, r3, -1
/* 802D116C 002CDD4C  90 04 0E 34 */	stw r0, 0xe34(r4)
/* 802D1170 002CDD50  40 80 00 78 */	bge .L_802D11E8
/* 802D1174 002CDD54  80 7F 0E 38 */	lwz r3, 0xe38(r31)
/* 802D1178 002CDD58  34 03 FF FF */	addic. r0, r3, -1
/* 802D117C 002CDD5C  90 1F 0E 38 */	stw r0, 0xe38(r31)
/* 802D1180 002CDD60  40 82 00 38 */	bne .L_802D11B8
/* 802D1184 002CDD64  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802D1188 002CDD68  7F A4 EB 78 */	mr r4, r29
/* 802D118C 002CDD6C  C0 02 DA 64 */	lfs f0, it_804DD444@sda21(r2)
/* 802D1190 002CDD70  38 C1 00 10 */	addi r6, r1, 0x10
/* 802D1194 002CDD74  83 C3 00 04 */	lwz r30, 4(r3)
/* 802D1198 002CDD78  4C C6 31 82 */	crclr 6
/* 802D119C 002CDD7C  38 60 04 71 */	li r3, 0x471
/* 802D11A0 002CDD80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802D11A4 002CDD84  80 BF 0B BC */	lwz r5, 0xbbc(r31)
/* 802D11A8 002CDD88  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802D11AC 002CDD8C  4B D8 EC 31 */	bl efSync_Spawn
/* 802D11B0 002CDD90  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D11B4 002CDD94  90 1F 0E 38 */	stw r0, 0xe38(r31)
.L_802D11B8:
/* 802D11B8 002CDD98  7F A3 EB 78 */	mr r3, r29
/* 802D11BC 002CDD9C  4B F9 A1 D5 */	bl it_8026B390
/* 802D11C0 002CDDA0  80 1F 0D AC */	lwz r0, 0xdac(r31)
/* 802D11C4 002CDDA4  28 00 00 00 */	cmplwi r0, 0
/* 802D11C8 002CDDA8  41 82 00 20 */	beq .L_802D11E8
/* 802D11CC 002CDDAC  38 00 00 00 */	li r0, 0
/* 802D11D0 002CDDB0  90 1F 0D AC */	stw r0, 0xdac(r31)
/* 802D11D4 002CDDB4  38 7F 00 00 */	addi r3, r31, 0
/* 802D11D8 002CDDB8  38 80 27 1F */	li r4, 0x271f
/* 802D11DC 002CDDBC  38 A0 00 7F */	li r5, 0x7f
/* 802D11E0 002CDDC0  38 C0 00 40 */	li r6, 0x40
/* 802D11E4 002CDDC4  4B F9 9C A1 */	bl Item_8026AE84
.L_802D11E8:
/* 802D11E8 002CDDC8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802D11EC 002CDDCC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802D11F0 002CDDD0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 802D11F4 002CDDD4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 802D11F8 002CDDD8  38 21 00 28 */	addi r1, r1, 0x28
/* 802D11FC 002CDDDC  7C 08 03 A6 */	mtlr r0
/* 802D1200 002CDDE0  4E 80 00 20 */	blr

.global it_802D1204
it_802D1204:
/* 802D1204 002CDDE4  7C 08 02 A6 */	mflr r0
/* 802D1208 002CDDE8  38 80 27 20 */	li r4, 0x2720
/* 802D120C 002CDDEC  90 01 00 04 */	stw r0, 4(r1)
/* 802D1210 002CDDF0  38 A0 00 7F */	li r5, 0x7f
/* 802D1214 002CDDF4  38 C0 00 40 */	li r6, 0x40
/* 802D1218 002CDDF8  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 802D121C 002CDDFC  93 E1 00 34 */	stw r31, 0x34(r1)
/* 802D1220 002CDE00  93 C1 00 30 */	stw r30, 0x30(r1)
/* 802D1224 002CDE04  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 802D1228 002CDE08  7C 7D 1B 78 */	mr r29, r3
/* 802D122C 002CDE0C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D1230 002CDE10  83 C3 00 28 */	lwz r30, 0x28(r3)
/* 802D1234 002CDE14  38 7F 00 00 */	addi r3, r31, 0
/* 802D1238 002CDE18  4B F9 9C 4D */	bl Item_8026AE84
/* 802D123C 002CDE1C  88 1F 0D CA */	lbz r0, 0xdca(r31)
/* 802D1240 002CDE20  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802D1244 002CDE24  41 82 00 30 */	beq .L_802D1274
/* 802D1248 002CDE28  3C 60 80 3C */	lis r3, it_803B86C8@ha
/* 802D124C 002CDE2C  38 C3 86 C8 */	addi r6, r3, it_803B86C8@l
/* 802D1250 002CDE30  80 A6 00 00 */	lwz r5, 0(r6)
/* 802D1254 002CDE34  7F A3 EB 78 */	mr r3, r29
/* 802D1258 002CDE38  80 06 00 04 */	lwz r0, 4(r6)
/* 802D125C 002CDE3C  38 81 00 14 */	addi r4, r1, 0x14
/* 802D1260 002CDE40  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802D1264 002CDE44  90 01 00 18 */	stw r0, 0x18(r1)
/* 802D1268 002CDE48  80 06 00 08 */	lwz r0, 8(r6)
/* 802D126C 002CDE4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802D1270 002CDE50  4B FA 2F E1 */	bl it_80274250
.L_802D1274:
/* 802D1274 002CDE54  7F A3 EB 78 */	mr r3, r29
/* 802D1278 002CDE58  4B F9 A1 31 */	bl it_8026B3A8
/* 802D127C 002CDE5C  38 7E 00 00 */	addi r3, r30, 0
/* 802D1280 002CDE60  38 80 00 10 */	li r4, 0x10
/* 802D1284 002CDE64  48 0A 0B 19 */	bl HSD_JObjSetFlagsAll
/* 802D1288 002CDE68  7F A3 EB 78 */	mr r3, r29
/* 802D128C 002CDE6C  4B F9 AA 99 */	bl it_8026BD24
/* 802D1290 002CDE70  7F A3 EB 78 */	mr r3, r29
/* 802D1294 002CDE74  4B FA 3E F9 */	bl it_8027518C
/* 802D1298 002CDE78  7F A3 EB 78 */	mr r3, r29
/* 802D129C 002CDE7C  4B FA 21 B9 */	bl it_80273454
/* 802D12A0 002CDE80  7F A3 EB 78 */	mr r3, r29
/* 802D12A4 002CDE84  4B FA 44 2D */	bl it_802756D0
/* 802D12A8 002CDE88  7F A3 EB 78 */	mr r3, r29
/* 802D12AC 002CDE8C  4B FA 41 99 */	bl it_80275444
/* 802D12B0 002CDE90  38 7D 00 00 */	addi r3, r29, 0
/* 802D12B4 002CDE94  38 80 00 06 */	li r4, 6
/* 802D12B8 002CDE98  38 A0 00 02 */	li r5, 2
/* 802D12BC 002CDE9C  4B F9 7B A1 */	bl Item_80268E5C
/* 802D12C0 002CDEA0  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D12C4 002CDEA4  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D12C8 002CDEA8  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D12CC 002CDEAC  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D12D0 002CDEB0  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D12D4 002CDEB4  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D12D8 002CDEB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802D12DC 002CDEBC  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 802D12E0 002CDEC0  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 802D12E4 002CDEC4  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 802D12E8 002CDEC8  38 21 00 38 */	addi r1, r1, 0x38
/* 802D12EC 002CDECC  7C 08 03 A6 */	mtlr r0
/* 802D12F0 002CDED0  4E 80 00 20 */	blr

.global it_802D12F4
it_802D12F4:
/* 802D12F4 002CDED4  7C 08 02 A6 */	mflr r0
/* 802D12F8 002CDED8  90 01 00 04 */	stw r0, 4(r1)
/* 802D12FC 002CDEDC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D1300 002CDEE0  4B FA 3E D9 */	bl it_802751D8
/* 802D1304 002CDEE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D1308 002CDEE8  38 21 00 08 */	addi r1, r1, 8
/* 802D130C 002CDEEC  7C 08 03 A6 */	mtlr r0
/* 802D1310 002CDEF0  4E 80 00 20 */	blr

.global it_802D1314
it_802D1314:
/* 802D1314 002CDEF4  4E 80 00 20 */	blr

.global it_802D1318
it_802D1318:
/* 802D1318 002CDEF8  38 60 00 00 */	li r3, 0
/* 802D131C 002CDEFC  4E 80 00 20 */	blr

.global it_802D1320
it_802D1320:
/* 802D1320 002CDF00  7C 08 02 A6 */	mflr r0
/* 802D1324 002CDF04  90 01 00 04 */	stw r0, 4(r1)
/* 802D1328 002CDF08  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D132C 002CDF0C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D1330 002CDF10  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D1334 002CDF14  7C 7E 1B 78 */	mr r30, r3
/* 802D1338 002CDF18  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802D133C 002CDF1C  7F E3 FB 78 */	mr r3, r31
/* 802D1340 002CDF20  4B FA 4F 7D */	bl it_802762BC
/* 802D1344 002CDF24  38 7E 00 00 */	addi r3, r30, 0
/* 802D1348 002CDF28  38 80 00 00 */	li r4, 0
/* 802D134C 002CDF2C  38 A0 00 02 */	li r5, 2
/* 802D1350 002CDF30  4B F9 7B 0D */	bl Item_80268E5C
/* 802D1354 002CDF34  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D1358 002CDF38  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D135C 002CDF3C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D1360 002CDF40  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D1364 002CDF44  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D1368 002CDF48  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802D136C 002CDF4C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D1370 002CDF50  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D1374 002CDF54  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D1378 002CDF58  38 21 00 18 */	addi r1, r1, 0x18
/* 802D137C 002CDF5C  7C 08 03 A6 */	mtlr r0
/* 802D1380 002CDF60  4E 80 00 20 */	blr

.global it_802D1384
it_802D1384:
/* 802D1384 002CDF64  7C 08 02 A6 */	mflr r0
/* 802D1388 002CDF68  90 01 00 04 */	stw r0, 4(r1)
/* 802D138C 002CDF6C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D1390 002CDF70  4B FA 8C 69 */	bl it_80279FF8
/* 802D1394 002CDF74  38 60 00 00 */	li r3, 0
/* 802D1398 002CDF78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D139C 002CDF7C  38 21 00 08 */	addi r1, r1, 8
/* 802D13A0 002CDF80  7C 08 03 A6 */	mtlr r0
/* 802D13A4 002CDF84  4E 80 00 20 */	blr

.global it_802D13A8
it_802D13A8:
/* 802D13A8 002CDF88  7C 08 02 A6 */	mflr r0
/* 802D13AC 002CDF8C  90 01 00 04 */	stw r0, 4(r1)
/* 802D13B0 002CDF90  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802D13B4 002CDF94  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802D13B8 002CDF98  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802D13BC 002CDF9C  7C 7E 1B 78 */	mr r30, r3
/* 802D13C0 002CDFA0  4B FA 8C DD */	bl it_8027A09C
/* 802D13C4 002CDFA4  2C 03 00 00 */	cmpwi r3, 0
/* 802D13C8 002CDFA8  41 82 00 30 */	beq .L_802D13F8
/* 802D13CC 002CDFAC  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 802D13D0 002CDFB0  38 7E 00 00 */	addi r3, r30, 0
/* 802D13D4 002CDFB4  38 80 00 01 */	li r4, 1
/* 802D13D8 002CDFB8  38 A0 00 01 */	li r5, 1
/* 802D13DC 002CDFBC  4B F9 7A 81 */	bl Item_80268E5C
/* 802D13E0 002CDFC0  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802D13E4 002CDFC4  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802D13E8 002CDFC8  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802D13EC 002CDFCC  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802D13F0 002CDFD0  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802D13F4 002CDFD4  90 1F 0D 2C */	stw r0, 0xd2c(r31)
.L_802D13F8:
/* 802D13F8 002CDFD8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802D13FC 002CDFDC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802D1400 002CDFE0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802D1404 002CDFE4  38 21 00 18 */	addi r1, r1, 0x18
/* 802D1408 002CDFE8  7C 08 03 A6 */	mtlr r0
/* 802D140C 002CDFEC  4E 80 00 20 */	blr

.global it_802D1410
it_802D1410:
/* 802D1410 002CDFF0  7C 08 02 A6 */	mflr r0
/* 802D1414 002CDFF4  3C 80 80 2D */	lis r4, it_802D0AAC@ha
/* 802D1418 002CDFF8  90 01 00 04 */	stw r0, 4(r1)
/* 802D141C 002CDFFC  38 84 0A AC */	addi r4, r4, it_802D0AAC@l
/* 802D1420 002CE000  94 21 FF F8 */	stwu r1, -8(r1)
/* 802D1424 002CE004  4B FA 8C F5 */	bl it_8027A118
/* 802D1428 002CE008  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D142C 002CE00C  38 21 00 08 */	addi r1, r1, 8
/* 802D1430 002CE010  7C 08 03 A6 */	mtlr r0
/* 802D1434 002CE014  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F7E78
it_803F7E78:
    .4byte 0
    .4byte it_802D1384
    .4byte it_802D13A8
    .4byte it_802D1410
    .4byte 1
    .4byte it_802D0B74
    .4byte it_802D0BB4
    .4byte it_802D0BB8
    .4byte 2
    .4byte it_802D0CB4
    .4byte it_802D0CBC
    .4byte it_802D0CEC
    .4byte 3
    .4byte it_802D0D70
    .4byte it_802D0DB0
    .4byte it_802D0DB4
    .4byte 4
    .4byte it_802D0EFC
    .4byte it_802D0F3C
    .4byte it_802D0F6C
    .4byte 5
    .4byte it_802D1078
    .4byte it_802D10B8
    .4byte it_802D10F4
    .4byte 6
    .4byte it_802D12F4
    .4byte it_802D1314
    .4byte it_802D1318


.section .rodata
    .balign 8
.global it_803B86C8
it_803B86C8:
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000


.section .sdata2
    .balign 8
.global it_804DD440
it_804DD440:
    .4byte 0x00000000
.global it_804DD444
it_804DD444:
    .4byte 0x3F800000
.global it_804DD448
it_804DD448:
    .4byte 0x43300000
    .4byte 0x80000000