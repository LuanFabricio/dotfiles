vim.keymap.set('n', '<F5>', function ()
	vim.api.nvim_command('Ex')
end)

vim.keymap.set('n', '=', function ()
	vim.api.nvim_command('move +1')
end)

vim.keymap.set('n', '-', function ()
	vim.api.nvim_command('move -2')
end)

vim.keymap.set('n', '<Space>g', function ()
	local search = vim.fn.input("Search term: ")
	vim.api.nvim_command('vs')
	vim.api.nvim_command('!grep -rn ' .. search .. ' > /tmp/grep.nvim')
	vim.api.nvim_command('e /tmp/grep.nvim')
end)
