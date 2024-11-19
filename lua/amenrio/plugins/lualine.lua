return{
  'nvim-lualine/lualine.nvim',
  dependencies = {'nvim-tree/nvim-web-devicons'},
  config = function ()
    local lazy_status = require('lazy.status')
    require('lualine').setup({
      options = {
        theme = 'everforest',
        component_separators = {left = '|', right = '|'},
        section_separators = {left = '', right = ''},
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        }
      }
    })
  end
}
