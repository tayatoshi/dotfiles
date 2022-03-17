# -------------------------------------
# 環境変数
# -------------------------------------

# SSHで接続した先で日本語が使えるようにする
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=ja_JP.UTF-8
export LANGUAGE=ja_JP.UTF-8

# vimでneovimを起動
alias vim='nvim'

#treeコマンドで日本語表示&不可視ファイル可視化
alias tree='tree -LNaC 2'

# 文字コードをUTF-8に設定
export LANG=ja_JP.UTF-8

# -------------------------------------
# zshのオプション
# -------------------------------------
#nvimの設定ファイル
export XDG_CONFIG_HOME=~/.config

## 補完機能の強化
autoload -U compinit
compinit

## 補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## 入力しているコマンド名が間違っている場合にもしかして：を出す。
setopt correct

## ビープを鳴らさない
setopt nobeep

## 色を使う
setopt prompt_subst


# -------------------------------------
# その他
# -------------------------------------

#ESCキーの反応を早くする
KEYTIMEOUT=1

# lsを自動的に ls -Gにする
alias ls="ls -G"

# color変更
export LSCOLORS=exfxcxdxbxegedabagacad

# cdしたあとで、自動的に ls -Gする
function chpwd() { ls -G }

## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# -------------------------------------
# シェルとtmuxの連携
# -------------------------------------
# function is_exists() { type "$1" >/dev/null 2>&1; return $?; }
# function is_osx() { [[ $OSTYPE == darwin* ]]; }
# function is_screen_running() { [ ! -z "$STY" ]; }
# function is_tmux_runnning() { [ ! -z "$TMUX" ]; }
# function is_screen_or_tmux_running() { is_screen_running || is_tmux_runnning; }
# function shell_has_started_interactively() { [ ! -z "$PS1" ]; }
# function is_ssh_running() { [ ! -z "$SSH_CONECTION" ]; }
#
# function tmux_automatically_attach_session()
# {
#     if is_screen_or_tmux_running; then
#         ! is_exists 'tmux' && return 1
#
#         if is_tmux_runnning; then
#             # echo "${fg_bold[red]} _____ __  __ _   ___  __ ${reset_color}"
#             # echo "${fg_bold[red]}|_   _|  \/  | | | \ \/ / ${reset_color}"
#             # echo "${fg_bold[red]}  | | | |\/| | | | |\  /  ${reset_color}"
#             # echo "${fg_bold[red]}  | | | |  | | |_| |/  \  ${reset_color}"
#             # echo "${fg_bold[red]}  |_| |_|  |_|\___//_/\_\ ${reset_color}"
#             # 上のtmuxを表示したかったら先頭の#を消す
#         elif is_screen_running; then
#             echo "This is on screen."
#         fi
#     else
#         if shell_has_started_interactively && ! is_ssh_running; then
#             if ! is_exists 'tmux'; then
#                 echo 'Error: tmux command not found' 2>&1
#                 return 1
#             fi
#
#             if tmux has-session >/dev/null 2>&1 && tmux list-sessions | grep -qE '.*]$'; then
#                 # detached session exists
#                 tmux list-sessions
#                 echo -n "Tmux: attach? (y/N/num) "
#                 read
#                 if [[ "$REPLY" =~ ^[Yy]$ ]] || [[ "$REPLY" == '' ]]; then
#                     tmux attach-session
#                     if [ $? -eq 0 ]; then
#                         echo "$(tmux -V) attached session"
#                         return 0
#                     fi
#                 elif [[ "$REPLY" =~ ^[0-9]+$ ]]; then
#                     tmux attach -t "$REPLY"
#                     if [ $? -eq 0 ]; then
#                         echo "$(tmux -V) attached session"
#                         return 0
#                     fi
#                 fi
#             fi
#
#             if is_osx && is_exists 'reattach-to-user-namespace'; then
#                 # on OS X force tmux's default command
#                 # to spawn a shell in the user's namespace
#                 tmux_config=$(cat $HOME/.tmux.conf <(echo 'set-option -g default-command "reattach-to-user-namespace -l $SHELL"'))
#                 tmux -f <(echo "$tmux_config") new-session && echo "$(tmux -V) created new session supported OS X"
#             else
#                 tmux new-session && echo "tmux created new session"
#             fi
#         fi
#     fi
# }
#
# tmux_automatically_attach_session

# -------------------------------------
# Promptのオプション
# -------------------------------------


# プロンプトに色を付ける
autoload -Uz vcs_info
autoload -U colors
colors

# PROMPT変数内で変数参照
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{red}!" #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f" #通常
zstyle ':vcs_info:*' actionformats '%F{yellow}[%b(%a)]%f' #rebase 途中,merge コンフリクト等 formats 外の表示

# %b ブランチ情報
# %a アクション名(mergeなど)
# %c changes
# %u uncommit

# プロンプト表示直前に vcs_info 呼び出し
precmd () { vcs_info }

# 一般ユーザ時
#tmp_prompt="%{${fg[cyan]}%}%n%#  %{${reset_color}%}"
tmp_prompt='%{${fg[green]}%}taya${vcs_info_msg_0_}%{${fg[green]}%}%}$%{${reset_color}%} '
tmp_prompt2="%{${fg[green]}%}%_> %{${reset_color}%} "
tmp_rprompt="%{${fg[cyan]}%}[%~]%{${reset_color}%}"
tmp_sprompt="%{${fg[yellow]}%}%r is correct? [Yes, No, Abort, Edit]:%{${reset_color}%}"

# rootユーザ時(太字にし、アンダーバーをつける)
if [ ${UID} -eq 0 ]; then
  tmp_prompt="%B%U${tmp_prompt}%u%b"
  tmp_prompt2="%B%U${tmp_prompt2}%u%b"
  tmp_rprompt="%B%U${tmp_rprompt}%u%b"
  tmp_sprompt="%B%U${tmp_sprompt}%u%b"
fi

PROMPT=$tmp_prompt    # 通常のプロンプト
PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
RPROMPT=$tmp_rprompt  # 右側のプロンプト
SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト

# SSHログイン時のプロンプト
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
  PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
;

#rコマンドoff
disable r

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi

# iterm2 shell integration
source ~/.iterm2_shell_integration.`basename $SHELL`

#python startup file
PYTHONSTARTUP=~/.pythonrc.py
export PYTHONSTARTUP
