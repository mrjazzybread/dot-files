#!/usr/bin/sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config add -u
config commit -m "changes"
config push
