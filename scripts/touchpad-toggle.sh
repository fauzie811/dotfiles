#!/bin/bash

# 2013/01/05 - Ce Zheng
# Toggle the touchpad for laptops in X
# This is the script for execution for the hot key you set in your Linux Desktop Environment
# Tested for LXDE environment ( lubuntu 12.10)
# As for lubuntu, you need to add a keybind in the ~/.config/openbox/lubuntu-rc.xml and then running "openbox-lubuntu --reconfigure" to apply the changes
# Similar apply to other openbox variations, e.g. openbox-lxde
# For openbox environment, the default variable name for the laptop predefined touchpad-toggle key is "XF86TouchpadToggle"
# It is recommended that you bind this script to "XF86TouchpadToggle" key, but you may bind it to whatever key you prefer

tp_name=`xinput --list --name-only | grep touchpad -i`
toggle_to=`xinput list-props "$tp_name" | grep "Device Enabled" | sed "s/^.*\([01]\)$/\1/"`
let "toggle_to=(toggle_to+1)%2"
xinput set-prop "$tp_name" "Device Enabled" $toggle_to

[[ $toggle_to == 1 ]] && msg="Touchpad Enabled" || msg="Touchpad Disabled"
dunstify -r 2594 -u low "$msg"
