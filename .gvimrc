filetype on " Automatically detect file types
set nocompatible
" Add recently accessed projects menu
set viminfo ^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change wich file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf " Enable error files & error jumping
set clipboard+=unnamed " Yanks go on clipboard instead
set history=256	" Number of things to remember in history
set autowrite " Writes on make/shell commands
set ruler " Ruler on
set nu "Line numbers on
set nowrap " Disable line wrapping
set timeoutlen=250 "Time to wait after ESC default causes an annoying delay
colorscheme wombat " Esquema de colores

" Formatting (some of these are for coding in C++)
set ts=2 " Tabs are 2 spaces
set bs=2 " Backspace over everything in insert mode
set shiftwidth=2 " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case,each
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

"Visual
set showmatch "Show matching brakets
set mat=5 "Braket blinking
set list

"Show $ at the end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell " No blinking
set noerrorbells " No noise
set laststatus=2 " Always show status line
set hlsearch " Enable highlight on search

" gvim specific
set mousehide " Hide mouse after chars typed
set mouse=a " Mouse in all modes

filetype off
filetype indent plugin on

source $VIMRUNTIME/mswin.vim
behave mswin

set expandtab "Tabs are spaces

" Styntax hilightning for .ejs files as pure HTML
au BufNewFile,BufRead *.ejs set filetype=html

" Emable matchit
runtime macros/matchit.vim

" Mapleader to ","
:let mapleader = ","

" Enable NerdTree to change to the directory you 'stand on'
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

" Highlight Trailing Spaces
set list                        " show invisible characters
set listchars=tab:>·,trail:·    " but only show tabs and trailing whitespace

" Change focus in windows with Ctrl + <direction>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

command hash19 execute ":%s/:\([^ ]*\)\(\s*\)=>/\1:/g"
