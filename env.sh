#!/bin/zsh

# Owner
export USER_NAME="Sandeep Gunduboyina"

# PATH
export EDITOR='subl -w'

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
