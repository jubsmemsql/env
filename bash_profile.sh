#!/usr/bin/env bash

### PATH
CUSTOM_PATH="~/env/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin"
PATH="$CUSTOM_PATH"
# if [ -x /usr/libexec/path_helper ]; then
#         eval `/usr/libexec/path_helper -s`
# fi
export PATH

### Set architecture flags
export ARCHFLAGS="-arch x86_64"

### Ensure user-installed binaries take precedence
# export PATH=/usr/local/bin:$PATH

### Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

### NVM - Node.js version manager
# export NVM_DIR="$HOME/.nvm"
# . "$(brew --prefix nvm)/nvm.sh"
