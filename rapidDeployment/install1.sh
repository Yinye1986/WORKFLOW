#!/bin/bash

pacman -Syy

pacman -S amd-ucode mesa mesa-utils xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau sudo fish --noconfirm

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

pacman -S grub efibootmgr --noconfirm # os-prober

echo "Please Uncomment The Last Line"

nvim /etc/default/grub

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

grub-install --target=x86_64-efi --efi-directory=/esp --bootloader-id=GRUB

# os-prober

grub-mkconfig -o /boot/grub/grub.cfg

pacman -S base-devel unzip p7zip curl wget openssh git usb_modeswitch usbutils # basic module

pacman -S iwd dhcpcd bluez bluez-utils blueman # bluetooth internet

pacman -S hyprland hyprpaper xdg-desktop-portal-hyprland xorg-xwayland qt6-wayland qt5-wayland alacritty waybar rofi-wayland # wm wayland兼容层
pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol wireplumber # 音频全家桶
pacman -S wl-clipboard cliphist grim slurp # 剪切板支持,剪切板,截图,选取

pacman -S ttf-hack ttf-hack-nerd wqy-zenhei wqy-microhei # 字体
pacman -S kitty yazi clash # 必备组件
pacman -S htop fastfetch # 仪表盘

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

## fcitx5
sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-nord --noconfirm # 输入法全家桶
echo "QT_IM_MODULE=fcitx" >> /etc/environment
echo "GTK_IM_MODULE=fcitx" >> /etc/environment
echo "XMODIFIERS=@im=fcitx" >> /etc/environment
echo "GLFW_IM_MODULE=fcitx" >> /etc/environment
echo "SDL_IM_MODULE=fcitx" >> /etc/environment
echo "INPUT_METHOD=fcitx" >> /etc/environment

mv /opt/WORKFLOW /home/chris/


