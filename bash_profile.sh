#!/usr/bin/env bash

### Set architecture flags
export ARCHFLAGS="-arch x86_64"

### Ensure user-installed binaries take precedence
# export PATH=/usr/local/bin:$PATH

### Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
