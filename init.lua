-- Plugins
require("plugins")

-- Keybinds
require("keymaps")

-- Autocmds
require("autocmd")

-- Color Setup
require("onedark").setup {
  style = 'dark'
}

require("onedark").load()

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

