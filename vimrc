" Maps
inoremap jj <Esc> 
set nocompatible
filetype plugin indent on
map <F4> :Explore

set clipboard=unnamedplus

" Hybrind numbering
set number relativenumber
set nu rnu

" Set bell off
set belloff=all

" Enable mouse use
set mouse=a

"Vim-plug
call plug#begin()

Plug 'VundleVim/Vundle.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'

call plug#end()
