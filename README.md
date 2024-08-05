# dotfiles

these are my configuration files for linux

![screenshot](https://github.com/syr1ne/dotfiles/blob/main/screenshot.png)

## setup

```bash
cp ~/.config/i3/config ~/.config/i3/config.bak
cp ./i3/config ~/.config/i3/config
cp -r ./i3status ~/.config/
cp -r ./dunst ~/.config/
cp -r ./picom ~/.config/
cp .vimrc ~/
sudo cp ./90-touchpad.conf /etc/X11/xorg.conf.d/
mkdir -p ~/.local/share/
cp -r ./fonts/ ~/.local/share/
mkdir ~/.wallpapers
sudo cp ./refresh /usr/local/bin/
```

## packages required

yay package manager:
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
```
other stuffs:
```
yay -S git code thunar thunar-archive-plugin udiskie netcat wget noto-fonts-emoji cups system-config-printer dunst lsusb openssh xarchiver unzip unrar openvpn noto-fonts flameshot playerctl auto-cpufreq lxappearance feh materia-gtk-theme papirus-icon-theme brightnessctl dnsutils xorg-xrandr picom xsel pavucontrol nm-connection-editor kitty pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc network-manager-applet
```

# extras
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
