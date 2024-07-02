#! /bin/bash

# install packages
sudo pacman -Sy firefox neovim nodejs kitty awesome xclip xcompmgr feh npm rofi -y

# make directories
mkdir ~/.config
mkdir ~/.config/kitty
mkdir ~/.config/awesome
mkdir ~/.config/rofi

# remove any existing config files
rm -rf ~/.config/awesome
rm ~/.bashrc
rm -rf ~/.config/kitty
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/Documents/Scripts

# link config files to dotfiles directory
ln -sf ~/.dotfiles/awesome ~/.config/awesome
ln -sf ~/.dotfiles/bashrc ~/.bashrc
ln -sf ~/.dotfiles/kitty ~/.config/kitty
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/rofi ~/.config/rofi
ln -sf ~/.dotfiles/Scripts ~/Documents/Scripts
