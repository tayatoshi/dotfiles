## 設定ファイル読み込み
#
# alias
source ~/.config/fish/alias.fish

# iterm2 shell integration
source ~/.iterm2_shell_integration.fish

## editorをnvimに設定
set -x EDITOR nvim
set -x SVN_EDITOR nvim

## 環境変数
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
set XDG_CONFIG_HOME '~/.config'

## cdしたあとで、自動的に ls -Gする
function cd
    builtin cd $argv
	ls -a
end

## pyenvのpath指定
status --is-interactive; and . (pyenv init -| psub)

#python startup file
set --export PYTHONSTARTUP ~/.pythonrc

# 最初の挨拶みたいなのを消す
set fish_greeting ""

