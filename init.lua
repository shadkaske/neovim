-- Options
require("options")

-- Plugins
require("plugins")

-- Keybinds
require("keymaps")

-- Autocmds
require("autocmd")

-- Color Setup
require("onedark").setup {
  style = 'dark',
  transparent = true,
  term_colors = false,
}

require("onedark").load()

