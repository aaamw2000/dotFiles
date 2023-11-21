" vimrc file

" Settings
" -------

" Set leader key
let mapleader = ","

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Vim will try to detect the type of the file in use
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on
set autoindent

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
set number

" Make line numbers relative to current line
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" set folding settings
set foldmethod=indent
set foldlevel=99



" Netrw configs
" ------------

" Keep the current directory and the browsing directory synced
let g:netrw_keepdir = 0

" Limit Netrw to 30% of the winow
let g:netrw_winsize = 30


" key mappings
" -----------

" Terminal commands
autocmd BufWritePost *.tex silent! execute"!pdflatex --interaction=batchmode <afile>" | redraw!

" Insert mode maps
inoremap jk <Esc>

" Normal mode maps
nnoremap <Space> <C-d>
nnoremap <BS> <C-u>
nnoremap <Space> <C-d>
nnoremap <Tab> 4l
nnoremap <silent> <C-_> :Commentary<cr>
nnoremap <S-b> 0i
nnoremap zz <C-w><C-w>
nnoremap <S-h> 0
nnoremap <S-l> $
nnoremap \\ :Lexplore<cr>
nnoremap df d$
nnoremap ds d0
nnoremap ff za
nnoremap <C-a> ggvG

" Visual mode maps
vnoremap jk <Esc>
vnoremap <C-_> :Commentary<cr>


" Enable autocompleteion:
set wildmode=longest,list,full


" vim-plug plugins

call plug#begin()

" Vim emmet
Plug 'mattn/emmet-vim'

" Vim Latex
Plug 'lervag/vimtex'

" Vim linter of sorts
Plug 'dense-analysis/ale'

" Vim YouCompleteMe for autocompletion
Plug 'ycm-core/YouCompleteMe'

" Vim commenting
Plug 'tpope/vim-commentary'

" Vim status bar
Plug 'vim-airline/vim-airline'

" Vim preview colors in session
Plug 'ap/vim-css-color'

call plug#end()
