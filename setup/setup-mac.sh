#!/usr/bin/env bash
### Reference:
# https://dotfiles.github.io/
# https://bitbucket.org/j/dotfiles
# https://github.com/christiannaths/dotfiles
# https://github.com/dmytro/dotfiles
# https://github.com/craigcitro/craigcitro-dotfiles

# sudo chmod +x setup-mac.sh ## ./setup-mac.sh

set -o errexit
set -euf -o pipefail
set -o nounset

sudo -v

SETUP_HOME="$HOME/env/setup"

export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
if [ "$OS" = "darwin" ]; then
    export ARCHFLAGS="-arch x86_64"
else
  echo 'ERROR: Not OSX!'
  exit 1
fi

### Ensure setup is correct
if [[ "$PWD" == $SETUP_HOME ]]; then
  echo "Correct PWD and location for env dir"
  cd ..
else
  echo "ERROR: Incorrect PWD or location for 'env' dir. Move 'env' dir to $HOME and cd to $HOME/env/setup to run setup-mac.sh"
  exit 1
fi

### Setup bashrc and profile
if ! egrep -q '/env/bash_profile.sh' "$HOME/.bash_profile"; then
  echo "
### Load bash_profile.sh
source $HOME/env/bash_profile.sh

# Load .bashrc if it exists
test -f $HOME/.bashrc && source $HOME/.bashrc
" >> $HOME/.bash_profile
fi

if ! egrep -q '/env/bashrc.sh' "$HOME/.bashrc"; then
echo "
### Load bashrc.sh
source $HOME/env/bashrc.sh
" >> $HOME/.bashrc
fi


### Install Xcode
[ -z `xcode-select -p` ] && xcode-select --install

### Install Homebrew
[ ! -f /usr/local/bin/brew ] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
alias brew="/usr/local/bin/brew"
brew install caskroom/cask/brew-cask

### Basics
brew install vcprompt
brew install grc
brew install wget
brew install htop
brew install ssh-copy-id

### Development
brew install mysql
brew install awscli
# brew install go
# brew install tmux

### Bash completion
brew install bash-completion
brew tap homebrew/completions # REQUIRES insert into bash_profile

brew install brew-cask-completion
brew install open-completion
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion
# brew install vagrant-completion

### Install Atom
source $SETUP_HOME/atom-setup.sh

### Get software
source $SETUP_HOME/install-software.sh

### Git setup
source $SETUP_HOME/git-setup.sh

### Setup NodeJS
source $SETUP_HOME/node-setup.sh

### Setup Python
source $SETUP_HOME/python-setup.sh

### Shell
source $SETUP_HOME/shell-setup.sh


brew update
brew cleanup
brew doctor
