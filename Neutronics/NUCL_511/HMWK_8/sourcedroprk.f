!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!                                sourcedroprk
!                       Point Kinetics Equations Solver
!      Program to do Runge-Kutta Method to solve source drop transient
!              Developed by Alex Hagen on 3/2/2014 for NUCL 511
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program sourcedroprk
use variables
use subroutines
implicit none

!variables
	real(wp),dimension(:),allocatable :: wi,wiplus1
	real(wp) :: t0,h
	integer :: N,steps

	open(unit = 20,file = 'outp_sourcedroprk') !open output file for writing

	allocate(wi(2))
	allocate(wiplus1(2))
	t0=0;
	h=0.1;
	steps=900/0.1;

	call rks(wi,wiplus1,t0,h,steps,func)

end program rk
