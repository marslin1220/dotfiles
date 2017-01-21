"Use pathogen to sync vim bundle
call pathogen#infect()
call pathogen#helptags()

set nocompatible
set number
set ruler
set secure
set novisualbell

set showcmd
set noshowmatch
set showmode

set display=lastline
set hlsearch
set wrapscan

set autoindent
set nocindent
set nosmartindent

set backspace=indent,start
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=8

set nolinebreak
set wrap

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,shift-jis,gbk,big5
set termencoding=utf-8

set fileformat=unix
set fileformats=unix,dos,mac

set t_Co=256

set mouse=a

filetype on
syntax on

colorscheme Dusk
hi Normal ctermfg=NONE

au Syntax * colorscheme Dusk
au BufNewFile,BufRead *.phtml,*.inc set syntax=php

"vim tab快速鍵
map <C-Right> :tabnext<CR>
map <C-Left>  :tabprevious<CR>

"terminal  下，上面要改成下面，這裡的^[ 是insert mode中 <CTRL>v<ESC>
"map ^[[D :tabprev<CR>
"map ^[[C :tabnext<CR>

"若還是不行，建議改用ctrl+n (next) 、ctrl+p (previous) 減少困擾
"map <C-n> :tabnext<CR>
"map <C-p>  :tabprevious<CR>

"新分頁
nmap <C-n> :tabnew<cr>
imap <C-n> <ESC>:tabnew<cr>

"關閉分頁
nmap <C-w> :tabclose<CR>

"設定vim -p 檔案上限，不然會有限制的開啟前部分的檔案，後面就沒看到了。
set tabpagemax=1000
