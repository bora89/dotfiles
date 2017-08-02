" plugin manager vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
set diffopt+=vertical
Plug 'airblade/vim-gitgutter'
set updatetime=250
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

" ===custom setup===
" do not pretend to be 'vi'
set nocompatible

" backspace fix?
set backspace=indent,eol,start

" enable syntax
syntax enable
colorscheme gruvbox
set background=dark

let g:mapleader=','

" lower the number bur width
set number
set relativenumber
set numberwidth=3

set expandtab
set shiftwidth=2
set smarttab
set autoindent
set smartindent
" relative line numbers in normal mode and absolute in insert
autocmd InsertEnter * set norelativenumber 
autocmd InsertLeave * set relativenumber

" highlight the search
set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
imap jk <Esc>
