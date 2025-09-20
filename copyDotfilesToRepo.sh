echo "copy dotfiles into git repo..."

# nvim
cp -r ~/.config/nvim /ssd/repositories/dotfiles/nvim

# bash
cp -r ~/.bashrc /ssd/repositories/dotfiles/bash

# zsh
cp -r ~/.zshrc /ssd/repositories/dotfiles/zsh
cp -r ~/.zshrc.work /ssd/repositories/dotfiles/zsh
cp -r ~/.zshrc.personal /ssd/repositories/dotfiles/zsh

echo "done!"