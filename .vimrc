set nocompatible              " be iMproved, required
filetype off                  " required
 
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
"a tree explorer plugin for vim
Plugin 'preservim/nerdtree'
 
" pythin indentation
Plugin 'vim-scripts/indentpython.vim'
 
"python code folding
Plugin 'tmhedberg/SimpylFold'
 
call vundle#end()
 
filetype plugin indent on    " required
 
let g:SimpylFold_docstring_preview=1
 
set encoding=utf-8

set colorcolumn=80
 
au BufNewFile,BufRead *.py
   \ set tabstop=4 |
   \ set softtabstop=4 |
   \ set shiftwidth=4 |
   \ set textwidth=79 |
   \ set expandtab |
   \ set autoindent |
   \ set fileformat=unix
 
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
 
"set the split order
set splitbelow
set splitright
 
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
