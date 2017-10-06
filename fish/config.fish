# # -------------------------------------
# # 環境変数
# # -------------------------------------
#
# # SSHで接続した先で日本語が使えるようにする
# export LC_CTYPE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
# export LANG=ja_JP.UTF-8
# export LANGUAGE=ja_JP.UTF-8
#
# vimでneovimを起動
alias vim='nvim'

#treeコマンドで日本語表示&不可視ファイル可視化
alias tree='tree -LNaC 2'

# # 文字コードをUTF-8に設定
# export LANG=ja_JP.UTF-8
#
# # -------------------------------------
# # zshのオプション
# # -------------------------------------
# #nvimの設定ファイル
# export XDG_CONFIG_HOME=~/.config
#
# ## 補完機能の強化
# autoload -U compinit
# compinit
#
# ## 補完時に大文字小文字を区別しない
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#
# ## 入力しているコマンド名が間違っている場合にもしかして：を出す。
# setopt correct
#
# ## ビープを鳴らさない
# setopt nobeep
#
# ## 色を使う
# setopt prompt_subst
#
#
# # -------------------------------------
# # その他
# # -------------------------------------
#
# #ESCキーの反応を早くする
# KEYTIMEOUT=1
#
# lsを自動的に ls -Gにする
alias ls="ls -G"
#
# # color変更
# export LSCOLORS=exfxcxdxbxegedabagacad
#
# # cdしたあとで、自動的に ls -Gする
function cd
    builtin cd $argv; and ls
end
#
# ## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
# setopt auto_param_slash
#
#
# # -------------------------------------
# # Promptのオプション
# # -------------------------------------
#
#
# # プロンプトに色を付ける
# autoload -Uz vcs_info
# autoload -U colors
# colors
#
# # PROMPT変数内で変数参照
# setopt prompt_subst
#
# zstyle ':vcs_info:git:*' check-for-changes true #formats 設定項目で %c,%u が使用可
# zstyle ':vcs_info:git:*' stagedstr "%F{red}!" #commit されていないファイルがある
# zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+" #add されていないファイルがある
# zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f" #通常
# zstyle ':vcs_info:*' actionformats '%F{yellow}[%b(%a)]%f' #rebase 途中,merge コンフリクト等 formats 外の表示
#
# # %b ブランチ情報
# # %a アクション名(mergeなど)
# # %c changes
# # %u uncommit
#
# # プロンプト表示直前に vcs_info 呼び出し
# precmd () { vcs_info }
#
# # 一般ユーザ時
# #tmp_prompt="%{${fg[cyan]}%}%n%#  %{${reset_color}%}"
# tmp_prompt='%{${fg[green]}%}taya${vcs_info_msg_0_}%{${fg[green]}%}%}$%{${reset_color}%} '
# tmp_prompt2="%{${fg[green]}%}%_> %{${reset_color}%} "
# tmp_rprompt="%{${fg[cyan]}%}[%~]%{${reset_color}%}"
# tmp_sprompt="%{${fg[yellow]}%}%r is correct? [Yes, No, Abort, Edit]:%{${reset_color}%}"
#
# # rootユーザ時(太字にし、アンダーバーをつける)
# if [ ${UID} -eq 0 ]; then
#   tmp_prompt="%B%U${tmp_prompt}%u%b"
#   tmp_prompt2="%B%U${tmp_prompt2}%u%b"
#   tmp_rprompt="%B%U${tmp_rprompt}%u%b"
#   tmp_sprompt="%B%U${tmp_sprompt}%u%b"
# fi
#
# PROMPT=$tmp_prompt    # 通常のプロンプト
# PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
# RPROMPT=$tmp_rprompt  # 右側のプロンプト
# SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト
#
# # SSHログイン時のプロンプト
# [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
#   PROMPT="%{${fg[white]}%}${HOST%%.*} ${PROMPT}"
# ;
#
# #rコマンドoff
# disable r
#
# # pyenv
# export PYENV_ROOT="${HOME}/.pyenv"
# if [ -d "${PYENV_ROOT}" ]; then
#     export PATH=${PYENV_ROOT}/bin:$PATH
#     eval "$(pyenv init -)"
# fi
status --is-interactive; and . (pyenv init -| psub)
#
# # iterm2 shell integration
# source ~/.iterm2_shell_integration.`basename $SHELL`
#
# #python startup file
# PYTHONSTARTUP=~/.pythonrc.py
# export PYTHONSTARTUP
