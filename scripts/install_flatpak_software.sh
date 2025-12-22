usage() {
  # Display help message
  echo 'Bazzite post-install configuration.'
  echo ''
  echo "Usage: ${0} -option"
  echo ''
  echo 'Options:'

  #echo '  -2, --repos    Setup official and third-party repositories.'
  #echo '  -3, --prune    Remove unneeded applications.'
  #echo '  -4, --extra    Install additional applications.'
  #echo '  -5, --fonts    Install Microsoft and Apple fonts.'
  #echo '  -6, --menus    Configure custom menu entries.'
  #echo '  -7, --kderc    Install custom KDE profile.'
  #echo '  -8, --users    Apply custom KDE profile for existing users.'
  #echo '  -9, --magic    Perform all of the above in one go.'
  echo '  -a, --all             To install all Packages.'
  echo '  -h, --help            Show this message.'
}

install_flatpak_software() {
    # vscode spotify krita gimp
    flatpak install flathub \
        org.kde.krita \
        com.visualstudio.code \
        org.gimp.GIMP \
        -y
}

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
  -a|--all) 
    install_flatpak_software
    exit 0
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