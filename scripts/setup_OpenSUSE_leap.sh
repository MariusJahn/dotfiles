# Operating system
OS=$(hostnamectl | grep "Operating System")

VERSION="15.6"

# Current directory
CWD=$(pwd)

# Existing users
USERS="$(ls -A /home)"

# Download mirrors
MIRROR="http://download.opensuse.org"
NVIDIA="https://download.nvidia.com"
PACKMAN="http://ftp.gwdg.de/pub/linux/misc/packman/suse"
DVDCSS="http://opensuse-guide.org/repo"
KDEXTRA="https://download.opensuse.org/repositories/KDE:/Extra"
RECODE="https://download.opensuse.org/repositories/home:/manfred-h"
VAGRANT="https://download.opensuse.org/repositories/Virtualization:/vagrant"
MICROLINUX="https://www.microlinux.fr/download"

usage() {
  # Display help message
  echo 'OpenSUSE Leap KDE post-install configuration.'
  echo ''
  echo "Usage: ${0} -option"
  echo ''
  echo 'Options:'
  echo '  -1, --system-update   Install System Updates.'
  echo '  -2, --shell           Configure zsh.'
  echo '  -3, --desktop         Configure Desktop.'

  #echo '  -2, --repos    Setup official and third-party repositories.'
  #echo '  -3, --prune    Remove unneeded applications.'
  #echo '  -4, --extra    Install additional applications.'
  #echo '  -5, --fonts    Install Microsoft and Apple fonts.'
  #echo '  -6, --menus    Configure custom menu entries.'
  #echo '  -7, --kderc    Install custom KDE profile.'
  #echo '  -8, --users    Apply custom KDE profile for existing users.'
  #echo '  -9, --magic    Perform all of the above in one go.'
  echo '  -h, --help            Show this message.'
}

# ==================
# Basic System Setup
# ==================


# Nvidia Drivers
# themes
# workspace

install_system_updates() {
  zypper refresh
  zypper update -y
}

configure_shell() {
  # Install git, zsh
  zypper install -y git zsh

  # switch to zsh as default shell
  chsh -s $(which zsh)

  # Install oh-my-zsh or starship
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # add zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

configure_kde() {
#~/.config/kdeglobals — general KDE settings
#~/.config/plasmarc — Plasma shell settings
#~/.config/kwinrc — window manager (KWin) settings
#~/.config/systemsettingsrc — KDE system settings



}


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
#zypper install -y neovim

# python
# gitkraken
# docker
# vscode
# bruno / postman

# Install nvm (node version manager)
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# install nodejs
#nvm install node

# ==================
# Creative Tools
# ==================

# DavinciResolve
# GIMP / Photopea
# DJ Tools / mixx
# 

#echo "done!"
#echo "Please log out and log back in to start using zsh as your default shell."
#echo "Then run the following commands to set up your dotfiles:"
#echo "git clone https://github.com/mariusjahn/dotfiles.git ~/.dotfiles"

# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root.' >&2
  exit 1
fi

# Check parameters.
if [[ "${#}" -ne 1 ]]
then
  usage
  exit 1
fi
OPTION="${1}"
case "${OPTION}" in
  -1|--system-update) 
    install_system_updates
    ;;
  -2|--shell) 
    configure_shell
    ;;
  -h|--help) 
    usage
    exit 0
    ;;
  ?*) 
    usage
    exit 1
esac

exit 0