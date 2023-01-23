function Terminal()
	vim.api.nvim_command('!gnome-terminal')
end

vim.api.nvim_create_user_command('Terminal', Terminal, {})
