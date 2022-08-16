-- Plugins
require("plugins")

-- Keybinds
require("keymaps")

-- Color Setup
require("onedark").setup {
  style = 'dark'
}

require("onedark").load()

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
