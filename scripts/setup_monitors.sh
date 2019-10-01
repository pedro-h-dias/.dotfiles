#!/bin/bash

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $m == 'eDP1' ]
	then
		xrandr --output $m --auto
	else
		xrandr --output $m --auto 
    while getopts "lrah" flag; do 
      case "${flag}" in 
        l) xrandr --output $m --left-of eDP1 
      $HOME/.dotfiles/polybar/launch.sh ;;
        r) xrandr --output $m --right-of eDP1
      $HOME/.dotfiles/polybar/launch.sh ;;
        a) xrandr --output $m --above eDP1
      $HOME/.dotfiles/polybar/launch.sh ;;
        h) echo "Usage: use -l for second monitor left-of main, or -r for it right-of main";;
        *) echo "Unexpected option ${flag}. Use '-h' for help.";;
      esac
    done
	fi
done 

nitrogen --restore
