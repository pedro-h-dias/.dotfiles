#!/bin/bash

# install latex
yay -S --noconfirm --needed texlive-most 

# TODO: install latex plugins for vim

# install inkscape
# TODO: install inkscape extension for circuits
yay -S --noconfirm --needed inkscape

# install dependencies for MATLAB
yay -S --noconfirm --needed libselinux

# install dependencies for ModelSim
yay -S --noconfirm --needed lib32-libxft

# link desktop entries for matlab and quartus
ln -sf $HOME/.dotfiles/scripts/matlab.desktop $HOME/.local/share/applications
ln -sf $HOME/.dotfiles/scripts/quartus.desktop $HOME/.local/share/applications
ln -sf $HOME/.dotfiles/scripts/modelsim.desktop $HOME/.local/share/applications

# install tools for AVR 8 bits
yay -S --noconfirm --needed avr-binutils avr-gcc avr-gdb avrdude
