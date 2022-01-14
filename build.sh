#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE_COMPAT="/home/fra/clang/bin/arm-linux-gnueabi-"

PATH="/home/francesca/clang/bin:/home/francesca/gcc-12/bin:${PATH}" \
	make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=out LLVM_IAS=1 LLVM=1 vendor/kona-full_defconfig -j69

PATH="/home/francesca/clang/bin:/home/francesca/gcc-12/bin:${PATH}" \
	make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 O=out LLVM_IAS=1 LLVM=1 -j69
