return{
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
  }
