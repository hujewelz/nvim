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

lua require('plugins')

colorscheme onedark

set termguicolors
lua require('bufferline').setup{}
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

