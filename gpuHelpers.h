
#ifndef gpuHelpers
#define gpuHelpers

#include <cublas_v2.h>
#include <cusparse_v2.h>
#include <helper_cuda.h>

void checkCublas(cublasStatus_t  s);
void checkCusparse(cusparseStatus_t s);
unsigned long long getGFlopsOfDeviceId (unsigned int deviceID);
int getMaxGflopsDeviceId();

#endif
