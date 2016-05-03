#!/usr/bin/env bash

#######################################
### PATH
#######################################
CUSTOM_PATH="~/env/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin"
PATH="$CUSTOM_PATH"
# if [ -x /usr/libexec/path_helper ]; then
#         eval `/usr/libexec/path_helper -s`
# fi
export PATH
### Ensure user-installed binaries take precedence
# export PATH=/usr/local/bin:$PATH



### Set architecture flags
export ARCHFLAGS="-arch x86_64"

### Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
source $(brew --prefix)/etc/bash_completion
fi

### NVM - Node.js version manager
export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

### GRC Colorizer
if [ -f $(brew --prefix)/etc/grc.bashrc ]; then
source $(brew --prefix)/etc/grc.bashrc
fi
