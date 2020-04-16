#! /bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Menu"
TITLE="Kapatma & reboot"
MENU="Herhangi birini seç"

OPTIONS=(1 "Logout"
         2 "Shutdown"
         3 "Reboot")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
        1)
            i3-msg exit
            ;;
        2)
            poweroff
            ;;
        3)
            reboot
            ;;
esac
