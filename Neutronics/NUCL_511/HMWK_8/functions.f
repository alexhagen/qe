! functions
!

module functions
use variables
implicit none

contains

!caclulates the value of the function at a given t and w
	function f(t,w,func,nsize)
		real(wp),intent(in) :: t
		real(wp),intent(in) :: w(:)
		integer,intent(in) :: func,nsize
		real(wp),allocatable :: f(:)
		integer :: j
		allocate(f(nsize))
		if (func .EQ. 0) then
			f(1)=w(2)
			f(2)=16.81*w(1)
		elseif (func .EQ. 1) then
			f(1)=w(1)/2.00_wp-w(2)*w(1)/50.00_wp
			f(2)=-w(2)/2.00_wp+w(2)*w(1)/50.00_wp
		end if
	end function

!calculates the exact values of the function at given t and w
	function fexact(t,func)
		real(wp),intent(in) :: t
		integer,intent(in) :: func
		real(wp) :: fexact
		if (func .EQ. 0) then
			fexact=exp(-4.1_wp*t)
		elseif (func .EQ. 1 .OR. func .EQ. 2) then
			fexact=0
		elseif (func .EQ. 4) then
			fexact=((2.00_wp/3.00_wp)*t)**(3.00_wp/2.00_wp)
		else
			fexact=t*(log(t)+1)
		end if
	end function
end module functions
