local todo = require("todo-comments")

vim.keymap.set("n", " ft", function ()
	vim.api.nvim_command('TodoTelescope');
end)
