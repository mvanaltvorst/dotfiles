#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export INTERFACE="$(ip link show | grep \<BROADCAST | awk -F':' '{print $2}' | xargs)"
echo $INTERFACE

# Launch Polybar, using default config location ~/.config/polybar/config
polybar --reload top &

echo "Polybar launched..."
