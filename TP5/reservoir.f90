program res
  t = 0.
  tf = 100.
  y0 = 1.
  dt = 0.1
30 y1 = y0 + dt*(3.*sin(0.5*t)**2-1)
  t = t + dt
  if(t.lt.tf)then
     y0=y1
     write(*,*)'y',t,y1
     write(50,*)t,y1
     goto 30
  endif
  stop
end program res

     
  
