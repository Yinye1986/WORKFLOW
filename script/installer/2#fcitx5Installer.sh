#!/bin/bash

function Installer {
}

echo "Ensure that yay is installed"
echo "(YES/NOT)"
read answer
if [ "$answer" = "YES" ]; then
    sudo pacman -S fcitx fcitx-configtool sunpinyin sunpinyin-date --noconfirm
else
	echo "Script Interupt"
	exit
fi
