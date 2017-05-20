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
set tabstop=4
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

" 行番号の色を設定
hi LineNr ctermfg=246 ctermbg=238
hi CursorLineNr ctermfg=214 ctermbg=238
set cursorline
hi clear CursorLine

" コメントの色をグレーに変更
hi Comment ctermfg=gray

" 文字列の色を緑に変更
hi String ctermfg=green

" searchの対象の文字色を白に、背景色をオレンジ変更
hi Search ctermfg=white ctermbg=214

" Delimiterを白に変更
hi Delimiter ctermfg=white

" pythonのシンタックスカラーを変更
hi pythonStatement ctermfg=5
hi pythonBuiltin ctermfg=214
hi pythonInclude ctermfg=5
hi pythonException ctermfg=5
hi pythonConditional ctermfg=5
hi pythonOperator ctermfg=5

" rのシンタックスカラーを変更
hi rFunction ctermfg=cyan
hi rAssign ctermfg=white
hi rFloat ctermfg=214
hi rNumber ctermfg=214
hi rOperator ctermfg=white
hi rType ctermfg=5

" texのシンタックスカラーを変更
hi texStatement ctermfg=214
hi texMathZoneAS ctermfg=green
hi texMathOper ctermfg=green
hi texMathMatcher ctermfg=green
hi texMathDelim ctermfg=red
hi texInputFile ctermfg=blue
hi texBeginEndName ctermfg=green

" <Esc><Esc>でハイライトを消す
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" filetypeにtexを追加
let g:tex_flavor='latex'

" texのconcealを無効化
let g:tex_conceal=''

" 移動用キーマッピング
nnoremap <C-h> <Left>
nnoremap <C-j> <Down>
nnoremap <C-k> <Up>
nnoremap <C-l> <Right>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

vnoremap <C-h> <Left>
vnoremap <C-j> <Down>
vnoremap <C-k> <Up>
vnoremap <C-l> <Right>

" Normalモードで;を:にする
nnoremap ; :
" Nomalモードのまま空行挿入
nnoremap <Space><Space> <S-o><Esc>

" テンプレートプラグイン用
let g:sonictemplate_vim_template_dir = ['~/.cache/dein/repos/github.com/mattn/sonictemplate-vim/template']

" Nvim-r 縦分割
autocmd VimResized * let R_rconsole_width = winwidth(0) / 2

" NEDTreeで不可視ファイルを表示
let NERDTreeShowHidden = 1
