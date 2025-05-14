#!/bin/bash

# basic
sudo pacman -S gnome-terminal chromium wlsunset tmux neovim vim git curl ninja cmake ripgrep

# games
# enable multilib https://wiki.archlinux.org/title/Official_repositories#multilib
sudo pacman -S steam lutris wine winetricks

# utils tools
sudo pacman -S evince nautilus obs vlc gimp rofi

# others
sudo pacman -S discord flameshot filezilla rim slurp wl-clipboard

# Lazy vim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
