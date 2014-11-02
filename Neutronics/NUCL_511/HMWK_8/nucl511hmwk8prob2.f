! NUCL511HMWK8PROB2
!

!                     Runge-Kutta
!  Program to do Runge-Kutta Method for first
!    order differential equations
! Developed by Alex Hagen on 11/23/2012 for ME 581
!
!Input Format:
!!number of eqs
!!equation set [0 for y''=16.81y, 1 for voltera, 2 for y'=y^1/3, 3 for y'=1+y/t]
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program rk
use variables
use subroutines
implicit none

!variables
	real(wp),dimension(:),allocatable :: wi,wiplus1
	real(wp) :: t0,h
	integer :: N,func,steps
	character(len=20) :: inp, outp

!Reading from Input File
	call getarg(1, inp)  !get first argument from command line, the input file
	call getarg(2, outp) !get second argument from command line, the output file
	open(unit = 10,file = inp) !open the input file
	open(unit = 20,file = outp) !open the output file for later writing

	read(10,*) func

	if (func .EQ. 0) then
		allocate(wi(2))
		allocate(wiplus1(2))
		wi(1)=1.00_wp
		wi(2)=-4.1_wp
		h=0.05_wp
		t0=0.00_wp
		steps=40
	elseif (func .EQ. 1) then
		allocate(wi(2))
		allocate(wiplus1(2))
		wi(1)=100.00_wp
		wi(2)=10.00_wp
		h=0.01_wp
		t0=0.00_wp
		steps=2000
	elseif (func .EQ. 2) then
		allocate(wi(1))
		allocate(wiplus1(1))
		wi(1)=0.00_wp
		h=0.01_wp
		t0=0.00_wp
		steps=200
	elseif (func .EQ. 3) then
		allocate(wi(1))
		allocate(wiplus1(1))
		wi(1)=1.00_wp
		h=1.0_wp
		t0=1.00_wp
		steps=6
	else
		allocate(wi(1))
		allocate(wiplus1(1))
		wi(1)=1E-16_wp
		h=0.01_wp
		t0=0.00_wp
		steps=200
	endif


	call rks(wi,wiplus1,t0,h,steps,func)



end program rk
