return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        sh = { "beautysh" },
      },
    })
  end,
  keys = {
    {
      "<leader>gf",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = true,
          timeout_ms = 2000,
        })
      end,
      desc = "[F]ormat buffer"
    },
  },
}

