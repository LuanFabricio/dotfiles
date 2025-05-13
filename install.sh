#!/bin/bash

# basic
sudo pacman -S gnome-terminal chromium wlsunset tmux neovim vim git curl ninja cmake ripgrep

# games
# enable multilib https://wiki.archlinux.org/title/Official_repositories#multilib
sudo pacman -s steam lutris wine

# utils tools
sudo pacman -S evince nautilus obs vlc gimp

# others
sudo pacman -S discord flameshot filezilla

# Lazy vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
