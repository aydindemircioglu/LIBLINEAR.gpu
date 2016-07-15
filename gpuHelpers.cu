
#include "gpuHelpers.h"
#include <iostream>
#include <helper_cuda.h>



void checkCublas(cublasStatus_t  s) 
{
	if (s != CUBLAS_STATUS_SUCCESS) {
		switch (s) {
			case CUBLAS_STATUS_ALLOC_FAILED:
				std::cerr  << "CUBLAS_STATUS_ALLOC_FAILED" ;
				break;
			case CUBLAS_STATUS_ARCH_MISMATCH:
				std::cerr  << "CUBLAS_STATUS_ARCH_MISMATCH" ;
				break;
			case CUBLAS_STATUS_EXECUTION_FAILED:
				std::cerr  << "CUBLAS_STATUS_EXECUTION_FAILED" ;
				break;
			case CUBLAS_STATUS_INTERNAL_ERROR:
				std::cerr  << "CUBLAS_STATUS_INTERNAL_ERROR" ;
				break;
			case CUBLAS_STATUS_INVALID_VALUE:
				std::cerr  << "CUBLAS_STATUS_INVALID_VALUE" ;
				break;
			case CUBLAS_STATUS_MAPPING_ERROR:
				std::cerr  << "CUBLAS_STATUS_MAPPING_ERROR" ;
				break;
			case CUBLAS_STATUS_NOT_INITIALIZED:
				std::cerr  << "CUBLAS_STATUS_NOT_INITIALIZED" ;
				break;
			default:
				std::cerr  << "CUBLAS_UNKNOWN_ERROR" ;
		}
	};
}




void checkCusparse(cusparseStatus_t s) {
    if (s != CUSPARSE_STATUS_SUCCESS) {
        switch (s) {
            case CUSPARSE_STATUS_NOT_INITIALIZED:
                std::cerr  << "CUSPARSE_STATUS_NOT_INITIALIZED" ;
                break;
            case CUSPARSE_STATUS_ALLOC_FAILED:
                std::cerr  << "CUSPARSE_STATUS_ALLOC_FAILED" ;
                break;
            case CUSPARSE_STATUS_INVALID_VALUE:
                std::cerr  << "CUSPARSE_STATUS_INVALID_VALUE" ;
                break;
            case CUSPARSE_STATUS_ARCH_MISMATCH:
                std::cerr  << "CUSPARSE_STATUS_ARCH_MISMATCH" ;
                break;
            case CUSPARSE_STATUS_MAPPING_ERROR:
                std::cerr  << "CUSPARSE_STATUS_MAPPING_ERROR" ;
                break;
            case CUSPARSE_STATUS_EXECUTION_FAILED:
                std::cerr  << "CUSPARSE_STATUS_EXECUTION_FAILED" ;
                break;
            case CUSPARSE_STATUS_INTERNAL_ERROR:
                std::cerr  << "CUSPARSE_STATUS_INTERNAL_ERROR" ;
                break;
            case CUSPARSE_STATUS_MATRIX_TYPE_NOT_SUPPORTED:
                std::cerr  << "CUSPARSE_STATUS_MATRIX_TYPE_NOT_SUPPORTED" ;
                break;
            default:
                std::cerr  << "unknown CUSPARSE error" ;
        }
    }
 };
	
	
	
unsigned long long getGFlopsOfDeviceId (unsigned int deviceID) 
{
    int sm_per_multiproc  = 0;
    unsigned long long gflops = 0;
    cudaDeviceProp deviceProp;
    
	cudaGetDeviceProperties(&deviceProp, deviceID);

	// If this GPU is not running on Compute Mode prohibited, then we can add it to the list
	if (deviceProp.computeMode != cudaComputeModeProhibited) {
		if (deviceProp.major == 9999 && deviceProp.minor == 9999) {
			sm_per_multiproc = 1;
		} else {
			sm_per_multiproc = _ConvertSMVer2Cores(deviceProp.major, deviceProp.minor);
		}
		gflops = (unsigned long long) deviceProp.multiProcessorCount * sm_per_multiproc * deviceProp.clockRate;
	}

    return gflops;
}




// This function returns the best GPU (with maximum GFLOPS)
int getMaxGflopsDeviceId()
{
    int current_device     = 0;
    int max_perf_device    = 0;
    int device_count       = 0;
    int devices_prohibited = 0;
    
    unsigned long long max_compute_perf = 0;
    cudaGetDeviceCount(&device_count);
    
    checkCudaErrors(cudaGetDeviceCount(&device_count));

    if (device_count == 0) {
        fprintf(stderr, "gpuGetMaxGflopsDeviceId() CUDA error: no devices supporting CUDA.\n");
        exit(EXIT_FAILURE);
    }

    if (devices_prohibited == device_count) {
    	fprintf(stderr, "gpuGetMaxGflopsDeviceId() CUDA error: all devices have compute mode prohibited.\n");
    	exit(EXIT_FAILURE);
    }

    // Find the best CUDA capable GPU device
    current_device = 0;

    while (current_device < device_count) {
		unsigned long long compute_perf = getGFlopsOfDeviceId (current_device);
		if (compute_perf  > max_compute_perf) {
			max_compute_perf  = compute_perf;
			max_perf_device   = current_device;
		}
        ++current_device;
    }

    return max_perf_device;
}

