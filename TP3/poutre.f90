program poutre
  
  parameter (n=5)
  dimension a(n,n),b(n), u0(n), u1(n)


  ! Initialisation :

  do i=1,n
     do j=1,n
        a(i,j)=0
     enddo
  enddo

  do i=1,n
     b(i)=0
  enddo

  ! Remplissage :

  do i=2, n-1
     a(i,i)=2
     a(i,i-1)=-1
     a(i,i+1)=-1
  enddo

  a(1,1)=1
  a(n,n)=1
  b(n)=0.1

  ! Affichage de la matrice  :
  write(*,*)'la matrice A'
  do i=1,n
     write(*,*)(a(i,j),j=1,n)
  enddo

  tol = 1.e-4
  comp = 0
  
  do i=1,n
     u0(i)=0
  enddo

300 do i=1,n
     som1=0
     do j=1,i-1
        som1= som1 + a(i,j)*u0(j)
     enddo
     som2=0
     do j=i+1,n
        som2=som2 + a(i,j)*u0(j)
     enddo

     u1(i)=(b(i)-som1-som2) / a(i,i)
  enddo

  er = 0.
  do i=1,n
     er = er + abs(u1(i)-u0(i))
  enddo

  if(er.gt.tol) then
     do i=1,n
        u0(i)=u1(i)
     enddo
     comp = comp + 1
    write(*,*)'iteration : ',comp,er
     goto 300
  endif

  !Affichage du graphe :
  h=10/(n-1)
  do i=1,n
     xi=(i-1)*h
     write(*,*)xi,u1(i)
     write(1,*)xi,u1(i)
  enddo
     
  
  
  stop
end program poutre
