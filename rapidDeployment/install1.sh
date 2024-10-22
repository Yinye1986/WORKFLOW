#!/bin/bash

# pacman -Syy

pacman -S amd-ucode mesa mesa-utils xf86-video-amdgpu vulkan-radeon sudo neovim fish --noconfirm

useradd -m chris
usermod -aG wheel chris
passwd root
passwd chris

echo "Uncomment wheel"
nvim /etc/sudoers

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

echo "Please Uncomment and other needed UTF-8 locales"
echo "Uncomment en_US.UTF-8 AND zh_CN.UTF-8"

nvim /etc/locale.gen

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

locale-gen

echo "LANG=zh_CN.UTF-8" >> /etc/locale.conf

echo "hcz" >> /etc/hostname

echo "127.0.0.1    localhost" >> /etc/hosts
echo "::1          localhost" >> /etc/hosts
echo "127.0.1.1    hcz.localdomain hcz" >> /etc/hosts

pacman -S grub efibootmgr os-prober--noconfirm # os-prober

echo "Please Uncomment The Last Line"

nvim /etc/default/grub

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

grub-install --target=x86_64-efi --efi-directory=/esp --bootloader-id=GRUB

os-prober

grub-mkconfig -o /boot/grub/grub.cfg

pacman -S base-devel curl wget git usb_modeswitch usbutils --noconfirm #basic module

pacman -S iwd dhcpcd bluez bluez-utils blueman openssh --noconfirm # iwd

LOADKEYS_SERVICE_FILE_PATH="/etc/systemd/system/loadkeysColemak.service"
echo "[Unit]
Description=Load colemak keymap

[Service]
ExecStart=/usr/bin/loadkeys colemak

[Install]
WantedBy=multi-user.target" >$LOADKEYS_SERVICE_FILE_PATH
systemctl enable loadkeysColemak.service

systemctl enable iwd
systemctl enable dhcpcd
systemctl enable bluetooth
systemctl enable sshd

# Tips
