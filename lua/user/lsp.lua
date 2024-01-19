local lspconfig = require('lspconfig');

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})  -- View documentation of current function.
end

lspconfig['rust_analyzer'].setup({
  on_attach = on_attach
});

lspconfig['denols'].setup({
  on_attach = on_attach
});

lspconfig['clangd'].setup({
  on_attach = on_attach,
  cmd = {"clangd-12"}
});

lspconfig['hls'].setup({
  on_attach = on_attach
});
