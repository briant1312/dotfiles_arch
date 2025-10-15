#! /bin/bash

# install packages
cat ~/.dotfiles/packages | while read package; do sudo pacman -S --noconfirm $package; done

# create config directory
mkdir ~/.config 2>/dev/null

# remove any existing config files
rm -rf ~/.config/awesome
rm ~/.bashrc
rm -rf ~/.config/alacritty
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/Documents/Scripts
rm -rf /usr/share/sddm/themes

# link config files to dotfiles directory
ln -sf ~/.dotfiles/awesome ~/.config/awesome
ln -sf ~/.dotfiles/bashrc ~/.bashrc
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/rofi ~/.config/rofi
ln -sf ~/.dotfiles/Scripts ~/Documents/Scripts
ln -sf ~/.dotfiles/themes /usr/share/sddm/themes

echo "setup complete"
