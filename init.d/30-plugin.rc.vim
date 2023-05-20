" Color
set t_Co=256
set background=dark
try
    colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry

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

" fern.vim
let g:fern#default_hidden=1
nnoremap <silent><C-e> :<C-u>Fern . -reveal=% -drawer -toggle<CR>
nnoremap <silent> <leader>e :<C-u>Fern .<CR>
" 公式リポジトリを参考にキーマップを追加
function! s:init_fern() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:init_fern()
augroup END

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
let g:lsp_settings_global_settings_dir = $HOME . "/.vim/lsp-settings/"

" fzf
fun! FzfOmniFiles()
  let is_git = system('git status')
  if v:shell_error
    :Files
  else
    :GFiles
  endif
endfun
nnoremap <silent> <leader>s :call FzfOmniFiles()<CR>

" airline
let g:airline_theme='simple'
" airline lsp
" https://github.com/prabirshrestha/vim-lsp/pull/376
let g:airline_section_warning = 'W:%{lsp#get_buffer_diagnostics_counts()["warning"]}'
let g:airline_section_error = 'E:%{lsp#get_buffer_diagnostics_counts()["error"]}'

" lexima
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 0
" zig
let g:zig_fmt_autosave = 0
