## 設定ファイル読み込み
#
# alias
source ~/.config/fish/alias.fish

# iterm2 shell integration
source ~/.iterm2_shell_integration.fish

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

## cdしたあとで、自動的に ls -aする
function cd
    if test (count $argv) -gt 1
        printf "%s\n" (_ "Too many args for cd command")
        return 1
    end
    # Avoid set completions.
    set -l previous $PWD

    if test "$argv" = "-"
        if test "$__fish_cd_direction" = "next"
            nextd
        else
            prevd
        end
        return $status
    end
    builtin cd $argv
    set -l cd_status $status
    # Log history
    if test $cd_status -eq 0 -a "$PWD" != "$previous"
        set -q dirprev[$MAX_DIR_HIST]
        and set -e dirprev[1]
        set -g dirprev $dirprev $previous
        set -e dirnext
        set -g __fish_cd_direction prev
    end

    if test $cd_status -ne 0
        return 1
    end
    ls
    return $status
end

# pyenvのpath指定
status --is-interactive; and . (pyenv init -| psub)

# pyenv-virtualenvのpath指定
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# python startup file
set --export PYTHONSTARTUP ~/.pythonrc.py

# TexのPATH指定
# set -gx PATH $PATH /Library/TeX/texbin

# 最初の挨拶みたいなのを消す
set fish_greeting ""
