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

# Prompt
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
add-zsh-hook precmd vcs_info

# Configure vcs_info formats - note sensitivity to single / double quotes
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats "%b%u"
# Hook to detect dirty status
zstyle ':vcs_info:git:*' hooks git-untracked
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "+"
zstyle ':vcs_info:git:*' unstagedstr "*"

# Suggested prompt user@host:path %
# PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '
# Git oriented prompt. No user@host. Just path and branch.
setopt prompt_subst
PROMPT='%F{blue}%~%f %F{green}(${vcs_info_msg_0_})%F{white}%# '

