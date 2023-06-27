.include "macros.inc"

.section .text

.global it_802CF814
it_802CF814:
/* 802CF814 002CC3F4  7C 08 02 A6 */	mflr r0
/* 802CF818 002CC3F8  90 01 00 04 */	stw r0, 4(r1)
/* 802CF81C 002CC3FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CF820 002CC400  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802CF824 002CC404  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802CF828 002CC408  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802CF82C 002CC40C  7C 7D 1B 78 */	mr r29, r3
/* 802CF830 002CC410  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802CF834 002CC414  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802CF838 002CC418  83 C4 00 04 */	lwz r30, 4(r4)
/* 802CF83C 002CC41C  4B FA A4 0D */	bl it_80279C48
/* 802CF840 002CC420  38 00 00 00 */	li r0, 0
/* 802CF844 002CC424  90 1F 0D AC */	stw r0, 0xdac(r31)
/* 802CF848 002CC428  7F A3 EB 78 */	mr r3, r29
/* 802CF84C 002CC42C  90 1F 0D B0 */	stw r0, 0xdb0(r31)
/* 802CF850 002CC430  90 1F 0D B4 */	stw r0, 0xdb4(r31)
/* 802CF854 002CC434  C0 3E 00 00 */	lfs f1, 0(r30)
/* 802CF858 002CC438  4B FA A4 85 */	bl it_80279CDC
/* 802CF85C 002CC43C  7F A3 EB 78 */	mr r3, r29
/* 802CF860 002CC440  48 00 03 19 */	bl it_802CFB78
/* 802CF864 002CC444  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CF868 002CC448  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802CF86C 002CC44C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802CF870 002CC450  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802CF874 002CC454  38 21 00 30 */	addi r1, r1, 0x30
/* 802CF878 002CC458  7C 08 03 A6 */	mtlr r0
/* 802CF87C 002CC45C  4E 80 00 20 */	blr

.global it_802CF880
it_802CF880:
/* 802CF880 002CC460  4E 80 00 20 */	blr

.global it_802CF884
it_802CF884:
/* 802CF884 002CC464  7C 08 02 A6 */	mflr r0
/* 802CF888 002CC468  90 01 00 04 */	stw r0, 4(r1)
/* 802CF88C 002CC46C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CF890 002CC470  4B F9 C0 05 */	bl it_8026B894
/* 802CF894 002CC474  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CF898 002CC478  38 21 00 08 */	addi r1, r1, 8
/* 802CF89C 002CC47C  7C 08 03 A6 */	mtlr r0
/* 802CF8A0 002CC480  4E 80 00 20 */	blr

.global it_802CF8A4
it_802CF8A4:
/* 802CF8A4 002CC484  7C 08 02 A6 */	mflr r0
/* 802CF8A8 002CC488  38 80 00 00 */	li r4, 0
/* 802CF8AC 002CC48C  90 01 00 04 */	stw r0, 4(r1)
/* 802CF8B0 002CC490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF8B4 002CC494  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CF8B8 002CC498  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CF8BC 002CC49C  7C 7E 1B 78 */	mr r30, r3
/* 802CF8C0 002CC4A0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802CF8C4 002CC4A4  38 60 00 04 */	li r3, 4
/* 802CF8C8 002CC4A8  4B D6 15 7D */	bl Camera_80030E44
/* 802CF8CC 002CC4AC  38 7F 00 00 */	addi r3, r31, 0
/* 802CF8D0 002CC4B0  38 80 00 09 */	li r4, 9
/* 802CF8D4 002CC4B4  38 A0 00 7F */	li r5, 0x7f
/* 802CF8D8 002CC4B8  38 C0 00 40 */	li r6, 0x40
/* 802CF8DC 002CC4BC  4B F9 B5 A9 */	bl Item_8026AE84
/* 802CF8E0 002CC4C0  7F C3 F3 78 */	mr r3, r30
/* 802CF8E4 002CC4C4  4B FA 3B 71 */	bl it_80273454
/* 802CF8E8 002CC4C8  7F C3 F3 78 */	mr r3, r30
/* 802CF8EC 002CC4CC  48 00 00 1D */	bl it_802CF908
/* 802CF8F0 002CC4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CF8F4 002CC4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CF8F8 002CC4D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CF8FC 002CC4DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CF900 002CC4E0  7C 08 03 A6 */	mtlr r0
/* 802CF904 002CC4E4  4E 80 00 20 */	blr

.global it_802CF908
it_802CF908:
/* 802CF908 002CC4E8  7C 08 02 A6 */	mflr r0
/* 802CF90C 002CC4EC  38 80 00 00 */	li r4, 0
/* 802CF910 002CC4F0  90 01 00 04 */	stw r0, 4(r1)
/* 802CF914 002CC4F4  38 A0 00 02 */	li r5, 2
/* 802CF918 002CC4F8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802CF91C 002CC4FC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CF920 002CC500  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802CF924 002CC504  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802CF928 002CC508  80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 802CF92C 002CC50C  83 C6 00 04 */	lwz r30, 4(r6)
/* 802CF930 002CC510  4B F9 95 2D */	bl Item_80268E5C
/* 802CF934 002CC514  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802CF938 002CC518  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802CF93C 002CC51C  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802CF940 002CC520  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802CF944 002CC524  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802CF948 002CC528  3C 60 80 2D */	lis r3, it_802CFAFC@ha
/* 802CF94C 002CC52C  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802CF950 002CC530  38 03 FA FC */	addi r0, r3, it_802CFAFC@l
/* 802CF954 002CC534  90 1F 0D 20 */	stw r0, 0xd20(r31)
/* 802CF958 002CC538  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CF95C 002CC53C  90 1F 0E 34 */	stw r0, 0xe34(r31)
/* 802CF960 002CC540  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802CF964 002CC544  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802CF968 002CC548  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802CF96C 002CC54C  38 21 00 18 */	addi r1, r1, 0x18
/* 802CF970 002CC550  7C 08 03 A6 */	mtlr r0
/* 802CF974 002CC554  4E 80 00 20 */	blr

.global it_802CF978
it_802CF978:
/* 802CF978 002CC558  7C 08 02 A6 */	mflr r0
/* 802CF97C 002CC55C  90 01 00 04 */	stw r0, 4(r1)
/* 802CF980 002CC560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF984 002CC564  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CF988 002CC568  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CF98C 002CC56C  7C 7E 1B 78 */	mr r30, r3
/* 802CF990 002CC570  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802CF994 002CC574  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802CF998 002CC578  80 03 0D B0 */	lwz r0, 0xdb0(r3)
/* 802CF99C 002CC57C  3B E3 00 00 */	addi r31, r3, 0
/* 802CF9A0 002CC580  28 00 00 00 */	cmplwi r0, 0
/* 802CF9A4 002CC584  41 82 00 18 */	beq .L_802CF9BC
/* 802CF9A8 002CC588  38 00 00 00 */	li r0, 0
/* 802CF9AC 002CC58C  90 1F 0D B0 */	stw r0, 0xdb0(r31)
/* 802CF9B0 002CC590  7F C3 F3 78 */	mr r3, r30
/* 802CF9B4 002CC594  90 1F 0D B4 */	stw r0, 0xdb4(r31)
/* 802CF9B8 002CC598  4B D8 BE C9 */	bl efLib_DestroyAll
.L_802CF9BC:
/* 802CF9BC 002CC59C  7F C3 F3 78 */	mr r3, r30
/* 802CF9C0 002CC5A0  4B FA 32 AD */	bl it_80272C6C
/* 802CF9C4 002CC5A4  2C 03 00 00 */	cmpwi r3, 0
/* 802CF9C8 002CC5A8  40 82 00 0C */	bne .L_802CF9D4
/* 802CF9CC 002CC5AC  38 60 00 01 */	li r3, 1
/* 802CF9D0 002CC5B0  48 00 00 88 */	b .L_802CFA58
.L_802CF9D4:
/* 802CF9D4 002CC5B4  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 802CF9D8 002CC5B8  28 00 00 00 */	cmplwi r0, 0
/* 802CF9DC 002CC5BC  41 82 00 78 */	beq .L_802CFA54
/* 802CF9E0 002CC5C0  80 7F 0E 34 */	lwz r3, 0xe34(r31)
/* 802CF9E4 002CC5C4  34 03 FF FF */	addic. r0, r3, -1
/* 802CF9E8 002CC5C8  90 1F 0E 34 */	stw r0, 0xe34(r31)
/* 802CF9EC 002CC5CC  40 82 00 68 */	bne .L_802CFA54
/* 802CF9F0 002CC5D0  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802CF9F4 002CC5D4  38 60 00 03 */	li r3, 3
/* 802CF9F8 002CC5D8  83 C4 00 04 */	lwz r30, 4(r4)
/* 802CF9FC 002CC5DC  48 0B 0B 85 */	bl HSD_Randi
/* 802CFA00 002CC5E0  2C 03 00 01 */	cmpwi r3, 1
/* 802CFA04 002CC5E4  41 82 00 28 */	beq .L_802CFA2C
/* 802CFA08 002CC5E8  40 80 00 10 */	bge .L_802CFA18
/* 802CFA0C 002CC5EC  2C 03 00 00 */	cmpwi r3, 0
/* 802CFA10 002CC5F0  40 80 00 14 */	bge .L_802CFA24
/* 802CFA14 002CC5F4  48 00 00 24 */	b .L_802CFA38
.L_802CFA18:
/* 802CFA18 002CC5F8  2C 03 00 03 */	cmpwi r3, 3
/* 802CFA1C 002CC5FC  40 80 00 1C */	bge .L_802CFA38
/* 802CFA20 002CC600  48 00 00 14 */	b .L_802CFA34
.L_802CFA24:
/* 802CFA24 002CC604  3B A0 27 46 */	li r29, 0x2746
/* 802CFA28 002CC608  48 00 00 10 */	b .L_802CFA38
.L_802CFA2C:
/* 802CFA2C 002CC60C  3B A0 27 47 */	li r29, 0x2747
/* 802CFA30 002CC610  48 00 00 08 */	b .L_802CFA38
.L_802CFA34:
/* 802CFA34 002CC614  3B A0 27 48 */	li r29, 0x2748
.L_802CFA38:
/* 802CFA38 002CC618  38 7F 00 00 */	addi r3, r31, 0
/* 802CFA3C 002CC61C  38 9D 00 00 */	addi r4, r29, 0
/* 802CFA40 002CC620  38 A0 00 7F */	li r5, 0x7f
/* 802CFA44 002CC624  38 C0 00 40 */	li r6, 0x40
/* 802CFA48 002CC628  4B F9 B4 3D */	bl Item_8026AE84
/* 802CFA4C 002CC62C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CFA50 002CC630  90 1F 0E 34 */	stw r0, 0xe34(r31)
.L_802CFA54:
/* 802CFA54 002CC634  38 60 00 00 */	li r3, 0
.L_802CFA58:
/* 802CFA58 002CC638  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CFA5C 002CC63C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CFA60 002CC640  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CFA64 002CC644  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802CFA68 002CC648  38 21 00 20 */	addi r1, r1, 0x20
/* 802CFA6C 002CC64C  7C 08 03 A6 */	mtlr r0
/* 802CFA70 002CC650  4E 80 00 20 */	blr

.global it_802CFA74
it_802CFA74:
/* 802CFA74 002CC654  7C 08 02 A6 */	mflr r0
/* 802CFA78 002CC658  90 01 00 04 */	stw r0, 4(r1)
/* 802CFA7C 002CC65C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CFA80 002CC660  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802CFA84 002CC664  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802CFA88 002CC668  2C 00 00 01 */	cmpwi r0, 1
/* 802CFA8C 002CC66C  40 82 00 14 */	bne .L_802CFAA0
/* 802CFA90 002CC670  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802CFA94 002CC674  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802CFA98 002CC678  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802CFA9C 002CC67C  4B FA 2D C5 */	bl it_80272860
.L_802CFAA0:
/* 802CFAA0 002CC680  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CFAA4 002CC684  38 21 00 08 */	addi r1, r1, 8
/* 802CFAA8 002CC688  7C 08 03 A6 */	mtlr r0
/* 802CFAAC 002CC68C  4E 80 00 20 */	blr

.global it_802CFAB0
it_802CFAB0:
/* 802CFAB0 002CC690  7C 08 02 A6 */	mflr r0
/* 802CFAB4 002CC694  90 01 00 04 */	stw r0, 4(r1)
/* 802CFAB8 002CC698  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CFABC 002CC69C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802CFAC0 002CC6A0  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 802CFAC4 002CC6A4  2C 00 00 01 */	cmpwi r0, 1
/* 802CFAC8 002CC6A8  40 82 00 14 */	bne .L_802CFADC
/* 802CFACC 002CC6AC  3C 80 80 2D */	lis r4, it_802CF880@ha
/* 802CFAD0 002CC6B0  38 84 F8 80 */	addi r4, r4, it_802CF880@l
/* 802CFAD4 002CC6B4  4B F9 E7 75 */	bl it_8026E248
/* 802CFAD8 002CC6B8  48 00 00 10 */	b .L_802CFAE8
.L_802CFADC:
/* 802CFADC 002CC6BC  3C 80 80 2D */	lis r4, it_802CF880@ha
/* 802CFAE0 002CC6C0  38 84 F8 80 */	addi r4, r4, it_802CF880@l
/* 802CFAE4 002CC6C4  4B F9 DB 49 */	bl it_8026D62C
.L_802CFAE8:
/* 802CFAE8 002CC6C8  38 60 00 00 */	li r3, 0
/* 802CFAEC 002CC6CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CFAF0 002CC6D0  38 21 00 08 */	addi r1, r1, 8
/* 802CFAF4 002CC6D4  7C 08 03 A6 */	mtlr r0
/* 802CFAF8 002CC6D8  4E 80 00 20 */	blr

.global it_802CFAFC
it_802CFAFC:
/* 802CFAFC 002CC6DC  7C 08 02 A6 */	mflr r0
/* 802CFB00 002CC6E0  90 01 00 04 */	stw r0, 4(r1)
/* 802CFB04 002CC6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CFB08 002CC6E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CFB0C 002CC6EC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802CFB10 002CC6F0  80 04 0D AC */	lwz r0, 0xdac(r4)
/* 802CFB14 002CC6F4  3B E4 00 00 */	addi r31, r4, 0
/* 802CFB18 002CC6F8  28 00 00 00 */	cmplwi r0, 0
/* 802CFB1C 002CC6FC  41 82 00 48 */	beq .L_802CFB64
/* 802CFB20 002CC700  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 802CFB24 002CC704  38 83 00 00 */	addi r4, r3, 0
/* 802CFB28 002CC708  C0 02 DA 48 */	lfs f0, it_804DD428@sda21(r2)
/* 802CFB2C 002CC70C  38 E0 00 00 */	li r7, 0
/* 802CFB30 002CC710  38 00 00 01 */	li r0, 1
/* 802CFB34 002CC714  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802CFB38 002CC718  38 C1 00 14 */	addi r6, r1, 0x14
/* 802CFB3C 002CC71C  4C C6 31 82 */	crclr 6
/* 802CFB40 002CC720  38 60 04 6D */	li r3, 0x46d
/* 802CFB44 002CC724  90 FF 0D AC */	stw r7, 0xdac(r31)
/* 802CFB48 002CC728  90 1F 0D B4 */	stw r0, 0xdb4(r31)
/* 802CFB4C 002CC72C  4B D9 02 91 */	bl efSync_Spawn
/* 802CFB50 002CC730  38 7F 00 00 */	addi r3, r31, 0
/* 802CFB54 002CC734  38 80 27 45 */	li r4, 0x2745
/* 802CFB58 002CC738  38 A0 00 7F */	li r5, 0x7f
/* 802CFB5C 002CC73C  38 C0 00 40 */	li r6, 0x40
/* 802CFB60 002CC740  4B F9 B3 25 */	bl Item_8026AE84
.L_802CFB64:
/* 802CFB64 002CC744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CFB68 002CC748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CFB6C 002CC74C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CFB70 002CC750  7C 08 03 A6 */	mtlr r0
/* 802CFB74 002CC754  4E 80 00 20 */	blr

.global it_802CFB78
it_802CFB78:
/* 802CFB78 002CC758  7C 08 02 A6 */	mflr r0
/* 802CFB7C 002CC75C  90 01 00 04 */	stw r0, 4(r1)
/* 802CFB80 002CC760  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802CFB84 002CC764  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802CFB88 002CC768  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802CFB8C 002CC76C  7C 7E 1B 78 */	mr r30, r3
/* 802CFB90 002CC770  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802CFB94 002CC774  7F E3 FB 78 */	mr r3, r31
/* 802CFB98 002CC778  4B FA 67 25 */	bl it_802762BC
/* 802CFB9C 002CC77C  38 7E 00 00 */	addi r3, r30, 0
/* 802CFBA0 002CC780  38 80 00 01 */	li r4, 1
/* 802CFBA4 002CC784  38 A0 00 02 */	li r5, 2
/* 802CFBA8 002CC788  4B F9 92 B5 */	bl Item_80268E5C
/* 802CFBAC 002CC78C  3C 60 80 06 */	lis r3, efLib_PauseAll@ha
/* 802CFBB0 002CC790  38 03 BA 40 */	addi r0, r3, efLib_PauseAll@l
/* 802CFBB4 002CC794  3C 60 80 06 */	lis r3, efLib_ResumeAll@ha
/* 802CFBB8 002CC798  90 1F 0D 28 */	stw r0, 0xd28(r31)
/* 802CFBBC 002CC79C  38 03 BA C4 */	addi r0, r3, efLib_ResumeAll@l
/* 802CFBC0 002CC7A0  90 1F 0D 2C */	stw r0, 0xd2c(r31)
/* 802CFBC4 002CC7A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802CFBC8 002CC7A8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802CFBCC 002CC7AC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802CFBD0 002CC7B0  38 21 00 18 */	addi r1, r1, 0x18
/* 802CFBD4 002CC7B4  7C 08 03 A6 */	mtlr r0
/* 802CFBD8 002CC7B8  4E 80 00 20 */	blr

.global it_802CFBDC
it_802CFBDC:
/* 802CFBDC 002CC7BC  7C 08 02 A6 */	mflr r0
/* 802CFBE0 002CC7C0  90 01 00 04 */	stw r0, 4(r1)
/* 802CFBE4 002CC7C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CFBE8 002CC7C8  4B FA A4 11 */	bl it_80279FF8
/* 802CFBEC 002CC7CC  38 60 00 00 */	li r3, 0
/* 802CFBF0 002CC7D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CFBF4 002CC7D4  38 21 00 08 */	addi r1, r1, 8
/* 802CFBF8 002CC7D8  7C 08 03 A6 */	mtlr r0
/* 802CFBFC 002CC7DC  4E 80 00 20 */	blr

.global it_802CFC00
it_802CFC00:
/* 802CFC00 002CC7E0  7C 08 02 A6 */	mflr r0
/* 802CFC04 002CC7E4  90 01 00 04 */	stw r0, 4(r1)
/* 802CFC08 002CC7E8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CFC0C 002CC7EC  4B FA A4 91 */	bl it_8027A09C
/* 802CFC10 002CC7F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CFC14 002CC7F4  38 21 00 08 */	addi r1, r1, 8
/* 802CFC18 002CC7F8  7C 08 03 A6 */	mtlr r0
/* 802CFC1C 002CC7FC  4E 80 00 20 */	blr

.global it_802CFC20
it_802CFC20:
/* 802CFC20 002CC800  7C 08 02 A6 */	mflr r0
/* 802CFC24 002CC804  3C 80 80 2D */	lis r4, it_802CF8A4@ha
/* 802CFC28 002CC808  90 01 00 04 */	stw r0, 4(r1)
/* 802CFC2C 002CC80C  38 84 F8 A4 */	addi r4, r4, it_802CF8A4@l
/* 802CFC30 002CC810  94 21 FF F8 */	stwu r1, -8(r1)
/* 802CFC34 002CC814  4B FA A4 E5 */	bl it_8027A118
/* 802CFC38 002CC818  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CFC3C 002CC81C  38 21 00 08 */	addi r1, r1, 8
/* 802CFC40 002CC820  7C 08 03 A6 */	mtlr r0
/* 802CFC44 002CC824  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F7DE8
it_803F7DE8:
    .4byte 0
    .4byte it_802CF978
    .4byte it_802CFA74
    .4byte it_802CFAB0
    .4byte -1
    .4byte it_802CFBDC
    .4byte it_802CFC00
    .4byte it_802CFC20


.section .sdata2
    .balign 8
.global it_804DD428
it_804DD428:
    .4byte 0x3F800000
