local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Block arrow keys
keymap("", "<Up>", "", opts)
keymap("", "<Down>", "", opts)
keymap("", "<Left>", "", opts)
keymap("", "<Right>", "", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Telescope
-- keymap('n', '<leader>f', ":Telescope find_files<CR>", opts)
-- keymap('n', '<leader>g', ":Telescope live_grep<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
keymap("n", [[<S-t>]], ":ToggleTerm<CR>", opts)

function _G.set_terminal_keymaps()
  keymap("t", "<esc>", [[<C-\><C-n>]], opts)
  keymap("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
  keymap("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
  keymap("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- keymap('n', '<leader>t', ':TodoTelescope<CR>', opts)
-- keymap('n', '<leader>w', ':TroubleToggle<CR>', opts)

local wk = require('which-key')

wk.register({
  ["<leader>q"] = { vim.diagnostic.open_float, "Show diagnostics" },
  ["<leader>e"] = { ":Neotree toggle<cr>", "Toggle file tree" },
  ["<leader>m"] = { ":MarkdownPreviewToggle<cr>", "Markdown Preview" },
  -- Telescope
  ['<leader>t'] = { name = "Telescope (fuzzy finder) keymaps..." },
  ['<leader>tf'] = { ':Telescope find_files theme=ivy<CR>', "Find files." },
  ['<leader>tg'] = { ':Telescope live_grep theme=ivy<CR>', "Live grep." },
  ['<leader>tt'] = { ':TodoTelescope theme=ivy<CR>', "Find todos." },
  ['<leader>td'] = { ':Telescope diagnostics theme=ivy<CR>', "Show diagnostics" },
  -- LSP octions
  ['<leader>l'] = { name = "Language Server Protocol keymaps..." },
  ['<leader>lr'] = { vim.lsp.buf.rename, 'Rename symbol.' },
  ['<leader>lc'] = { vim.lsp.buf.code_action, 'Code actions.' },
  ['<leader>ld'] = { vim.lsp.buf.definition, 'Go to definition.' },
  ['<leader>li'] = { vim.lsp.buf.implementation, 'Go to implementation.' },
  -- ['<leader>le'] = { require('telescope.builtin').lsp_references, 'Go to references' },
  ['<leader>lf'] = { vim.lsp.buf.format, 'Format file.' },
  ['<leader>ls'] = { vim.lsp.buf.hover, 'View documentation.' },
})
