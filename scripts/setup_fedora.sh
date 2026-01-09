# install libheif / heic images etc.
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y libheif-freeworld libheif-tools

# install ffmpeg for videocodecs
sudo dnf install ffmpeg --allowerasing

# eventually you have to swap vs the free version
sudo dnf swap -y ffmpeg-free ffmpeg --allowerasing

# steam is installed via repository and works just like bazzite
