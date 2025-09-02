function Terminal()
	vim.api.nvim_command("!i3-sensible-terminal")
end
vim.api.nvim_create_user_command("Terminal", Terminal, {})

local function c_header_create_ifndef()
	local macro = vim.fn.expand("%")

	macro = string.upper(macro)
	macro = "__" .. macro:gsub("/", "_"):gsub("%.", "_") .. "__"

	vim.cmd("normal! i" .. "#ifndef " .. macro)
	vim.cmd("normal! o" .. "#define " .. macro .. "\n")
	vim.cmd("normal! o")
	vim.cmd("normal! o" .. "#endif // " .. macro)
	vim.cmd("normal! k")
	vim.cmd("w")
end
vim.api.nvim_create_user_command("CreateCHeader", c_header_create_ifndef, {})
