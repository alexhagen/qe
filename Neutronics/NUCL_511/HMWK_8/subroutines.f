! subroutines
!

module subroutines
use variables
use functions
implicit none

contains
!calculates the runge kutta method
	subroutine rks(wi,wiplus1,t0,h,steps,func)
		real(wp),intent(in) :: t0,h
		integer,intent(in) :: steps
		real(wp) :: wi(:),wiplus1(:),ti
		integer :: j,func,i
		write(20,'(A)',advance='no') ' ti  |'
		do 1000 j=1,size(wi,1)
		write(20,'(A,I1,A)',advance='no') '     wi',j,'    |'
1000		continue
		write(20,'(A)') '      y     |    |wi-y|'
		do 300 j=0,steps-1
			ti=(j)*h+t0
			write(20,'(F4.2,A)',advance='no') ti,' |'
			do 2000 i=1,size(wi,1)
				write(20,'(F11.6,A)',advance='no') wi(i),' |'
2000			continue
				write(20,'(F11.6,A,F11.6)') fexact(ti,func), &
				' |',abs(wi(1)-fexact(ti,func))
			call calcwiplus1(h,ti,wi,wiplus1,func)
300 		continue
	end subroutine

!calculates the new value of each time step
	subroutine calcwiplus1(h,ti,wi,wiplus1,func)
		real(wp),intent(in) :: h,ti
		real(wp) :: wi(:),wiplus1(:)
		real(wp),allocatable :: k(:,:)
		integer :: j,n,func

		n=size(wi,1)
		allocate(k(4,n))

		call kval(k,h,ti,wi,func)
		wiplus1=wi+(1.00_wp/6.00_wp)*(k(1,:)+2.00_wp*k(2,:)+2.00_wp*k(3,:)+k(4,:));
		wi=wiplus1
	end subroutine

!calculates k values for use in runge kutta method
	subroutine kval(k,h,ti,wi,func)
		!passed variables
		real(wp),intent(in) :: h,ti
		real(wp),intent(in) :: wi(:)
		real(wp) :: k(:,:)
		integer :: j,func,nsize

		nsize=size(wi,1)
		do 200 j=1,size(wi,1)
			k(1,:)=h*f(ti,wi,func,nsize)
			k(2,:)=h*f(ti+h/2.00_wp,wi+k(1,:)/2.00_wp,func,nsize)
			k(3,:)=h*f(ti+h/2.00_wp,wi+k(2,:)/2.00_wp,func,nsize)
			k(4,:)=h*f(ti+h,wi+k(3,:),func,nsize)
200		continue
	end subroutine

end module subroutines


!!! GE STUFF !!!!
subroutine printaugmat(Areal, N)
	DOUBLE PRECISION, DIMENSION(100,100) :: Areal	
	INTEGER :: counter1, counter2, N
	write(20,*) "A="

	do 70 counter2=1, N
		do 80 counter1=1, N
			write(20,"(A)",advance='no') " "
			write(20,"(F15.5)",advance='no') Areal(counter1,counter2)
80		continue
		write(20,"(A)",advance='no') "    |"
		write(20,"(F15.5)") Areal(N+1,counter2)
70	continue
100	continue
end subroutine