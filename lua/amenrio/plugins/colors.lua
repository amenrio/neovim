return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        on_colors = function(colors)
          colors.bg_visual = "#438899"
        end,
      })
    end,
  },
  {
    'comfysage/evergarden',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      transparent_background = true,
      contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
      overrides = {},           -- add custom overrides
    }
  },
  {
    'neanias/everforest-nvim',
    name = 'everforest',
    version = false,
    lazy = false,
    priority = 1000,
    opts = {
      background = "hard",
    }
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    opts = {
      theme = 'wave',
    }
  }
}
