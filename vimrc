unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" some WSL issue
set t_u7=
set t_RV=

" Install vim-jetpack if not found
let s:jetpackfile = expand('<sfile>:p:h') .. '/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if !filereadable(s:jetpackfile)
  call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
endif

runtime! init.d/*.rc.vim
