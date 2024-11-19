return {
  'folke/persistence.nvim',
  event = "BufReadPre",
  opts = {},
  keys = {
    {
      "<leader>qs",
      function()
        require('persistence').load()
      end,
      desc = "Load persistence"
    },
    {
      "<leader>qS",
      function()
        require('persistence').select()
      end,
      desc = "Select persistence session"
    },
    {
      "<leader>ql",
      function()
        require('persistence').load({last = true})
      end,
      desc = "Select persistence session"
    }
  }
}
