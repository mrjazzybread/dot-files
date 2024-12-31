emacs --daemon=email --load=~/.emacs-email.el
emacsclient -socket-name=email -nce "(mu4e-dashboard)"
sleep 5
emacs --daemon
