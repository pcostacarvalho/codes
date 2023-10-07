program element
! Calculate the primitive volume e the Wigner Seitz radius according to the crystal structure (bcc, fcc or hcp).
! Declare variables and constants.
! constants = pi, u.a
! variables= lattice parameter and lambda (for hcp)

  implicit none    ! Require all variables to be explicitly declared

  integer :: ierr
  character(3) :: struct, yn
  real :: lattice_parameter, lambda, v_ang, v_ua, ws_ang, ws_ua
  real, parameter :: pi = 3.141592653589793
  real, parameter :: ua = 0.5291772108    !em ângstrom


!   Prompt the user for crystal structure of the element
    write(*,*) 'Enter the lattice parameter (a) of the element in angstrom:'
    read(*,*) lattice_parameter

    struct = '   '
    struct_loop: do
      write(*,*) 'Enter the crystal structure (bbc, fcc or hcp):'
      read(*,*) struct
      if (struct=='bcc') then 
         v_ang = (lattice_parameter**3)/2.0
         v_ua = v_ang/ua
         ws_ang = lattice_parameter*(3.0/(8*pi))**(1.0/3.0)
         ws_ua = ws_ang/ua
         exit struct_loop
      else if (struct=='fcc') then 
         v_ang = (lattice_parameter**3)/4.0
         v_ua = v_ang/ua
         ws_ang = lattice_parameter*(3.0/(16*pi))**(1.0/3.0)
         ws_ua = ws_ang/ua
         exit struct_loop
      else if (struct=='hcp') then 
         write(*,*) 'Enter the lambda parameter for your element. (lambda = c/a)'
         read(*,*) lambda
         v_ang = (lattice_parameter**3)*lambda*sqrt(3.0)/2.0
         v_ua = v_ang/ua
         ws_ang = lattice_parameter*(3*lambda*sqrt(3.0)/(16*pi))**(1.0/3.0)
         ws_ua = ws_ang/ua
         exit struct_loop
      else
          write(*,*) 'Structure not valid.'
      end if
    end do struct_loop


!   Write the output variables (volume and wigner-seitz radius)
!  

    !write(*,'(5X, A, F9.7, A, F9.7, A)') 'Primitive volume = ',v_ang, ' angstrom or ', v_ua, ' u.a.'
    write(*,'(5X, A, F11.9, A, F11.9, A)') 'Ws = ',ws_ang,' A or ',ws_ua,' u.a.'
end program element
