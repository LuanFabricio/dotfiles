vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use('dense-analysis/ale')
  use('rust-lang/rust.vim')
  use {
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end
  }
  use {'nyoom-engineering/oxocarbon.nvim'}
  use 'dart-lang/dart-vim-plugin'
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  use 'nvim-tree/nvim-web-devicons'
  use 'gpanders/editorconfig.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'ThePrimeagen/harpoon'
  use 'nvim-lua/plenary.nvim'

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use("folke/zen-mode.nvim")

  -- Astro
  use 'wuelnerdotexe/vim-astro'

  use 'tpope/vim-fugitive'

  -- Neogit
  use {
	"NeogitOrg/neogit",
	requires = { {"nvim-lua/plenary.nvim"}, {"sindrets/diffview.nvim"} }
  }

  -- Colorschemes
  use('navarasu/onedark.nvim')
  use 'tanvirtin/monokai.nvim'
  use 'rebelot/kanagawa.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'lervag/vimtex'
end)
