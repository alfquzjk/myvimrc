set nu 
syntax on
set autoindent
set spell
set hlsearch
set background=dark
set foldmethod=indent
set tags=tags
set termguicolors
set laststatus=2
set showcmd
colorscheme gruvbox
"set the leader key
let mapleader=','
noremap <leader>q :q<cr>
inoremap <leader>w <Esc>:w<cr>
inoremap fj <Esc>`^
vnoremap fj <Esc>`^ 
cnoremap fj <Esc>`^
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
"ban the 'up','down','left','right' keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"auto-complete symbors in insert
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i

inoremap <C-d> <Esc>dd
inoremap <C-x> <Esc>x

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
" remenber those commands 'ds','cs','ys'
Plug 'tpope/vim-surround'
"auto complete" This plugin need 'cmake' and 'python3' enviroment
Plug 'Valloric/YouCompleteme'
"vim with git"
Plug 'tpope/vim-fugitive'
"colorscheme plugin
Plug 'vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'

" install deoplete-plugin
" Initialize plugin system
call plug#end()
 
nnoremap <leader>v :NERDTree<cr>
nnoremap <leader>g :NERDTreeToggle<cr>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
