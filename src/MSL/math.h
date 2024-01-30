#ifndef MSL_MATH_H
#define MSL_MATH_H

#include <platform.h>

#include <MetroTRK/intrinsics.h>

#define MSL_HI(x) *(int*) &x
#define MSL_LO(x) *(1 + (int*) &x)

#define M_PI 3.14159265358979323846
#define M_PI_2 (M_PI / 2)
#define M_PI_3 (M_PI / 3)

static float const deg_to_rad = M_PI / 180;
static float const rad_to_deg = 180 / M_PI;

#ifdef __MWERKS__
#pragma push
#pragma cplusplus on
#endif

#define FLT_EPSILON 1.00000001335e-10F

extern inline float sqrtf(float x)
{
    static const double _half = .5;
    static const double _three = 3.0;
    volatile float y;
    if (x > 0.0f) {
        double guess = __frsqrte((double) x); // returns an approximation to
        guess = _half * guess *
                (_three - guess * guess * x); // now have 12 sig bits
        guess = _half * guess *
                (_three - guess * guess * x); // now have 24 sig bits
        guess = _half * guess *
                (_three - guess * guess * x); // now have 32 sig bits
        y = (float) (x * guess);
        return y;
    }
    return x;
}

#ifdef __MWERKS__
#pragma pop
#endif

enum FloatType {
    FP_NAN = 1,
    FP_INFINITE = 2,
    FP_ZERO = 3,
    FP_NORMAL = 4,
    FP_SUBNORMAL = 5
};

static inline s32 __fpclassifyf(float x)
{
    const s32 exp_mask = 0b01111111100000000000000000000000; // = 0x7F800000
    const s32 mantissa_mask =
        0b00000000011111111111111111111111; // = 0x007fffff
    switch ((*(s32*) &x) & exp_mask) {
    case exp_mask:
        return ((*(s32*) &x) & mantissa_mask) ? FP_NAN : FP_INFINITE;
    case 0:
        return ((*(s32*) &x) & mantissa_mask) ? FP_SUBNORMAL : FP_ZERO;
    default:
        return FP_NORMAL;
    }
}

extern int __HI(double);
extern int __LO(double);

static inline s32 __fpclassifyd(double x)
{
    switch (__HI(x) & 0x7ff00000) {
    case 0x7ff00000:
        return ((__HI(x) & 0x000fffff) || (__LO(x) & 0xffffffff))
                   ? FP_NAN
                   : FP_INFINITE;
    case 0:
        return ((__HI(x) & 0x000fffff) || (__LO(x) & 0xffffffff))
                   ? FP_SUBNORMAL
                   : FP_ZERO;
    default:
        return FP_NORMAL;
    }
}

#define fpclassify(x)                                                         \
    ((sizeof(x) == sizeof(float)) ? __fpclassifyf((float) (x))                \
                                  : __fpclassifyd((double) (x)))

/// @todo Is #fabs_inline fake? See #ftCo_AttackS3_CheckInput.
#define ABS(x) ((x) < 0 ? -(x) : (x))

static inline f32 fabs_inline(f32 x)
{
    if (x < 0) {
        return -x;
    } else {
        return x;
    }
}

inline float sqrtf_accurate(float x)
{
    volatile float y;
    if (x > 0.0f) {
        double guess = __frsqrte((double) x); // returns an approximation to
        guess =
            0.5 * guess * (3.0 - guess * guess * x); // now have 12 sig bits
        guess =
            0.5 * guess * (3.0 - guess * guess * x); // now have 24 sig bits
        guess =
            0.5 * guess * (3.0 - guess * guess * x); // now have 32 sig bits
        guess = 0.5 * guess * (3.0 - guess * guess * x); // extra iteration
        y = (float) (x * guess);
        return y;
    }
    return x;
}

double frexp(double x, int* exponent);
double fabsf__Ff(double);
float tanf(float x);
float cos__Ff(float x);
float sin__Ff(float x);
float cosf(float x);
float sinf(float x);
void __sinit_trigf_c(void);
float logf(float);

#endif
