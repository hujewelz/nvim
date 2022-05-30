-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'vim-airline/vim-airline' -- Status bar
  use 'rafi/awesome-vim-colorschemes'
  use 'ap/vim-css-color' 
  use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'

  -- File tree
  use 'kyazdani42/nvim-web-devicons' --for file icons
  use 'kyazdani42/nvim-tree.lua'

  use 'godlygeek/tabular'
  use 'plasticboy/vim-markdown'
  use 'junegunn/goyo.vim'
  use 'airblade/vim-gitgutter'
  use 'rust-lang/rust.vim'

  -- To enable more of the features of rust-analyzer, such as inlay hints and more!
  use 'simrat39/rust-tools.nvim'
  -- Collection of common configurations for the Nvim LSP client
  use 'neovim/nvim-lspconfig'

  --Completion framework
  use 'hrsh7th/nvim-cmp'

  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Other usefull completion sources
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  -- Fuzzy finder
  -- Optional
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

-- Flutter
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'
  use 'nvim-lua/plenary.nvim'
  use 'akinsho/flutter-tools.nvim'

-- Finder over lists
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
end)