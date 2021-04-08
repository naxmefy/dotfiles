" include vim_plug
let custom_vimplug_file = expand('%:p:h') . '/vim_plug.vim'
if filereadable($custom_vimplug_file)
    source $custom_vimplug_file
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
