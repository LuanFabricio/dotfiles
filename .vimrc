call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

set number
set mouse=a

nmap <F5> :NERDTreeToggle<cr>
nmap R :NERDTreeRefreshRoot<cr>
