local lspconfig = require('lspconfig');
local cmp_nvim_lsp = require('cmp_nvim_lsp');

local capabilities = cmp_nvim_lsp.default_capabilities()

--[[ local on_attach = function(_, _)
  -- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  -- vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
  -- vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
  -- vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})  -- View documentation of current function.
end ]]

lspconfig['lua_ls'].setup({});
lspconfig['cssls'].setup({ capabilities = capabilities });
lspconfig['html'].setup({ capabilities = capabilities });
lspconfig['rust_analyzer'].setup({});
lspconfig['denols'].setup({});
lspconfig['clangd'].setup({});
lspconfig['hls'].setup({});
lspconfig['pyright'].setup({});
lspconfig['marksman'].setup({ capabilities = capabilities });
