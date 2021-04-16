#!/bin/bash

# Terminate already running polybar
killall -q polybar

# Wait until the process has been shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar using default config
polybar -c ~/.config/polybar/bar.ini duhcoeg &

echo "Polybar launched..."
