submodule (cube_root_lib) imp_divide_by_3

    implicit none


    contains



    module procedure divide_by_3_COMPLEX32
        z_divided = FRAC_1_3_REAL32 * z
    end procedure



    module procedure divide_by_3_COMPLEX64
        z_divided = FRAC_1_3_REAL64 * z
    end procedure



    module procedure divide_by_3_REAL32
        x_divided = FRAC_1_3_REAL32 * x
    end procedure



    module procedure divide_by_3_REAL64
        x_divided = FRAC_1_3_REAL64 * x
    end procedure

end submodule
