#!/usr/bin/sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git --git-dir=$HOME/roam/daily/.git pull
config pull
config add -u
config commit -m "changes"
config push
