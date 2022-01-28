#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE_COMPAT="$HOME/proton-clang/bin/arm-linux-gnueabi-"

PATH="$HOME/clang/bin:$HOME/gcc/bin:${PATH}" \
	make O=out \
	CROSS_COMPILE=aarch64-linux-gnu- \
	LLVM_IAS=1 LLVM=1 \
	vendor/kona-full_defconfig \
	-j69

PATH="$HOME/clang/bin:$HOME/gcc/bin:${PATH}" \
	time make O=out \
	CROSS_COMPILE=aarch64-linux-gnu- \
	LLVM_IAS=1 LLVM=1 \
	-j69
