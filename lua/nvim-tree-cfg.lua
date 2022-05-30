-- https://github.com/kyazdani42/nvim-tree.lua
require'nvim-tree'.setup {
  renderer = {
      icons = {
        git_placement = "after",
        glyphs = {
            folder = {
                arrow_closed = "‣",
                arrow_open = "▾"
            }
        }
      }
  }
}
