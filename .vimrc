" call plug#begin()
" Plug 'scrooloose/nerdtree'
" call plug#end()

set number
set mouse=a

" nmap <F5> :NERDTreeToggle<cr>
" nmap R :NERDTreeRefreshRoot<cr>

augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END
