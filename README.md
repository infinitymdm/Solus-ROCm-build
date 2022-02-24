# Solus ROCm Build

Various `package.yml` to build ROCm on Solus.

Mostly copied from Gentoo's ebuilds of the same names, and also from the work of https://github.com/saitam757/Solus-ROCm

Check the `package.yml` of `llvm-roc` for `-j1`, since you probably want to up that number a bit if you have enough memory.

## Building

This is a work in progress and does not yet build correctly. Eventually the build process should look something like this:

Building is accomplished by running the `build_all.sh` script.
1. Set up your local build environment by following [these instructions](https://getsol.us/articles/packaging/local-repository/en/).
2. Clone the repository using `git clone https://github.com/infinitymdm/Solus-ROCm-build.git`.
3. Change directory into the project folder using `cd Solus-ROCm-build`.
4. Build by executing `./build_all.sh`. This will take a long time. 
