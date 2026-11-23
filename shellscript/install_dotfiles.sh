#!/bin/bash
set -euo pipefail

# このスクリプトの場所から dotfiles のルートを求める(clone 先に依存しない)
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIRCONFIG="$HOME/.config"

# 既に実体のファイル/ディレクトリがある場合は .bak に退避してからリンクを張る
link() {
  local src="$1" dest="$2"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "backup: $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
  fi
  ln -sfn "$src" "$dest"
  echo "link: $dest -> $src"
}

mkdir -p "$DIRCONFIG"

link "$DOTFILES/.config/nvim"          "$DIRCONFIG/nvim"
link "$DOTFILES/.config/fish"          "$DIRCONFIG/fish"
link "$DOTFILES/.config/starship.toml" "$DIRCONFIG/starship.toml"
link "$DOTFILES/.config/herdr"         "$DIRCONFIG/herdr"
# herdr デスクトップアプリ: ランタイムファイルが同居するためレイアウトだけをリンクする
mkdir -p "$DIRCONFIG/herdr-app/layouts"
link "$DOTFILES/.config/herdr-app/layouts/custom.json" "$DIRCONFIG/herdr-app/layouts/custom.json"
# Ghostty (macOS) は Application Support 配下の設定を読む
GHOSTTY_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"
mkdir -p "$GHOSTTY_DIR"
link "$DOTFILES/.config/ghostty/config" "$GHOSTTY_DIR/config"
link "$DOTFILES/.tmux.conf"            "$HOME/.tmux.conf"
link "$DOTFILES/.Rprofile"             "$HOME/.Rprofile"
link "$DOTFILES/changelog.config.js"   "$HOME/changelog.config.js"

echo '---SymLink Done.---'
