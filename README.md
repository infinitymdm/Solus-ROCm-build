# Solus ROCm Build

Various `package.yml` to build ROCm on Solus.

Mostly copied from Gentoo's ebuilds of the same names, and also from the work of https://github.com/saitam757/Solus-ROCm

Check the `package.yml` of `llvm-roc` for `-j1`, since you probably want to up that number a bit if you have enough memory. Howewer, on my laptop with 8GB + 8GB of swap I cannot go higher.

## Building

Grayed out packages are dependencies already available in the Solus repository. Everything else must be built locally in the correct order. This can be handled by the `build_all.sh` script.

![Rocm dependency graph](rocm-graph.png "rocm-dep-graph")
