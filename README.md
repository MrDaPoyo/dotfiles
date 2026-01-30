186;9uThese are my dotfiles!

Technologies used:

- Hyprland
- Hyprpaper
- Hyprlock
- Hypridle
- Wofi
- Kitty (unused custom theme included)
- pywal16
- VsCode wal theme (optional)
- `micro` text editor
- chromium
- Waybar
- `yt-dlp`
- vlc
- qimgv
- fastfetch

Requirements:
- Nvidia drivers

Background colour: #301616
Fonts: 
- "Departure Mono" (`yay -S otf-departure-mono`)
- "IosevkaTermSlab Nerd Font" (`sudo pacman -S ttf-iosevkatermslab-nerd`)

### Commands to run
Long pacman -S (incomplete)
```
sudo pacman -S nemo nemo-fileroller kitty hyprland gvfs fastfetch micro wofi
yay -S ttf-ms-fonts

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

git clone https://github.com/elkowar/eww && cd eww && cargo build --release --no-default-features --features=wayland && cp target/release/eww ~/.local/bin

cp -r ~/.config/_assets/Candy-Pixel-Brown-vr3 ~/.local/share/icons && hyprctl setcursor Candy-Pixel-Brown-vr3 24

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.cinnamon.desktop.default-applications.terminal exec
```


```
wal -i ~/.config/hypr/assets/beige-anime-girl-snowy-cropped.png -b 301616 --cols16 lighten --fg dfdab7
ln -s $HOME/.cache/wal/colors-discord.css $HOME/.config/vesktop/themes/pywal-vencord.theme.css
```

### Things to do
You gotta use Vencord's "ClientTheme" plugin and set its color to the background color (#301616)
---

You gotta add 
```
#IdleAction=suspend
#IdleActionSec=15min
```

to `/etc/systemd/logind.conf`
---

If you use the RPI imager, run

`sudo cp ~/.config/_scripts/rpi-imager-launch /usr/local/bin/rpi-imager-launch && sudo chmod +x /usr/local/bin/rpi-imager-launch && sudo nano /usr/share/applications/com.raspberrypi.rpi-imager.desktop` and change the `Exec` line to

```
Exec=/usr/local/bin/rpi-imager-launch %u
```

This ensures that when you click the app in wofi, the wrapper script runs, preserving the environment variables necessary for Wayland.

Also run `update-desktop-database`.
