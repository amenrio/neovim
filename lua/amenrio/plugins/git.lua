return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
    },
    keys = {
      {
        "<leader>nc",
        function ()
          local neogit = require("neogit")
          neogit.open({"commit"})
        end,
        desc = "Open [G]it [C]ommit Popup",
      },
      {
        "<leader>np",
        function()
          local neogit = require("neogit")
          neogit.open({"pull"})
        end,
        desc = "Open [G]it [P]ull Popup",
      },
      {
        "<leader>nb",
        function()
          local neogit = require("neogit")
          neogit.open({"branch"})
        end,
        desc = "Open [G]it [B]ranch Popup",
      },
      {
        "<leader>nd",
        function()
          local neogit = require("neogit")
          neogit.open({"diff"})
        end,
        desc = "Open [G]it [D]iff Popup",
      },
      {
        "<leader>ng",
        function()
          local neogit = require("neogit")
          neogit.open({ kind = "floating" })
        end,
        desc = "Open [G]it with Neo[G]it",
      },
    },
  },
}
