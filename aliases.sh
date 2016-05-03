#!/usr/bin/env bash

# Basic
alias ls="ls -Gp"
alias ll="ls -lh"
alias lla="ll -a"

# Git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Docker
alias de="env | grep DOCKER_"
alias dm-ls="docker-machine ls"
function dm-ip() {
  eval "$(docker-machine ip "${1:-default}")"
}
function dm-env() {
  eval "$(docker-machine env "${1:-default}")"
}
function dm-go() {
  docker-machine start ${1:-default} && \
  dm-env ${1:-default}
}
function docker-clean() {
  docker rmi -f $(docker images -q -a -f dangling=true)
}
alias drm="docker rm"
alias dps="docker ps"

# Xcode
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
