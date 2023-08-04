function Terminal()
	vim.api.nvim_command('!i3-sensible-terminal')
end

vim.api.nvim_create_user_command('Terminal', Terminal, {})
