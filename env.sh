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

eval "$(rbenv init -)"

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

alias stackup='cd ~/workspace/swarmfiles/development/compose/ && sh roll_stack.sh && cd -'
alias stackdown='cd ~/workspace/swarmfiles/development/compose/ && docker-compose stop && cd -'

export PGPORT_DEV=5507
export VAULT_AUTH_KEY='9d66f7dc-9b4c-05f5-6df5-ace2ee519285'
# arcanist completions
source ~/arc/arcanist/resources/shell/bash-completion
