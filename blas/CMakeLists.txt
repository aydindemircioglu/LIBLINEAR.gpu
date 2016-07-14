
SET(BLAS_SOURCE
  daxpy.c  
  ddot.c  
  dnrm2.c  
  dscal.c
  )


SET(BLAS_HEADER
    blas.h
    blasp.h
)


#add_library(blas SHARED ${BLAS_SOURCE} ${BLAS_HEADER})
add_library(blas STATIC ${BLAS_SOURCE} ${BLAS_HEADER})
install(TARGETS blas DESTINATION lib)        
