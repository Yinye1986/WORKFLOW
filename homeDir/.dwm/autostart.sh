#!/bin/bash

xrandr --output HDMI-2 --above eDP-1 --auto &

# feh --bg-fill --randomize /usr/share/backgrounds/archlinux/* &

feh --bg-fill ~/5-TMP/backgrounds/bocchiTheRock/Yamada_Ryo.png &

/bin/bash /home/chris/.dwm/dwm-status.sh &

xclip -selection clipboard &

fcitx5 &

clash -f /home/chris/WORKFLOW/homeDir/dotConfig/clash/profiles/1719547474632.yml &

setxkbmap us colemak
xmodmap ~/.Xmodmap

exec dwm
