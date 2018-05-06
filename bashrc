export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GIT_SSH='/usr/local/bin/ssh'

alias ls='ls -GFh'
alias ll='ls -Gl'
alias la='ls -Ga'
alias gitupdate='git checkout master && git pull upstream master --ff-only'

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
