
brew install git

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global user.name "Justin Benson"
# git config --global user.email "justin@memsql.com"
# git config --global user.email "tinborn@gmail.com"
git config --global credential.helper osxkeychain

# Atom package
git config --global core.editor "atom --wait"
apm install git-plus
apm install git-time-machine
apm install merge-conflicts
