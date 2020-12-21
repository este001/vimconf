syntax on
set number
set title
set history=1000
set wildmenu
set cursorline
set nowrap
set laststatus=2
set hlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set smartcase
set incsearch
set bg=dark
set number relativenumber
set undofile
set undodir=/home/estefan/.vimundo/

"escaping with jk and kj
imap jk <ESC>
imap kj <ESC>

"fzf
nnoremap <C-p> :Files $PWD<CR>
let g:fzf_layout = { 'down': '~30%' }

"Move line down
execute "set <A-j>=\ej"
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv

"Move line up
execute "set <A-k>=\ek"
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-k> :m '<-2<CR>gv=gv

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox
