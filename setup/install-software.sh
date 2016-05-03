#!/usr/bin/env bash

### Assume cask is installed
set -o errexit
set -euf -o pipefail
set -o nounset

### General
brew cask install google-chrome
brew cask install spotify
# brew cask install dropbox

### Utilities
brew cask install alfred
brew cask install fluid
brew cask install controlplane

### Development
brew cask install iterm2
brew cask install java
brew cask install slack
brew cask install dockertoolbox
brew cask info vagrant
brew cask info vagrant-manager
# brew cask install textexpander
# brew cask install xquartz

### Text editors
brew cask install atom
# brew cask install aquamacs
# brew cask install sublime-text
# brew cask install macvim

### Graphics editors
# brew cask install gimp
# brew cask install inkscape

### Data
# brew cask info nodebox
# brew cask install sequel-pro
