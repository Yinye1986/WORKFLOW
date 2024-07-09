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

read -p "Input Your Disk '/dev/sdx': " yourdisk
fdisk $yourdisk

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

mkfs.fat -F 32 ${yourdisk}1
mkswap ${yourdisk}2
swapon ${yourdisk}2
mkfs.ext4 ${yourdisk}3
mkfs.ext4 ${yourdisk}4

echo "Please Configure Mirrorlist"

vim /etc/pacman.conf

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

mount ${yourdisk}3 /mnt
mount --mkdir ${yourdisk}1 /mnt/efi
mount --mkdir ${yourdisk}4 /mnt/home

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

cp /root/WORKFLOW /mnt/opt/

arch-chroot /mnt
