#!/bin/bash
#

# Build Order:
# 1. [OK]   numactl
# 2. [OK]   ROCT-Thunk-Interface
# 3. [FAIL] LLVM (roc version)
#   CMake Error at tools/lld/cmake/modules/cmake_install.cmake:58 (file):
#     file cannot create directory:
#     /home/build/YPKG/root/llvm-roc/install/usr/lib64/llvm/roc/lib/cmake/lld.
#     Maybe need administrative privileges.
#   Call Stack (most recent call first):
#     tools/lld/cmake_install.cmake:62 (include)
#     tools/cmake_install.cmake:54 (include)
#     cmake_install.cmake:77 (include)
# 4. [WIP]  ROCr-Runtime
# 5. [WIP]  rocm-cmake
# 6. [WIP]  ROCm-CompilerSupport
# 7. [WIP]  ROCm-Device-Libs
# 8. [WIP]  ROCM-OpenCL-Runtime
# 9. [WIP]  rocminfo

f_build()
{
    make local
    sudo cp *.eopkg /var/lib/solbuild/local/
}

cd numactl
make
sudo cp *.eopkg /var/lib/solbuild/local/

cd ../roct-thunk-interface/
f_build

cd ../llvm-roc
f_build

cd ../rocr-runtime
#f_build

cd ../rocm-cmake
#f_build

cd ../rocm-comgr
#f_build

cd ../rocm-device-libs
#f_build

cd ../rocm-opencl-runtime
#f_build

cd ../rocminfo
#f_build