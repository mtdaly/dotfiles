set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Split location
set splitright

" Split Navigation (using ^+HJKL)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Plugins
Plugin 'tmhedberg/SimplyFold'
Plugin 'vim-syntastic/syntastic'
" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checker = ['flake8']

Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'Valloric/YouCompleteMe'

" Formatting
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
set encoding=utf-8

set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab

" Latex settings
filetype plugin on
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Color Settings
set background=dark
colorscheme solarized

set nu
set cursorline
set wildmenu
set lazyredraw
set showmatch
set showcmd
set incsearch
set hlsearch
" move vertically by visual line
nnoremap j gj
nnoremap k gk
inoremap fd <esc>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let python_highlight_all=1
syntax on
set laststatus=2
set mouse=a


