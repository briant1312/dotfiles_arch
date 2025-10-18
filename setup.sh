#! /bin/bash

# install packages
cat ~/.dotfiles/packages | while read package; do sudo pacman -S --noconfirm --needed $package; done

# create config directory
mkdir ~/.config 2>/dev/null

# remove any existing config files
rm -rf ~/.config/awesome
rm ~/.bashrc
rm -rf ~/.config/alacritty
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/Documents/Scripts
rm ~/.config/picom.conf
sudo rm -rf /usr/share/sddm/themes

# link config files to dotfiles directory
ln -sf ~/.dotfiles/awesome ~/.config/awesome
ln -sf ~/.dotfiles/bashrc ~/.bashrc
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/rofi ~/.config/rofi
ln -sf ~/.dotfiles/Scripts ~/Documents/Scripts
ln -sf ~/.dotfiles/picom.conf ~/.config/picom.conf
sudo cp -r ~/.dotfiles/themes /usr/share/sddm/themes

# change base sddm theme
sddm_default_conf_file="/usr/lib/sddm/sddm.conf.d/default.conf"
search_text="Current="
new_text="Current=sddm-astronaut-theme"
sudo sed -i "s|^$search_text.*|$new_text|" $sddm_default_conf_file

# install brave browser
mkdir ~/packages 2>/dev/null
rm -rf ~/packages/yay
cd ~/packages
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
curl -fsS https://dl.brave.com/install.sh | sh

# install xautolock
yay -S --noconfirm --needed xautolock

echo "setup complete"
