#!/bin/bash

. $(pwd)/helpers/print.sh

#
# GitHub: https://github.com/Powerlevel9k/powerlevel9k 
#
install_powerlevel9k () {
    local dir=$HOME/.oh-my-zsh/custom/themes/powerlevel9k

    if ! [[ -d $dir ]]; then
        git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

        print_success "PowerLevel9k installed"
    else
        print_success "PowerLevel9k already installed."
    fi
}

install_powerline_fonts () {
    brew tap caskroom/fonts
    brew cask install font-meslo-nerd-font

    defaults write com.googlecode.iterm2 "Normal Font" -string $1
    defaults write com.googlecode.iterm2 "Non Ascii Font" -string $2

    echo 'POWERLEVEL9K_MODE="nerdfont-complete"' >> $HOME/.zshrc
    echo 'ZSH_THEME="powerlevel9k/powerlevel9k"' >> $HOME/.zshrc
}