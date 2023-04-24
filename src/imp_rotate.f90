submodule (cube_root_lib) imp_rotate

    implicit none



    real(REAL32), parameter :: MATH_PI_REAL32 = acos(-1.0_REAL32)
    real(REAL64), parameter :: MATH_PI_REAL64 = acos(-1.0_REAL64)

    real(REAL32), parameter :: FRAC_2PI_3_REAL32 = 2 * MATH_PI_REAL32 / 3
    real(REAL64), parameter :: FRAC_2PI_3_REAL64 = 2 * MATH_PI_REAL64 / 3

    complex(REAL32), parameter :: COEF_ROTATION_120DEG_POS_REAL32 = exp( cmplx( x=0.0_REAL32, y=FRAC_2PI_3_REAL32, kind=REAL32 ) )
    complex(REAL64), parameter :: COEF_ROTATION_120DEG_POS_REAL64 = exp( cmplx( x=0.0_REAL64, y=FRAC_2PI_3_REAL64, kind=REAL64 ) )

    complex(REAL32), parameter :: COEF_ROTATION_120DEG_NEG_REAL32 = conjg(COEF_ROTATION_120DEG_POS_REAL32)
    complex(REAL64), parameter :: COEF_ROTATION_120DEG_NEG_REAL64 = conjg(COEF_ROTATION_120DEG_POS_REAL64)



    contains



    module procedure rotate_120deg_neg_COMPLEX32
        z_rotated = COEF_ROTATION_120DEG_NEG_REAL32 * z
    end procedure



    module procedure rotate_120deg_neg_COMPLEX64
        z_rotated = COEF_ROTATION_120DEG_NEG_REAL64 * z
    end procedure



    module procedure rotate_120deg_pos_COMPLEX32
        z_rotated = COEF_ROTATION_120DEG_POS_REAL32 * z
    end procedure



    module procedure rotate_120deg_pos_COMPLEX64
        z_rotated = COEF_ROTATION_120DEG_POS_REAL64 * z
    end procedure

end submodule
