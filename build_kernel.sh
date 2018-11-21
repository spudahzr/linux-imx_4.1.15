#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=arm-none-linux-gnueabi-
#make distclean
#make imx_v7_defconfig
make uImage LOADADDR=0x10800000 -j4
make imx6q-iTop.dtb
cp ./arch/arm/boot/uImage /media/sf_share/Mfgtools-Rel-1.1.0_121218_MX6Q_UPDATER/Profiles/MX6Q\ Linux\ Update/OS\ Firmware/files/linux/
cp ./arch/arm/boot/dts/imx6q-iTop.dtb /media/sf_share/Mfgtools-Rel-1.1.0_121218_MX6Q_UPDATER/Profiles/MX6Q\ Linux\ Update/OS\ Firmware/files/linux/
