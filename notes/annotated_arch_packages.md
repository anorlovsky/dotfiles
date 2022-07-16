This is an annotated list of essential pacman packages I explicitly installed on my workstation (as of 06.03.22)
The plan is to automate their installation as part of setting up a fresh Arch.

List packages with `pacman -Qent`

# General computing
mousepad - text editor
firefox
chromium
xreader - pdf reader
redshift
libreoffice-still
nnn 
thunar
dunst - desktop notification's server (also provides dunstify - a replacement for notify-send)
remind - a plaintext reminder tool (has GUI wrapper, you can easily pair it with desktop notification utility)
obsidian


# Utils
fzf
unrar 
flameshot  - screenshots
peek - screen capture
htop
neofetch
wget
ncdu - great disk space analyzer tool

# Social
telegram-desktop


# Development
micro  - probably going to stop using it, it's kinda buggy and rough around the edges
nano 

dbeaver

man-db
man-pages 

these things should be run under docker:
    postgresql 
    redis
    docker
    docker-compose


# Terminal stuff
alacritty  - swap for suckless st or something?
nushell
exa - modern ls replacement




# System

## Desktop environment
i3
unclutter 

## Networking
iwd 
inetutils 
openbsd-netcat 
nmap 
net-tools 
usbutils


## Audio
use [pulseaudio](https://wiki.archlinux.org/title/PulseAudio)
(may be just configure alsa correctly, idk)


## Bluetooth
blueberry


## Graphics
nvidia 
nvidia-dkms

## Fonts
ttf-hack 

## Passwords
gnome-keyring
libsecret

---


# AUR
yay
kafkatool
ly - a display manager
rtl88xxau-aircrack-dkms-git - driver for my 2.4 GHz usb stick
gtk-theme-numix-solarized - TODO: how do I apply that thing?
insomnia-bin
visual-studio-code-bin
zeal - offline docs browser (for python, RFC, etc.)
rate-mirrors-bin - update pacman mirrors based on optimal download speed

# Not sure if I need that
pinta  - a drawing program like MS paint

