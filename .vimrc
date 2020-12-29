syntax on
set number relativenumber
set title
set history=1000
set wildmenu
set cursorline
set nowrap
set laststatus=2
set hlsearch
set showmatch
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set smartcase
set incsearch
set bg=dark
set undofile
set undodir=/home/estefan/.vimundo/
set noshowmode
set list lcs=tab:\|\ 


"Auto CMD--------------------------------------------------------------------------- {{{

"Comment block and comment line
augroup filetype_yaml
	autocmd!
	autocmd FileType yaml nnoremap <buffer> <localleader>c I#<ESC>
	autocmd FileType yaml nnoremap <buffer> <localleader>cp vapk:s/^/#/<CR>:noh<CR>
	autocmd FileType yml nnoremap <buffer> <localleader>c I#<ESC>
	autocmd FileType yml nnoremap <buffer> <localleader>cp vapk:s/^/#/<CR>:noh<CR>
augroup END

augroup filetype_python
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<ESC>
	autocmd FileType python nnoremap <buffer> <localleader>cp vapkk:s/^/#/<CR>:noh<CR>
	autocmd FileType python nnoremap <buffer> <localleader>uc I<ESC>x
	autocmd FileType python nnoremap <buffer> <localleader>ucp vap:s/^.//<CR>:noh<CR>
augroup END

augroup filetype_vim
	autocmd!
	autocmd FileType vim  nnoremap <buffer> <localleader>c I"<ESC>
	autocmd FileType vim  nnoremap <buffer> <localleader>cp vapk:s/^/"/<CR>:noh<CR>

augroup END

" }}}

"----------------Local Leader key mappings
let maplocalleader = "-"

"uncomment line/paragraph
nnoremap <localleader>uc I<ESC>x 
nnoremap <localleader>ucp vap:s/^.//<CR>:noh<CR>
"----------------Leader key mappings

"Setting <space> as leader key
let mapleader = " "

"Surround with dubble quotes
nnoremap <leader>" viw<ESC>a"<ESC>hbi"<ESC>lel

"Surround with fågelvingar
nnoremap <leader>{ viw<ESC>a<SPACE>}<ESC>hbi{<SPACE>

"Split vert/hori and move focus to window
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

"Edit .vimrc on the fly
nnoremap <leader>ev <C-w>v<C-w>l:e $MYVIMRC<CR>

"Source .vimrc on the fly
nnoremap <leader>sv :source $MYVIMRC<cr>:noh<CR>


"----------------Remappings
"Save on Ctrl+s 
nnoremap <C-s> :w <CR>

"Disable -
nnoremap - <nop>

"Make H & L work as go to start/end of line in normal mode
nnoremap H 0
nnoremap L $

"Escaping with jk and kj  
inoremap jk <ESC>
inoremap kj <ESC>

"Fzf
nnoremap <C-p> :Files $HOME<CR>
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
iabbrev tehn then

"----------------Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme gruvbox
let g:lightline = {
			\ 'colorscheme': 'seoul256',
			\ }
