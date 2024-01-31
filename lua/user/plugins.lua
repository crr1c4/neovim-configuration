local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("user/plugins/tokyonight"),
  require('user/plugins/lualine'),
  require('user/plugins/cmp'),
  require('user/plugins/comment'),
  require("user/plugins/treesitter"),
  require("user/plugins/nvim-tree"),
  require('user/plugins/nvim-autopairs'),
  require('user/plugins/noice'),
  require('user/plugins/telescope'),
  require('user/plugins/trouble'),  
  require('user/plugins/toggleterm'),
  require('user/plugins/mini-indentscope'),
  require('user/plugins/nvim-colorizer'),
  require('user/plugins/todo-comments')
});

