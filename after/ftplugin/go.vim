setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4

autocmd BufWritePre <buffer>
            \ call execute("LspCodeActionSync source.organizeImports")
