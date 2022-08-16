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
-- Spaces not tabs
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.mouse = 'a'
vim.opt.timeoutlen = 300
vim.opt.hidden = true
vim.opt.cmdheight = 1
vim.opt.title = true
vim.opt.scrolloff = 3
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.lazyredraw = true

vim.opt.errorbells = false
vim.opt.visualbell = true
