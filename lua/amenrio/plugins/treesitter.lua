return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-context",
    },
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "python", "lua", "json", "markdown", "markdown_inline", "vim", "vimdoc" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        -- Parameters that linter seems to think are necessary
        modules = {},
        sync_install = false,
        ignore_install = {},
      })
    end,
  },
}

