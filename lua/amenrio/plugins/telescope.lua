return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader><leader>",
      function()
        local tb = require("telescope.builtin")
        tb.buffers()
      end,
      desc = "[  ] Find existing buffers",
    },
    {
      "<leader>sf",
      function()
        local tb = require("telescope.builtin")
        tb.find_files()
      end,
      desc = "Telescope [S]earch [F]iles",
    },
    {
      "<leader>sg",
      function()
        local tb = require("telescope.builtin")
        tb.git_files()
      end,
      desc = "Telescope [S]earch [G]it files",
    },
    {
      "<leader>sk",
      function()
        local tb = require("telescope.builtin")
        tb.keymaps()
      end,
      desc = "Telescope [S]earch [K]eymaps",
    },
    {
      "<leader>sw",
      function()
        local tb = require("telescope.builtin")
        tb.grep_string()
      end,
      desc = "Telescope [S]earch [W]ord",
    },
    {
      "<leader>sl",
      function()
        local tb = require("telescope.builtin")
        tb.live_grep()
      end,
      desc = "Telescope [S]earch [L]ive Grep",
    },
    {
      "<leader>sd",
      function()
        local tb = require("telescope.builtin")
        tb.diagnostics()
      end,
      desc = "Telescope [S]earch [D]iagnostics",
    },
    {
      "<leader>s/",
      function ()
        local tb = require("telescope.builtin")
        tb.live_grep {
          grep_open_files = true,
          prompt_title = "Live Grep in Open Files"
        }
      end,
      desc = "Telescope [S]earch [/] in Open Files"
    },
    {
      "<leader>/",
      function()
        local tb = require("telescope.builtin")
        tb.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown{
          winblend = 10,
          previewer = false,
        })
      end, {desc = "[/] Fuzzily search in current buffer"}
    },
  },
}
