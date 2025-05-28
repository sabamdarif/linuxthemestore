sudo rm -R .flatpak-builder
flatpak-builder --force-clean build/ ./com.github.debasishpatra1987.linuxthemestore.json 
flatpak build-export export build
flatpak build-bundle export com.github.debasishpatra1987.linuxthemestore.flatpak com.github.debasishpatra1987.linuxthemestore 
flatpak install --user com.github.debasishpatra1987.linuxthemestore.flatpak -y
flatpak run com.github.debasishpatra1987.linuxthemestore

