# LinuxThemesStore
## _NativeWay to install linux themes on your desktop_

-  A modern desktop app for discovering, downoading Linux themes, icoirectly from Pling & Opendesktop  
- No browser required.
- Just browse, click, and beautify your desktop!

Here are some screenshots

[![Thumbnail](https://i.ibb.co/v64sy4yh/1.png)](https://i.ibb.co/mV5vZ5Z0/1.png)[![Thumbnail](https://i.ibb.co/Xhqqdd8/2.png)](https://i.ibb.co/63kkppB/2.png)

[![Thumbnail](https://i.ibb.co/DfKX8bBj/3.png)](https://i.ibb.co/k2cn9yLP/3.png)[![Thumbnail](https://i.ibb.co/k25gTmCv/4.png)](https://i.ibb.co/s9bv4WYz/4.png)

[![Thumbnail](https://i.ibb.co/V0TK6Sgg/5.png)](https://i.ibb.co/nqjWpc77/5.png)

## Installation
For Arch Linux Build is available in aur..
```sh
yay -S linuxthemestore-git
```
Flatpak package is availabel directly to install on your system as well
```sh
wget https://github.com/debasish-patra-1987/linuxthemestore/raw/refs/head/main/LinusxThemeStore.flatpak -O LinuxThemeStore.flatpak
flatpak install --user LinuxThemeStore.flatpak
```
## Manual Build
```
git clone https://github.com/debasish-patra-1987/linuxthemestore.git
```
## _Binary build_
Installation
```sh
git clone https://github.com/debasish-patra-1987/linuxthemestore.git
cd linuxthemestore
meson setup builddir --prefix=/usr
meson compile -C builddir
sudo meson install -C builddir
```
Uninstall
```
cd linuxthemestore
cd builddir
sudo ninja uninstall
```
## _Flatpak build_
Installation
```
git clone https://github.com/debasish-patra-1987/linuxthemestore.git
cd linuxthemestore
flatpak-builder --force-clean build/ com.github.debasish-patra-1987.linuxthemestore.json
flatpak build-export export build/
flatpak build-bundle export LinuxThemeStore.flatpak com.github.debasish-patra-1987.linuxthemestore
flatpak install LinuxThemeStore.flatpak
```
Uninstall
```
flatpak uninstall com.github.debasish-patra-1987.linuxthemestore 
```
## License
MIT
**Free Software, Hell Yeah!**
