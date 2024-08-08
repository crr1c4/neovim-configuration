return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup({
      size = 20,
      direction = 'horizontal',
      -- border = 'curved'
    })
  end
}
