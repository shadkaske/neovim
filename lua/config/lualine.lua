require('lualine').setup {
  options = {
    theme = 'onedark',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = ' ', right = ' '},
  },
  sections = {
    lualine_a = {
      {
        'mode',
        fmt = function (str)
          return str:sub(1,1)
        end
      }
    }
  }
}
