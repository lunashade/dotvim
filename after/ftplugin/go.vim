setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <C-q> :cclose<CR>

if executable('gopls')
  augroup LspGo
    au!
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'go-lang',
        \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
        \ 'whitelist': ['go'],
        \ })
    autocmd FileType go setlocal omnifunc=lsp#complete
  augroup END
endif
