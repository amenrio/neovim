return{
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup({

    })
  end,
  keys = {
    {
      "<leader>S",
      "<cmd>GrugFar<cr>",
      desc = "Global [S]earch & Replace"
    }
  }
}
