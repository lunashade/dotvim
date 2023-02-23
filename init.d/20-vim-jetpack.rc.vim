packadd vim-jetpack
call jetpack#begin()
" LSP
Jetpack 'prabirshrestha/async.vim'
Jetpack 'prabirshrestha/asyncomplete.vim'
Jetpack 'prabirshrestha/asyncomplete-lsp.vim'
Jetpack 'prabirshrestha/vim-lsp'
Jetpack 'mattn/vim-lsp-settings'
Jetpack 'mattn/vim-lsp-icons'
" QoL
Jetpack 'airblade/vim-gitgutter'
Jetpack 'tpope/vim-surround'
Jetpack 'nathanaelkane/vim-indent-guides'
Jetpack 'landock/vim-expand-region'
Jetpack 'tpope/vim-repeat'
Jetpack 'osyo-manga/vim-precious'
Jetpack 'Shougo/context_filetype.vim'
Jetpack 'tpope/vim-commentary'
Jetpack 'cohama/lexima.vim'
" filer
Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/fern-hijack.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'yuki-yano/fern-preview.vim'
" fzf
Jetpack 'junegunn/fzf', { 'do': { -> fzf#install() } }
Jetpack 'junegunn/fzf.vim'
" Style
Jetpack 'morhetz/gruvbox'
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'
" filetype
Jetpack 'stephpy/vim-yaml'
Jetpack 'ziglang/zig.vim'
call jetpack#end()

for name in jetpack#names()
  if !jetpack#tap(name)
    call jetpack#sync()
    break
  endif
endfor
