# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

. `brew --prefix`/etc/profile.d/z.sh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-completions
)

# reloading compleition
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

