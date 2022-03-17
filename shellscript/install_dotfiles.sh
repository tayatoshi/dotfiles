
set -euxo pipefail

# test='~/Desktop/test'
# echo $test
DIRCONFIG=~/.config

if [ ! -d $DIRCONFIG ]; then
  echo 'mkdir $DIRCONFIG'
  mkdir $DIRCONFIG
fi
#
if [ ! -d $DIRCONFIG/nvim ]; then
  ln -sf ~/dotfiles/nvim ~/.config/nvim
fi

if [ ! -d $DIRCONFIG/fish ]; then
  ln -sf ~/dotfiles/fish ~/.config/fish
fi

ln -sf ~/dotfiles/starship/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/R/.Rprofile ~/.Rprofile
echo '---SymLink Done.---'
