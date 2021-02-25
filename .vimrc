" Notes------------- {{{
" Install plugged to use plugins
" Install gvim to be able to use system clipboard
" 
"
"------------ }}}

syntax on
set number relativenumber
set title
set history=1000
set wildmenu
set cursorline
set nowrap
set laststatus=2
set nohlsearch
set showmatch
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set smartcase
set ignorecase
set incsearch
set bg=dark
set undofile
set noswapfile
set undodir=/home/estefan/.vimundo/
set noshowmode
set scrolloff=8
set mouse=a

let g:indentLine_char = '┊'

"Auto CMD--------------------------------------------------------------------------- {{{

"Comment block and comment line
augroup filetype_yaml
autocmd!
	autocmd FileType yaml nnoremap <buffer> <localleader>c I#<ESC>
	autocmd FileType yaml nnoremap <buffer> <localleader>cp vapk:s/^/#/<CR>
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

augroup filetype_yml
autocmd!
	autocmd FileType yml nnoremap <buffer> <localleader>c I#<ESC>
	autocmd FileType yml nnoremap <buffer> <localleader>cp vapk:s/^/#/<CR>
	autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab	
augroup END

augroup filetype_python
autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<ESC>
	autocmd FileType python nnoremap <buffer> <localleader>cp vapkk:s/^/#/<CR>
augroup END

augroup filetype_vim
autocmd!
	autocmd FileType vim  nnoremap <buffer> <localleader>c I"<ESC>
	autocmd FileType vim  nnoremap <buffer> <localleader>cp vapk:s/^/"/<CR>
	autocmd FileType vim  nnoremap <buffer> <localleader>fp A------------- {{{<ESC>o<ESC>}o<ESC>I"------------ }}}<ESC>
	autocmd FileType vim  setlocal foldmethod=marker
augroup END

" }}}

"----------------Local Leader key mappings
let maplocalleader = "-"

"uncomment line/paragraph
nnoremap <localleader>uc I<ESC>x 
nnoremap <localleader>ucp vap:s/^.//<CR>
"----------------Leader key mappings

"Setting <space> as leader key
let mapleader = " "

"Surround with dubble quotes
nnoremap <leader>" viw<ESC>a"<ESC>hbi"<ESC>lel

"Surround with fågelvingar
nnoremap <leader>{ viw<ESC>a<SPACE>}}"<ESC>bbi"{{<SPACE>

"Split vert/hori and move focus to window
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

"Edit .vimrc on the fly
nnoremap <leader>ev <C-w>v<C-w>l:e $MYVIMRC<CR>

"Edit Todo on the fly
nnoremap <leader>en <C-w>v<C-w>l:e $HOME/.vim/templates/NOTES<CR><ESC>G

"Source .vimrc on the fly
nnoremap <leader>sv :source $MYVIMRC<cr>


"----------------Remappings
"UndoTree
nnoremap <F5> :UndotreeToggle<CR>

"Save on Ctrl+s 
nnoremap <HOME> :w <CR>

"Disable "-
nnoremap - <nop>

"Make H & L work as go to start/end of line in visual mode
vnoremap H 0
vnoremap L $

"Make H & L work as go to start/end of line in normal mode
nnoremap H 0
nnoremap L $

"inoremap jk <ESC>
inoremap <END> <ESC>
vnoremap <END> <ESC>
nnoremap <END> <ESC>
"Escaping with jk and kj  
"inoremap kj <ESC>

"Fzf
nnoremap <C-p> :Files<CR>
let g:fzf_layout = { 'down': '~30%' }

"Move line down
execute "set <A-j>=\ej"
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv

"Move line up
execute "set <A-k>=\ek"
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-k> :m '<-2<CR>gv=gv

"----------------Abbreviations

iabbrev adn and
iabbrev waht what

"----------------Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'zigford/vim-powershell'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox
let g:lightline = {
			\ 'colorscheme': 'seoul256',
			\ }
