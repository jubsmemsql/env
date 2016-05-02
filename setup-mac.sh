#!/usr/bin/env bash

set -o errexit
set -euf -o pipefail
set -o nounset

### Get Xcode
xcode-select --install

### Get Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

### Basics
brew install wget htop ssh-copy-id

### Development
brew install git
brew install mysql
brew install awscli
# brew install go

### Git setup
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"


### Bash completion
brew install bash-completion
brew tap homebrew/completions
echo "
### Added by setup-mac.sh for bash-completion
if [ -f \$(brew --prefix)/etc/bash_completion ]; then
  source \$(brew --prefix)/etc/bash_completion
fi
" >> ~/.bash_profile

brew install brew-cask-completion
brew install open-completion
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion
# brew install vagrant-completion

### Shell
# brew install fish # https://fishshell.com/
# brew install zsh

### Setup NodeJS
brew install nvm
echo "
### Added by setup-mac.sh for nvm
export NVM_DIR=\"\$HOME/.nvm\"
source \$(brew --prefix nvm)/nvm.sh
" >> ~/.bashrc

### Python
# https://hackercodex.com/guide/python-development-environment-on-mac-osx/
brew install python
# brew install python3
pip install virtualenv
echo "
### Added by setup-mac.sh for virtualenv
export PIP_REQUIRE_VIRTUALENV=true
" >> ~/.bashrc
pip install virtualenvwrapper
pip install fabric
pip install pandas

### Get software
brew install caskroom/cask/brew-cask
./install-software.sh
