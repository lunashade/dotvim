setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=0
setlocal shiftwidth=4
" For python language server
if (executable('pyls'))
    let s:pyls_path = fnamemodify(g:python_host_prog, ':h') . '/'. 'pyls'
    augroup LspPython
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': {server_info->['pyls']},
      \ 'whitelist': ['python']
      \ })
    augroup END
endif

