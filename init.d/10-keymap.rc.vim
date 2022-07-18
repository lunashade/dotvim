" ========================================
" Key mapping
" ========================================
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap Q gq
inoremap jj <ESC>

" s-* keymappings.
" https://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
" === windows ===
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l

nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L

nnoremap sw <C-w>w
" split
nnoremap ss <C-w>s
nnoremap sv <C-w>v
" edit windows
nnoremap so <C-w>o
nnoremap sr <C-w>r
nnoremap s= <C-w>=
" buffer
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
" === tabs ===
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT
" === quits ===
nnoremap sq ZZ
nnoremap sQ :<C-u>bd<CR>
" === terminal ===
nnoremap su :<C-u>bo terminal<CR>
set termwinkey=<A-w>
tnoremap <silent> <Esc> <A-w><S-n>

" autocomplete
inoremap <expr><TAB>  pumvisible() ? "<C-n><C-y>" : "<TAB>"
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
set completeopt+=menuone
