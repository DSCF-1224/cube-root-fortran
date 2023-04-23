submodule (cube_root_lib) imp_cbrt2

    implicit none
    contains



    module procedure cbrt2_COMPLEX32

        cube_root = COEF_ROTATION_120DEG_NEG_REAL32 * cbrt0(z)

    end procedure



    module procedure cbrt2_COMPLEX64

        cube_root = COEF_ROTATION_120DEG_NEG_REAL64 * cbrt0(z)

    end procedure



    module procedure cbrt2_REAL32

        cube_root = x
        cube_root = cbrt2(cube_root)

    end procedure



    module procedure cbrt2_REAL64

        cube_root = x
        cube_root = cbrt2(cube_root)

    end procedure

end submodule
