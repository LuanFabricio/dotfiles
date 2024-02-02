-- vim.cmd("let g:tex_flavor='latex'")
-- vim.cmd("let g:vimtex_view_method='zathura'")
-- vim.cmd("let g:vimtex_quickfix_mode=0")
-- vim.cmd("set conceallevel=1")
-- vim.cmd("let g:tex_conceal='abdmg'")

vim.cmd("syntax enable")

vim.cmd("let g:vimtex_view_method = 'zathura'")

vim.cmd("let g:vimtex_view_general_viewer = 'okular'")
vim.cmd("let g:vimtex_view_general_options = \"--unique file:@pdf\\#src:@line@tex\"")

vim.cmd("let g:vimtex_compiler_method = 'latexmk'")

vim.cmd("let maplocalleader = ','")
