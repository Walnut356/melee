.include "macros.inc"

.section .text, "ax"  # 0x8000AEC8 - 0x8000B070

.global func_8000AEC8
func_8000AEC8:
/* 8000AEC8 00007AA8  20 03 FF FF */	subfic r0, r3, -1
/* 8000AECC 00007AAC  7C 00 20 40 */	cmplw r0, r4
/* 8000AED0 00007AB0  40 81 00 0C */	ble lbl_8000AEDC
/* 8000AED4 00007AB4  7C 63 22 14 */	add r3, r3, r4
/* 8000AED8 00007AB8  4E 80 00 20 */	blr 
lbl_8000AEDC:
/* 8000AEDC 00007ABC  38 60 FF FF */	li r3, -1
/* 8000AEE0 00007AC0  4E 80 00 20 */	blr 

.global func_8000AEE4
func_8000AEE4:
/* 8000AEE4 00007AC4  2C 04 00 00 */	cmpwi r4, 0
/* 8000AEE8 00007AC8  40 81 00 20 */	ble lbl_8000AF08
/* 8000AEEC 00007ACC  20 03 FF FF */	subfic r0, r3, -1
/* 8000AEF0 00007AD0  7C 00 20 40 */	cmplw r0, r4
/* 8000AEF4 00007AD4  40 81 00 0C */	ble lbl_8000AF00
/* 8000AEF8 00007AD8  7C 63 22 14 */	add r3, r3, r4
/* 8000AEFC 00007ADC  4E 80 00 20 */	blr 
lbl_8000AF00:
/* 8000AF00 00007AE0  38 60 FF FF */	li r3, -1
/* 8000AF04 00007AE4  4E 80 00 20 */	blr 
lbl_8000AF08:
/* 8000AF08 00007AE8  7C 04 00 D0 */	neg r0, r4
/* 8000AF0C 00007AEC  7C 03 00 40 */	cmplw r3, r0
/* 8000AF10 00007AF0  40 81 00 0C */	ble lbl_8000AF1C
/* 8000AF14 00007AF4  7C 63 22 14 */	add r3, r3, r4
/* 8000AF18 00007AF8  4E 80 00 20 */	blr 
lbl_8000AF1C:
/* 8000AF1C 00007AFC  38 60 00 00 */	li r3, 0
/* 8000AF20 00007B00  4E 80 00 20 */	blr 

.global func_8000AF24
func_8000AF24:
/* 8000AF24 00007B04  2C 04 00 00 */	cmpwi r4, 0
/* 8000AF28 00007B08  40 81 00 2C */	ble lbl_8000AF54
/* 8000AF2C 00007B0C  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 8000AF30 00007B10  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8000AF34 00007B14  38 A5 FF FF */	addi r5, r5, 0x0000FFFF@l
/* 8000AF38 00007B18  7C 00 28 50 */	subf r0, r0, r5
/* 8000AF3C 00007B1C  7C 00 20 40 */	cmplw r0, r4
/* 8000AF40 00007B20  40 81 00 0C */	ble lbl_8000AF4C
/* 8000AF44 00007B24  7C 63 22 14 */	add r3, r3, r4
/* 8000AF48 00007B28  4E 80 00 20 */	blr 
lbl_8000AF4C:
/* 8000AF4C 00007B2C  7C A3 2B 78 */	mr r3, r5
/* 8000AF50 00007B30  4E 80 00 20 */	blr 
lbl_8000AF54:
/* 8000AF54 00007B34  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8000AF58 00007B38  7C 04 00 D0 */	neg r0, r4
/* 8000AF5C 00007B3C  7C 05 00 00 */	cmpw r5, r0
/* 8000AF60 00007B40  40 81 00 0C */	ble lbl_8000AF6C
/* 8000AF64 00007B44  7C 63 22 14 */	add r3, r3, r4
/* 8000AF68 00007B48  4E 80 00 20 */	blr 
lbl_8000AF6C:
/* 8000AF6C 00007B4C  38 60 00 00 */	li r3, 0
/* 8000AF70 00007B50  4E 80 00 20 */	blr 

.global func_8000AF74
func_8000AF74:
/* 8000AF74 00007B54  2C 04 00 00 */	cmpwi r4, 0
/* 8000AF78 00007B58  40 81 00 24 */	ble lbl_8000AF9C
/* 8000AF7C 00007B5C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8000AF80 00007B60  20 00 00 FF */	subfic r0, r0, 0xff
/* 8000AF84 00007B64  7C 00 20 40 */	cmplw r0, r4
/* 8000AF88 00007B68  40 81 00 0C */	ble lbl_8000AF94
/* 8000AF8C 00007B6C  7C 63 22 14 */	add r3, r3, r4
/* 8000AF90 00007B70  4E 80 00 20 */	blr 
lbl_8000AF94:
/* 8000AF94 00007B74  38 60 00 FF */	li r3, 0xff
/* 8000AF98 00007B78  4E 80 00 20 */	blr 
lbl_8000AF9C:
/* 8000AF9C 00007B7C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8000AFA0 00007B80  7C 04 00 D0 */	neg r0, r4
/* 8000AFA4 00007B84  7C 05 00 00 */	cmpw r5, r0
/* 8000AFA8 00007B88  40 81 00 0C */	ble lbl_8000AFB4
/* 8000AFAC 00007B8C  7C 63 22 14 */	add r3, r3, r4
/* 8000AFB0 00007B90  4E 80 00 20 */	blr 
lbl_8000AFB4:
/* 8000AFB4 00007B94  38 60 00 00 */	li r3, 0
/* 8000AFB8 00007B98  4E 80 00 20 */	blr 

.global func_8000AFBC
func_8000AFBC:
/* 8000AFBC 00007B9C  7C 08 02 A6 */	mflr r0
/* 8000AFC0 00007BA0  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8000AFC4 00007BA4  90 01 00 04 */	stw r0, 4(r1)
/* 8000AFC8 00007BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000AFCC 00007BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000AFD0 00007BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8000AFD4 00007BB4  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8000AFD8 00007BB8  54 1E F0 BE */	srwi r30, r0, 2
/* 8000AFDC 00007BBC  48 34 14 15 */	bl OSGetTime
/* 8000AFE0 00007BC0  38 DE 00 00 */	addi r6, r30, 0
/* 8000AFE4 00007BC4  38 A0 00 00 */	li r5, 0
/* 8000AFE8 00007BC8  48 31 7A 21 */	bl __div2i
/* 8000AFEC 00007BCC  38 00 FF FF */	li r0, -1
/* 8000AFF0 00007BD0  7C 04 00 10 */	subfc r0, r4, r0
/* 8000AFF4 00007BD4  38 00 00 00 */	li r0, 0
/* 8000AFF8 00007BD8  7C 03 01 10 */	subfe r0, r3, r0
/* 8000AFFC 00007BDC  7C 1F F9 10 */	subfe r0, r31, r31
/* 8000B000 00007BE0  7C 00 00 D1 */	neg. r0, r0
/* 8000B004 00007BE4  41 82 00 08 */	beq lbl_8000B00C
/* 8000B008 00007BE8  38 80 FF FF */	li r4, -1
lbl_8000B00C:
/* 8000B00C 00007BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000B010 00007BF0  7C 83 23 78 */	mr r3, r4
/* 8000B014 00007BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000B018 00007BF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000B01C 00007BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8000B020 00007C00  7C 08 03 A6 */	mtlr r0
/* 8000B024 00007C04  4E 80 00 20 */	blr 

.global func_8000B028
func_8000B028:
/* 8000B028 00007C08  7C 08 02 A6 */	mflr r0
/* 8000B02C 00007C0C  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8000B030 00007C10  90 01 00 04 */	stw r0, 4(r1)
/* 8000B034 00007C14  38 E0 00 00 */	li r7, 0
/* 8000B038 00007C18  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000B03C 00007C1C  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8000B040 00007C20  38 A3 00 00 */	addi r5, r3, 0
/* 8000B044 00007C24  54 06 F0 BE */	srwi r6, r0, 2
/* 8000B048 00007C28  7C 67 31 D6 */	mullw r3, r7, r6
/* 8000B04C 00007C2C  7C 04 30 16 */	mulhwu r0, r4, r6
/* 8000B050 00007C30  7C 63 02 14 */	add r3, r3, r0
/* 8000B054 00007C34  7C 04 39 D6 */	mullw r0, r4, r7
/* 8000B058 00007C38  7C 84 31 D6 */	mullw r4, r4, r6
/* 8000B05C 00007C3C  7C 63 02 14 */	add r3, r3, r0
/* 8000B060 00007C40  48 34 16 09 */	bl OSTicksToCalendarTime
/* 8000B064 00007C44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000B068 00007C48  38 21 00 08 */	addi r1, r1, 8
/* 8000B06C 00007C4C  7C 08 03 A6 */	mtlr r0
/* 8000B070 00007C50  4E 80 00 20 */	blr 
