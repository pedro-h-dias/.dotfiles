#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Allow for multiple monitors
outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)

for m in $outputs; do
if [ $m == 'eDP1' ]
then 
	TRAY_POSITION=right MONITOR=$m polybar -c $HOME/.dotfiles/polybar/config --reload bottom &
elif [ $m == 'DP1' ]
then 
	TRAY_POSITION=none MONITOR=$m polybar -c $HOME/.dotfiles/polybar/config --reload bottom &
else
	TRAY_POSITION=none MONITOR=$m polybar -c $HOME/.dotfiles/polybar/config --reload bottom &
fi
done

# Launch polybar
# polybar --config=$HOME/.dotfiles/polybar/config bottom &
