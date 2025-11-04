program vitesse

  g = 9.81
  m = 81.
  alpha = 12.5
  v0 = 0.
  t = 0.
  tf = 200.
  dt_1 = 0.1

100 v1 = v0 + dt_1  * (g - (alpha/m) * v0)
  t = t + dt_1
  if (t.lt.tf) then
     v0 = v1
     write(10,*)t,v1
     write(*,*)t,v1
     goto 100
  endif

  stop
end program vitesse
