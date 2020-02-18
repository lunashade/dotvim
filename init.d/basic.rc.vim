" Basic
let mapleader="\<Space>"

set nocompatible
set number
set nobackup
set noswapfile
set list
set nocompatible
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hlsearch!
set autoread
set hidden
set backspace=indent,eol,start
set virtualedit=onemore

syntax enable
filetype plugin indent on

" Windows Subsystem for Linux で、ヤンクでクリップボードにコピー
if system('uname -a | grep Microsoft') != ''
  augroup myYank
    autocmd!
    autocmd TextYankPost * :call system('clip.exe', @")
  augroup END
endif
