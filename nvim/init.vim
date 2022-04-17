" plugin management
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" key remappings go here
au filetype go inoremap <buffer> . .<C-x><C-o>
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>
inoremap <C-Q> <C-O>:q<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-n> :NERDTree<CR>

" colorschemes go here
colorscheme sunbather

" updatetime changes for git gutter
set updatetime=100
highlight GitGutterAdd    guifg=#009900 ctermfg=2

" COC Autocomplete

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
