call plug#begin('~/.vim/plugged')
" LSP
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
" QoL
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'landock/vim-expand-region'
Plug 'tpope/vim-repeat'
Plug 'osyo-manga/vim-precious'
Plug 'Shougo/context_filetype.vim'
Plug 'tpope/vim-commentary'
Plug 'cohama/lexima.vim'
Plug 'scrooloose/nerdtree'
" Style
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'stephpy/vim-yaml'
call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
