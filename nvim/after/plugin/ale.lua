-- Linter fix config
vim.cmd("\
augroup FiletypeGroup \
    autocmd! \
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx \
augroup END")

vim.cmd("\
augroup FiletypeGroup \
    autocmd! \
    au BufNewFile,BufRead *.tsx set filetype=typescript.tsx \
augroup END")

vim.cmd("let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'jsx': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint'], 'tsx': ['prettier', 'eslint'], '*': ['remove_trailing_lines', 'trim_whitespace']}")

vim.cmd("let g:ale_fix_on_save = 1")
vim.cmd("let g:ale_linters_explicit = 1")
