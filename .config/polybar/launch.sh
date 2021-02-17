#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar right 2>&1 | tee -a /tmp/polybar1.log & disown
#polybar middle 2>&1 | tee -a /tmp/polybar2.log & disown
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload right &
    MONITOR=$m polybar --reload middle &
    MONITOR=$m polybar --reload left &
    MONITOR=$m polybar --reload left-to-right &
  done
else

  polybar --reload right &
  polybar --reload middle &
  polybar --reload left&
  polybar --reload left-to-right&
fi
