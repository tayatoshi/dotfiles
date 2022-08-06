vim.cmd [[packadd packer.nvim]]

require'packer'.startup(function()
	use {'wbthomason/packer.nvim', opt=true}
	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'j-hui/fidget.nvim'
	use 'folke/lsp-colors.nvim'
	-- mason
	use 'hrsh7th/nvim-cmp'
	use 'onsails/lspkind.nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	-- use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = [[require('plugins.nvim-treesitter')]]
	}
	 -- comment on/off(mapping:--)
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	--  color scheme
	use 'folke/tokyonight.nvim'
	-- move efficiently(mapping:<leader>w)
	use {
		'phaazon/hop.nvim',
		branch = 'v2',
		config = function()
			require('hop').setup()
		end
	}
	use {
		'SmiteshP/nvim-navic',
		requires = 'neovim/nvim-lspconfig',
		config = [[require('plugins.nvim-navic')]]
	}

	--  status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = [[require('plugins.lualine')]]
	}

	--  tab line
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'},
		config = [[require('plugins.barbar')]]
	}

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = [[require('plugins.telescope')]]
	}

	-- highlight todo, fixme, note, and more.
	use {
		'folke/todo-comments.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = [[require('plugins.todo-comments')]]
	}

	-- highlight indent
	use {
		'lukas-reineke/indent-blankline.nvim',
		requires = 'nvim-treesitter/nvim-treesitter',
		config = [[require('plugins.indent-blankline')]]
	}
	use 'jiangmiao/auto-pairs'

	-- simple filer(mapping:<C-e>)
	use 'lambdalisue/fern.vim'

	use 'simeji/winresizer'

	-- git
	use {
		'lewis6991/gitsigns.nvim',
		config = [[require('plugins.gitsigns')]]
	}

	-- preview colorcode
	use {
		'norcalli/nvim-colorizer.lua',
		config = function()
			require'colorizer'.setup()
		end
	}


end)
