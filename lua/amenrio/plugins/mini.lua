return {
  {
    "echasnovski/mini.surround",
    version = false,
    config = function()
      require("mini.surround").setup({
        search_method = "cover_or_nearest",
      })
    end,
  },
}
