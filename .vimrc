" plugin manager vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" find and focus current file in nerd
map <leader>r :NERDTreeFind<cr>
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
" YCM will auto-close the preview window after the user leaves insert mode
let g:ycm_autoclose_preview_window_after_insertion = 1
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
set diffopt+=vertical
Plug 'airblade/vim-gitgutter'
set updatetime=250
Plug 'ctrlpvim/ctrlp.vim'
" open file in new tab instean pane
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<2-LeftMouse>'], 'AcceptSelection("t")': ['<cr>'] }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
Plug 'easymotion/vim-easymotion'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

call plug#end()

" ===custom setup===
" do not pretend to be 'vi'
set nocompatible
" hightlight 80-th symbol
match Error /\%79v/
" show trailing space
set listchars=trail:~
set list
" hightlight current line
set cursorline
" backspace fix?
set backspace=indent,eol,start
filetype plugin on
set notimeout
set clipboard=unnamed
" aggregate all swap files
set directory^=$HOME/.vim/tmp//
" disable help for word under cursor
map <S-k> <Nop>

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
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

