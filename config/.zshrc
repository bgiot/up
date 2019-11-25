# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

. `brew --prefix`/etc/profile.d/z.sh

export ZSH=$HOME/.oh-my-zsh

POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm node_version background_jobs history)

plugins=(
    git
    zsh-syntax-highlighting
    zsh-completions
)

# reloading compleition
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

