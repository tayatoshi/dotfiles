#!/bin/bash
set -euxo pipefail

DIRCONFIG=~/.config

if [ ! -d $DIRCONFIG ]; then
  echo 'mkdir $DIRCONFIG'
  mkdir $DIRCONFIG
fi

if [ ! -d $DIRCONFIG/nvim ]; then
  ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
fi

if [ ! -d $DIRCONFIG/fish ]; then
  ln -sf ~/dotfiles/.config/fish ~/.config/fish
fi

ln -sf ~/dotfiles/.config/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.Rprofile ~/.Rprofile
echo '---SymLink Done.---'
