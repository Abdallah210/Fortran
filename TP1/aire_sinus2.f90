 program sinus2

   parameter (n=100)
   
  pi = 3.141292
  h = ((4*pi)-0) / (n-1)
  
  aire = 0.5 * h * (sin(0.)+sin(4*pi))

  do i=2 , n-1
     xi = (i-1)*h
     if (sin(xi).gt.0.5) then
        aire = aire + sin(xi)*h
     endif
     
  enddo

  
  write(*,*)'aire = ', aire
  stop
end program sinus2
