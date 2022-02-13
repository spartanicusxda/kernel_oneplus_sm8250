#!/bin/bash
export ARCH=arm64
export DTC_EXT=$HOME/dtc
export CROSS_COMPILE_COMPAT="$HOME/proton-clang/bin/arm-linux-gnueabi-"

if [[ -f "arch/arm64/configs/$1" || -f "arch/arm64/configs/vendor/$1" ]] ; then
defconfig=$1
else
defconfig=shamika_defconfig
fi


PATH="$HOME/clang/bin:$HOME/gcc/bin:${PATH}" \
	make O=out \
	CROSS_COMPILE=aarch64-linux-gnu- \
	LLVM_IAS=1 LLVM=1 \
	$defconfig \
	-j69

PATH="$HOME/clang/bin:$HOME/gcc/bin:${PATH}" \
	time make O=out \
	CROSS_COMPILE=aarch64-linux-gnu- \
	LLVM_IAS=1 LLVM=1 \
	-j69
