#ifndef MELEE_IT_CODE_8027CF30_H
#define MELEE_IT_CODE_8027CF30_H

#include "ftSeak/types.h"
#include "it/types.h"

#include <placeholder.h>
#include <baselib/gobj.h>
#include <baselib/jobj.h>

void it_8027D730(HSD_GObj*);
HSD_GObj* it_80283AE4(s32, Vec3*, s32);
HSD_GObj* it_802841B4(s32, Vec3*, s32);
HSD_GObj* it_80284854(Vec3*);
HSD_GObj* it_802896CC(Vec3*);
void it_8028FE90(HSD_GObj*);

HSD_GObj* it_80284D54(Vec3*);
void it_8028428C(HSD_GObj*);
void it_80283BD4(HSD_GObj*);
HSD_GObj* it_80286088(s32);
HSD_GObj* it_80290938(HSD_JObj*);
HSD_GObj* it_80291BE0(Vec3*);
HSD_GObj* it_80292D48(Vec3*);
void it_8029D968(HSD_GObj*);
void it_802D09D0(HSD_GObj*);

/// @attention Above this line, symbols are placed correctly.

void it_80294E78(HSD_GObj*, f32);
HSD_GObj* it_8029A748(HSD_GObj*, Vec3*, u8, f32);
void it_8029A89C(HSD_GObj*, f32);
void it_8029A8F4(HSD_GObj*, Vec3*, f32);
s32 it_802B1DEC(u32);
u32 it_802B1DF8(HSD_GObj*, Vec3*, Vec3*, s32, s32, s32);
s32 it_802B1FC8(u32);
void it_802B1FE8(u32, Vec3*);
void it_802B56E4(HSD_GObj*, Vec3*, f32, f32, f32);
void* it_802C8B28(HSD_GObj*, Vec3*, u32, f32);
void it_802D8618(s32, Vec3*, s32, s32);
u32 it_802F0340(HSD_GObj*, Vec3*, Vec3*, u32, u32, f32);
void it_802F046C(s32);
void it_802F0AE0(HSD_GObj* fighter_gobj, Vec3*, Vec3*, enum_t, bool,
                 f32 facing_dir, f32, f32);

/// @todo @c arg0 is likely a @c HSD_GObj*.
void it_802C0DBC(u32 arg0);

u32 it_802C0850(HSD_GObj*, Vec3*, u32, s32, f32 facing_direction);
void it_802C8C34(u32);

void it_8029C6A4(f32, f32, HSD_GObj*, Vec3*, s32);
void it_802AE1D0(HSD_GObj*);
void it_802AEAB4(HSD_GObj*);
HSD_GObj* it_802AE8A8(f32, HSD_GObj*, Vec3*, s32, s32);
void it_802ADDD0(HSD_GObj*, s32);
void it_802AE538(HSD_GObj*);
HSD_GObj* it_802C61F4(HSD_GObj*, Vec3*, s32, f32);
void it_802C6328(HSD_GObj*);
void it_802C6374(HSD_GObj*);
void it_802C6394(HSD_GObj*);
void it_802C6430(HSD_GObj*);
void it_802C6458(HSD_GObj*);
void it_802C6480(HSD_GObj*);
void it_802C64A8(HSD_GObj*);
HSD_GObj* it_802C6C38(HSD_GObj*, Vec3*, s32, f32);
void it_802C7158(HSD_GObj*);
void it_802C7074(HSD_GObj*);
void it_802C7424(HSD_GObj*);
void it_802C6E50(HSD_GObj*);
void it_802C6D6C(HSD_GObj*);
HSD_GObj* it_802C6F40(HSD_GObj*, Vec3*, s32, f32);
HSD_GObj* it_802C65E4(HSD_GObj*, Vec3*, s32, f32);
HSD_GObj* it_802C68F8(HSD_GObj*, Vec3*, s32, f32);
void it_802C6A2C(HSD_GObj*);
void it_802C6A78(HSD_GObj*);
void it_802C6A98(HSD_GObj*);
HSD_GObj* it_802C8038(HSD_GObj*, Vec3*, s32, s32, f32, f32);
HSD_GObj* it_802C7D60(HSD_GObj*, Vec3*, s32, f32);
void it_802C7E94(HSD_GObj*);
void it_802C7EE0(HSD_GObj*);
void it_802C7F00(HSD_GObj*);
HSD_GObj* it_802C837C(HSD_GObj*, Vec3*, s32, u32, f32);
HSD_GObj* it_802C7774(f32, HSD_GObj*, Vec3*, s32, u32);
void it_8028FAF4(HSD_GObj*, Vec3*);
void it_802C7A84(HSD_GObj*);
void it_802C7AD0(HSD_GObj*);
void it_802C7AF0(HSD_GObj*);
void it_802C01AC(HSD_GObj*, Vec3*, s32, f32);
void it_8029B6F8(f32 facing_dir, HSD_GObj*, Vec3*, s32);
void it_802C0510(HSD_GObj*, Vec3*, s32, s32, f32 facing_dir);
HSD_GObj* it_802B2560(HSD_GObj*, f32, Vec3*, long, u32);
void it_802B2674(HSD_GObj*);
void it_802B26C0(HSD_GObj*);
void it_802B26E0(HSD_GObj*);
void it_802C49E0(HSD_GObj*);
void it_802BFE5C(HSD_GObj*, Vec3*, f32);
void it_802C0010(HSD_GObj*, void*);
void it_802BE5D8(void*, f32);
void it_802BE958(void*);
void it_802BFEC4(void*);
HSD_GObj* it_802BE9D8(f32, HSD_GObj*, Vec3*, s32);
void it_802BE598(HSD_GObj*);
void it_802BE5B8(HSD_GObj*);
HSD_GObj* it_802AD478(HSD_GObj*, Vec3*, s32, f32);
void it_802AD6B8(HSD_GObj*);
void it_802AB3F0(HSD_GObj*, void*, s32);

/// Spawn an item
HSD_GObj* it_802AB58C(HSD_GObj* owner, Vec3* pos, f32 facing_dir);

void it_802AB9C0(HSD_GObj*);
HSD_GObj* it_802AB568(HSD_GObj*);
void it_802AAA50(HSD_GObj*);
HSD_GObj* it_802AA8C0(HSD_GObj*, Vec3*, s32, f32);
HSD_GObj* it_802AA7E4(HSD_GObj*);
s32 it_802AA7F0(HSD_GObj*);
void it_802AA054(HSD_GObj*, Vec3*, Vec3*, f32, f32);
void it_802B338C(HSD_GObj*, Vec3*, f32 facing_dir, u32);
void it_802B5974(HSD_GObj*);
HSD_GObj* it_802B55C8(HSD_GObj* owner, Vec3*, s32, s32, f32 facing_dir);
void it_802B62D0(HSD_GObj*, Vec3* pos, bool, f32 facing_dir);

/// Destroys an item?
void it_802C3D44(HSD_GObj*);
HSD_GObj* it_802C3BAC(HSD_GObj*, Vec3*, f32 facing_dir, f32);

/// Clones an entity?
HSD_GObj* it_802C3AF0(HSD_GObj*);
void it_802AE608(HSD_GObj*);
void it_8029C6CC(f32 radians, f32 vel, HSD_GObj* owner, Vec3*, ItemKind);
HSD_GObj* it_8029CEB4(HSD_GObj*, Vec3*, s32, f32 facing_dir);
HSD_GObj* it_802C720C(HSD_GObj*, Vec3*, s32, f32);
void it_802C7340(HSD_GObj*);
void it_802C6DB8(HSD_GObj*);
void it_802C70C0(HSD_GObj*);
void it_802C738C(HSD_GObj*);
void it_802C6DD8(HSD_GObj*);
void it_802C70E0(HSD_GObj*);
void it_802C73AC(HSD_GObj*);
void it_802C6718(HSD_GObj*);
void it_802C6764(HSD_GObj*);
void it_802C6784(HSD_GObj*);
void it_802C8158(HSD_GObj*);
void it_802C81C8(HSD_GObj*);
void it_802C81E8(HSD_GObj*);
HSD_GObj* it_802C4A40(HSD_GObj*, Vec3*, f32);
void it_802C573C(HSD_GObj*);
HSD_GObj* it_802C5000(HSD_GObj*, Vec3*, s32, s32, f32);
void it_802C519C(HSD_GObj*, Vec3*, s32, s32, f32, f32);
void it_802B4AC8(HSD_GObj* gobj, Vec3*, f32 facing_dir, f32 x);
void it_802C53F0(HSD_GObj*, Vec3*, f32, f32, f32);
s32 it_802E5F8C(HSD_GObj*, Vec3*, s32, bool, f32, f32);
void it_80284FC4(HSD_GObj*, s32, f32);
void it_80285024(HSD_GObj*, s32);
void it_802950D4(HSD_GObj*, bool);
void it_80294EB0(HSD_GObj*, Vec3*, Vec3*);
s32 it_802F2094(s32, Vec3*, s32, s32);
HSD_GObj* it_80294DC0(Vec3*);
void it_8027D670(Vec3* const);
void it_802C17DC(uint);
void it_802C16F8(HSD_GObj*);
void it_802C1590(HSD_GObj*);
void it_802BB20C(HSD_GObj*);
void it_802BAEEC(HSD_GObj*);
void it_802BAF0C(HSD_GObj*);
void it_802BCFC4(HSD_GObj* gobj, f32* arg1, itChainSegment* chainSegment,
                 Item* item_data, f32 arg4);
HSD_GObj* it_802BB290(HSD_GObj* gobj, Vec3* arg1, f32 facing_dir);
void it_802BCF84(HSD_GObj*);

#endif