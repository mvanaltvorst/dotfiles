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
- nvim + vim-plug
    - `sudo pacman -S neovim`
    - `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
    - `sudo pip install pynvim python-language-server`
    - `:PlugInstall`
    - `:CocInstall coc-python`
- doom emacs
    - `git clone https://github.com/hlissner/doom-emacs ~/.emacs.d`
    - `sudo pacman -S emacs`
    - `~/.emacs.d/bin/doom install`
- gocryptfs
    - `sudo pacman -S gocryptfs`
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
    - I handle dropbox with `rclone` and `entr`
      - setup `rclone` with `rclone config`
      - this is one-way only, so only machine => Dropbox
    - `sudo pacman -S rclone entr`
    - `systemctl --user enable dropbox`
- Anki
    - `sudo pacman -S anki mpv`
- gtk theme
    - `yay oomox`

### Programming
- Rust
    - `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- Node.js
    - `sudo pacman -S nodejs npm`
- Jupyter notebook
    - `sudo pip3 install jupyter`
- GDB + radare2
    - `sudo pacman -S gdb radare2`

### Other
- Tick "Hardware clock in local time zone" in Manjaro settin
