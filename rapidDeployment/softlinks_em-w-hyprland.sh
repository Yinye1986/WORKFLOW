#!/bin/bash

ln -sf /home/chris/WORKFLOW/homeDir/.bash_profile /home/chris/.bash_profile
ln -sf /home/chris/WORKFLOW/homeDir/.bashrc /home/chris/.bashrc
ln -sf /home/chris/WORKFLOW/homeDir/.gitconfig /home/chris/.gitconfig

ln -sf /home/chris/WORKFLOW/homeDir/.sunpinyin /home/chris/.sunpinyin

mkdir /home/chris/.config

# for users

ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/fish /home/chris/.config/fish
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/alacritty /home/chris/.config/alacritty
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/yazi /home/chris/.config/yazi
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/nvim /home/chris/.config/nvim
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/fcitx5 /home/chris/.config/fcitx5
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/rofi /home/chris/.config/rofi
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/hypr /home/chris/.config/hypr
ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/waybar /home/chris/.config/waybar

# for admin

sudo mkdir /root/.config

sudo ln -sf /home/chris/WORKFLOW/homeDir/dotConfig/yazi /root/.config/yazi
sudo ln -sf /home/chris/WORKFLOW/homedir/dotConfig/nvim_clear /root/.config/nvim

