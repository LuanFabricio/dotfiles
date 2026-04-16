return {
	{ "folke/todo-comments.nvim", opts = {} },
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'nvim-treesitter/nvim-treesitter', },
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
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
	},
	{'dense-analysis/ale'},
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
	},
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	{'nyoom-engineering/oxocarbon.nvim'},
	--{'dart-lang/dart-vim-plugin'},
	{
	    'nvim-flutter/flutter-tools.nvim',
	    lazy = false,
	    dependencies = {
		'nvim-lua/plenary.nvim',
		'stevearc/dressing.nvim', -- optional for vim.ui.select
	    },
	    config = true,
	},
	{'nvim-tree/nvim-web-devicons'},
	{'gpanders/editorconfig.nvim'},
	{
	    "iamcco/markdown-preview.nvim",
	    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	    ft = { "markdown" },
	    build = function() vim.fn["mkdp#util#install"]() end,
	},
	{
		"NeogitOrg/neogit",
		dependencies = { {"nvim-lua/plenary.nvim"}, {"sindrets/diffview.nvim"} }
	},
	{'nvim-lua/plenary.nvim'},
	{"folke/zen-mode.nvim"},
	{'navarasu/onedark.nvim'},
	{'tanvirtin/monokai.nvim'},
	{'rebelot/kanagawa.nvim'},
	{ "catppuccin/nvim", as = "catppuccin" },
	{'lervag/vimtex'},
	{ "EdenEast/nightfox.nvim" },
}
