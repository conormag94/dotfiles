set nocompatible
filetype off
set encoding=utf-8

execute pathogen#infect()

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

if !exists("g:syntax_on")
    syntax enable
endif

colorscheme gruvbox
set background=dark

let g:airline_theme='gruvbox'

set number          " Line numbers
set laststatus=2    " Show the powerline (I think)

set timeoutlen=1000 " Eliminate escape delay
set ttimeoutlen=0   " Same as above

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set cursorline      " Highlights current line

filetype indent on  " load filetype-specific indent files

set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when needed
set showmatch       " highlight matching [{()}]

set incsearch       " search as chars are entered
set hlsearch        " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable      " enable folding
set foldmethod=indent
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max

" space opens/closes folds
nnoremap <space> za 
set foldmethod=indent " fold based on indent level

" move vertically by visual line (so it won't skip over visually wrapped lines)
nnoremap j gj
nnoremap k gk

