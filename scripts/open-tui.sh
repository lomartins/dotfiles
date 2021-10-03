#!/bin/zsh
tool=$1
loc="$2"
loc=${loc#"file://"}



if [[ ! -e $loc ]]; then
    loc=$(dirname "$loc")
fi
i3-msg exec 'alacritty --command '$tool' "'$loc'"'

dunstify -h string:x-dunst-stack-tag:test $2 -A 'tested,default'
