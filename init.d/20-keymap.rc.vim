" ========================================
" Key mapping
" ========================================
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>

" s-* keymappings.
" https://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq ZZ
nnoremap sQ :<C-u>bd<CR>

" autocomplete
inoremap <expr><TAB>  pumvisible() ? "<C-n><C-y>" : "<TAB>"
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
set completeopt+=menuone
