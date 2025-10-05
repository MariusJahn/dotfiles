echo "copy dotfiles into git repo..."

# nvim
cp -r ~/.config/nvim ~/ssd/repositories/dotfiles/nvim

# bash
cp -r ~/.bashrc ~/ssd/repositories/dotfiles/bash

# zsh
cp -r ~/.config/zsh ~/ssd/repositories/dotfiles/.config
cp -r ~/.zshrc ~/.zshrc.work ~/.zshrc.personal ~/ssd/repositories/dotfiles/zsh

# kde
cp -r ~/.config/kdeglobals ~/.config/kwinrc ~/.config/plasmarc \
      ~/.config/plasmashellrc ~/.local/share/konsole ~/.local/share/plasma ~/ssd/repositories/dotfiles/kde


echo "done!"