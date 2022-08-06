vim.cmd [[
    let g:tokyonight_style = "night"
    let g:tokyonight_italic_functions = 0
    let g:tokyonight_italic_comments = 0
    let g:tokyonight_italic_keywords = 0
    let g:tokyonight_transparent = 1
    let g:tokyonight_lualine_bold = 1


	colorscheme tokyonight

	highlight CursorLine guibg=#3B4252
	highlight CursorColumn guibg=#3B4252
	highlight Normal ctermbg=NONE guibg=NONE
	highlight NonText ctermbg=NONE guibg=NONE
	highlight LineNr ctermbg=NONE guibg=NONE guifg=#565a6e
	highlight CursorLineNr gui=bold guifg=#e0af68 guibg=NONE
	highlight Folded ctermbg=NONE guibg=NONE
	highlight EndOfBuffer ctermbg=NONE guibg=NONE
	highlight Visual  guifg=NONE guibg=#4C566A gui=none

	highlight CursorLine guibg=#3B4252
	highlight CursorColumn guibg=#3B4252

	highlight BufferCurrent guifg=#E6E6E6 gui=bold
	highlight BufferVisible guifg=#444b71

	highlight VertSplit ctermfg=10 ctermbg=241 cterm=NONE guifg=#a3be8c guibg=default gui=NONE

    highlight GitSignsAdd    guifg=#2ecc71
	highlight GitSignsChange guifg=#e0af68
	highlight GitSignsDelete guifg=#f7768e
	]]
