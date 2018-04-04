#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
    light | cut -d '.' -f 1
}

function send_notification {
    brightness=`get_brightness`
    # Make the bar with the special character ─ (it's not dash -)
    # https://en.wikipedia.org/wiki/Box-drawing_character
    bar=$(seq -s "█" $(($brightness / 4)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -i sunny -r 2594 -u normal "      $bar"
}

case $1 in
    up)
	# Up the brightness (+ 5%)
	light -A 5 > /dev/null
	send_notification
	;;
    down)
	light -U 5 > /dev/null
	send_notification
	;;
esac
