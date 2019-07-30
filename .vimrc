set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'pearofducks/ansible-vim'
Plugin 'tmhedberg/SimplyFold'
Plugin 'nvie/vim-flake8'
Plugin 'PProvost/vim-ps1'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'klen/python-mode'
Plugin 'christoomey/vim-tmux-navigator'

" Vim Sneak
Plugin 'justinmk/vim-sneak'
let g:sneak#s_next = 1

" Syntastic
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checker = ['flake8']

" Vim Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'zenburn'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" General Settings =============================================================

" Default Tab Formatting
set encoding=utf-8
set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab

" Font Settings
set guifont=Consolas:h11

" Color Settings
set background=dark
source ~/.vim/colors/zenburn.vim

" Folding Settings
set foldmethod=indent
set foldlevel=99

" Latex settings
filetype plugin on
filetype indent on
let g:tex_flavor='latex'

set splitright
set rnu
set cursorline
set wildmenu
set lazyredraw
set showmatch
set showcmd
set incsearch
set hlsearch

" Key-Mappings =================================================================

" Enable folding with the spacebar
nnoremap <space> za

" Backspace Behavior
set backspace=indent,eol,start

" Split Navigation (using ^+HJKL)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap fd <esc>
map <C-n> :NERDTreeToggle<CR>
set mouse=a

let python_highlight_all=1
syntax on
set laststatus=2


