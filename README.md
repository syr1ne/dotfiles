# dotfiles

these are my configuration files for linux

![screenshot](https://github.com/syr1ne/dotfiles/blob/main/screenshot.png)

## packages required

yay package manager:
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
```
other stuffs:
```
yay -S git code thunar thunar-archive-plugin udiskie gnu-netcat wget noto-fonts-emoji cups system-config-printer dunst openssh xarchiver unzip unrar noto-fonts flameshot playerctl auto-cpufreq lxappearance feh materia-gtk-theme papirus-icon-theme brightnessctl dnsutils xorg-xrandr picom xsel pavucontrol nm-connection-editor alacritty pipewire-pulse network-manager-applet blueman bluez bluez-utils gvfs
```

## setup

```bash
cp ~/.config/i3/config ~/.config/i3/config.bak
cp ./i3/config ~/.config/i3/config
cp -r ./i3status ~/.config/
cp -r ./dunst ~/.config/
cp -r ./picom ~/.config/
cp -r ./alacritty ~/.config/
cp .vimrc ~/
sudo cp ./90-touchpad.conf /etc/X11/xorg.conf.d/
mkdir -p ~/.local/share/
mkdir ~/.wallpapers
```

## things to do

```
sudo auto-cpufreq --install
systemctl enable --now preload
systemctl enable --now auto-cpufreq
systemctl enable --now bluetooth
``` 

change the theme using `lxappearance` to materia

## extras
there are extra configuration files for DE.

```
sudo cp ./backups/user-dirs.defaults /etc/xdg/user-dirs.defaults
cp ./backups/user-dirs.dirs ~/.config/user-dirs.dirs
```

pbcopy and pbpaste for linux: install `xsel` and add below lines in your `.bashrc` file.
```
alias pbcopy="xsel -i -b"
alias pbpaste="xsel -o -b"
```

## custom scripts
custom scripts in `./customScripts/` directory

```
sudo cp ./customScripts/* /usr/local/bin/
```
