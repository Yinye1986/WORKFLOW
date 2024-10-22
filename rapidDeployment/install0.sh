#!/bin/bash

# systemctl stop reflector.service

# iwctl

timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1

lsblk

read -p "Input Your Disk '/dev/xxxx':" yourdisk

fdisk ${yourdisk}

# esp
mkfs.fat -F 32 ${yourdisk}1
# swap
mkswap ${yourdisk}2
swapon ${yourdisk}2
# root dir
mkfs.ext4 ${yourdisk}3

vim /etc/pacman.conf

mount ${yourdisk}2 /mnt
mount --mkdir ${yourdisk}1 /mnt/esp

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

