" vimrc file

" vim-plug plugins

call plug#begin()

" Vim Latex.
Plug 'lervag/vimtex'

" Vim Snippets.
Plug 'SirVer/ultisnips'

" Vim linter of sorts.
Plug 'dense-analysis/ale'

" Vim YouCompleteMe for autocompletion.
Plug 'ycm-core/YouCompleteMe'

" Vim supertab.
Plug 'ervandew/supertab'

" Vim commenting.
Plug 'tpope/vim-commentary'

" Vim status bar.
Plug 'vim-airline/vim-airline'

" Vim preview colors in session.
Plug 'ap/vim-css-color'

" No more :nohl after search.
Plug 'romainl/vim-cool'

" Python highlighting.
Plug 'vim-python/python-syntax'

" Auto bullet poinst in vim.
Plug 'bullets-vim/bullets.vim'

" Display indentation.
Plug 'Yggdroot/indentLine'

" Auto-complete brackets/quotes/etc.
Plug 'jiangmiao/auto-pairs'

" Visually add quotes/brackets/etc.
Plug 'tpope/vim-surround'

" Make the dot command work with plugin commands
Plug 'tpope/vim-repeat'

" Auto save for vim
Plug '907th/vim-auto-save'

" Elixir support for vim
Plug 'elixir-editors/vim-elixir'

" Go support for vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" ---------------------------------------------------------------


" Settings for Plugins

" YCM
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_autoclose_preview_window_after_insertion = 1

" ---------------------------------------------------------------

" python-syntax
" Enable all syntax highlighting features offered by python-syntax
let g:python_highlight_all = 1

" ---------------------------------------------------------------

" Bullets.vim
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch',
			\]

" ---------------------------------------------------------------

" IndentLine
let g:indentLine_enabled = 1
let g:IndentLine_setcolors = 1
let g:indentLine_char_list = ['┆', '|', '┊']
au Filetype tex let g:indentLine_enabled = 0

" ---------------------------------------------------------------
" Autosave
let g:auto_save = 0

"" General Settings
" -------

" Set leader key
let mapleader = ","

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Set background color
" set background=dark

" Don't change columsn when traveling to end/start of file using gg/<S-G>
set nostartofline

" Vim will try to detect the type of the file in use
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on
set autoindent

" Turn syntax highlighting on.
" syntax on
syntax enable

" Add numbers to the file.
set number

" Make line numbers relative to current line
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

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
set wrap

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

" Enable autocompleteion:
set wildmode=longest,list,full

" Set snippets keys
let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

" Set snippet directory for UltiSnips
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]
" ---------------------------------------------------------------

" Netrw configs
" ------------

" Keep the current directory and the browsing directory synced
let g:netrw_keepdir = 0

" Limit Netrw to 30% of the winow
let g:netrw_winsize = 30

" ---------------------------------------------------------------



" key mappings
" -----------

" Terminal commands
autocmd BufWritePost *.tex silent! execute"!pdflatex --interaction=batchmode <afile>" | redraw!

" run python code inside vim
" autocmd Filetype python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd Filetype python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd Filetype python imap <buffer> <F2> <esc>:w<CR>:!clear;python3 % <CR>
autocmd Filetype python map <buffer> zz :!clear; python3 % <CR>

" Insert mode maps
inoremap jk <Esc>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=UltiSnips#ExpandSnippet()"
inoremap <S-Tab> <Nop>

" Normal mode maps
nnoremap <Space> <C-d>
nnoremap <BS> <C-u>
" nnoremap <Tab> 4l
nnoremap <silent> <C-_> :Commentary<cr>
nnoremap <S-b> 0i
nnoremap <S-h> 0
nnoremap <S-l> $
nnoremap <C-\> :Lexplore<cr>
nnoremap <silent> \\ :vsplit<cr> <C-w><C-w>
nnoremap mm <C-w><C-w>
nnoremap <C-Up> :vertical resize +5 <cr>
nnoremap <C-Down> :vertical resize -5 <cr>
nnoremap df d$
nnoremap ds d0
nnoremap ff za
nnoremap <C-a> gg0vG$
" nnoremap zz :wq<cr>
nnoremap dw diw
nnoremap cw ciw
nnoremap <S-u> <C-r>
nnoremap cv c$
nnoremap cx c0
nnoremap <F1> :w !diff % - <CR>

" Visual mode maps
vnoremap jk <Esc>
vnoremap <C-_> :Commentary<cr>
vnoremap <C-y> :w !xclip -sel clip <cr> <cr>
