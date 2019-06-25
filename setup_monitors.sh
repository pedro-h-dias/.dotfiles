#!/bin/bash

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $m == 'DP1' ]
	then
		xrandr --output $m --mode 1920x1080
	else
		xrandr --output $m --auto 
	fi
done

xrandr --output DP1 --right-of eDP1

$HOME/.dotfiles/polybar/launch.sh 
