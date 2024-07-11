#!/bin/bash

HOMEDIR="/home/chris"
ROOTHOMEDIR="/root"

ln -sf $HOMEDIR/WORKFLOW/homeDir/.dwm $HOMEDIR/
ln -sf $HOMEDIR/WORKFLOW/homeDir/.bash_profile $HOMEDIR/
ln -sf $HOMEDIR/WORKFLOW/homeDir/.bashrc $HOMEDIR/
ln -sf $HOMEDIR/WORKFLOW/homeDir/.Xresources $HOMEDIR/
ln -sf $HOMEDIR/WORKFLOW/homeDir/.xinitrc $HOMEDIR/
ln -sf $HOMEDIR/WORKFLOW/homeDir/.Xmodmap $HOMEDIR/
ln -sf $HOMEDIR/WORKFLOW/homeDir/.gitconfig $HOMEDIR/

mkdir $HOMEDIR/.config

# for users

ln -sf $HOMEDIR/WORKFLOW/homeDir/dotConfig/fish $HOMEDIR/.config/fish
ln -sf $HOMEDIR/WORKFLOW/homeDir/dotConfig/alacritty $HOMEDIR/.config/alacritty
ln -sf $HOMEDIR/WORKFLOW/homeDir/dotConfig/yazi $HOMEDIR/.config/yazi
ln -sf $HOMEDIR/WORKFLOW/homedir/dotconfig/nvim $HOMEDIR/.config/nvim
ln -sf $HOMEDIR/WORKFLOW/homedir/dotconfig/fcitx5 $HOMEDIR/.config/fcitx5
ln -sf $HOMEDIR/WORKFLOW/homedir/dotconfig/clash $HOMEDIR/.config/clash

# ln -sf $HOMEDIR/WORKFLOW/.mozilla/FireChris.default-release $HOMEDIR/.mozilla/

# for admin

# mkdir $ROOTHOMEDIR/.config

# ln -sf $ROOTHOMEDIR/WORKFLOW/homeDir/dotConfig/yazi $ROOTHOMEDIR/.config/yazi
# ln -sf $ROOTHOMEDIR/WORKFLOW/homedir/dotconfig/nvim $ROOTHOMEDIR/.config/nvim
