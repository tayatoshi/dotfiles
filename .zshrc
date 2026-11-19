# ==========================================
# 1. 環境変数・パスの設定 (Environment Variables / PATH)
# ==========================================
export PATH="/Library/TeX/texbin:$PATH"
export LSCOLORS=exfxcxdxbxegedabagacad

# ESCキーの反応を早くする
export KEYTIMEOUT=1

# ==========================================
# 2. エリアス設定 (Aliases)
# ==========================================
alias vim='nvim'
alias ls='ls -aG'
alias cat='bat'
alias top='htop'
alias h='herdr'

# ==========================================
# 3. Zsh オプション・機能拡張 (Zsh Options)
# ==========================================
# 補完機能の強化
autoload -U compinit && compinit

# 補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# コマンド名が間違っている場合に修正候補を出す
setopt correct

# ビープ音を鳴らさない
setopt nobeep

# プロンプトでの変数・関数展開を有効にする
setopt prompt_subst

# fzfの設定 (fzfコマンドが存在する場合のみ実行)
if (( $+commands[fzf] )); then
  source <(fzf --zsh)
fi

# ==========================================
# 4. 自作関数 (Custom Functions / fzf + find)
# ==========================================

# fd: 選択したディレクトリに移動する（完全にフォルダのみを表示）
fd() {
  local preview_cmd
  if (( $+commands[tree] )); then
    preview_cmd='tree -C {} | head -20'
  else
    preview_cmd='ls -pG {} | head -20'
  fi

  local dir
  # -type d でフォルダのみに絞り、sed で先頭の "./" を消して見やすくしています
  dir=$(find . -type d -name '.git' -prune -o -type d -print 2> /dev/null | sed 's|^\./||' | fzf --preview "$preview_cmd")

  if [ -n "$dir" ]; then
    cd "$dir"
  fi
}

fdr() {
  local ws_root

  # 今VSCodeで開いているルートパスを取得（なければカレントディレクトリ）
  if [ -n "$VSCODE_CWD" ]; then
    ws_root="$VSCODE_CWD"
  elif [ -n "$WORKSPACE_FOLDER" ]; then
    ws_root="$WORKSPACE_FOLDER"
  else
    ws_root=$(pwd)
  fi

  local dir
  # VSCodeで開いているルート以下のフォルダのみをリストアップ（.gitやnode_modulesは除外して高速化）
  dir=$(find "$ws_root" -type d -name '.git' -prune -o -type d -name 'node_modules' -prune -o -type d -print 2> /dev/null | fzf)

  # フォルダが選択されたら、現在のVSCodeウィンドウで開き直す
  if [ -n "$dir" ]; then
    code -r "$dir"
  fi
}
# ==========================================
# 5. プロンプト設定 (Prompt Configuration)
# ==========================================
# ディレクトリ移動時にパス（%~）が動的に更新されるよう最適化
PROMPT=$'\n%F{10}┌─ %n@%f %B%F{6}%~%f%b\n%F{10}└❯%f '

export PATH="$HOME/.local/bin:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/taya/.docker/completions $fpath)
autoload -Uz compinit
(( ${+_comps[docker]} )) || compinit
# End of Docker CLI completions
