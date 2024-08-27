amixer -D pulse sset Master 5%$1
amixer -D pulse set Master 1+ on
play -v .2 ~/.config/vol.mp3
