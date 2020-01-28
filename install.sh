#!/usr/bin/env bash

GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
MAGENTA=`tput setaf 5`
RST=`tput set sgr0`

function info {
	echo "[${GREEN}*${RST}] $@"
}

info "installing ${MAGENTA}dunst${RST} configuration"
mkdir -p ~/.config/dunst/
ln -s $HOME/.dotfiles/config/dunst/dunstrc $HOME/.config/dunst/dunstrc

info "installing ${MAGENTA}polybar${RST} configuration"
mkdir -p ~/.config/polybar/
ln -s $HOME/.dotfiles/config/polybar/config $HOME/.config/polybar/config

info "installing ${MAGENTA}i3${RST} configuration"
mkdir -p ~/.config/i3
ln -s $HOME/.dotfiles/config/i3/config $HOME/.config/i3/config

info "installing ${MAGENTA}X windows${RST} configuration"
ln -s $HOME/.dotfiles/config/xinitrc $HOME/.xinitrc
ln -s $HOME/.dotfiles/config/Xmodmap $HOME/.Xmodmap
ln -s $HOME/.dotfiles/config/Xresources $HOME/.Xresources

info "installing ${MAGENTA}tmux${RST} configuration"
ln -s $HOME/.dotfiles/config/tmux/oh-my-tmux/.tmux.conf $HOME/.tmux.conf
ln -s "$HOME/.dotfiles/config/tmux/tmux.conf.local" "$HOME/.tmux.conf.local"

info "installing ${MAGENTA}zsh${RST} configuration"
ln -s $HOME/.dotfiles/config/zsh/ohmyzsh $HOME/.oh-my-zsh
ln -s $HOME/.dotfiles/config/zsh/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/config/zsh/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
ln -s $HOME/.dotfiles/config/zsh/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -s $HOME/.dotfiles/config/zsh/zui $HOME/.oh-my-zsh/custom/plugins/zui

