return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      -- code
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pylsp",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                "vim",
              },
            },
          },
        },
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        settings = {
          pylsp = {
            plugins = {
              black = { enable = true },
              autopep8 = { enable = false },
              yapf = { enabled = false },
              -- linter options
              pylint = { enabled = true, executable = "pylint" },
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },

              pylsp_mypy = { enabled = true },
              jedi_completion = { fuzzy = true },
              pyls_isort = { enabled = true },
            }
          }
        }
      })
    end,
  },
}
