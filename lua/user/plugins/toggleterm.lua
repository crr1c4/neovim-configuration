return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup({
      direction = 'float',
      border = 'curved'
    })
  end
}
