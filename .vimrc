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

" maps dd to blackhole register. Now to cut things: v/V + x
nnoremap d "_d
vnoremap d "_d

colorscheme orbital

set guifont=Monospace\ 14
set guioptions-=m

set number

autocmd vimenter * NERDTree "automatically opens NERDTree on startup

