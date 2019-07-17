#!/bin/bash

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $m == 'DP1' ]
	then
		xrandr --output $m --auto
	else
		xrandr --output $m --auto 
	fi
done

xrandr --output DP1 --left-of eDP1

$HOME/.dotfiles/polybar/launch.sh 
