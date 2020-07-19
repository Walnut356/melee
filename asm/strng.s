.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global lbl_803257E8
lbl_803257E8:
/* 803257E8 003223C8  2C 05 00 01 */	cmpwi r5, 1
/* 803257EC 003223CC  41 82 00 50 */	beq lbl_8032583C
/* 803257F0 003223D0  40 80 00 10 */	bge lbl_80325800
/* 803257F4 003223D4  2C 05 00 00 */	cmpwi r5, 0
/* 803257F8 003223D8  40 80 00 14 */	bge lbl_8032580C
/* 803257FC 003223DC  48 00 00 74 */	b lbl_80325870
lbl_80325800:
/* 80325800 003223E0  2C 05 00 03 */	cmpwi r5, 3
/* 80325804 003223E4  40 80 00 6C */	bge lbl_80325870
/* 80325808 003223E8  48 00 00 60 */	b lbl_80325868
lbl_8032580C:
/* 8032580C 003223EC  80 83 00 00 */	lwz r4, 0(r3)
/* 80325810 003223F0  88 A4 00 00 */	lbz r5, 0(r4)
/* 80325814 003223F4  7C A0 07 75 */	extsb. r0, r5
/* 80325818 003223F8  40 82 00 14 */	bne lbl_8032582C
/* 8032581C 003223FC  38 00 00 01 */	li r0, 1
/* 80325820 00322400  90 03 00 04 */	stw r0, 4(r3)
/* 80325824 00322404  38 60 FF FF */	li r3, -1
/* 80325828 00322408  4E 80 00 20 */	blr 
lbl_8032582C:
/* 8032582C 0032240C  38 04 00 01 */	addi r0, r4, 1
/* 80325830 00322410  90 03 00 00 */	stw r0, 0(r3)
/* 80325834 00322414  7C A3 07 74 */	extsb r3, r5
/* 80325838 00322418  4E 80 00 20 */	blr 
lbl_8032583C:
/* 8032583C 0032241C  80 03 00 04 */	lwz r0, 4(r3)
/* 80325840 00322420  2C 00 00 00 */	cmpwi r0, 0
/* 80325844 00322424  40 82 00 14 */	bne lbl_80325858
/* 80325848 00322428  80 A3 00 00 */	lwz r5, 0(r3)
/* 8032584C 0032242C  38 05 FF FF */	addi r0, r5, -1
/* 80325850 00322430  90 03 00 00 */	stw r0, 0(r3)
/* 80325854 00322434  48 00 00 0C */	b lbl_80325860
lbl_80325858:
/* 80325858 00322438  38 00 00 00 */	li r0, 0
/* 8032585C 0032243C  90 03 00 04 */	stw r0, 4(r3)
lbl_80325860:
/* 80325860 00322440  7C 83 23 78 */	mr r3, r4
/* 80325864 00322444  4E 80 00 20 */	blr 
lbl_80325868:
/* 80325868 00322448  80 63 00 04 */	lwz r3, 4(r3)
/* 8032586C 0032244C  4E 80 00 20 */	blr 
lbl_80325870:
/* 80325870 00322450  38 60 00 00 */	li r3, 0
/* 80325874 00322454  4E 80 00 20 */	blr 

.global func_80325878
func_80325878:
/* 80325878 00322458  38 63 FF FF */	addi r3, r3, -1
/* 8032587C 0032245C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80325880 00322460  48 00 00 0C */	b lbl_8032588C
lbl_80325884:
/* 80325884 00322464  7C 04 00 40 */	cmplw r4, r0
/* 80325888 00322468  4D 82 00 20 */	beqlr 
lbl_8032588C:
/* 8032588C 0032246C  8C 83 00 01 */	lbzu r4, 1(r3)
/* 80325890 00322470  28 04 00 00 */	cmplwi r4, 0
/* 80325894 00322474  40 82 FF F0 */	bne lbl_80325884
/* 80325898 00322478  28 00 00 00 */	cmplwi r0, 0
/* 8032589C 0032247C  4D 82 00 20 */	beqlr 
/* 803258A0 00322480  38 60 00 00 */	li r3, 0
/* 803258A4 00322484  4E 80 00 20 */	blr 

.global func_803258A8
func_803258A8:
/* 803258A8 00322488  38 63 FF FF */	addi r3, r3, -1
/* 803258AC 0032248C  38 84 FF FF */	addi r4, r4, -1
/* 803258B0 00322490  38 C5 00 01 */	addi r6, r5, 1
/* 803258B4 00322494  48 00 00 24 */	b lbl_803258D8
lbl_803258B8:
/* 803258B8 00322498  8C 03 00 01 */	lbzu r0, 1(r3)
/* 803258BC 0032249C  8C A4 00 01 */	lbzu r5, 1(r4)
/* 803258C0 003224A0  7C 00 28 40 */	cmplw r0, r5
/* 803258C4 003224A4  41 82 00 0C */	beq lbl_803258D0
/* 803258C8 003224A8  7C 65 00 50 */	subf r3, r5, r0
/* 803258CC 003224AC  4E 80 00 20 */	blr 
lbl_803258D0:
/* 803258D0 003224B0  28 00 00 00 */	cmplwi r0, 0
/* 803258D4 003224B4  41 82 00 0C */	beq lbl_803258E0
lbl_803258D8:
/* 803258D8 003224B8  34 C6 FF FF */	addic. r6, r6, -1
/* 803258DC 003224BC  40 82 FF DC */	bne lbl_803258B8
lbl_803258E0:
/* 803258E0 003224C0  38 60 00 00 */	li r3, 0
/* 803258E4 003224C4  4E 80 00 20 */	blr 

.global func_803258E8
func_803258E8:
/* 803258E8 003224C8  88 C3 00 00 */	lbz r6, 0(r3)
/* 803258EC 003224CC  88 A4 00 00 */	lbz r5, 0(r4)
/* 803258F0 003224D0  7C 05 30 51 */	subf. r0, r5, r6
/* 803258F4 003224D4  41 82 00 0C */	beq lbl_80325900
/* 803258F8 003224D8  7C 65 30 50 */	subf r3, r5, r6
/* 803258FC 003224DC  4E 80 00 20 */	blr 
lbl_80325900:
/* 80325900 003224E0  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 80325904 003224E4  54 65 07 BE */	clrlwi r5, r3, 0x1e
/* 80325908 003224E8  7C 00 28 40 */	cmplw r0, r5
/* 8032590C 003224EC  40 82 00 C8 */	bne lbl_803259D4
/* 80325910 003224F0  28 05 00 00 */	cmplwi r5, 0
/* 80325914 003224F4  41 82 00 58 */	beq lbl_8032596C
/* 80325918 003224F8  28 06 00 00 */	cmplwi r6, 0
/* 8032591C 003224FC  40 82 00 0C */	bne lbl_80325928
/* 80325920 00322500  38 60 00 00 */	li r3, 0
/* 80325924 00322504  4E 80 00 20 */	blr 
lbl_80325928:
/* 80325928 00322508  20 05 00 03 */	subfic r0, r5, 3
/* 8032592C 0032250C  28 00 00 00 */	cmplwi r0, 0
/* 80325930 00322510  7C 09 03 A6 */	mtctr r0
/* 80325934 00322514  41 82 00 30 */	beq lbl_80325964
lbl_80325938:
/* 80325938 00322518  8C A3 00 01 */	lbzu r5, 1(r3)
/* 8032593C 0032251C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80325940 00322520  7C 00 28 51 */	subf. r0, r0, r5
/* 80325944 00322524  41 82 00 0C */	beq lbl_80325950
/* 80325948 00322528  7C 03 03 78 */	mr r3, r0
/* 8032594C 0032252C  4E 80 00 20 */	blr 
lbl_80325950:
/* 80325950 00322530  28 05 00 00 */	cmplwi r5, 0
/* 80325954 00322534  40 82 00 0C */	bne lbl_80325960
/* 80325958 00322538  38 60 00 00 */	li r3, 0
/* 8032595C 0032253C  4E 80 00 20 */	blr 
lbl_80325960:
/* 80325960 00322540  42 00 FF D8 */	bdnz lbl_80325938
lbl_80325964:
/* 80325964 00322544  38 63 00 01 */	addi r3, r3, 1
/* 80325968 00322548  38 84 00 01 */	addi r4, r4, 1
lbl_8032596C:
/* 8032596C 0032254C  80 E3 00 00 */	lwz r7, 0(r3)
/* 80325970 00322550  80 CD A4 BC */	lwz r6, lbl_804D5B5C-_SDA_BASE_(r13)
/* 80325974 00322554  80 AD A4 B8 */	lwz r5, lbl_804D5B58-_SDA_BASE_(r13)
/* 80325978 00322558  7C 07 32 14 */	add r0, r7, r6
/* 8032597C 0032255C  81 04 00 00 */	lwz r8, 0(r4)
/* 80325980 00322560  7C 00 28 39 */	and. r0, r0, r5
/* 80325984 00322564  40 82 00 38 */	bne lbl_803259BC
/* 80325988 00322568  48 00 00 18 */	b lbl_803259A0
lbl_8032598C:
/* 8032598C 0032256C  84 E3 00 04 */	lwzu r7, 4(r3)
/* 80325990 00322570  85 04 00 04 */	lwzu r8, 4(r4)
/* 80325994 00322574  7C 07 32 14 */	add r0, r7, r6
/* 80325998 00322578  7C 00 28 39 */	and. r0, r0, r5
/* 8032599C 0032257C  40 82 00 20 */	bne lbl_803259BC
lbl_803259A0:
/* 803259A0 00322580  7C 07 40 40 */	cmplw r7, r8
/* 803259A4 00322584  41 82 FF E8 */	beq lbl_8032598C
/* 803259A8 00322588  40 81 00 0C */	ble lbl_803259B4
/* 803259AC 0032258C  38 60 00 01 */	li r3, 1
/* 803259B0 00322590  4E 80 00 20 */	blr 
lbl_803259B4:
/* 803259B4 00322594  38 60 FF FF */	li r3, -1
/* 803259B8 00322598  4E 80 00 20 */	blr 
lbl_803259BC:
/* 803259BC 0032259C  88 C3 00 00 */	lbz r6, 0(r3)
/* 803259C0 003225A0  88 A4 00 00 */	lbz r5, 0(r4)
/* 803259C4 003225A4  7C 05 30 51 */	subf. r0, r5, r6
/* 803259C8 003225A8  41 82 00 0C */	beq lbl_803259D4
/* 803259CC 003225AC  7C 65 30 50 */	subf r3, r5, r6
/* 803259D0 003225B0  4E 80 00 20 */	blr 
lbl_803259D4:
/* 803259D4 003225B4  28 06 00 00 */	cmplwi r6, 0
/* 803259D8 003225B8  40 82 00 0C */	bne lbl_803259E4
/* 803259DC 003225BC  38 60 00 00 */	li r3, 0
/* 803259E0 003225C0  4E 80 00 20 */	blr 
lbl_803259E4:
/* 803259E4 003225C4  8C A3 00 01 */	lbzu r5, 1(r3)
/* 803259E8 003225C8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803259EC 003225CC  7C 00 28 51 */	subf. r0, r0, r5
/* 803259F0 003225D0  41 82 00 0C */	beq lbl_803259FC
/* 803259F4 003225D4  7C 03 03 78 */	mr r3, r0
/* 803259F8 003225D8  4E 80 00 20 */	blr 
lbl_803259FC:
/* 803259FC 003225DC  28 05 00 00 */	cmplwi r5, 0
/* 80325A00 003225E0  40 82 FF E4 */	bne lbl_803259E4
/* 80325A04 003225E4  38 60 00 00 */	li r3, 0
/* 80325A08 003225E8  4E 80 00 20 */	blr 

.global func_80325A0C
func_80325A0C:
/* 80325A0C 003225EC  38 84 FF FF */	addi r4, r4, -1
/* 80325A10 003225F0  38 C3 FF FF */	addi r6, r3, -1
/* 80325A14 003225F4  38 A5 00 01 */	addi r5, r5, 1
/* 80325A18 003225F8  48 00 00 2C */	b lbl_80325A44
lbl_80325A1C:
/* 80325A1C 003225FC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80325A20 00322600  28 00 00 00 */	cmplwi r0, 0
/* 80325A24 00322604  9C 06 00 01 */	stbu r0, 1(r6)
/* 80325A28 00322608  40 82 00 1C */	bne lbl_80325A44
/* 80325A2C 0032260C  38 00 00 00 */	li r0, 0
/* 80325A30 00322610  48 00 00 08 */	b lbl_80325A38
lbl_80325A34:
/* 80325A34 00322614  9C 06 00 01 */	stbu r0, 1(r6)
lbl_80325A38:
/* 80325A38 00322618  34 A5 FF FF */	addic. r5, r5, -1
/* 80325A3C 0032261C  40 82 FF F8 */	bne lbl_80325A34
/* 80325A40 00322620  4E 80 00 20 */	blr 
lbl_80325A44:
/* 80325A44 00322624  34 A5 FF FF */	addic. r5, r5, -1
/* 80325A48 00322628  40 82 FF D4 */	bne lbl_80325A1C
/* 80325A4C 0032262C  4E 80 00 20 */	blr 

.global func_80325A50
func_80325A50:
/* 80325A50 00322630  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 80325A54 00322634  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 80325A58 00322638  7C 00 28 40 */	cmplw r0, r5
/* 80325A5C 0032263C  38 E3 00 00 */	addi r7, r3, 0
/* 80325A60 00322640  40 82 00 80 */	bne lbl_80325AE0
/* 80325A64 00322644  28 05 00 00 */	cmplwi r5, 0
/* 80325A68 00322648  41 82 00 40 */	beq lbl_80325AA8
/* 80325A6C 0032264C  88 04 00 00 */	lbz r0, 0(r4)
/* 80325A70 00322650  28 00 00 00 */	cmplwi r0, 0
/* 80325A74 00322654  98 07 00 00 */	stb r0, 0(r7)
/* 80325A78 00322658  4D 82 00 20 */	beqlr 
/* 80325A7C 0032265C  20 05 00 03 */	subfic r0, r5, 3
/* 80325A80 00322660  28 00 00 00 */	cmplwi r0, 0
/* 80325A84 00322664  7C 09 03 A6 */	mtctr r0
/* 80325A88 00322668  41 82 00 18 */	beq lbl_80325AA0
lbl_80325A8C:
/* 80325A8C 0032266C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80325A90 00322670  28 00 00 00 */	cmplwi r0, 0
/* 80325A94 00322674  9C 07 00 01 */	stbu r0, 1(r7)
/* 80325A98 00322678  4D 82 00 20 */	beqlr 
/* 80325A9C 0032267C  42 00 FF F0 */	bdnz lbl_80325A8C
lbl_80325AA0:
/* 80325AA0 00322680  38 E7 00 01 */	addi r7, r7, 1
/* 80325AA4 00322684  38 84 00 01 */	addi r4, r4, 1
lbl_80325AA8:
/* 80325AA8 00322688  80 A4 00 00 */	lwz r5, 0(r4)
/* 80325AAC 0032268C  80 0D A4 BC */	lwz r0, lbl_804D5B5C-_SDA_BASE_(r13)
/* 80325AB0 00322690  80 CD A4 B8 */	lwz r6, lbl_804D5B58-_SDA_BASE_(r13)
/* 80325AB4 00322694  39 05 00 00 */	addi r8, r5, 0
/* 80325AB8 00322698  7C A5 02 14 */	add r5, r5, r0
/* 80325ABC 0032269C  7C A5 30 39 */	and. r5, r5, r6
/* 80325AC0 003226A0  40 82 00 20 */	bne lbl_80325AE0
/* 80325AC4 003226A4  38 E7 FF FC */	addi r7, r7, -4
lbl_80325AC8:
/* 80325AC8 003226A8  95 07 00 04 */	stwu r8, 4(r7)
/* 80325ACC 003226AC  85 04 00 04 */	lwzu r8, 4(r4)
/* 80325AD0 003226B0  7C A8 02 14 */	add r5, r8, r0
/* 80325AD4 003226B4  7C A5 30 39 */	and. r5, r5, r6
/* 80325AD8 003226B8  41 82 FF F0 */	beq lbl_80325AC8
/* 80325ADC 003226BC  38 E7 00 04 */	addi r7, r7, 4
lbl_80325AE0:
/* 80325AE0 003226C0  88 04 00 00 */	lbz r0, 0(r4)
/* 80325AE4 003226C4  28 00 00 00 */	cmplwi r0, 0
/* 80325AE8 003226C8  98 07 00 00 */	stb r0, 0(r7)
/* 80325AEC 003226CC  4D 82 00 20 */	beqlr 
lbl_80325AF0:
/* 80325AF0 003226D0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80325AF4 003226D4  28 00 00 00 */	cmplwi r0, 0
/* 80325AF8 003226D8  9C 07 00 01 */	stbu r0, 1(r7)
/* 80325AFC 003226DC  40 82 FF F4 */	bne lbl_80325AF0
/* 80325B00 003226E0  4E 80 00 20 */	blr 

.global func_80325B04
func_80325B04:
/* 80325B04 003226E4  38 80 FF FF */	li r4, -1
/* 80325B08 003226E8  38 63 FF FF */	addi r3, r3, -1
lbl_80325B0C:
/* 80325B0C 003226EC  8C 03 00 01 */	lbzu r0, 1(r3)
/* 80325B10 003226F0  38 84 00 01 */	addi r4, r4, 1
/* 80325B14 003226F4  28 00 00 00 */	cmplwi r0, 0
/* 80325B18 003226F8  40 82 FF F4 */	bne lbl_80325B0C
/* 80325B1C 003226FC  7C 83 23 78 */	mr r3, r4
/* 80325B20 00322700  4E 80 00 20 */	blr 
