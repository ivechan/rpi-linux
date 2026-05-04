#!/bin/bash
set -e
KERNEL=kernel8-custom
sudo env PATH=$PATH make -j12 ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- INSTALL_MOD_PATH=../mnt/root modules_install

sudo cp arch/arm64/boot/Image ../mnt/boot/firmware/$KERNEL.img
