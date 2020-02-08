" Color
set t_Co=256
set background=dark
colorscheme gruvbox

" GitGutter
nnoremap [Gutter] <Nop>
nmap <leader>z [Gutter]
nnoremap [Gutter]j :GitGutterNextHunk<CR>
nnoremap [Gutter]k :GitGutterPrevHunk<CR>
nnoremap [Gutter]s :GitGutterStageHunk<CR>
nnoremap [Gutter]u :GitGutterUndoHunk<CR>

" Fugitive
nnoremap [Fugitive] <Nop>
nmap <leader>f [Fugitive]
nnoremap [Fugitive]c :Gcommit<CR>
nnoremap [Fugitive]s :Gstatus<CR>
nnoremap [Fugitive]d :Gdiff<CR>

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" Indent Guide
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0

" expand-region
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
