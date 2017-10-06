source ~/.config/fish/alias.fish

# # -------------------------------------
# # 環境変数
# # -------------------------------------
#
# SSHで接続した先で日本語が使えるようにする
# set -x LC_CTYPE=en_US.UTF-8
# set -x LC_ALL=en_US.UTF-8
# set -x LANG=ja_JP.UTF-8
# set -x LANGUAGE=ja_JP.UTF-8
#
# 文字コードをUTF-8に設定
set -x LANG ja_JP.UTF-8

#nvimの設定ファイル
# set XDG_CONFIG_HOME=~/.config


# lsを自動的に ls -Gにする
alias ls="ls -G"

# # cdしたあとで、自動的に ls -Gする
function cd
    builtin cd $argv
	ls -a
end

status --is-interactive; and . (pyenv init -| psub)
#
# # iterm2 shell integration
# source ~/.iterm2_shell_integration.`basename $SHELL`
#
# #python startup file
# PYTHONSTARTUP=~/.pythonrc.py
# export PYTHONSTARTUP

# 最初の挨拶みたいなのを消す
set fish_greeting ""
