# ~/.zshrc

# Enable colored ls using macOS BSD defaults
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases for ls with color and common flags
alias ls='ls -GFh'
alias ll='ls -Gl'
alias la='ls -Ga'

gitupdate() {
    if git show-ref --verify --quiet refs/heads/main; then
        git checkout main
        git pull upstream main --ff-only
    elif git show-ref --verify --quiet refs/heads/master; then
        git checkout master
        git pull upstream master --ff-only
    else
        echo "Neither 'main' nor 'master' branch exists in this repository."
        return 1
    fi
}

# Enable tab completion
autoload -Uz compinit
compinit

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Prompt (clean, visible, easily tuned)
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '

