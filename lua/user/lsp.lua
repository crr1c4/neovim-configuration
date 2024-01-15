-- https://github.com/LuaLS/lua-language-server

local lspconfig = require('lspconfig');

lspconfig['rust_analyzer'].setup({});
lspconfig['denols'].setup({});
lspconfig['clangd'].setup({
  cmd = {"clangd-12"}
});
lspconfig['hls'].setup({});
