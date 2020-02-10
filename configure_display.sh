#!/bin/bash
intern=eDP-1
extern=HDMI-1

if xrandr | grep "$extern disconnected"; then
	xrandr --output "$extern" --off --output "$intern" --auto
else
	xrandr --output "$intern" --off --output "$extern" --mode 3840x2160 --rate 30 --scale 0.75x0.75
fi
