"Some important properties of this config:
"d/dd doesn't cut the text; it deletes it. To cut stuff use Visual Mode + x
"Vim won't get it's own buffer. It uses systems clipboard. So cutting/pasting
"stuff from Vim to other apps and vice versa will be convenient.


"Some cheatsheets on how to use NERDTree, etc
"To create/rename/delete a file/directory navigate to NERDTree window with: Ctrl + ww
"Then press m and the options appears. Now choose the option you want. 


set autowrite
set laststatus=2
set number

syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'fcpg/vim-orbital'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set clipboard=unnamedplus

nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

"Maps dd to blackhole register. Now to cut things: v/V + x
nnoremap d "_d
vnoremap d "_d

colorscheme orbital

set guifont=Monospace\ 13
set guioptions-=m

autocmd vimenter * NERDTree "Automatically opens NERDTree on startup

"Puts cursor in the editing butter on startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"Quits the NERDTree as the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
