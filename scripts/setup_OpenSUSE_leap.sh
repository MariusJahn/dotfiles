echo "setup OpenSUSE leap..."

# Update and install current software
sudo zypper refresh
sudo zypper update -y

# Install git, zsh, neovim, curl
sudo zypper install -y git zsh neovim curl

# switch to zsh as default shell
chsh -s $(which zsh)


echo "done!"
echo "Please log out and log back in to start using zsh as your default shell."
echo "Then run the following commands to set up your dotfiles:"
echo "git clone https://github.com/mariusjahn/dotfiles.git ~/.dotfiles"
