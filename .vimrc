set nohlsearch
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
set cursorline
syntax on
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>
nnoremap <C-q> :qa!<cr>
call plug#begin('~/.vim/plugged')

"react 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
" Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'neomake/neomake'
Plug 'arif25169/termux-vim-copy'
Plug 'Chiel92/vim-autoformat'
" Initialize plugin system
" Initialize plugin system
call plug#end()
set autoread
command! Pretty :!prettier --write %:p
" command! Cp :!termux-clipboard-set
" command! Pa :!termux-clipboard-set
" command! Fk :wq
" let s:expr = 'foo 2i bar 42 baz GNU/Linux'
" if match(s:expr, 'Linux')
" echo "yes"
 " else
" echo "no"
" endif
"
