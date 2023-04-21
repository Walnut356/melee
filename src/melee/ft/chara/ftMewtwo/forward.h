#ifndef MELEE_FT_CHARA_FTMEWTWO_FORWARD_H
#define MELEE_FT_CHARA_FTMEWTWO_FORWARD_H

#include "ftCommon/forward.h"

typedef enum ftMewtwo_MotionState {
    ftMt_MS_SpecialNStart = ftCo_MS_Count,
    ftMt_MS_SpecialNLoop,
    ftMt_MS_SpecialNFull,
    ftMt_MS_SpecialNCancel,
    ftMt_MS_SpecialNEnd,
    ftMt_MS_SpecialAirNStart,
    ftMt_MS_SpecialAirNLoop,
    ftMt_MS_SpecialAirNFull,
    ftMt_MS_SpecialAirNCancel,
    ftMt_MS_SpecialAirNEnd,
    ftMt_MS_SpecialS,
    ftMt_MS_SpecialAirS,
    ftMt_MS_SpecialHiStart,
    ftMt_MS_SpecialHi,
    ftMt_MS_SpecialHiLost,
    ftMt_MS_SpecialAirHiStart,
    ftMt_MS_SpecialAirHi,
    ftMt_MS_SpecialAirHiLost,
    ftMt_MS_SpecialLw,
    ftMt_MS_SpecialAirLw,
} ftMewtwo_MotionState;

#endif