#!/bin/bash

export GO111MODULE=on
export GOPROXY=https://goproxy.cn
git clone https://aur.archlinux.org/yay.git /home/chris/X-myApplications/yay
cd /home/chris/myApplications/yay
makepkg -si
