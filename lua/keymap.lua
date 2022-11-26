-- vim.ap.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})

local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

local opts = { noremap = true }
local function nkeymap(key, mappedTo) 
    keymap('n', key, mappedTo, opts)
end

nkeymap('<leader>ff', ':Telescope find_files')
nkeymap('<C-f>', ':NvimTreeFocus<CR>')
nkeymap('<C-n>', ':NvimTreeToggle<CR>')
nkeymap('<C-r>', ':NvimTreeRefresh<CR>')
nkeymap('<C-a>', ':RustCodeAction<CR>')
nkeymap('<C-g>', ':Goyo<CR>')
nkeymap('<Space>', ':')


-- Code navigation shortcuts
nkeymap('<silent><c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
nkeymap('<silent>K', '<cmd>lua vim.lsp.buf.hover()<CR>')
nkeymap('<silent>gD', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nkeymap('<silent><c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nkeymap('<silent>1gD',  '<cmd>lua vim.lsp.buf.type_definition()<CR>')
nkeymap('<silent>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nkeymap('<silent>g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
nkeymap('<silent>gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
nkeymap('<silent>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')

-- Code action
nkeymap('<silent> ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')

-- Goto previous/next diagnostic warning/error
nkeymap('<silent> g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
nkeymap('<silent> g]', '<cmd>lua vim.diagnostic.goto_next()<CR>')

-- bufferline
nkeymap('<silent> b]', ':BufferLineCyclePrev<CR>')
nkeymap('<silent> [b', ':BufferLineCycleNext<CR>')
