submodule (cube_root_lib) imp_cbrt

    implicit none
    contains



    module procedure cbrt_REAL32

        if      ( x .gt.   0.0_REAL32 ) then ; cube_root =   (   x ) ** FRAC_1_3_REAL32
        else if ( x .lt. - 0.0_REAL32 ) then ; cube_root = - ( - x ) ** FRAC_1_3_REAL32
        else                                 ; cube_root =   sign( 0.0_REAL32, x )
        end if

    end procedure



    module procedure cbrt_REAL64

        if      ( x .gt.   0.0_REAL64 ) then ; cube_root =   (   x ) ** FRAC_1_3_REAL64
        else if ( x .lt. - 0.0_REAL64 ) then ; cube_root = - ( - x ) ** FRAC_1_3_REAL64
        else                                 ; cube_root =   sign( 0.0_REAL64, x )
        end if

    end procedure

end submodule
