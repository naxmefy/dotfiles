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

" install vim plug if not exists
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
    let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
    let curl_exists=expand('curl')
endif
let g:vim_bootstrap_langs = "rust"
let g:vim_bootstrap_editor = "nvim"             " nvim or vim
let g:vim_bootstrap_theme = "molokai"
let g:vim_bootstrap_frams = ""
if !filereadable(vimplug_exists)
    if !executable(curl_exists)
        echoerr "You have to install curl or first install vim-plug yourself!"
        execute "q!"
    endif
    echo "Installing Vim-Plug..."
    echo ""
    silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    let g:not_finish_vimplug = "yes"

    autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('~/.config/nvim/plugged'))

" telescope
Plug 'nvim-telescope/telescope.nvim'

" color
Plug 'gruvbox-community/gruvbox'

" statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" close tag
Plug 'Raimondi/delimitMate'

" noexpreq
Plug 'majutsushi/tagbar'

" grep tools
Plug 'vim-scripts/grep.vim'

" linting
Plug 'dense-analysis/ale'

" shows indention lines
Plug 'Yggdroot/indentLine'

" lsp
" Plug 'neovim/nvim-lspconfig'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none
