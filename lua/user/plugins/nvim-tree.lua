--[[ return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup({
      sort = { sorter = 'case_sensitive' },
      renderer = { group_empty = true },
      filters = { dotfiles = true },
      view = {
        width = 30,
        side = "left",
        signcolumn = "no"
      }
    })
  end
} ]]
