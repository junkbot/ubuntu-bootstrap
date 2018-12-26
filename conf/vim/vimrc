set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Bundle 'jlanzarotta/bufexplorer'
Plugin 'Quramy/tsuquyomi'
Bundle "lepture/vim-jinja"
Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Airline stuff
set laststatus=2
let g:airline_powerline_fonts = 1

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#buffer_min_count =2

" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_autoclose_preview_window_after_completion = 1

" Typescript
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

" Colors!
syntax on
let g:tex_flavor="latex"

set t_Co=256
set background=dark
"colorscheme wombat256mod

" Line numbers
set number

" Indentation
set backspace=2
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"set tabstop=8
"set shiftwidth=8
"set expandtab
"set softtabstop=8
set clipboard=unnamed

" Split
set splitbelow
set splitright

" Mouse
set mouse=a

" Text width and wrapping
set textwidth=80
set colorcolumn=81

" Wildmenu
set wildmode=longest:full,full
set wildmenu

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

set hlsearch

" Key mappings

" Stepping through wrapped lines
nmap <silent> j gj
nmap <silent> k gk

" Moving between windows
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

map <F9> :make<CR>
