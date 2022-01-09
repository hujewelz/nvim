syntax on
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


call plug#begin()

Plug 'vim-airline/vim-airline' " Status bar
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color' " CSS Color Preview

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme afterglow

map <C-r> :source ~/.config/nvim/init.vim<CR>
map <C-g> :Goyo<CR>

map <C-f> :NERDTreeFocus<CR>
map <C-t> :NERDTreeToggle<CR>

nnoremap <UP>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
