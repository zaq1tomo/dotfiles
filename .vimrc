call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
call plug#end()

syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized

set encoding=utf-8
set fileencoding=utf-

set laststatus=2
set ruler
set number

set ts=4
set sw=4

set nobackup
set noswapfile

set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch

inoremap jj <ESC>
