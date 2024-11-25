return {
  "ThePrimeagen/refactoring.nvim",
  name = "refactoring",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  lazy = false,
  opts = {},
  keys = {
    {
      mode="x",
      "<leader>re",
      "<cmd>Refactor extract <cr>",
      desc = "[R]efactor [E]xtract",
    },
    {
      mode="x",
      "<leader>rf",
      "<cmd>Refactor extract_to_file <cr>",
      desc = "[R]efactor Extract to [F]ile",
    },
    {
      mode = "x",
      "<leader>rv",
      "<cmd>Refactor extract_var <cr>",
      desc = "[R]efactor Extract [V]ar",
    },
    {
      mode = {"n","x"},
      "<leader>riv",
      "<cmd>Refactor inline_var <cr>",
      desc = "[R]efactor [I]nline [V]ar",
    },
    {
      mode = "n",
      "<leader>rif",
      "<cmd>Refactor inline_func <cr>",
      desc = "[R]efactor [I]nline [F]unc",
    },
    {
      mode = "n",
      '<leader>rb',
      "<cmd>Refactor extract_block<cr>",
      desc = "[R]efactor [B]lock",
    },
    {
      mode = "n",
      '<leader>rbf',
      "<cmd>Refactor extract_block<cr>",
      desc = "[R]efactor [B]lock to [F]ile",
    }
  }
}

