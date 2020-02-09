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

" Vim-lsp
nnoremap [Lsp] <Nop>
nmap <leader>a [Lsp]
nmap [Lsp]i :LspInstallServer<CR>
nmap [Lsp]j <plug>(lsp-next-error)
nmap [Lsp]k <plug>(lsp-previous-error)
nmap [Lsp]f <plug>(lsp-document-format)
nmap [Lsp]d <plug>(lsp-definition)
nmap [Lsp]r <plug>(lsp-rename)
nmap [Lsp]s <plug>(lsp-status)

" airline
let g:airline_theme='simple'
" airline lsp
" https://github.com/prabirshrestha/vim-lsp/pull/376
let g:airline_section_warning = '%{lsp#get_buffer_diagnostics_counts()["warning"]}'
let g:airline_section_error = '%{lsp#get_buffer_diagnostics_counts()["error"]}'
