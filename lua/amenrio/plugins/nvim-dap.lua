return {
  {
    'mfussenegger/nvim-dap',
    keys = {
      {
        "<F5>",
        function()
          require('dap').continue()
        end,
        desc = "DAP continue"
      },
      {
       "<Leader>dh",
        function()
          require('dap.ui.widgets').hover()
        end,
        desc = "DAP hover"
      }
    }
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require("dap-python").setup("$XDG_CONFIG_HOME/nvim/venv/bin/python")
    end
  }
}
