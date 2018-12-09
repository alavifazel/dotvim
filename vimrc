
set laststatus=2
set number

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required

filetype plugin indent on    " required

" sets clipboard as the default register
set clipboard=unnamedplus

" Makes vim run python scripts with F9
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
