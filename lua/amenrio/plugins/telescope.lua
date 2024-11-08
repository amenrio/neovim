return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader><leader>",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files()
        end,
        desc = "Telescope find files",
      },
      {
        "<leader>lg",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
        desc = "Telescope find files",
      },
      {
        "<leader>gr",
        function()
          local builtin = require("telescope.builtin")
          builtin.lsp_references()
        end,
        desc = "Telescope find files",
      },
    },
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
        pickers = {
          live_grep = {
            glob_pattern = { "!.git" },
            find_command = { "rg", "--color", "never", "--hidden", "--no-require-git", "--sort", "--trim" },
            prompt_prefix = "   ",
          },
          lsp_references = {
            fname_width = 40,
            include_declaration = false,
            trim_text = true,
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
