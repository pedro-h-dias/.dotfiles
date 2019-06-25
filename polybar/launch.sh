#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Allow for multiple monitors
outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)

for m in $outputs; do
	MONITOR=$m polybar -c $HOME/.dotfiles/polybar/config.ini --reload bottom &
	MONITOR=$m polybar -c $HOME/.dotfiles/polybar/config.ini --reload top &
done
