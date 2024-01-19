return {
  'numToStr/Comment.nvim',
  config = function()
    require("Comment").setup({
      extra = {
        above = 'gcO',      
        below = 'gco',
        eol = 'gcA',
      }
    })
  end
}

-- gcc comment line.
-- gbc comment block.
-- gc[n][d] comment line, where n is number of lines and d is direction.
-- gb[n][d] comment line, where n is number of lines and d is direction.
