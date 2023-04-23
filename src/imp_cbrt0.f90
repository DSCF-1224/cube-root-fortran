submodule (cube_root_lib) imp_cbrt0

    implicit none
    contains



    module procedure cbrt0_COMPLEX32

        cube_root = cbrt( abs(z) ) &!
        &         * exp( cmplx( x=0.0_REAL32, y=divide_by_3( atan2(y=z%im, x=z%re) ), kind=REAL32 ) )

    end procedure



    module procedure cbrt0_COMPLEX64

        cube_root = cbrt( abs(z) ) &!
        &         * exp( cmplx( x=0.0_REAL64, y=divide_by_3( atan2(y=z%im, x=z%re) ), kind=REAL64 ) )

    end procedure



    module procedure cbrt0_REAL32

        cube_root = x
        cube_root = cbrt0(cube_root)

    end procedure



    module procedure cbrt0_REAL64

        cube_root = x
        cube_root = cbrt0(cube_root)

    end procedure

end submodule
