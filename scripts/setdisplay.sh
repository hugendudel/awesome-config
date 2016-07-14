#!/usr/bin/env zsh
EXT_MON=$(xrandr |awk '/ connected/ && ! /LVDS1/ {print $1}')
[[ -n ${EXT_MON} ]] && xrandr --output ${EXT_MON} --right-of LVDS1 --auto || xrandr --auto
