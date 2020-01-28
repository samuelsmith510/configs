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

echo "Setup applied successfully"
