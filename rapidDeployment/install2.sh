#!/bin/bash

echo "make sure that WORKSPACE is IN /home/chris/ AND RUN WITH ROOT"
echo "(YES/NOT)"
read answer
if [ "$answer" = "YES" ]; then
	sudo iwctl

    sudo pacman -Sy
	sudo pacman -S bluez --noconfirm                                          # 蓝牙
	sudo pacman -S pulseaudio --noconfirm                                     # 音频
	sudo pacman -S ttf-hack ttf-hack-nerd wqy-zenhei wqy-microhei --noconfirm # 字体
	sudo pacman -S xorg xorg-xinit xclip picom feh --noconfirm                # 显示服务
	sudo pacman -S alacritty fish xclip yazi clash                            # 必备组件
	sudo pacman -S chromium                                                   # 浏览器
	sudo pacman -S htop neofetch

	# 编译安装dwm

	# 编译安装yay
	export GO111MODULE=on
	export GOPROXY=https://goproxy.cn
	git clone https://aur.archlinux.org/yay.git /home/chris/myApplications/yay/
	cd /home/chris/myApplications/yay
	makepkg -si

	echo "Please install fcitx5"

else
	echo "Script Interrupt"
	exit
fi
