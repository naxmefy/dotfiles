syntax on
filetype plugin indent on

set exrc

set mouse=a
set guicursor=

set nu rnu

set ts=4 sts=4
set sw=4
set si ai et

set noeb
set hid

set nohls is
set scs

set noswf nobk
set udir=~/.vim/undodir udf

set nowrap

set tgc
set so=8

set nosmd
set cot=menuone,noinsert,noselect

set scl=yes

" more space for messages
set ch=2

" Don't pass messages to |ins-completion-menu|
set shm+=c

set cc=80

set ut=50

" include plugins
if filereadable(expand('plugins.vim'))
    source plugins.vim
endif

colorscheme gruvbox
highlight Normal guibg=none
