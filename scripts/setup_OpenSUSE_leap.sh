echo "setup OpenSUSE leap..."

# ==================
# Basic System Setup
# ==================

# Nvidia Drivers
# themes
# workspace


# Update and install current software
sudo zypper refresh
sudo zypper update -y

# Install git, zsh, curl
sudo zypper install -y git zsh curl

# switch to zsh as default shell
chsh -s $(which zsh)

# Install oh-my-zsh or starship
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# add zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ==================
# Daily Apps
# ==================

# spotify
# discord
# steam
# thunderbird
# keepassxc
# dropbox
# citrix
# vlc
# firefox
# LibreOffice

# ==================
# Development Tools
# ==================

# install neovim
sudo zypper install -y neovim

# python
# gitkraken
# docker
# vscode
# bruno / postman

# Install nvm (node version manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# install nodejs
nvm install node

# ==================
# Creative Tools
# ==================

# DavinciResolve
# GIMP / Photopea
# DJ Tools
# 

echo "done!"
echo "Please log out and log back in to start using zsh as your default shell."
echo "Then run the following commands to set up your dotfiles:"
echo "git clone https://github.com/mariusjahn/dotfiles.git ~/.dotfiles"
