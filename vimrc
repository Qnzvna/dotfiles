call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'

call plug#end()

" basic stuffs
syntax on
set nu
set cursorline
set encoding=utf-8
set mouse=a

" good looking vim
hi clear SignColumn
set background=dark
set laststatus=2
try
    colorscheme solarized
catch
endtry

" 4 spaces tab
set tabstop=4
set shiftwidth=4
set expandtab

" buffer navigation made simple
nnoremap <C-L> :bn<CR>
nnoremap <C-K> :bp<CR>

" highlight 80 column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=240
endif

" Airline stuff
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

" NERD Tree
nmap <C-n> :NERDTreeTabsToggle<CR>

" Syntastics
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END
