#!/bin/bash

while true; do
    # 获取音量
    VOL=$(amixer get Master | grep 'Mono:' | awk -F'[][]' '{ print $2 }')

    # 获取时间
    DATE=$(date +"%Y-%m-%d %H:%M:%S")

    # 设置状态栏
    xsetroot -name "Vol: $VOL | $DATE"

    # 每隔 1 秒更新一次
    sleep 1
done
