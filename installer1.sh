#!/bin/bash

echo "running pacstrap: loading packages to new system:" &&
basestrap /mnt base linux linux-firmware syslinux sudo iwd iwd-openrc nano dhcpcd dhcpcd-openrc grub git man binutils make gcc pkg-config fakeroot patch neovim neofetch memtest86+ edk2-shell openrc &&
echo "done." &&

echo "generating fstab file:" &&
fstabgen -U /mnt >> /mnt/etc/fstab &&
echo "done." &&

echo "create instartix folder" &&
mkdir /mnt/root/instartix &&

echo "copying instartix to new system:" &&
cp -r . /mnt/root/instartix &&
echo "done!" &&

echo "system is ready for further configuration." &&
echo "run (artix-chroot /mnt) to proceed."

