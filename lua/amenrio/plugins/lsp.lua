return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            -- code
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ruff",
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
            })
            lspconfig.ruff.setup({
                capabilities = capabilities,
            })
            lspconfig.pylsp.setup({
                capabilities = capabilities,
            })
        end,
        keys = {
            {
                "<leader>K", function() vim.lsp.buf.hover() end, desc = "Lsp Buffer Hover"
            },
            {
                "gd", function() vim.lsp.buf.definition() end, desc = "Lsp Buffer definition"
            },
            {
                "<leader>ca", function() vim.lsp.buf.code_action() end, desc = "Lsp Buffer code action"
            },
        },
    }
}
