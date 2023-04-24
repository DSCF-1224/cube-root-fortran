module cube_root_lib

    use, intrinsic :: iso_fortran_env, only: REAL32, REAL64



    implicit none



    private
    public  :: cbrt
    public  :: cbrt0
    public  :: cbrt1
    public  :: cbrt2



    real(REAL32), parameter, private :: FRAC_1_3_REAL32 = 1 / 3.0_REAL32
    real(REAL64), parameter, private :: FRAC_1_3_REAL64 = 1 / 3.0_REAL64



    interface cbrt

        module pure elemental function cbrt_REAL32(x) result(cube_root)

            real(REAL32), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            real(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt_REAL64(x) result(cube_root)

            real(REAL64), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            real(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function

    end interface



    interface cbrt0

        module pure elemental function cbrt0_COMPLEX32(z) result(cube_root)

            complex(REAL32), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt0_COMPLEX64(z) result(cube_root)

            complex(REAL64), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt0_REAL32(x) result(cube_root)

            real(REAL32), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt0_REAL64(x) result(cube_root)

            real(REAL64), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function

    end interface



    interface cbrt1

        module pure elemental function cbrt1_COMPLEX32(z) result(cube_root)

            complex(REAL32), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt1_COMPLEX64(z) result(cube_root)

            complex(REAL64), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt1_REAL32(x) result(cube_root)

            real(REAL32), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt1_REAL64(x) result(cube_root)

            real(REAL64), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function

    end interface



    interface cbrt2

        module pure elemental function cbrt2_COMPLEX32(z) result(cube_root)

            complex(REAL32), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt2_COMPLEX64(z) result(cube_root)

            complex(REAL64), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt2_REAL32(x) result(cube_root)

            real(REAL32), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL32) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function



        module pure elemental function cbrt2_REAL64(x) result(cube_root)

            real(REAL64), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to calculate the cube root

            complex(REAL64) :: cube_root
            !! The return value of this FUNCTION
            !! The calculated cube root

        end function

    end interface



    interface divide_by_3

        module pure elemental function divide_by_3_COMPLEX32(z) result(z_divided)

            complex(REAL32), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to divided by 3

            complex(REAL32) :: z_divided
            !! The return value of this FUNCTION
            !! The divided value

        end function



        module pure elemental function divide_by_3_COMPLEX64(z) result(z_divided)

            complex(REAL64), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to divided by 3

            complex(REAL64) :: z_divided
            !! The return value of this FUNCTION
            !! The divided value

        end function



        module pure elemental function divide_by_3_REAL32(x) result(x_divided)

            real(REAL32), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to divided by 3

            real(REAL32) :: x_divided
            !! The return value of this FUNCTION
            !! The divided value

        end function



        module pure elemental function divide_by_3_REAL64(x) result(x_divided)

            real(REAL64), intent(in) :: x
            !! A dummy argument for this FUNCTION
            !! The target value to divided by 3

            real(REAL64) :: x_divided
            !! The return value of this FUNCTION
            !! The divided value

        end function

    end interface



    interface rotate_120deg_neg

        module pure elemental function rotate_120deg_neg_COMPLEX32(z) result(z_rotated)

            complex(REAL32), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to rotate

            complex(REAL32) :: z_rotated
            !! The return value of this FUNCTION
            !! The rotated value

        end function



        module pure elemental function rotate_120deg_neg_COMPLEX64(z) result(z_rotated)

            complex(REAL64), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to rotate

            complex(REAL64) :: z_rotated
            !! The return value of this FUNCTION
            !! The rotated value

        end function

    end interface



    interface rotate_120deg_pos

        module pure elemental function rotate_120deg_pos_COMPLEX32(z) result(z_rotated)

            complex(REAL32), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to rotate

            complex(REAL32) :: z_rotated
            !! The return value of this FUNCTION
            !! The rotated value

        end function



        module pure elemental function rotate_120deg_pos_COMPLEX64(z) result(z_rotated)

            complex(REAL64), intent(in) :: z
            !! A dummy argument for this FUNCTION
            !! The target value to rotate

            complex(REAL64) :: z_rotated
            !! The return value of this FUNCTION
            !! The rotated value

        end function

    end interface

end module
