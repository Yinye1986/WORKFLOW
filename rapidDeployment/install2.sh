#!/bin/bash

echo "make sure that WORKSPACE is IN /home/chris/ AND RUN WITHOUT ROOT"
echo "(YES/NOT)"
read answer
if [ "$answer" = "YES" ]; then
    sudo pacman -S hyprland hyprpaper xdg-desktop-portal-hyprland xorg-xwayland qt6-wayland qt5-wayland glfw-wayland --noconfirm # wm wayland兼容层
    sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol wireplumber --noconfirm                         # 音频全家桶
    sudo pacman -S wl-clipboard cliphist grim slurp # 剪切板支持,剪切板,截图,选取
    # sudo pacman -S dunst xdg-desktop-portal-hyprland polkit-kde-agent --noconfirm # 通知 xdg桌面门户 自动提权认证

	sudo pacman -S ttf-hack ttf-hack-nerd wqy-zenhei wqy-microhei --noconfirm # 字体
	sudo pacman -S kitty alacritty fish yazi clash rofi-wayland --noconfirm                      # 必备组件
	sudo pacman -S htop fastfetch --noconfirm # 仪表盘

    # sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-nord --noconfirm # 输入法全家桶 install in install2.sh

    ssh-keygen -t ed25519 -C "yinye1986@gmail.com"
else
	echo "Script Interrupt"
	exit
fi
