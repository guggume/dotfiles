#!/bin/zsh

# Set loacale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Owner
export USER_NAME="Sandeep Gunduboyina"

# PATH
export EDITOR='subl -w'

# auto loads node version from .nvmrc file
export NVM_AUTO_USE=true

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
# arcanist to path
export PATH=$PATH:~/arc/arcanist/bin
# imagemagic
export MAGICK_HOME=/usr/local/opt/imagemagick\@6

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gg='git commit -a --amend'
alias gd='git diff'
alias go='git checkout'

# arcanist completions
source ~/arc/arcanist/resources/shell/bash-completion
