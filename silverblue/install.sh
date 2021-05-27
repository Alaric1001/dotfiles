FVERSION=$(rpm -E %fedora)
# Enable rpmfusion repositories
sudo rpm-ostree install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$FVERSION.noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$FVERSION.noarch.rpm

# Enable Alacritty's repository

#sudo wget https://copr.fedorainfracloud.org/coprs/pschyska/alacritty/repo/fedora-$FVERSION/pschyska-alacritty-fedora-$FVERSION.repo -O /etc/yum.repos.d/pschyska-alacritty-fedora-$FVERSION.repo

# Enable flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Change flatpak languages defaults
flatpak config --set languages "en;fr"

# Upgrade and install the base layer
rpm-ostree refresh-md &&
rpm-ostree upgrade &&
rpm-ostree install zsh vim gnome-tweak-tool materia-gtk-theme evolution &&
echo Success ! You can now reboot and start install phase 2
