# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
plugins=(git zsh-autosuggestions)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="arrow"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS=""

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# User configuration
source $ZSH/oh-my-zsh.sh
export PS1="%10F%n%f:%11F%2~%f \$ "

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

eval $(opam config env)

alias reload="source ~/.zshrc"
alias em="emacsclient -c -n"
alias vi="emacsclient -t"

#Quick edit config files
alias zconfig="em ~/.zshrc"
alias econfig="em ~/.config/econfig.org"
alias sconfig="em ~/.config/sway/config"
alias hconfig="em ~/.config/hypr/hyprland.conf"

export USB="/run/media/tiago/"
export EZA_COLORS="di=1;36:da=35"

#Quick jump into frequent folders
alias phd="cd ~/phd"
alias tmp="/tmp"
alias usb="cd $USB"
alias down="cd ~/downloads"

#Add snap to bin
export PATH="/var/lib/snapd/snap/bin:$PATH"
export PATH=$PATH:./node_modules/.bin
#Emacs as default editor
export EDITOR="emacsclient -c"

#The rm command now moves files to the trash folder
alias rm="trash"
#Define screenshot directory
export XDG_SCREENSHOTS_DIR="~/Pictures/Screenshots"
#Replace ls with exa
alias ls="eza --long --header --no-user --no-permissions"
# Created by `pipx` on 2024-06-11 00:05:52
export PATH="$PATH:/home/tiago/.local/bin"
#More convinient OCaml shell
alias ocaml="rlwrap ocaml"
# #mv now prompts on overwrite
alias mv="mv -i"
#cp always copies folders
alias cp="cp -r"
#add a file to track to my git for dot files
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#Convinient command for installing packages
alias pac="sudo pacman -S"
alias emer="sudo emerge --ask"
#command to copy from terminal
alias c="xclip -sel c"
#mpc always checks port 6601
alias mpc="mpc --port=6601"
#update packages
alias update="sudo pacman -Syu"
# org mode agenda
alias agenda="emacsclient -c -n -e '(org-agenda-list)'"
#Command to add a font all the fonts in the current directory.
alias vpn="/opt/cisco/anyconnect/bin/vpnui"
function add-fonts(){
    mv *.ttf ~/.local/share/fonts
    fc-cache -f -v
}

alias pdf=em
#export OCAMLRUNPARAM=b
function ocaml-trace-disable(){
    unset OCAMLRUNPARAM
}

#clear
fastfetch

#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
