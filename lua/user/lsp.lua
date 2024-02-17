local lspconfig = require('lspconfig');

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})  -- View documentation of current function.
end

lspconfig['lua_ls'].setup({ on_attach = on_attach });
lspconfig['cssls'].setup({ on_attach = on_attach });
lspconfig['html'].setup({ on_attach = on_attach });
lspconfig['rust_analyzer'].setup({ on_attach = on_attach });
lspconfig['denols'].setup({ on_attach = on_attach });
lspconfig['clangd'].setup({ on_attach = on_attach });
lspconfig['hls'].setup({ on_attach = on_attach });
