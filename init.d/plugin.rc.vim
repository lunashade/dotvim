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
nmap <silent> [Lsp]i :LspInstallServer<CR>
nmap <silent> [Lsp]j <plug>(lsp-next-diagnostic)
nmap <silent> [Lsp]k <plug>(lsp-previous-diagnostic)
nmap <silent> [Lsp]f <plug>(lsp-document-format)
nmap <silent> [Lsp]d <plug>(lsp-definition)
nmap <silent> [Lsp]r <plug>(lsp-rename)
nmap <silent> [Lsp]s <plug>(lsp-status)
nmap <silent> [Lsp]h <plug>(lsp-hover)
nmap <silent> [Lsp]c <plug>(lsp-preview-close)

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1


" airline
let g:airline_theme='simple'
" airline lsp
" https://github.com/prabirshrestha/vim-lsp/pull/376
let g:airline_section_warning = 'W:%{lsp#get_buffer_diagnostics_counts()["warning"]}'
let g:airline_section_error = 'E:%{lsp#get_buffer_diagnostics_counts()["error"]}'

" lexima
let g:lexima_enable_newline_rules = 0
let g:lexima_enable_endwise_rules = 0
