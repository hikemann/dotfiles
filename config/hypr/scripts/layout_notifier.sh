#!/usr/bin/env bash

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do
    if [[ "$line" =~ ^activelayout\>\>(.*) ]]; then
        LAYOUT=$(echo "${BASH_REMATCH[1]}" | awk -F',' '{print $2}')
        notify-send "Keyboard Layout" "Language: $LAYOUT" -t 1200
    fi
done
