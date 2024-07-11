#!/bin/bash

echo "Start Installation"

systemctl stop reflector.service

echo "Please Enter the Passphrase"

iwctl station wlan0 scan
iwctl station wlan0 connect Galaxy

timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1

echo "Please Configure Disk"
echo "This Is Your List Of Disk"

lsblk

read -p "Input Your Disk '/dev/xxxx': " yourdisk

fdisk $yourdisk

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

mkfs.fat -F 32 ${yourdisk}p1
mkswap ${yourdisk}p2
swapon ${yourdisk}p2
mkfs.ext4 ${yourdisk}p3
mkfs.ext4 ${yourdisk}p4

echo "Please Configure Mirrorlist"

vim /etc/pacman.conf

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

mount ${yourdisk}p3 /mnt
mount --mkdir ${yourdisk}p1 /mnt/boot
mount --mkdir ${yourdisk}p4 /mnt/home

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

cp -rf /root/WORKFLOW /mnt/opt/

arch-chroot /mnt
