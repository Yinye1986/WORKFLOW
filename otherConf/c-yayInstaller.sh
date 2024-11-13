#!/bin/bash

export GO111MODULE=on
export GOPROXY=https://goproxy.cn
git clone https://aur.archlinux.org/yay.git
cd /home/chris/myApplications/yay
makepkg -si
