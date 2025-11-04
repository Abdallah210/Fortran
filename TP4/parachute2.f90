program parachute2
  iter = 0
  tol = 1.e-5
  c0=1.
  m=100.
  g=9.81

100 A = -(g*m/c0**2)*(1.-exp(-10.*c0/m))
  B = (g/c0)*10*exp(-10.*c0/m)
  fc = (g*m/c0)*(1-exp(-c0*10/m)) - 40
  dfc = A+B
  c1 = c0 - fc/dfc
  er = abs(c1-c0)

  if(er.gt.tol) then
     c0 = c1
     iter = iter + 1
     write(*,*)'iteration',iter,er,x1
     goto 100
  endif
  stop
end program parachute2
