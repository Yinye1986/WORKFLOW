#!/bin/bash

xrandr --output HDMI-1 --auto &


feh --bg-fill ~/5-TMP/backgrounds/bocchiTheRock/Yamada_Ryo.png &

# /bin/bash /home/chris/.dwm/dwm-status.sh &

xclip -selection clipboard &

fcitx &

# clash -f /home/chris/WORKFLOW/homeDir/dotConfig/clash/profiles/1719547474632.yml &

usb_modeswitch -KW -v 0bda -p 1a2b

setxkbmap us colemak
xmodmap ~/.Xmodmap
