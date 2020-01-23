pacman -S rofi fzf thunderbird ripgrep fd neofetch zsh powerline git tmux go
pamac build ttf-font-awesome

git clone https://github.com/khaledkbadr/dotfiles.git ~/.dotfiles
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

ln -s ~/.dotfiles/.tmux.conf ~
