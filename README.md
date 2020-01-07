### About
My dotfiles and system setup, meant to be compatible with Manjaro-i3
### Requirements
- i3 locking
    - `sudo pacman -S i3lock xss-lock`
- Iosevka (terminal + polybar), Font Awesome (glyps in polybar)
    - `yay ttf-iosevka ttf-font-awesome`
- polybar
    - `sudo pacman -S polybar`
- zathura
    - `sudo pacman -S zathura zathura-pdf-mupdf`
- vim + Vundle.vim
    - `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- zsh
    - `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- termite
    - `sudo pacman -S termite`
- pywal
    - `sudo pacman -S python-pip`
    - `sudo pip3 install pywal`
    - `wal --theme base16-nord`
- feh
    - `sudo pacman -S feh`
- redshift
    - `sudo pacman -S redshift`
- bumblebee
    - `sudo mhwd -a pci nonfree 0300`
    - `sudo mhwd -r pci video-linux`
- tlp
    - `sudo pacman -S powertop tlp`
    - `sudo tlp start`
- Backlight (xbacklight)
    - `sudo pacman -S xorg-xbacklight`
- LaTeX dependencies
    - `sudo pacman -S texlive-most`
- Dropbox

### Other
- Tick "Hardware clock in local time zone" in Manjaro settings
