module write_version_mod
character TextVersion*256
contains
!***********************************************************************
  subroutine write_textversion
  implicit none
  integer*2 vinfo(4)
  character text3a*3,text3b*3
  character text35*35
  integer*4 ret
! Git revision number from autogenerated code using 'VersionScript.exe' in pre-built step
  include 'git_version.inc'
! Version
  vinfo(1) = 2
  vinfo(2) = 1
  write(text3a,'(I3)') vinfo(1)
  write(text3b,'(I3)') vinfo(2)
! Combine text
  TextVersion='Basic DTU Wind Energy Controller (ver. '//trim(adjustl(text3a))//&
              '.'//trim(adjustl(text3b))//' '//trim(adjustl(text35))//&
              ') loaded ...'
  return
  end subroutine write_textversion
!***********************************************************************
END MODULE write_version_mod