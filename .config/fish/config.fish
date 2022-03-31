# pyenvのpath
# Execute this interactively:{{{
# set -Ux PYENV_ROOT $HOME/.pyenv
# set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
# }}}
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# nodebrewのpath
set -x PATH $HOME/.nodebrew/current/bin $PATH

# alias
source ~/.config/fish/alias.fish

# iterm2 shell integration
source ~/.iterm2_shell_integration.fish

# 最初の挨拶みたいなのを消す
set fish_greeting ""

# homebrewのpath
set PATH $PATH $HOME/homebrew/bin

# プロンプトのディレクトリの表示を省略しない
set -g fish_prompt_pwd_dir_length 0

# python startup file
set --export PYTHONSTARTUP ~/.pythonrc.py

# 自作シェルスクリプトのパス
set PATH ~/dotfiles/shellscript $PATH

## cdしたあとで、自動的に lsdする
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
    lsd
    return $status
end

# lsdのファイル表示を青太文字から青普通文字に変更
export LS_COLORS="$LS_COLORS:di=00;34:*.png=00;35"

# path for Rust
set PATH ~/.cargo/bin $PATH
# プロンプト用starship の読み込み(config.fishの最後に書いておく)
starship init fish | source
