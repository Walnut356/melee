#ifndef GALE01_0EAD64
#define GALE01_0EAD64

#include <platform.h>
#include <baselib/forward.h>

#include "ft/types.h"

/* 0EAD64 */ bool ftLk_800EAD64(HSD_GObj* gobj);
/* 0EAD84 */ void ftLk_Init_OnDeath(HSD_GObj* gobj);
/* 0EAE04 */ void ftLk_Init_OnLoadForCLink(Fighter* fp);
/* 0EAE44 */ void ftLk_Init_OnLoad(HSD_GObj* gobj);
/* 0EAF38 */ void ftLk_800EAF38(void);
/* 0EAF58 */ void ftLk_800EAF58(HSD_GObj* gobj);
/* 0EAFA4 */ void ftLk_Init_OnItemPickup(HSD_GObj* gobj, bool bool);
/* 0EB018 */ void ftLk_Init_OnItemInvisible(HSD_GObj* gobj);
/* 0EB060 */ void ftLk_Init_OnItemVisible(HSD_GObj* gobj);
/* 0EB0A8 */ void ftLk_Init_OnItemDrop(HSD_GObj* gobj, bool arg1);
/* 0EB11C */ void ftLk_Init_OnItemPickupExt(HSD_GObj* gobj, int arg1);
/* 0EB1FC */ void ftLk_Init_OnItemDropExt(HSD_GObj* gobj, bool arg1);
/* 0EB250 */ void ftLk_Init_LoadSpecialAttrs(HSD_GObj* gobj);
/* 0EB2AC */ void ftLk_Init_OnKnockbackEnter(HSD_GObj* gobj);
/* 0EB2F0 */ void ftLk_Init_OnKnockbackExit(HSD_GObj* gobj);
/* 0EB334 */ void ftLk_800EB334(HSD_GObj* gobj);
/* 0EB3BC */ void ftLk_800EB3BC(HSD_GObj* gobj);
/* 0EB42C */ void ftLk_800EB42C(HSD_GObj* gobj);
/* 0EB618 */ void ftLk_800EB618(HSD_GObj* gobj);
/* 0EB65C */ void ftLk_SpecialLw_Enter(HSD_GObj* gobj);
/* 0EB6DC */ void ftLk_SpecialAirLw_Enter(HSD_GObj* gobj);
/* 0EB75C */ void ftLk_800EB75C(HSD_GObj* gobj);
/* 0EB8A4 */ void ftLk_SpecialLw_Anim(HSD_GObj* gobj);
/* 0EB8E0 */ void ftLk_SpecialAirLw_Anim(HSD_GObj* gobj);
/* 0EB91C */ void ftLk_SpecialLw_Phys(HSD_GObj* gobj);
/* 0EB93C */ void ftLk_SpecialAirLw_Phys(HSD_GObj* gobj);
/* 0EB95C */ void ftLk_SpecialLw_Coll(HSD_GObj* gobj);
/* 0EB9D4 */ void ftLk_SpecialAirLw_Coll(HSD_GObj* gobj);
/* 0EBE64 */ void ftLk_800EBE64(HSD_GObj* gobj);
/* 0EBEC4 */ void ftLk_800EBEC4(HSD_GObj* gobj);
/* 0EBEEC */ void ftLk_800EBEEC(HSD_GObj* gobj);
/* 0EBF20 */ void ftLk_800EBF20(HSD_GObj* gobj);
/* 0EBFCC */ void ftLk_800EBFCC(HSD_GObj* gobj);
/* 0EBFDC */ void ftLk_800EBFDC(HSD_GObj* gobj);
/* 0EC00C */ void ftLk_800EC00C(HSD_GObj* gobj);
/* 0EC03C */ void ftLk_800EC03C(HSD_GObj* gobj);
/* 0EC06C */ void ftLk_800EC06C(void);
/* 0EC0C4 */ void ftLk_800EC0C4(HSD_GObj* gobj);
/* 0EC354 */ void ftLk_SpecialS_Enter(HSD_GObj* gobj);
/* 0EC404 */ void ftLk_SpecialAirS_Enter(HSD_GObj* gobj);
/* 0EC4B4 */ void ftLk_800EC4B4(HSD_GObj* gobj);
/* 0ECBC4 */ void ftLk_800ECBC4(HSD_GObj* gobj);
/* 0ECC0C */ void ftLk_800ECC0C(HSD_GObj* gobj);
/* 0ECC6C */ void ftLk_800ECC6C(HSD_GObj* gobj);
/* 0ECCCC */ void ftLk_800ECCCC(HSD_GObj* gobj);
/* 0ECD04 */ void ftLk_800ECD04(HSD_GObj* gobj);
/* 0ECD58 */ void ftLk_800ECD58(HSD_GObj* gobj);
/* 3C7E18 */ extern MotionState ftLk_Init_MotionStateTable[];
/* 3C80B8 */ extern char ftLk_Init_DatFilename[];
/* 3C80C4 */ extern char ftLk_Init_DataName[];
/* 3C8224 */ extern char ftLk_Init_AnimDatFilename[];
/* 3C82A0 */ extern Fighter_DemoStrings ftLk_Init_DemoMotionFilenames;
/* 3C82B0 */ extern Fighter_CostumeStrings ftLk_Init_CostumeStrings[];

#endif