# vimでneovimを起動
alias vim 'nvim'

# viでneovimを起動
alias vi 'nvim'

# rmする際に確認する
alias rm 'rm -i'

# mvする際にすでに対象が存在すれば確認する
alias mv 'mv -i'

# cpする際にすでに対象が存在すれば確認する
alias cp 'cp -i'

# 画面を常につけておく
# alias caf 'caffeinate -d'
alias caf '~/dotfiles/shellscript/cafd.sh'

# catでbatを実行
alias cat 'bat'

# topでhtopを実行
alias top 'htop'

# git tree
alias gtree 'git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'

# git branch
alias gb 'git branch -av'

# git status
alias gst 'git status -sb'

# lsd
alias ls='lsd -l'
alias la='lsd -la'

# コマンドで日本語表示&不可視ファイル可視化
alias tree 'tree -LNaC 2'

