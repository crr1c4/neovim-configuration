return {
  'folke/tokyonight.nvim',
  'chriskempson/base16-vim',
  -- 'ellisonleao/gruvbox.nvim'
  'nvim-lualine/lualine.nvim',
  'hrsh7th/nvim-cmp', 
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',
  'neovim/nvim-lspconfig',
  'numToStr/Comment.nvim',
  -- 'norcalli/nvim-colorizer.lua',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
       'nvim-tree/nvim-web-devicons',
     }
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {}
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    }
  }, 
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {}
  },
--[[   {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  } ]]
}

