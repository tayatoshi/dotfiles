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
set smartindent
set showmatch
set title
set incsearch
set wildmenu wildmode=list:full
set statusline=%F
set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac
let maplocalleader = ','
set backspace=indent,eol,start
set noswapfile
set hlsearch
set wildmenu
set wildmode=longest:full,full
set ttimeoutlen=10
set mouse+=a

" tab
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" 検索・置換
set smartcase
set ignorecase
set inccommand=split

" ヤンクをクリップボードと連携
set clipboard+=unnamedplus

" colorscheme
colorscheme iceberg
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
highlight Visual  guifg=NONE guibg=#4C566A gui=none

" 非activeなwindowを色付け
" augroup ChangeBackground
"   autocmd!
"   autocmd WinEnter * highlight Normal guibg=default
"   autocmd WinEnter * highlight NormalNC guibg='#474646'
"   autocmd FocusGained * highlight Normal guibg=default " 追加
"   autocmd FocusLost * highlight Normal guibg='#474646' " 追加
" augroup END

" set row and column line
set cursorline
set cursorcolumn
highlight CursorLine guibg=#3B4252
highlight CursorColumn guibg=#3B4252

" color of popup window
set termguicolors
set winblend=10
set pumblend=10

" coc.nvimのdiagnosticsの色変更
hi CocErrorSign guifg=#d1666a
hi CocWarningSign guifg=#ff922b
hi CocInfoSign guifg=#bd87e6
hi CocHintSign guifg=#95c4ce

" highlights for tabline(barbar.nvim)
highlight BufferCurrent guifg=#E6E6E6 guibg=#647b9c

" vimの画面分割の線の色を変更
hi VertSplit ctermfg=green ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE

" <Esc><Esc>でハイライトを消す
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" <C-j>に<Esc>を割り当てる when insert mode
inoremap <C-j> <Esc>

" insertモード時の移動
" inoremap <C-h> <Left>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-l> <Right>

" filetypeにtexを追加
let g:tex_flavor='latex'

" Normalモードで;を:にする
nnoremap ; :

" Insertモードで一行挿入
inoremap <C-o> <Esc>o

" sキーを別マッピングで追加
nnoremap <C-s> s
vnoremap <C-s> s

" settings for buffer
nmap te :enew<Return>
nmap <Tab> :bnext<Return>
nmap <S-Tab> :bprev<Return>

" Split window on vim
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>

" Move window on vim
nmap <Space> <C-w>w
nmap <C_w>h <Cw><
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
