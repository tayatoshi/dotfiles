vim.cmd [[packadd packer.nvim]]

require'packer'.startup(function()
	use {'wbthomason/packer.nvim', opt=true}
	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'folke/lsp-colors.nvim'
	-- visualize loading lsp
	use 'j-hui/fidget.nvim'

	-- cmp
	use 'hrsh7th/nvim-cmp'
	use 'onsails/lspkind.nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'

    -- generate documents
    use 'kkoomen/vim-doge'
    -- Lua
    use {
        'folke/which-key.nvim',
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- formatter, linter
    use {
        'jose-elias-alvarez/null-ls.nvim',
        config = [[require('plugins.null-ls')]]
    }
    use {
		'folke/trouble.nvim',
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup{}
		end
	}

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
		config= function()
			require('hop').setup{}
		end
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
    use {
        'yioneko/nvim-yati',
        requires = "nvim-treesitter/nvim-treesitter",
        config = [[require('plugins.nvim-yati')]]
    }

    -- search highlight
    use {
        'kevinhwang91/nvim-hlslens',
        config = [[require('plugins.nvim-hlslens')]]
    }

	use 'jiangmiao/auto-pairs'

	-- simple filer(mapping:<C-e>)
	use 'lambdalisue/fern.vim'

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

	-- use 'jalvesaq/Nvim-R'
	use {'jalvesaq/Nvim-R', ft = { 'r' } }

	-- shade inactive window
    use {
        'levouh/tint.nvim',
        config = [[require('plugins.tint')]]
    }

end)


