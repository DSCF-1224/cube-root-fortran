program test_cube_root_lib

    use,     intrinsic :: iso_fortran_env, only: OUTPUT_UNIT
    use,     intrinsic :: iso_fortran_env, only: SIZE_FLT    => REAL64
    use, non_intrinsic :: cube_root_lib



    implicit none



    real(SIZE_FLT), parameter :: MATH_PI_DEF = acos(-1.0_SIZE_FLT)



    complex(SIZE_FLT) :: test_input
    !! A variable for this PROGRAM
    !! The test value to compute cube root

    complex(SIZE_FLT) :: result
    !! A variable for this PROGRAM
    !! to receive the computed cube root



    integer :: iter



    print * , cbrt(   0.0_SIZE_FLT )
    print * , cbrt( - 0.0_SIZE_FLT )

    print * , cbrt(   8.0_SIZE_FLT )
    print * , cbrt( - 8.0_SIZE_FLT )

    do iter = 0, 8

        test_input = 8 * exp( cmplx( 0, MATH_PI_DEF / 4 * iter, SIZE_FLT ) )

        result = cbrt0(test_input); write(unit=OUTPUT_UNIT, fmt='(   "(",F20.16,",",F20.16,")")', advance='no' ) result%re, result%im
        result = cbrt1(test_input); write(unit=OUTPUT_UNIT, fmt='(1X,"(",F20.16,",",F20.16,")")', advance='no' ) result%re, result%im
        result = cbrt2(test_input); write(unit=OUTPUT_UNIT, fmt='(1X,"(",F20.16,",",F20.16,")")', advance='yes') result%re, result%im 

    end do

end program
