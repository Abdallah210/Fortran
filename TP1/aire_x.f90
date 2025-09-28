program aire_x_carre

  parameter (n=100)
  
  h = 1.0 / (n-1)
  
  aire = h*0.5*(1.0*1.0)

  do i=2 , n-1
     xi = (i-1)*h
     aire = aire + h*(xi*xi)
  enddo
  
  write(*,*)'aire = ', aire
  
  stop
end program aire_x_carre
