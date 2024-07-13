LANG=C pactl subscribe | grep --line-buffered "Event 'remove' on source #" | xargs -L1 playerctl -a pause
