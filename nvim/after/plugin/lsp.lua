local lsp = require("lsp-zero")

lsp.preset("recommended")


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	  'rust_analyzer',
	  'lua_ls',
	  'eslint',
  },
  handlers = {
    lsp.default_setup,
  },
})
-- Fix Undefined global 'vim'
lsp.configure('lua_ls', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			},
		}
	}
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    -- INFO: Remove this to enable autocomplete popup
    -- completion = {
    --     autocomplete = false,
    -- },
    mapping = cmp.mapping.preset.insert({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
 	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
 	['<cr>'] = cmp.mapping.confirm({ select = true }),
 	["<C-Space>"] = cmp.mapping.complete(),

    })
  })

-- local cmp_mappings = lsp.defaults.cmp_mappings({
-- 	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- 	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- 	['<cr>'] = cmp.mapping.confirm({ select = true }),
-- 	["<C-Space>"] = cmp.mapping.complete(),
-- })

-- disable completion with tab
-- this helps with copilot setup
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

-- lsp.setup_nvim_cmp({
-- 	mapping = cmp_mappings
-- })

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'E',
		warn = 'W',
		hint = 'H',
		info = 'I'
	}
})

local on_attach = function(client, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
	vim.api.nvim_buf_set_option(bufnr, 'tagfunc', 'v:lua.vim.lsp.tagfunc')

	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<space>fo', function()
		vim.lsp.buf.format { async = true }
	end, bufopts)
end

lsp.on_attach(on_attach)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})

-- TS LSP
-- require('lspconfig')['tsserver'].setup {
-- 	on_attach = on_attach,
-- }

-- Python LSP
require'lspconfig'.jedi_language_server.setup{}
