" basic stuff
syntax on
set nu
set cursorline
set encoding=utf-8
set mouse=a
set backspace=indent,eol,start

" good looking vim
hi clear SignColumn
set background=dark
set laststatus=2

" 4 spaces tab
set tabstop=4
set shiftwidth=4
set expandtab

" shortcuts
nnoremap <silent> <C-N> :bn<CR>
nnoremap <silent> <C-P> :bp<CR>
nnoremap <silent> <C-X> :bdelete<CR>
nnoremap <silent> <C-Q> :quit<CR>
nnoremap <silent> <C-T> :Lexplore<CR>
nnoremap <silent> <Tab> <C-W>w
nnoremap <silent> <leader>q :qa<CR>
nnoremap <silent> <leader>w :write<CR>
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <leader>h :split<CR>


" highlight 120 column
if (exists('+colorcolumn'))
    set colorcolumn=120
    highlight ColorColumn ctermbg=240
endif

" netrw
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_browse_split = 0

