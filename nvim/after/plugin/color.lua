function Color(color)
	color = color or "onedark"

	vim.cmd.colorscheme(color)
end

Color("torte")
