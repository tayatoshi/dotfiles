nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
augroup vim-anzu
autocmd!
    autocmd CursorHold,CursorHoldI,WinLeave,TabLeave * call anzu#clear_search_status()
augroup END
