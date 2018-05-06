source ~/.bashrc

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

# TODO: Figure out which bash_completion|git-completion.bash should be sourced
# if [ -f ~/.git-completion.bash ]; then
#     . ~/.git-completion.bash
# fi
[[ -f /usr/local/etc/bash_completion ]] && \
    . /usr/local/etc/bash_completion
[[ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]] && \
    . /usr/local/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
## monochrome and brief 
# export PS1='[\u \w$(__git_ps1)]\$ '
## newline and brackets 
# export PS1='\n[\033[32m]\u@\h[\033[00m]:[\033[34m]\w[\033[31m]$(__git_ps1)[\033[00m]\n$ '
## 3 color
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

