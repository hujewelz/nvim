syntax enable 
filetype plugin indent on
set number
set relativenumber
set nu
set showmatch
set mat=2
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4
set mouse=a
set cursorline
set showcmd
set noeb
set laststatus=2
set ruler
set autoindent
set encoding=utf-8
set clipboard=unnamedplus " 开启系统剪切板
set showtabline=1
set tabpagemax=15

call plug#begin()

Plug 'vim-airline/vim-airline' " Status bar
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color' " CSS Color Preview

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" File tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'
" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Completion framework
Plug 'hrsh7th/nvim-cmp'

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'

" Fuzzy finder
" Optional
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'

" Finder over lists
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

colorscheme onedark

" Goyo
let g:goyo_height = '98%'
let g:goyo_width = 200

let g:vim_markdown_folding_disabled = 1

let g:rustfmt_autosave = 1


lua require('keymap')
lua require('nvim-tree-cfg')


" rust-analyzer LSP and completion
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c
lua require('lsp-cfg')
lua require('completion-cfg')


" Improe the diagnostics experience
" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)

