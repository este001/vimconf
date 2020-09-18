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

if filereadable(expand("~/vimplug-plugins/.vimrc.plug"))
	source ~/vimplug-plugins/.vimrc.plug
endif
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

:let mapleader = " "
" :nnoremap <leader>d dd
