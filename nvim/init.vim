"""""""""
" Stolen chunks from https://github.com/amix/vimrc
"""""""""

" Configure vim-plug directory
call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lornix/vim-scrollbar'
Plug 'dag/vim-fish'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()

""""
" Plugin setup


""""
" General

set history=500

filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
autocmd FocusGained,BufEnter * checktime

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


""""
" Display styles

" Line number style
set number relativenumber


" Indent styles
set shiftwidth=4
set autoindent
set smartindent

""""
" Editing
set showmatch

" * Search
set hlsearch		" highlighting
set incsearch		" incremental

" * View
set ttyfast

