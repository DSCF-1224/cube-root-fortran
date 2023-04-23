program test_cube_root_lib

    use,     intrinsic :: iso_fortran_env, only: OUTPUT_UNIT
    use,     intrinsic :: iso_fortran_env, only: SIZE_FLT    => REAL64
    use, non_intrinsic :: cube_root_lib



    implicit none



    real(SIZE_FLT), parameter :: MATH_PI_DEF = acos(-1.0_SIZE_FLT)



    complex(SIZE_FLT) :: test_input
    !! A variable for this PROGRAM
    !! The test value to compute cube root



    integer :: iter



    print * , cbrt(   0.0_SIZE_FLT )
    print * , cbrt( - 0.0_SIZE_FLT )

    print * , cbrt(   8.0_SIZE_FLT )
    print * , cbrt( - 8.0_SIZE_FLT )

    do iter = 0, 8

        test_input = 8 * exp( cmplx( 0, MATH_PI_DEF / 4 * iter, SIZE_FLT ) )

        call show_result( test_input, cbrt0(test_input) )
        call show_result( test_input, cbrt1(test_input) )
        call show_result( test_input, cbrt2(test_input) )

    end do



    contains



    subroutine show_result(dummy_test_input, dummy_result)

        complex(SIZE_FLT), intent(in) :: dummy_test_input
        complex(SIZE_FLT), intent(in) :: dummy_result

        complex(SIZE_FLT) :: dummy_result_pow3

        dummy_result_pow3 = dummy_result &!
        &                 * dummy_result &!
        &                 * dummy_result

        write(unit=OUTPUT_UNIT, fmt='(*(F21.16))') &!
            dummy_result%re                            , &!
            dummy_result%im                            , &!
            dummy_result_pow3%re - dummy_test_input%re , &!
            dummy_result_pow3%im - dummy_test_input%im

    end subroutine

end program
