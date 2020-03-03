setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <C-q> :cclose<CR>

autocmd BufWritePre <buffer>
            \ call execute("LspCodeActionSync source.organizeImports")
