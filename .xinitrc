# Disable access control for the current user.
xhost +SI:localuser:$USER

# Make Java applications aware this is a non-reparenting window manager.
export _JAVA_AWT_WM_NONREPARENTING=1

# Set default cursor.
xsetroot -cursor_name left_ptr

# Set keyboard repeat rate.
xset r rate 200 25
xrandr --dpi 90

# Keyboard layout
setxkbmap -layout pt

#xss-lock -- ~/.config/lock.sh

# Uncomment the following block to use the exwm-xim module.
#export XMODIFIERS=@im=exwm-xim
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=xim
#export CLUTTER_IM_MODULE=xim

# Finally start Emacs
exec emacs -eval '(org-babel-load-file "~/.config/exwm.org")'
#exec emacs -eval '(org-babel-load-file "~/.config/exwm.org")'
#exec i3
#exec alacritty
