MODULE PRECISION_PARAMETERS
 
! Set important parameters having to do with variable precision and array allocations
 
IMPLICIT NONE
 
CHARACTER(255), PARAMETER :: precid='$Id$'
CHARACTER(255), PARAMETER :: precrev='$Revision$'
CHARACTER(255), PARAMETER :: precdate='$Date$'

! Precision of "Four Byte" and "Eight Byte" reals

INTEGER, PARAMETER :: FB = SELECTED_REAL_KIND(6)
INTEGER, PARAMETER :: EB = SELECTED_REAL_KIND(12)

! Hardwired bounds for certain species and ZONE arrays

INTEGER, PARAMETER :: MAX_SPECIES=20, MAX_LEAK_PATHS=20

! Hardwired bounds for surface and material arrays

INTEGER, PARAMETER :: MAX_LAYERS=20, MAX_MATERIALS=20, MAX_MATERIALS_TOTAL=400, MAX_REACTIONS=10, MAX_STEPS=20

! Hardwired number of species associated with the mixture fraction

INTEGER, PARAMETER :: N_STATE_SPECIES=9

! Special numbers

REAL(EB), PARAMETER :: ALMOST_ONE=1._EB-EPSILON(1._EB)


CONTAINS


SUBROUTINE GET_REV_prec(MODULE_REV,MODULE_DATE)
INTEGER,INTENT(INOUT) :: MODULE_REV
CHARACTER(255),INTENT(INOUT) :: MODULE_DATE

WRITE(MODULE_DATE,'(A)') precrev(INDEX(precrev,':')+1:LEN_TRIM(precrev)-2)
READ (MODULE_DATE,'(I5)') MODULE_REV
WRITE(MODULE_DATE,'(A)') precdate

END SUBROUTINE GET_REV_prec


END MODULE PRECISION_PARAMETERS
 
