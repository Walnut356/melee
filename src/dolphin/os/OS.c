#include <dolphin/types.h>
#include <Runtime/__mem.h>
#include <dolphin/os/OSArena.h>
#include <dolphin/os/OSInterrupt.h>
#include <dolphin/os/os.h>
#include <dolphin/base/PPCArch.h>
#include <dolphin/os/OSAudioSystem.h>
#include <dolphin/os/OSThread.h>
#include <dolphin/os/init/__start.h>

typedef struct OSBootInfo {
    char UNK_0x0[0x2C];
    u32 consoleType; // at 0x2C
} OSBootInfo;

extern OSBootInfo* BootInfo;

// unused asm function here?
#pragma peephole off

u32 OSGetConsoleType(void)
{
	if (BootInfo == NULL || BootInfo->consoleType == 0) {
		return 0x10000002; // default console type
	}
	return BootInfo->consoleType;
}

extern u32 OSGetResetCode(void);

extern u32 BOOT_REGION_START AT_ADDRESS(0x812FDFF0);
extern u32 BOOT_REGION_END AT_ADDRESS(0x812FDFEC);

void ClearArena(void)
{
    if (OSGetResetCode() != 0x80000000) {
        memset(OSGetArenaLo(), 0, (u32) OSGetArenaHi() - (u32) OSGetArenaLo());
    } else {
        u32 boot_region_start = BOOT_REGION_START;
        u32 boot_region_end = BOOT_REGION_END;
        if (boot_region_start == 0) {
            memset(OSGetArenaLo(), 0, (u32) OSGetArenaHi() - (u32) OSGetArenaLo());
        } else if ((u32) OSGetArenaLo() < boot_region_start) {
            if ((u32) OSGetArenaHi() <= boot_region_start) {
                memset(OSGetArenaLo(), 0, (u32) OSGetArenaHi() - (u32) OSGetArenaLo());
            } else {
                memset(OSGetArenaLo(), 0, boot_region_start - (u32) OSGetArenaLo());
                if ((u32) OSGetArenaHi() > boot_region_end) {
                    memset((void*) boot_region_end, 0, (u32) OSGetArenaHi() - boot_region_end);
                }
            }
        }
    }
}

extern unk_t AreWeInitialized;
extern unk_t DriveInfo;
extern unk_t __OSStartTime;
extern unk_t BI2DebugFlag;
extern unk_t __DVDLongFileNameFlag;
extern unk_t __PADSpec;
extern unk_t BI2DebugFlagHolder;
extern unk_t __ArenaHi;
extern unk_t _db_stack_addr;
extern unk_t _db_stack_end;
extern unk_t __OSResetSWInterruptHandler();
extern unk_t EnableMetroTRKInterrupts();
extern unk_t __OSInitMemoryProtection();
extern unk_t __OSInitSram();
extern unk_t SIInit();
extern unk_t EXIInit();
extern void __OSModuleInit(void);
extern void OSInitAlarm(void);
extern void __OSInitSystemCall(void);
extern unk_t OSExceptionInit();

#pragma push
asm void OSInit(void)
{ // clang-format off
    nofralloc
/* 80342FC8 0033FBA8  7C 08 02 A6 */	mflr r0
/* 80342FCC 0033FBAC  90 01 00 04 */	stw r0, 4(r1)
/* 80342FD0 0033FBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80342FD4 0033FBB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80342FD8 0033FBB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80342FDC 0033FBBC  80 0D BC A4 */	lwz r0, AreWeInitialized(r13)
/* 80342FE0 0033FBC0  3C 60 80 40 */	lis r3, DriveInfo@ha
/* 80342FE4 0033FBC4  3B E3 16 18 */	addi r31, r3, DriveInfo@l
/* 80342FE8 0033FBC8  2C 00 00 00 */	cmpwi r0, 0
/* 80342FEC 0033FBCC  40 82 03 08 */	bne lbl_803432F4
/* 80342FF0 0033FBD0  38 00 00 01 */	li r0, 1
/* 80342FF4 0033FBD4  90 0D BC A4 */	stw r0, AreWeInitialized(r13)
/* 80342FF8 0033FBD8  48 00 94 19 */	bl __OSGetSystemTime
/* 80342FFC 0033FBDC  90 8D BC B4 */	stw r4, __OSStartTime+4(r13)
/* 80343000 0033FBE0  90 6D BC B0 */	stw r3, __OSStartTime(r13)
/* 80343004 0033FBE4  48 00 43 61 */	bl OSDisableInterrupts
/* 80343008 0033FBE8  38 00 00 00 */	li r0, 0
/* 8034300C 0033FBEC  3C 80 80 00 */	lis r4, 0x800000F4@ha
/* 80343010 0033FBF0  90 0D BC 9C */	stw r0, BI2DebugFlag(r13)
/* 80343014 0033FBF4  90 8D BC 98 */	stw r4, BootInfo(r13)
/* 80343018 0033FBF8  90 0D BB EC */	stw r0, __DVDLongFileNameFlag(r13)
/* 8034301C 0033FBFC  80 64 00 F4 */	lwz r3, 0x800000F4@l(r4)
/* 80343020 0033FC00  28 03 00 00 */	cmplwi r3, 0
/* 80343024 0033FC04  41 82 00 34 */	beq lbl_80343058
/* 80343028 0033FC08  38 03 00 0C */	addi r0, r3, 0xc
/* 8034302C 0033FC0C  90 0D BC 9C */	stw r0, BI2DebugFlag(r13)
/* 80343030 0033FC10  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80343034 0033FC14  80 6D BC 9C */	lwz r3, BI2DebugFlag(r13)
/* 80343038 0033FC18  90 0D BD 78 */	stw r0, __PADSpec(r13)
/* 8034303C 0033FC1C  80 03 00 00 */	lwz r0, 0(r3)
/* 80343040 0033FC20  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80343044 0033FC24  98 04 30 E8 */	stb r0, 0x30e8(r4)
/* 80343048 0033FC28  80 0D BD 78 */	lwz r0, __PADSpec(r13)
/* 8034304C 0033FC2C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80343050 0033FC30  98 04 30 E9 */	stb r0, 0x30e9(r4)
/* 80343054 0033FC34  48 00 00 28 */	b lbl_8034307C
lbl_80343058:
/* 80343058 0033FC38  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8034305C 0033FC3C  28 00 00 00 */	cmplwi r0, 0
/* 80343060 0033FC40  41 82 00 1C */	beq lbl_8034307C
/* 80343064 0033FC44  88 64 30 E8 */	lbz r3, 0x30e8(r4)
/* 80343068 0033FC48  38 0D BC A0 */	addi r0, r13, BI2DebugFlagHolder
/* 8034306C 0033FC4C  90 6D BC A0 */	stw r3, BI2DebugFlagHolder(r13)
/* 80343070 0033FC50  90 0D BC 9C */	stw r0, BI2DebugFlag(r13)
/* 80343074 0033FC54  88 04 30 E9 */	lbz r0, 0x30e9(r4)
/* 80343078 0033FC58  90 0D BD 78 */	stw r0, __PADSpec(r13)
lbl_8034307C:
/* 8034307C 0033FC5C  38 00 00 01 */	li r0, 1
/* 80343080 0033FC60  80 6D BC 98 */	lwz r3, BootInfo(r13)
/* 80343084 0033FC64  90 0D BB EC */	stw r0, __DVDLongFileNameFlag(r13)
/* 80343088 0033FC68  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8034308C 0033FC6C  28 03 00 00 */	cmplwi r3, 0
/* 80343090 0033FC70  40 82 00 10 */	bne lbl_803430A0
/* 80343094 0033FC74  3C 60 80 4F */	lis r3, _db_stack_addr@ha
/* 80343098 0033FC78  38 63 0C 00 */	addi r3, r3, _db_stack_addr@l
/* 8034309C 0033FC7C  48 00 00 04 */	b lbl_803430A0
lbl_803430A0:
/* 803430A0 0033FC80  48 00 14 41 */	bl OSSetArenaLo
/* 803430A4 0033FC84  80 6D BC 98 */	lwz r3, BootInfo(r13)
/* 803430A8 0033FC88  80 03 00 30 */	lwz r0, 0x30(r3)
/* 803430AC 0033FC8C  28 00 00 00 */	cmplwi r0, 0
/* 803430B0 0033FC90  40 82 00 30 */	bne lbl_803430E0
/* 803430B4 0033FC94  80 6D BC 9C */	lwz r3, BI2DebugFlag(r13)
/* 803430B8 0033FC98  28 03 00 00 */	cmplwi r3, 0
/* 803430BC 0033FC9C  41 82 00 24 */	beq lbl_803430E0
/* 803430C0 0033FCA0  80 03 00 00 */	lwz r0, 0(r3)
/* 803430C4 0033FCA4  28 00 00 02 */	cmplwi r0, 2
/* 803430C8 0033FCA8  40 80 00 18 */	bge lbl_803430E0
/* 803430CC 0033FCAC  3C 60 80 4F */	lis r3, _db_stack_end@ha
/* 803430D0 0033FCB0  38 63 EC 00 */	addi r3, r3, _db_stack_end@l
/* 803430D4 0033FCB4  38 03 00 1F */	addi r0, r3, 0x1f
/* 803430D8 0033FCB8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803430DC 0033FCBC  48 00 14 05 */	bl OSSetArenaLo
lbl_803430E0:
/* 803430E0 0033FCC0  80 6D BC 98 */	lwz r3, BootInfo(r13)
/* 803430E4 0033FCC4  80 63 00 34 */	lwz r3, 0x34(r3)
/* 803430E8 0033FCC8  28 03 00 00 */	cmplwi r3, 0
/* 803430EC 0033FCCC  40 82 00 10 */	bne lbl_803430FC
/* 803430F0 0033FCD0  3C 60 81 70 */	lis r3, __ArenaHi@ha
/* 803430F4 0033FCD4  38 63 00 00 */	addi r3, r3, __ArenaHi@l
/* 803430F8 0033FCD8  48 00 00 04 */	b lbl_803430FC
lbl_803430FC:
/* 803430FC 0033FCDC  48 00 13 DD */	bl OSSetArenaHi
/* 80343100 0033FCE0  48 00 02 0D */	bl OSExceptionInit
/* 80343104 0033FCE4  48 00 7A 9D */	bl __OSInitSystemCall
/* 80343108 0033FCE8  48 00 06 19 */	bl OSInitAlarm
/* 8034310C 0033FCEC  48 00 4A C1 */	bl __OSModuleInit
/* 80343110 0033FCF0  48 00 42 D1 */	bl __OSInterruptInit
/* 80343114 0033FCF4  3C 60 80 35 */	lis r3, __OSResetSWInterruptHandler@ha
/* 80343118 0033FCF8  38 83 86 E4 */	addi r4, r3, __OSResetSWInterruptHandler@l
/* 8034311C 0033FCFC  38 60 00 16 */	li r3, 0x16
/* 80343120 0033FD00  48 00 42 91 */	bl __OSSetInterruptHandler
/* 80343124 0033FD04  48 00 25 3D */	bl __OSContextInit
/* 80343128 0033FD08  48 00 1C 15 */	bl __OSCacheInit
/* 8034312C 0033FD0C  48 00 3B 41 */	bl EXIInit
/* 80343130 0033FD10  48 00 6C 81 */	bl SIInit
/* 80343134 0033FD14  48 00 5A D5 */	bl __OSInitSram
/* 80343138 0033FD18  48 00 7A CD */	bl __OSThreadInit
/* 8034313C 0033FD1C  48 00 13 F9 */	bl __OSInitAudioSystem
/* 80343140 0033FD20  4B FF 2D 69 */	bl PPCMfhid2
/* 80343144 0033FD24  54 63 00 80 */	rlwinm r3, r3, 0, 2, 0
/* 80343148 0033FD28  4B FF 2D 69 */	bl PPCMthid2
/* 8034314C 0033FD2C  80 6D BC 98 */	lwz r3, BootInfo(r13)
/* 80343150 0033FD30  38 83 00 2C */	addi r4, r3, 0x2c
/* 80343154 0033FD34  80 04 00 00 */	lwz r0, 0(r4)
/* 80343158 0033FD38  54 00 00 C6 */	rlwinm r0, r0, 0, 3, 3
/* 8034315C 0033FD3C  28 00 00 00 */	cmplwi r0, 0
/* 80343160 0033FD40  41 82 00 14 */	beq lbl_80343174
/* 80343164 0033FD44  3C 60 10 00 */	lis r3, 0x10000004@ha
/* 80343168 0033FD48  38 03 00 04 */	addi r0, r3, 0x10000004@l
/* 8034316C 0033FD4C  90 04 00 00 */	stw r0, 0(r4)
/* 80343170 0033FD50  48 00 00 0C */	b lbl_8034317C
lbl_80343174:
/* 80343174 0033FD54  38 00 00 01 */	li r0, 1
/* 80343178 0033FD58  90 04 00 00 */	stw r0, 0(r4)
lbl_8034317C:
/* 8034317C 0033FD5C  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80343180 0033FD60  80 8D BC 98 */	lwz r4, BootInfo(r13)
/* 80343184 0033FD64  38 63 30 00 */	addi r3, r3, 0xCC003000@l
/* 80343188 0033FD68  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8034318C 0033FD6C  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 80343190 0033FD70  54 00 00 06 */	rlwinm r0, r0, 0, 0, 3
/* 80343194 0033FD74  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80343198 0033FD78  7C 03 02 14 */	add r0, r3, r0
/* 8034319C 0033FD7C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 803431A0 0033FD80  48 00 4C 1D */	bl __OSInitMemoryProtection
/* 803431A4 0033FD84  7F E3 FB 78 */	mr r3, r31
/* 803431A8 0033FD88  4C C6 31 82 */	crclr 6
/* 803431AC 0033FD8C  48 00 24 FD */	bl OSReport
/* 803431B0 0033FD90  38 7F 00 20 */	addi r3, r31, 0x20
/* 803431B4 0033FD94  4C C6 31 82 */	crclr 6
/* 803431B8 0033FD98  38 9F 00 38 */	addi r4, r31, 0x38
/* 803431BC 0033FD9C  38 BF 00 44 */	addi r5, r31, 0x44
/* 803431C0 0033FDA0  48 00 24 E9 */	bl OSReport
/* 803431C4 0033FDA4  38 7F 00 50 */	addi r3, r31, 0x50
/* 803431C8 0033FDA8  4C C6 31 82 */	crclr 6
/* 803431CC 0033FDAC  48 00 24 DD */	bl OSReport
/* 803431D0 0033FDB0  80 6D BC 98 */	lwz r3, BootInfo(r13)
/* 803431D4 0033FDB4  28 03 00 00 */	cmplwi r3, 0
/* 803431D8 0033FDB8  41 82 00 10 */	beq lbl_803431E8
/* 803431DC 0033FDBC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 803431E0 0033FDC0  28 04 00 00 */	cmplwi r4, 0
/* 803431E4 0033FDC4  40 82 00 10 */	bne lbl_803431F4
lbl_803431E8:
/* 803431E8 0033FDC8  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 803431EC 0033FDCC  38 83 00 02 */	addi r4, r3, 0x10000002@l
/* 803431F0 0033FDD0  48 00 00 04 */	b lbl_803431F4
lbl_803431F4:
/* 803431F4 0033FDD4  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 803431F8 0033FDD8  28 00 00 00 */	cmplwi r0, 0
/* 803431FC 0033FDDC  40 82 00 14 */	bne lbl_80343210
/* 80343200 0033FDE0  4C C6 31 82 */	crclr 6
/* 80343204 0033FDE4  38 7F 00 60 */	addi r3, r31, 0x60
/* 80343208 0033FDE8  48 00 24 A1 */	bl OSReport
/* 8034320C 0033FDEC  48 00 00 8C */	b lbl_80343298
lbl_80343210:
/* 80343210 0033FDF0  3C 60 10 00 */	lis r3, 0x10000002@ha
/* 80343214 0033FDF4  38 03 00 02 */	addi r0, r3, 0x10000002@l
/* 80343218 0033FDF8  7C 04 00 00 */	cmpw r4, r0
/* 8034321C 0033FDFC  41 82 00 48 */	beq lbl_80343264
/* 80343220 0033FE00  40 80 00 14 */	bge lbl_80343234
/* 80343224 0033FE04  7C 04 18 00 */	cmpw r4, r3
/* 80343228 0033FE08  41 82 00 1C */	beq lbl_80343244
/* 8034322C 0033FE0C  40 80 00 28 */	bge lbl_80343254
/* 80343230 0033FE10  48 00 00 54 */	b lbl_80343284
lbl_80343234:
/* 80343234 0033FE14  38 03 00 04 */	addi r0, r3, 4
/* 80343238 0033FE18  7C 04 00 00 */	cmpw r4, r0
/* 8034323C 0033FE1C  40 80 00 48 */	bge lbl_80343284
/* 80343240 0033FE20  48 00 00 34 */	b lbl_80343274
lbl_80343244:
/* 80343244 0033FE24  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80343248 0033FE28  4C C6 31 82 */	crclr 6
/* 8034324C 0033FE2C  48 00 24 5D */	bl OSReport
/* 80343250 0033FE30  48 00 00 48 */	b lbl_80343298
lbl_80343254:
/* 80343254 0033FE34  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80343258 0033FE38  4C C6 31 82 */	crclr 6
/* 8034325C 0033FE3C  48 00 24 4D */	bl OSReport
/* 80343260 0033FE40  48 00 00 38 */	b lbl_80343298
lbl_80343264:
/* 80343264 0033FE44  38 7F 00 8C */	addi r3, r31, 0x8c
/* 80343268 0033FE48  4C C6 31 82 */	crclr 6
/* 8034326C 0033FE4C  48 00 24 3D */	bl OSReport
/* 80343270 0033FE50  48 00 00 28 */	b lbl_80343298
lbl_80343274:
/* 80343274 0033FE54  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80343278 0033FE58  4C C6 31 82 */	crclr 6
/* 8034327C 0033FE5C  48 00 24 2D */	bl OSReport
/* 80343280 0033FE60  48 00 00 18 */	b lbl_80343298
lbl_80343284:
/* 80343284 0033FE64  3C 84 F0 00 */	addis r4, r4, 0xf000
/* 80343288 0033FE68  4C C6 31 82 */	crclr 6
/* 8034328C 0033FE6C  38 7F 00 AC */	addi r3, r31, 0xac
/* 80343290 0033FE70  38 84 FF FD */	addi r4, r4, -3
/* 80343294 0033FE74  48 00 24 15 */	bl OSReport
lbl_80343298:
/* 80343298 0033FE78  80 8D BC 98 */	lwz r4, BootInfo(r13)
/* 8034329C 0033FE7C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 803432A0 0033FE80  4C C6 31 82 */	crclr 6
/* 803432A4 0033FE84  80 04 00 28 */	lwz r0, 0x28(r4)
/* 803432A8 0033FE88  54 04 65 3E */	srwi r4, r0, 0x14
/* 803432AC 0033FE8C  48 00 23 FD */	bl OSReport
/* 803432B0 0033FE90  48 00 12 19 */	bl OSGetArenaHi
/* 803432B4 0033FE94  7C 7E 1B 78 */	mr r30, r3
/* 803432B8 0033FE98  48 00 12 19 */	bl OSGetArenaLo
/* 803432BC 0033FE9C  7C 64 1B 78 */	mr r4, r3
/* 803432C0 0033FEA0  4C C6 31 82 */	crclr 6
/* 803432C4 0033FEA4  7F C5 F3 78 */	mr r5, r30
/* 803432C8 0033FEA8  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 803432CC 0033FEAC  48 00 23 DD */	bl OSReport
/* 803432D0 0033FEB0  80 6D BC 9C */	lwz r3, BI2DebugFlag(r13)
/* 803432D4 0033FEB4  28 03 00 00 */	cmplwi r3, 0
/* 803432D8 0033FEB8  41 82 00 14 */	beq lbl_803432EC
/* 803432DC 0033FEBC  80 03 00 00 */	lwz r0, 0(r3)
/* 803432E0 0033FEC0  28 00 00 02 */	cmplwi r0, 2
/* 803432E4 0033FEC4  41 80 00 08 */	blt lbl_803432EC
/* 803432E8 0033FEC8  4B FE 73 D5 */	bl EnableMetroTRKInterrupts
lbl_803432EC:
/* 803432EC 0033FECC  4B FF FB D1 */	bl ClearArena
/* 803432F0 0033FED0  48 00 40 89 */	bl OSEnableInterrupts
lbl_803432F4:
/* 803432F4 0033FED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803432F8 0033FED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803432FC 0033FEDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80343300 0033FEE0  7C 08 03 A6 */	mtlr r0
/* 80343304 0033FEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80343308 0033FEE8  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop

extern unk_t __OSEVSetNumber();
extern unk_t OSExceptionVector();
extern unk_t __OSEVEnd();
extern unk_t DriveInfo;
extern unk_t __OSDBIntegrator();
extern unk_t __OSDBJump();
extern unk_t __OSSetExceptionHandler();
extern unk_t __DBVECTOR();
extern unk_t BI2DebugFlag;
extern unk_t OSExceptionTable;
extern unk_t OSDefaultExceptionHandler();
extern unk_t __DBIsExceptionMarked();
extern unk_t ICInvalidateRange();
extern unk_t DCFlushRangeNoSync();
extern unk_t memcpy();
extern unk_t DBPrintf();

#pragma push
asm unk_t OSExceptionInit()
{ // clang-format off
    nofralloc
/* 8034330C 0033FEEC  7C 08 02 A6 */	mflr r0
/* 80343310 0033FEF0  90 01 00 04 */	stw r0, 4(r1)
/* 80343314 0033FEF4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80343318 0033FEF8  BE 81 00 08 */	stmw r20, 8(r1)
/* 8034331C 0033FEFC  3C 60 80 00 */	lis r3, 0x80000060@ha
/* 80343320 0033FF00  80 03 00 60 */	lwz r0, 0x80000060@l(r3)
/* 80343324 0033FF04  3C 80 80 34 */	lis r4, __OSEVSetNumber@ha
/* 80343328 0033FF08  3B C4 36 4C */	addi r30, r4, __OSEVSetNumber@l
/* 8034332C 0033FF0C  3C A0 80 34 */	lis r5, OSExceptionVector@ha
/* 80343330 0033FF10  83 3E 00 00 */	lwz r25, 0(r30)
/* 80343334 0033FF14  3C 80 80 34 */	lis r4, __OSEVEnd@ha
/* 80343338 0033FF18  38 A5 35 E4 */	addi r5, r5, OSExceptionVector@l
/* 8034333C 0033FF1C  38 84 36 7C */	addi r4, r4, __OSEVEnd@l
/* 80343340 0033FF20  3C C0 80 40 */	lis r6, DriveInfo@ha
/* 80343344 0033FF24  28 00 00 00 */	cmplwi r0, 0
/* 80343348 0033FF28  7C B8 2B 78 */	mr r24, r5
/* 8034334C 0033FF2C  3B A6 16 18 */	addi r29, r6, DriveInfo@l
/* 80343350 0033FF30  7E E5 20 50 */	subf r23, r5, r4
/* 80343354 0033FF34  3A 83 00 60 */	addi r20, r3, 0x60
/* 80343358 0033FF38  40 82 00 4C */	bne lbl_803433A4
/* 8034335C 0033FF3C  38 7D 01 24 */	addi r3, r29, 0x124
/* 80343360 0033FF40  4C C6 31 82 */	crclr 6
/* 80343364 0033FF44  4B FF 2C 15 */	bl DBPrintf
/* 80343368 0033FF48  3C 80 80 34 */	lis r4, __OSDBIntegrator@ha
/* 8034336C 0033FF4C  3C 60 80 34 */	lis r3, __OSDBJump@ha
/* 80343370 0033FF50  38 03 35 B0 */	addi r0, r3, __OSDBJump@l
/* 80343374 0033FF54  38 84 35 8C */	addi r4, r4, __OSDBIntegrator@l
/* 80343378 0033FF58  7E A4 00 50 */	subf r21, r4, r0
/* 8034337C 0033FF5C  7E 83 A3 78 */	mr r3, r20
/* 80343380 0033FF60  7E A5 AB 78 */	mr r5, r21
/* 80343384 0033FF64  4B CB FE 71 */	bl memcpy
/* 80343388 0033FF68  7E 83 A3 78 */	mr r3, r20
/* 8034338C 0033FF6C  7E A4 AB 78 */	mr r4, r21
/* 80343390 0033FF70  48 00 14 E5 */	bl DCFlushRangeNoSync
/* 80343394 0033FF74  7C 00 04 AC */	sync
/* 80343398 0033FF78  7E 83 A3 78 */	mr r3, r20
/* 8034339C 0033FF7C  7E A4 AB 78 */	mr r4, r21
/* 803433A0 0033FF80  48 00 15 35 */	bl ICInvalidateRange
lbl_803433A4:
/* 803433A4 0033FF84  3C 80 80 34 */	lis r4, __OSDBJump@ha
/* 803433A8 0033FF88  3C 60 80 34 */	lis r3, __OSSetExceptionHandler@ha
/* 803433AC 0033FF8C  3B E4 35 B0 */	addi r31, r4, __OSDBJump@l
/* 803433B0 0033FF90  38 03 35 B4 */	addi r0, r3, __OSSetExceptionHandler@l
/* 803433B4 0033FF94  3B 9D 00 E8 */	addi r28, r29, 0xe8
/* 803433B8 0033FF98  7F 7F 00 50 */	subf r27, r31, r0
/* 803433BC 0033FF9C  3B 40 00 00 */	li r26, 0
/* 803433C0 0033FFA0  48 00 00 04 */	b lbl_803433C4
lbl_803433C4:
/* 803433C4 0033FFA4  3C 60 80 34 */	lis r3, __DBVECTOR@ha
/* 803433C8 0033FFA8  3A A3 36 3C */	addi r21, r3, __DBVECTOR@l
/* 803433CC 0033FFAC  3E C0 60 00 */	lis r22, 0x6000
/* 803433D0 0033FFB0  48 00 00 04 */	b lbl_803433D4
lbl_803433D4:
/* 803433D4 0033FFB4  48 00 01 48 */	b lbl_8034351C
lbl_803433D8:
/* 803433D8 0033FFB8  80 6D BC 9C */	lwz r3, BI2DebugFlag(r13)
/* 803433DC 0033FFBC  28 03 00 00 */	cmplwi r3, 0
/* 803433E0 0033FFC0  41 82 00 34 */	beq lbl_80343414
/* 803433E4 0033FFC4  80 03 00 00 */	lwz r0, 0(r3)
/* 803433E8 0033FFC8  28 00 00 02 */	cmplwi r0, 2
/* 803433EC 0033FFCC  41 80 00 28 */	blt lbl_80343414
/* 803433F0 0033FFD0  7F 43 D3 78 */	mr r3, r26
/* 803433F4 0033FFD4  4B FF 2B 69 */	bl __DBIsExceptionMarked
/* 803433F8 0033FFD8  2C 03 00 00 */	cmpwi r3, 0
/* 803433FC 0033FFDC  41 82 00 18 */	beq lbl_80343414
/* 80343400 0033FFE0  38 7D 01 40 */	addi r3, r29, 0x140
/* 80343404 0033FFE4  4C C6 31 82 */	crclr 6
/* 80343408 0033FFE8  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 8034340C 0033FFEC  4B FF 2B 6D */	bl DBPrintf
/* 80343410 0033FFF0  48 00 01 04 */	b lbl_80343514
lbl_80343414:
/* 80343414 0033FFF4  57 54 06 3E */	clrlwi r20, r26, 0x18
/* 80343418 0033FFF8  7F 20 A3 78 */	or r0, r25, r20
/* 8034341C 0033FFFC  90 1E 00 00 */	stw r0, 0(r30)
/* 80343420 00340000  7F 43 D3 78 */	mr r3, r26
/* 80343424 00340004  4B FF 2B 39 */	bl __DBIsExceptionMarked
/* 80343428 00340008  2C 03 00 00 */	cmpwi r3, 0
/* 8034342C 0034000C  41 82 00 28 */	beq lbl_80343454
/* 80343430 00340010  7E 84 A3 78 */	mr r4, r20
/* 80343434 00340014  4C C6 31 82 */	crclr 6
/* 80343438 00340018  38 7D 01 70 */	addi r3, r29, 0x170
/* 8034343C 0034001C  4B FF 2B 3D */	bl DBPrintf
/* 80343440 00340020  7E A3 AB 78 */	mr r3, r21
/* 80343444 00340024  7F E4 FB 78 */	mr r4, r31
/* 80343448 00340028  7F 65 DB 78 */	mr r5, r27
/* 8034344C 0034002C  4B CB FD A9 */	bl memcpy
/* 80343450 00340030  48 00 00 90 */	b lbl_803434E0
lbl_80343454:
/* 80343454 00340034  7E A4 AB 78 */	mr r4, r21
/* 80343458 00340038  48 00 00 04 */	b lbl_8034345C
lbl_8034345C:
/* 8034345C 0034003C  28 1B 00 00 */	cmplwi r27, 0
/* 80343460 00340040  38 7B 00 03 */	addi r3, r27, 3
/* 80343464 00340044  54 63 F0 BE */	srwi r3, r3, 2
/* 80343468 00340048  40 81 00 78 */	ble lbl_803434E0
/* 8034346C 0034004C  54 60 E8 FE */	srwi r0, r3, 3
/* 80343470 00340050  28 00 00 00 */	cmplwi r0, 0
/* 80343474 00340054  7C 09 03 A6 */	mtctr r0
/* 80343478 00340058  41 82 00 54 */	beq lbl_803434CC
/* 8034347C 0034005C  48 00 00 04 */	b lbl_80343480
lbl_80343480:
/* 80343480 00340060  92 C4 00 00 */	stw r22, 0(r4)
/* 80343484 00340064  38 84 00 04 */	addi r4, r4, 4
/* 80343488 00340068  92 C4 00 00 */	stw r22, 0(r4)
/* 8034348C 0034006C  38 84 00 04 */	addi r4, r4, 4
/* 80343490 00340070  92 C4 00 00 */	stw r22, 0(r4)
/* 80343494 00340074  38 84 00 04 */	addi r4, r4, 4
/* 80343498 00340078  92 C4 00 00 */	stw r22, 0(r4)
/* 8034349C 0034007C  38 84 00 04 */	addi r4, r4, 4
/* 803434A0 00340080  92 C4 00 00 */	stw r22, 0(r4)
/* 803434A4 00340084  38 84 00 04 */	addi r4, r4, 4
/* 803434A8 00340088  92 C4 00 00 */	stw r22, 0(r4)
/* 803434AC 0034008C  38 84 00 04 */	addi r4, r4, 4
/* 803434B0 00340090  92 C4 00 00 */	stw r22, 0(r4)
/* 803434B4 00340094  38 84 00 04 */	addi r4, r4, 4
/* 803434B8 00340098  92 C4 00 00 */	stw r22, 0(r4)
/* 803434BC 0034009C  38 84 00 04 */	addi r4, r4, 4
/* 803434C0 003400A0  42 00 FF C0 */	bdnz lbl_80343480
/* 803434C4 003400A4  70 63 00 07 */	andi. r3, r3, 7
/* 803434C8 003400A8  41 82 00 18 */	beq lbl_803434E0
lbl_803434CC:
/* 803434CC 003400AC  7C 69 03 A6 */	mtctr r3
/* 803434D0 003400B0  48 00 00 04 */	b lbl_803434D4
lbl_803434D4:
/* 803434D4 003400B4  92 C4 00 00 */	stw r22, 0(r4)
/* 803434D8 003400B8  38 84 00 04 */	addi r4, r4, 4
/* 803434DC 003400BC  42 00 FF F8 */	bdnz lbl_803434D4
lbl_803434E0:
/* 803434E0 003400C0  80 7C 00 00 */	lwz r3, 0(r28)
/* 803434E4 003400C4  7F 04 C3 78 */	mr r4, r24
/* 803434E8 003400C8  7E E5 BB 78 */	mr r5, r23
/* 803434EC 003400CC  3E 83 80 00 */	addis r20, r3, 0x8000
/* 803434F0 003400D0  7E 83 A3 78 */	mr r3, r20
/* 803434F4 003400D4  4B CB FD 01 */	bl memcpy
/* 803434F8 003400D8  7E 83 A3 78 */	mr r3, r20
/* 803434FC 003400DC  7E E4 BB 78 */	mr r4, r23
/* 80343500 003400E0  48 00 13 75 */	bl DCFlushRangeNoSync
/* 80343504 003400E4  7C 00 04 AC */	sync
/* 80343508 003400E8  7E 83 A3 78 */	mr r3, r20
/* 8034350C 003400EC  7E E4 BB 78 */	mr r4, r23
/* 80343510 003400F0  48 00 13 C5 */	bl ICInvalidateRange
lbl_80343514:
/* 80343514 003400F4  3B 9C 00 04 */	addi r28, r28, 4
/* 80343518 003400F8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8034351C:
/* 8034351C 003400FC  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 80343520 00340100  28 00 00 0F */	cmplwi r0, 0xf
/* 80343524 00340104  41 80 FE B4 */	blt lbl_803433D8
/* 80343528 00340108  3C 60 80 00 */	lis r3, 0x80003000@ha
/* 8034352C 0034010C  38 03 30 00 */	addi r0, r3, 0x80003000@l
/* 80343530 00340110  90 0D BC A8 */	stw r0, OSExceptionTable(r13)
/* 80343534 00340114  3A 80 00 00 */	li r20, 0
/* 80343538 00340118  48 00 00 04 */	b lbl_8034353C
lbl_8034353C:
/* 8034353C 0034011C  3C 60 80 34 */	lis r3, OSDefaultExceptionHandler@ha
/* 80343540 00340120  3A E3 36 80 */	addi r23, r3, OSDefaultExceptionHandler@l
/* 80343544 00340124  48 00 00 04 */	b lbl_80343548
lbl_80343548:
/* 80343548 00340128  48 00 00 14 */	b lbl_8034355C
lbl_8034354C:
/* 8034354C 0034012C  7E 83 A3 78 */	mr r3, r20
/* 80343550 00340130  7E E4 BB 78 */	mr r4, r23
/* 80343554 00340134  48 00 00 61 */	bl __OSSetExceptionHandler
/* 80343558 00340138  3A 94 00 01 */	addi r20, r20, 1
lbl_8034355C:
/* 8034355C 0034013C  56 80 06 3E */	clrlwi r0, r20, 0x18
/* 80343560 00340140  28 00 00 0F */	cmplwi r0, 0xf
/* 80343564 00340144  41 80 FF E8 */	blt lbl_8034354C
/* 80343568 00340148  93 3E 00 00 */	stw r25, 0(r30)
/* 8034356C 0034014C  38 7D 01 A0 */	addi r3, r29, 0x1a0
/* 80343570 00340150  4C C6 31 82 */	crclr 6
/* 80343574 00340154  4B FF 2A 05 */	bl DBPrintf
/* 80343578 00340158  BA 81 00 08 */	lmw r20, 8(r1)
/* 8034357C 0034015C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80343580 00340160  38 21 00 38 */	addi r1, r1, 0x38
/* 80343584 00340164  7C 08 03 A6 */	mtlr r0
/* 80343588 00340168  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop

// pragma push
asm unk_t __OSDBIntegrator()
{ // clang-format off
    nofralloc
/* 8034358C 0034016C  38 A0 00 40 */	li r5, 0x40
/* 80343590 00340170  7C 68 02 A6 */	mflr r3
/* 80343594 00340174  90 65 00 0C */	stw r3, 0xc(r5)
/* 80343598 00340178  80 65 00 08 */	lwz r3, 8(r5)
/* 8034359C 0034017C  64 63 80 00 */	oris r3, r3, 0x8000
/* 803435A0 00340180  7C 68 03 A6 */	mtlr r3
/* 803435A4 00340184  38 60 00 30 */	li r3, 0x30
/* 803435A8 00340188  7C 60 01 24 */	mtmsr r3
/* 803435AC 0034018C  4E 80 00 20 */	blr 
} // clang-format on
// pragma pop

#pragma push
asm unk_t __OSDBJump()
{ // clang-format off
    nofralloc
/* 803435B0 00340190  48 00 00 63 */	bla 0x60
} // clang-format on
#pragma pop

extern unk_t OSExceptionTable;

#pragma push
asm unk_t __OSSetExceptionHandler()
{ // clang-format off
    nofralloc
/* 803435B4 00340194  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803435B8 00340198  80 6D BC A8 */	lwz r3, OSExceptionTable(r13)
/* 803435BC 0034019C  54 00 10 3A */	slwi r0, r0, 2
/* 803435C0 003401A0  7C A3 02 14 */	add r5, r3, r0
/* 803435C4 003401A4  80 65 00 00 */	lwz r3, 0(r5)
/* 803435C8 003401A8  90 85 00 00 */	stw r4, 0(r5)
/* 803435CC 003401AC  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop

#pragma push
asm unk_t __OSGetExceptionHandler()
{ // clang-format off
    nofralloc
/* 803435D0 003401B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803435D4 003401B4  80 6D BC A8 */	lwz r3, OSExceptionTable(r13)
/* 803435D8 003401B8  54 00 10 3A */	slwi r0, r0, 2
/* 803435DC 003401BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 803435E0 003401C0  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop

#pragma push
asm unk_t OSExceptionVector()
{ // clang-format off
    nofralloc
/* 803435E4 003401C4  7C 90 43 A6 */	mtspr 0x110, r4
/* 803435E8 003401C8  80 80 00 C0 */	lwz r4, 0xc0(r0)
/* 803435EC 003401CC  90 64 00 0C */	stw r3, 0xc(r4)
/* 803435F0 003401D0  7C 70 42 A6 */	mfspr r3, 0x110
/* 803435F4 003401D4  90 64 00 10 */	stw r3, 0x10(r4)
/* 803435F8 003401D8  90 A4 00 14 */	stw r5, 0x14(r4)
/* 803435FC 003401DC  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 80343600 003401E0  60 63 00 02 */	ori r3, r3, 2
/* 80343604 003401E4  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 80343608 003401E8  7C 60 00 26 */	mfcr r3
/* 8034360C 003401EC  90 64 00 80 */	stw r3, 0x80(r4)
/* 80343610 003401F0  7C 68 02 A6 */	mflr r3
/* 80343614 003401F4  90 64 00 84 */	stw r3, 0x84(r4)
/* 80343618 003401F8  7C 69 02 A6 */	mfctr r3
/* 8034361C 003401FC  90 64 00 88 */	stw r3, 0x88(r4)
/* 80343620 00340200  7C 61 02 A6 */	mfxer r3
/* 80343624 00340204  90 64 00 8C */	stw r3, 0x8c(r4)
/* 80343628 00340208  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 8034362C 0034020C  90 64 01 98 */	stw r3, 0x198(r4)
/* 80343630 00340210  7C 7B 02 A6 */	mfspr r3, 0x1b
/* 80343634 00340214  90 64 01 9C */	stw r3, 0x19c(r4)
/* 80343638 00340218  7C 65 1B 78 */	mr r5, r3
} // clang-format on
#pragma pop

#pragma push
asm unk_t __DBVECTOR()
{ // clang-format off
    nofralloc
/* 8034363C 0034021C  60 00 00 00 */	nop 
/* 80343640 00340220  7C 60 00 A6 */	mfmsr r3
/* 80343644 00340224  60 63 00 30 */	ori r3, r3, 0x30
/* 80343648 00340228  7C 7B 03 A6 */	mtspr 0x1b, r3
} // clang-format on
#pragma pop

extern unk_t OSDefaultExceptionHandler();

#pragma push
asm unk_t __OSEVSetNumber()
{ // clang-format off
    nofralloc
/* 8034364C 0034022C  38 60 00 00 */	li r3, 0
/* 80343650 00340230  80 80 00 D4 */	lwz r4, 0xd4(r0)
/* 80343654 00340234  54 A5 07 BD */	rlwinm. r5, r5, 0, 0x1e, 0x1e
/* 80343658 00340238  40 82 00 14 */	bne lbl_8034366C
/* 8034365C 0034023C  3C A0 80 34 */	lis r5, OSDefaultExceptionHandler@ha
/* 80343660 00340240  38 A5 36 80 */	addi r5, r5, OSDefaultExceptionHandler@l
/* 80343664 00340244  7C BA 03 A6 */	mtspr 0x1a, r5
/* 80343668 00340248  4C 00 00 64 */	rfi 
lbl_8034366C:
/* 8034366C 0034024C  54 65 15 BA */	rlwinm r5, r3, 2, 0x16, 0x1d
/* 80343670 00340250  80 A5 30 00 */	lwz r5, 0x3000(r5)
/* 80343674 00340254  7C BA 03 A6 */	mtspr 0x1a, r5
/* 80343678 00340258  4C 00 00 64 */	rfi 
} // clang-format on
#pragma pop

#pragma push
asm unk_t __OSEVEnd()
{ // clang-format off
    nofralloc
/* 8034367C 0034025C  60 00 00 00 */	nop 
} // clang-format on
#pragma pop

extern unk_t __OSUnhandledException();

#pragma push
asm unk_t OSDefaultExceptionHandler()
{ // clang-format off
    nofralloc
/* 80343680 00340260  90 04 00 00 */	stw r0, 0(r4)
/* 80343684 00340264  90 24 00 04 */	stw r1, 4(r4)
/* 80343688 00340268  90 44 00 08 */	stw r2, 8(r4)
/* 8034368C 0034026C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 80343690 00340270  7C 11 E2 A6 */	mfspr r0, 0x391
/* 80343694 00340274  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 80343698 00340278  7C 12 E2 A6 */	mfspr r0, 0x392
/* 8034369C 0034027C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 803436A0 00340280  7C 13 E2 A6 */	mfspr r0, 0x393
/* 803436A4 00340284  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 803436A8 00340288  7C 14 E2 A6 */	mfspr r0, 0x394
/* 803436AC 0034028C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 803436B0 00340290  7C 15 E2 A6 */	mfspr r0, 0x395
/* 803436B4 00340294  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 803436B8 00340298  7C 16 E2 A6 */	mfspr r0, 0x396
/* 803436BC 0034029C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 803436C0 003402A0  7C 17 E2 A6 */	mfspr r0, 0x397
/* 803436C4 003402A4  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 803436C8 003402A8  7C B2 02 A6 */	mfdsisr r5
/* 803436CC 003402AC  7C D3 02 A6 */	mfdar r6
/* 803436D0 003402B0  48 00 21 A0 */	b __OSUnhandledException
} // clang-format on
#pragma pop

extern unk_t ICFlashInvalidate();

#pragma push
asm void __OSPSInit(void)
{ // clang-format off
    nofralloc
/* 803436D4 003402B4  7C 08 02 A6 */	mflr r0
/* 803436D8 003402B8  90 01 00 04 */	stw r0, 4(r1)
/* 803436DC 003402BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 803436E0 003402C0  4B FF 27 C9 */	bl PPCMfhid2
/* 803436E4 003402C4  64 63 A0 00 */	oris r3, r3, 0xa000
/* 803436E8 003402C8  4B FF 27 C9 */	bl PPCMthid2
/* 803436EC 003402CC  48 00 12 21 */	bl ICFlashInvalidate
/* 803436F0 003402D0  7C 00 04 AC */	sync
/* 803436F4 003402D4  38 60 00 00 */	li r3, 0
/* 803436F8 003402D8  7C 70 E3 A6 */	mtspr 0x390, r3
/* 803436FC 003402DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80343700 003402E0  38 21 00 08 */	addi r1, r1, 8
/* 80343704 003402E4  7C 08 03 A6 */	mtlr r0
/* 80343708 003402E8  4E 80 00 20 */	blr 
} // clang-format on
#pragma pop

extern volatile u32 __DIRegs[0x10] AT_ADDRESS(0xCC006000);

#define DI_CONFIG_IDX 0x9
#define DI_CONFIG_CONFIG_MASK 0x000000FF

#pragma peephole off

u32 __OSGetDIConfig(void)
{
    return __DIRegs[DI_CONFIG_IDX] & DI_CONFIG_CONFIG_MASK;
}