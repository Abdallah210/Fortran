program pollution

  
  tol = 1.e-5
  iter = 0
  x0 = 1.
40 f0 = 6-20*(exp(-0.2*x0)-exp(-0.75*x0))
  df0 = 4.*exp(-0.2*x0)- 15.*exp(-0.75*x0)
  x1 = x0-f0/df0
  er = abs(x1-x0)
  if(er.gt.tol) then
     x0 = x1
     iter = iter + 1
     write(*,*)'iter',iter,er,x1
     write(40,*)iter,x1  ! pour le premier parametre doit etre different de 5
     goto 40
  endif
  stop
end program pollution


!il y'a une erreur a corriger : il faut trouver 4 iteration !
