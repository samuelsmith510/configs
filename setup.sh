#!/bin/bash

# Clear out all other previous configs
rm -f ~/.emacs.d/init.el
rm -f ~/.config/i3/config
rm -f ~/.bashrc

# Install Emacs config and directory
mkdir -p ~/.emacs.d
ln -s `readlink -f init.el` ~/.emacs.d/init.el

# Install i3 and directory
mkdir -p ~/.config/i3/
ln -s `readlink -f i3_config` ~/.config/i3/config

# Install bash configuration
ln -s `readlink -f bashrc` ~/.bashrc

# Install xmodmap configuration
ln -s `readlink -f xmodmap` ~/.Xmodmap

# Install git configuration
ln -s `readlink -f gitignore` ~/.gitignore_global


# Apply configs
source ~/.bashrc
i3-msg restart
git config --global core.excludesfile ~/.gitignore_global

echo "Setup applied successfully"
