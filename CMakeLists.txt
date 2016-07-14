# LIBLINEAR.gpu
# (C) 2015-2016 aydin demircioglu, aydin.demircioglu <at ini.rub.de>

	cmake_minimum_required (VERSION 2.8)
	project (LIBLINEAR.gpu)
    

    find_package(CUDA 7.0 REQUIRED)
    find_package(OpenMP REQUIRED)

	        
	        
	find_cuda_helper_libs(cusparse)
    set(CUDA_CUSPARSE_LIBRARIES ${CUDA_cusparse_LIBRARY})
    macro(CUDA_ADD_CUSPARSE_TO_TARGET target)
        target_link_libraries(${target} ${CUDA_cusparse_LIBRARY})
    endmacro()

    set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS} -O3")
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS} -O3")
	
    add_definitions(-DCUDA)
		
    set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-D_FORCE_INLINES) 
    set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-O3 -gencode arch=compute_35,code=sm_35)
#		set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-gencode arch=compute_52,code=sm_52)
#		set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-gencode arch=compute_50,code=sm_50)
    #set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-gencode arch=compute_30,code=sm_30)
    #set (CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-gencode arch=compute_20,code=sm_20)
		
    set (CUDA_SAMPLES_DIR "${CUDA_TOOLKIT_ROOT_DIR}/samples/common/inc")

    include_directories(blas)
	add_subdirectory(blas)

    include_directories("/usr/local/cuda/samples/common/inc")
    include_directories("${CUDA_SAMPLES_DIR}")
    include_directories(".")


# executable	
    cuda_add_executable(train ./train.cpp ./linear.cpp ./tron.cpp)
    CUDA_ADD_CUBLAS_TO_TARGET( train)
    CUDA_ADD_CUSPARSE_TO_TARGET(train)
    
    target_link_libraries(train cuda blas)

    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")

    install (TARGETS train DESTINATION .)

    include (InstallRequiredSystemLibraries)

		
		