:let mapleader=","
filetype plugin indent on
filetype plugin on
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
:set laststatus=2 " show status line always
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'terryma/vim-multiple-cursors'
" Plug 'VundleVim/Vundle.vim'
" Plug 'jscappini/material.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'bling/vim-airline'
Plug 'scrooloose/nerdTree'
Plug 'szw/vim-maximizer'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
" Plug 'tpope/vim-surround'
" Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe'
call plug#end()

" for ctrlp package
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <F2> :CtrlP <CR>
map <C-p> :CtrlP <CR>

set listchars=tab:▸\ ,eol:¬
" from soc unix setup
set ruler
set number
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30
set bs=2
set nowrap
set nocindent
set noautoindent
set nosmartindent
set showmode showcmd
set backspace=indent,eol,start


" java auto-compile
" F9 to compile, F10/F11 to cycle through errors.
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>


" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" resize on ctrl arrow
map <C-Up> :res +5<CR>
map <C-Down> :res -5<CR>
map <C-Left> :vertical resize -5<CR>
map <C-Right> :vertical resize -5<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-a> :MaximizerToggle!<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
" fzf command shortcuts
nnoremap <leader>a :Ag<CR>
nnoremap <leader>s :BLines<CR>
nnoremap <leader>m :Marks<CR>
set nocindent

:command WQ wq
:command Wq wq
:command W w
:command Q q
:colorscheme jellybeans

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


highlight CursorLine   cterm=NONE ctermbg=235
highlight CursorColumn cterm=NONE ctermbg=235
nnoremap <Leader>v :set cursorline! cursorcolumn!<CR>
set cursorline
set cursorcolumn

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
runtime macros/matchit.vim

set relativenumber

nnoremap <space> za
vnoremap <space> zf
