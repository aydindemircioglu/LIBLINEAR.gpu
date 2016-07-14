
# liblinear.GPU

This is a port of LIBLINEAR.multicore to CUDA/GPU. Only linux is supported for the time being.
Also, only dual l1/l2 classification is ported to the GPU.



## Compiling

Make sure you have all prerequisites, notably CUDA and openMP.
The path of  CUDA

Switch to the code directory and just issue:

```
$ make  all
```

This should produce a train binary under the current directory.


## Usage

Simply execute

..


## Notes

- The GPU code might be still unoptimized, however it seems that the code
is as fast as my 2x octa xeon e5-2670.

- Hyperthreading seems to hurt the multicore version of Liblinear.  This should
not hurt the GPU port though.

- For now prediction is not touched at all, though it probably can be speed up too.


## Restrictions

- Only linux
- Only dual l1/l2 classification


## Contributions

This software is built upon the great liblinear-multicore library, which can be found here:

- [[https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/multicore-liblinear/]]

and uses CUDA in form of cuSPARSE (https://developer.nvidia.com/cusparse) 
and cuBLAS (https://developer.nvidia.com/cublas).


## Copyright

All code is licensed under the LIBLINEAR copyright:


Copyright (c) 2007-2015 The LIBLINEAR Project.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

3. Neither name of copyright holders nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.


THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.



