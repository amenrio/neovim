return {
  "mbbill/undotree",
  keys = {
    {
      "<leader>u",
      function()
        vim.cmd.UndotreeToggle()
      end,
      desc = "Undotree toggle",
    },
  },
  config = function()
    vim.g.undotree_WindowLayout = 2
  end,
}
