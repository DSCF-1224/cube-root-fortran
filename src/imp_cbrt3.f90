submodule (cube_root_lib) imp_cbrt3

    implicit none
    contains



    module procedure cbrt3_COMPLEX32

        cube_root(1) = cbrt0(z)
        cube_root(2) = rotate_120deg_pos( cube_root(1) )
        cube_root(3) = rotate_120deg_neg( cube_root(1) )

    end procedure



    module procedure cbrt3_COMPLEX64

        cube_root(1) = cbrt0(z)
        cube_root(2) = rotate_120deg_pos( cube_root(1) )
        cube_root(3) = rotate_120deg_neg( cube_root(1) )

    end procedure



    module procedure cbrt3_REAL32

        cube_root(1) = x
        cube_root    = cbrt3( cube_root(1) )

    end procedure



    module procedure cbrt3_REAL64

        cube_root(1) = x
        cube_root    = cbrt3( cube_root(1) )

    end procedure

end submodule
