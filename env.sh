#!/bin/zsh

# Owner
export USER_NAME="Sandeep Gunduboyina"

# PATH
export PATH="~/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export ANDROID_HOME="/usr/local/opt/android-sdk"
export EDITOR='subl -w'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

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
