" baisang Vimrc

call plug#begin('~/.vim/plugged')
    " Sensible settings for vim
    Plug 'tpope/vim-sensible'
    " Easy commenting in any language
    Plug 'tpope/vim-commentary'
    " Git in vim
    Plug 'tpope/vim-fugitive'
    " Undo tree viewer
    Plug 'simnalamburt/vim-mundo'
    " Syntax and highlighting for languages
    Plug 'sheerun/vim-polyglot'
    " Plug 'hdima/python-syntax' " This is currently better than the polyglot one
    " Visual made * and # search
    Plug 'bronson/vim-visual-star-search'
call plug#end()

" Set no compatible
set nocompatible
set backspace=indent,eol,start

" Set map leader
let mapleader = " "

" Use relative line numbers
set number

" Show line before or after
set scrolloff=5

" Set columcolor at 80
set colorcolumn=80,132

" Color scheme settings
colorscheme elflord
syntax on


set background=dark
hi MatchParen cterm=bold ctermfg=Red ctermbg=8
runtime! macros/matchit.vim

" Change backup and swap location
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set foldmethod=indent
set foldlevelstart=99

" Set the Tab Label
set guitablabel=\[%N\]%M\ %t

" Autoload files from disk
set autoread

" Show special things
set list
set showbreak=Â»Â»

" Indenting
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set ai " Auto indent
set wrap " Wrap lines
set nostartofline
filetype plugin indent on

" Switching buffers mappings
set hidden " Can hide motified buffers

" Don't prompt on multiple vims editing same file without changes
set shortmess+=IA

" Tab complete more bash like
set wildmode=longest:full
set wildmenu
set completeopt=menu,longest

" Show Line numbers
set number

" Searching
set incsearch " Search as typing
set ignorecase
set smartcase
set hlsearch

" Set command window to 2 lines, avoids press enter to continue
set cmdheight=2
set showcmd

" Encoding
set fileencoding=utf-8

" Movement mappings
nnoremap j gj
nnoremap k gk

" Random maps
nnoremap <leader>r :source ~/.vimrc<CR>

" Basic editing mappings
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Better visual mode pasting
vmap P p
vnoremap p pgvy


" buffer mappings
noremap <leader>bd :bn <bar> bd #<CR>

" window mappings
noremap <leader>j <C-W><C-J>
noremap <leader>k <C-W><C-K>
noremap <leader>h <C-W><C-H>
noremap <leader>l <C-W><C-L>
noremap <leader>sp :sp<CR>
noremap <leader>vs :vs<CR>

" Remember more things
set history=1000
set undolevels=1000

" Persistent undo
set undofile
set undodir=~/.vim/undo
