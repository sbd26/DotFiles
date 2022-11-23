#!/bin/bash
 
_shutdown="poweroff\0icon\x1fsystem-shutdown"
_reboot="reboot\0icon\x1fsystem-restart-panel"
#_lock=" "
#_suspend="鈴 "
_logout="logout\0icon\x1fsystem-switch-user"
 
options="${_shutdown}\n${_reboot}\n${_logout}"
 
chosen="$(echo -e "$options" | rofi -show -dmenu -format 's')" 

# chosen="$(echo -e "$options" | rofi -dmenu 's')" 
echo $chosen
case $chosen in
    ${_shutdown%'\0'*})
        poweroff
        ;;
    ${_reboot%'\0'*})
        reboot
        ;;
    #${_lock%'\0'*})
       # i3lock
       # ;;
    #${_suspend%'\0'*})
       # mpc -q pause
       # amixer set Master mute
       # systemctl suspend
       # ;;
    ${_logout%'\0'*})
        bspc quit 
        ;;
esac
 
