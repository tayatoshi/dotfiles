" dein settings {{{
if &compatible
    set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
execute 'set runtimepath^=' . s:dein_repo_dir

let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = 1

" プラグイン読み込み＆キャッシュ作成
let s:toml      = '~/.config/nvim/dein.toml'
let s:lazy_toml = '~/.config/nvim/dein_lazy.toml'

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir, [s:toml, s:lazy_toml])
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
    call dein#install()
endif
" }}}

filetype plugin on
filetype indent on
set number
syntax enable
set ruler
set t_Co=256
set nohlsearch
set tabstop=2
set smartindent
set smarttab
set shiftwidth=2
set showmatch
set title
set incsearch
set wildmenu wildmode=list:full
set laststatus=2
set statusline=%F
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
let maplocalleader = ','
set backspace=indent,eol,start
set noswapfile
set hlsearch
set smartcase
set ignorecase
set wildmenu
set wildmode=longest:full,full
set ttimeoutlen=10

" Nvim-r 縦分割
let R_vsplit=1

" NEDTreeで不可視ファイルを表示
let NERDTreeShowHidden = 1

" 行番号の色を設定
hi LineNr ctermbg=0 ctermfg=4
hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
hi clear CursorLine

" <Esc><Esc>でハイライトを消す
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" filetypeにtexを追加
let g:tex_flavor='latex'

"" texのconcealを無効化
let g:tex_conceal=''

" テンプレートプラグイン用
let g:sonictemplate_vim_template_dir = ['~/.cache/dein/repos/github.com/mattn/sonictemplate-vim/template']
