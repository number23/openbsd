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

"set encoding=prc
"set fileencoding=prc
"set fileencodings=prc

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

map <F8> :VTreeExplore<CR>
map <F9> :TlistToggle<CR>
map <F11> gg=G
map <F12> :%s= *$==<cr>
"map <C-T> :tabnew<CR>
"map <C-W> :tabclose<CR>
map <S-Left> :tabprev<CR>
map <S-Right> :tabnext<CR>
map <C-Left> :bp<CR>
map <C-Right> :bn<CR>
map <F4> :bd<CR>
map <C-Q> :bdelete<CR>

"==== omni
imap <C-L> <C-x><C-o>

if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif " has("autocmd")

"minibufexplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" http://www.vim.org/scripts/script.php?script_id=1000
"A collection of C extension Vim syntax. $HOME/.vim/after/syntax
"let glib_enable_deprecated = 1
"let glib_deprecated_errors = 1

" load snippest
" cd svnroot
" svn checkout http://snippetsemu.googlecode.com/svn/trunk/ snippetsemu-read-only
"set runtimepath+=~/svnroot/snippetsemu-read-only
"set runtimepath+=~/svnroot/snippetsemu-read-only/after

"---------------------------------------------------------------------------------
"autocmd bufnewfile *.py call setline(1,'#! /usr/bin/env python') |
"    \ call setline(2,'# -*- coding: utf-8 -*-') |
"    \ call setline(3,'') |
"    \ call setline(4, strftime("# Create Date: %F %T")) |
"    \ call setline(5,'# Author: number23') |
"    \ call setline(6,'# Blog: http://twitter.com/number23_cn') |
"    \ call setline(7,'') |
"    \ call setline(8,'') |
"    \ exe "normal G"

"Python iMaps
"au FileType python inoremap <buffer> $r return
"au FileType python inoremap <buffer> $s self
"au FileType python inoremap <buffer> $c ##<cr>#<space><cr>#<esc>kla
"au FileType python inoremap <buffer> $f from
"au FileType python inoremap <buffer> $i import
"au FileType python inoremap <buffer> $p print
"au FileType python inoremap <buffer> $d """<cr>"""<esc>O

"Java iMaps
"autocmd FileType java inoremap <buffer> $pr private
"autocmd FileType java inoremap <buffer> $r return
"autocmd FileType java inoremap <buffer> $pu public
"autocmd FileType java inoremap <buffer> $i import
"autocmd FileType java inoremap <buffer> $b boolean
"autocmd FileType java inoremap <buffer> $v void
"autocmd FileType java inoremap <buffer> $s String
"autocmd FileType java inoremap <buffer> $e Exception


"set csprg=/usr/local/bin/cscope
"set csto=1
"set nocsverb
"set cst
"cs add ~/.cscope/cscope.out
" ctrl + ]
" ctrl + t / ctrl + o
" cs find
" help cscope


"change work folder
"cd ~/tmp

"set foldenable        " turn on folding
"set foldmethod=indent " make folding indent sensitive
"set foldlevel=100     " don't autofold anything
"set foldopen-=search  " don't open folds when you search into them
"set foldopen-=undo    " don't open folds when you undo stuff


"runtime! ftplugin/man.vim
"use :Man

"   vim *.c
"   :argdo %s/oldvalue/newvalue/g
"
"   %
"   =%
"   gg, G
"   [[, ]]
"   :reg
"     "a5yy
"     "ap
"     "A5yy
"     his c
"     his s
"     :1,5 co 10
"     q
"     :scriptnames
"     :digraphs
"     ga              " hex
"     :set noma       " non modifiable
"     :set ro         " read only
"     #session
"       vim file1.c file2.c
"       :mksession
"       :q
"       vim -S Session.vim
"
"       map : all
"       nmap: normal map
"       vmap: visual map
"       imap: insert map
"
"       b:name        " buffer
"       w:name        " window
"       g:name        " global
"       v:name        " vim
"       a:name        " function param
"
"     :set all
"     :list
"     :augroup

"ab xif if ( ) {<return><return>}<up><up><end><left><left><left><left>
"ab xelsif elsif ( ) {<return><return>}<up><up><end><left><left><left><left>
"ab xelse else {<return><return>}<up><home><space><space><space>
"ab xfor for ( ) {<return><return>}<up><up><end><left><left><left><left>
"ab xforeach foreach ( ) {<return><return>}<up><up><end><left><left><left><left><left><left>
"ab xwhile while ( ) {<return><return>}<up><up><end><left><left><left><left>

"au BufEnter * if &textwidth > 0 | exec 'match Todo /\%>' . &textwidth . 'v.\+/' | endif
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set shiftwidth=4
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set softtabstop=4
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set tabstop=4
"au BufRead,BufNewFile *.py,*.pyw set expandtab                " not use tab
"au BufRead,BufNewFile *.c,*.h set noexpandtab                 " use tab
"au BufRead,BufNewFile Makefile* set noexpandtab
"highlight BadWhitespace ctermbg=red guibg=red
"au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79
"au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
"
":s/aa/bb/g      将光标所在行出现的所有包含 aa 的字符串中的 aa 替换为 bb
":s/\<aa\>/bb/g  将光标所在行出现的所有 aa 替换为 bb, 仅替换 aa 这个单词
":%s/aa/bb/g     将文档中出现的所有包含 aa 的字符串中的 aa 替换为 bb
":12,23s/aa/bb/g 将从12行到23行中出现的所有包含 aa 的字符串中的 aa 替换为 bb
":12,23s/^/#/    将从12行到23行的行首加入 # 字符
":%s= *$==       将所有行尾多余的空格删除
":g/^\s*$/d      将所有不包含字符(空格也不包含)的空行删除.
":g/^/exec "s/^/".strpart(line(".")." ", 0, 4)   在行首插入行号



