set dir=~/.vim/swp
set backup
set backupdir=~/.vim/backup/
set backupext=.bak

set autoindent        "always set autoindenting on
set smartindent       "set smart indent
set smarttab          "use tabs at the start of a line, spaces elsewhere
set expandtab         "not use tab
set tabstop=4 softtabstop=4 shiftwidth=4
set linespace=4
set backspace=2

set smartcase
set ignorecase        " easier to ignore case for searching
set incsearch         " do incremental searching
set hlsearch          " highlighting the last used search pattern. or :noh
"set list             " show chars on end of line, whitespace, etc
"set nowrap           " do not wrap lines

set wildmenu          " command-line completion operates in an enhanced mode
set history=50        " keep 50 lines of command line history
set mouse=a           " set mouse functions

"don't make noise
set noerrorbells
set novisualbell

filetype on           " detect the type of file
filetype plugin on    " load plugin
filetype indent on
syntax on             " syntax highlighting on
set fileformats=unix,dos
set textwidth=80
set ruler             " show current positions along the bottom
"set number            " show line number
set paste             " paste context with format


" zc: close
" zo: open
" zf: create
" zd: delete
set fdm=marker

set encoding=utf-8
set fileencoding=utf-8
"set fileencodings=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

if has("gui_running")
    set lines=25
    set columns=80
    set lazyredraw
    set guioptions-=m
    set guioptions-=T
"set guifont=Consolas\ 12
    set guifont=Monaco\ 12
endif

"auto change work dir
set autochdir

"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
map <F8> :Explore<CR>
map <F9> :TlistToggle<CR>
map <F4> :bdelete<CR>
map <C-Q> :bdelete<CR>
" Ctrl + C
nmap <C-C> "+y<CR>
"insert mode
imap <c-s> <c-o>:up<cr>
nmap <c-s> :up<cr>
imap <c-v> <c-o>"+gP
imap <c-z> <c-o>u
imap <c-y> <c-o><c-r>

"==== omni
imap <C-L> <C-x><C-o>
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
" for Clojure
au Bufenter,Bufnewfile *.clj setl complete+=k~/.clj_completions


"minibufexplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
function RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()


"   map : all
"   nmap: normal map
"   vmap: visual map
"   imap: insert map
"
"   b:name        " buffer
"   w:name        " window
"   g:name        " global
"   v:name        " vim
"   a:name        " function param
"
"   :argdo %s/oldvalue/newvalue/g
"   :1,5 co 10
"   ga              " hex
"   :set noma       " non modifiable
"   :set ro         " read only
"   #session
"       vim file1.c file2.c
"       :mksession
"       vim -S Session.vim
