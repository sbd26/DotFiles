#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log
polybar workspaces >>/tmp/polybar1.log 2>&1 &
polybar middle >>/tmp/polybar2.log 2>&1 &
polybar cs >>/tmp/polybar3.log 2>&1 &

polybar forcava >>/tmp/polybar4.log 2>&1 &
polybar date >> /tmp/polybar5.log 2>&1 &

polybar time >> /tmp/polybar6.log 2>&1 &
#polybar cpu >> /tmp/polybar6.log 2>&1 &
polybar sbar >> /tmp/polybar7.log 2>&1 &
polybar mbar >> /tmp/polybar8.log 2>&1 &
polybar poweroff >> /tmp/polybar9.log 2>&1 &
polybar arch >> /tmp/polybar10.log 2>&1 &
polybar tray >> /tmp/polybar12.log 2>&1 &


echo "Bars launched..."
