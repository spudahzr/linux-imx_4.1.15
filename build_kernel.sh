#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabi-
#make distclean
#make imx_v7_defconfig
make uImage LOADADDR=0x10800000 -j10
make imx6q-iTop.dtb
cp ./arch/arm/boot/uImage ~/share/tftp
cp ./arch/arm/boot/dts/imx6q-iTop.dtb ~/share/tftp

