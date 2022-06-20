" Basic
call resolve($MYVIMRC)

let mapleader="\<Space>"

set nocompatible
set number
set nobackup
set noswapfile
set autoread
set hidden
set mouse=a
" list
set encoding=utf-8
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" search
set wrapscan
set incsearch
set hlsearch!

set backspace=indent,eol,start
set virtualedit=onemore

" indent
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" wild
set wildmenu
set wildmode=full

syntax enable
filetype plugin indent on

set belloff=all
