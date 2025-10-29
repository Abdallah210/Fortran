program vitesse

  g = 9.81
  m = 81.
  alpha = 12.5
  v0 = 0.
  t = 0.
  tf = 200.
  dt_1 = 0.1

  open(unit=1, file='parachute_dt_0.1.dat', status='replace', action='write')
100 v1 = v0 + dt_1  * (g - (alpha/m) * v0)
  t = t + dt_1
  if (t.lt.tf) then
     v0 = v1
     write(1,*)t,v1
     write(*,*)t,v1
     goto 100
  endif
  close(1)

  
  g = 9.81
  m = 81.
  alpha = 12.5
  v0 = 0.
  t = 0.
  tf = 200.
  dt_2 = 0.01

  open(unit=2, file='parachute_dt_0.01.dat', status='replace', action='write')
200 v1 = v0 + dt_2 * (g - (alpha/m) * v0)
  t = t + dt_2
  if (t.lt.tf) then
     v0 = v1
     write(2,*)t,v1
     write(*,*)t,v1
     goto 200
  endif
  close(2)

  g = 9.81
  m = 81.
  alpha = 12.5
  v0 = 0.
  t = 0.
  tf = 200.
  dt_3 = 0.5

  open(unit=3, file='parachute_dt_0.5.dat', status='replace', action='write')
300 v1 = v0 + dt_3 * (g - (alpha/m) * v0)
  t = t + dt_3
  if (t.lt.tf) then
     v0 = v1
     write(3,*)t,v1
     write(*,*)t,v1
     goto 300
  endif
  close(3)

  
  
  stop
end program vitesse

