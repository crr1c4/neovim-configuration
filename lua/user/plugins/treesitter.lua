return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "cpp", "haskell", "lua", "rust", "javascript", "typescript", 'html', 'css' },
      sync_install = false,
      auto_install = true,
      -- ignore_install = { "" },
      highlight = {
        enable = true,    -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true },
      autotag = { enable = true }
    })
  end
}
