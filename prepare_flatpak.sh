sudo rm -R .flatpak-builder
cd flatpak
flatpak-builder --force-clean build/ ./io.github.debasishpatra1987.linuxthemestore.yml
flatpak build-export export build
flatpak build-bundle export io.github.debasishpatra1987.linuxthemestore.flatpak io.github.debasishpatra1987.linuxthemestore 
flatpak install --user io.github.debasishpatra1987.linuxthemestore.flatpak -y
flatpak run io.github.debasishpatra1987.linuxthemestore

flatpak uninstall --user io.github.debasishpatra1987.linuxthemestore -y


