#!/bin/sh
#setxkbmap us colemak &
#setxkbmap be &
setxkbmap -layout us -variant altgr-intl -option nodeadkeys &

xrdb -load ~/.config/X11/Xresources &
# xrdb -load ~/.Xresources &
# ~/.local/bin/moncheck &

xinput set-prop 9 333 0.4 & # set usb mouse sensitivity
xinput --set-prop 11 'libinput Accel Speed' 0.5 # set touchpad mouse sensitivity
#xinput set-prop 11 333 1 & # set touchpad mouse sensitivity
#xinput set-prop 12 322 1 & # set touchpad natural scrolling

dunst &

redshift &

slstatus &

sxhkd &

picom &

echo "redshift -O 2800" | at 20:30 &

while true; do
    dwm >/dev/null 2>&1
done

exec dwm
