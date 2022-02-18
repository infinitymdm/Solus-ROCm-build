#!/bin/bash
#

# Build Order:
# 1. [OK]   numactl
# 2. [OK]   ROCT-Thunk-Interface
# 3. [WIP]  ROCR-Runtime
# 4. [WIP]  LLVM (roc version)
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

cd ../rocr-runtime
#f_build

cd ../llvm-roc
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