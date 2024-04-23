#dotfiles

these are my configuration files for linux

## setup

```bash
cp ~/.config/i3/config ~/.config/i3/config.bak
cp ./i3/config ~/.config/i3/config
cp -r ./i3status ~/.config/
cp -r ./dunst ~/.config/
cp -r ./kitty ~/.config/
sudo cp ./90-touchpad.conf /etc/X11/xorg.conf.d/
mkdir -p ~/.local/share/
cp -r ./fonts/ ~/.local/share/
mkdir ~/.wallpapers
```

## installation

```
yay -S git code thunar thunar-archive-plugin vlc udiskie netcat wget sublime-text-4 noto-fonts-emoji cups system-config-printer dunst lsusb openssh xarchiver unzip unrar openvpn noto-fonts flameshot playerctl auto-cpufreq lxappearance materia-gtk-theme papirus-icon-theme brave-bin brightnessctl dnsutils xorg-xrandr picom 
```
