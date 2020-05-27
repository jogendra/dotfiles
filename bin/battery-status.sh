#!/bin/bash
#
# battery-status
#
# A quick little indicator for battery status on your Mac laptop, suitable for
# display in your prompt.
# 
# Most of this script is adapted from this:
# https://github.com/holman/dotfiles/blob/master/bin/battery-status

function battery_status() {
    if test ! "$(uname)" = "Darwin"
    then
    printf ""
    exit 0
    fi

    battstat=$(pmset -g batt | grep -Eo "\d+%")

    time_left=$(pmset -g batt |
    tail -1 |
    cut -f2 |
    awk -F"; " '{print $3}' |
    cut -d' ' -f1
    )

    if [[ $(pmset -g ac) == *"No adapter attached."* ]]
    then
    emoji='🔋'
    else
    emoji='🔌'
    fi

    timeleft_emoji='⌛'

    if [[ $time_left == *"(no"* || $time_left == *"not"* ]]
    then
    time_left='⌛️'
    fi

    if [[ $time_left == *"0:00"* ]]
    then
    time_left='⚡️ '
    fi

    echo "$emoji $battstat $timeleft_emoji $time_left"
}
battery_status