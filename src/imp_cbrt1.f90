submodule (cube_root_lib) imp_cbrt1

    implicit none
    contains



    module procedure cbrt1_COMPLEX32

        cube_root = rotate_120deg_pos( cbrt0(z) )

    end procedure



    module procedure cbrt1_COMPLEX64

        cube_root = rotate_120deg_pos( cbrt0(z) )

    end procedure



    module procedure cbrt1_REAL32

        cube_root = x
        cube_root = cbrt1(cube_root)

    end procedure



    module procedure cbrt1_REAL64

        cube_root = x
        cube_root = cbrt1(cube_root)

    end procedure

end submodule
