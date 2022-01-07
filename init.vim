call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/nerdtree' " NerdTree

call plug#end()

set encoding=UTF-8
set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab " 自定将 Tab 转为 space
set smarttab
set softtabstop=4
set mouse=a
set cursorline " 光标所在行高亮
filetype indent on


colorscheme afterglow

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
