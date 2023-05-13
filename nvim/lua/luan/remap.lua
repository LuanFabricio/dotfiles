vim.keymap.set('n', '<F5>', function ()
	vim.api.nvim_command('Ex')
end)

vim.keymap.set('n', '+', function ()
	vim.api.nvim_command('move +1')
end)

vim.keymap.set('n', '_', function ()
	vim.api.nvim_command('move -2')
end)
