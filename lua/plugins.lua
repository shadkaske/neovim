local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
local function get_config(name)
  return string.format('require("config/%s")', name)
end

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    "git",
    "clone",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer...")
  vim.api.nvim_command("packadd packer.nvim")
end

-- initialize and configure packer
local packer = require("packer")

packer.init({
  enable = true, -- enable profiling via :PackerCompile profile=true
  threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
  max_jobs = 20, -- Limit the number of simultaneous jobs. nil means no limit. Set to 20 in order to prevent PackerSync form being "stuck" -> https://github.com/wbthomason/packer.nvim/issues/746
  -- Have packer use a popup window
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

packer.startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")

  -- OneDark Theme
  use("navarasu/onedark.nvim")

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
    config = get_config("telescope"),
  })

  use({ "nvim-telescope/telescope-packer.nvim" })

  -- TreeSitter
  use({
    "nvim-treesitter/nvim-treesitter",
    config = get_config("treesitter"),
    run = ":TSUpdate",
  })

  -- Lua Line
  use({
    "nvim-lualine/lualine.nvim",
    config = get_config("lualine"),
    event = "VimEnter",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })

  -- Autopairs
  use({ "windwp/nvim-autopairs", config = get_config("nvim-autopairs") })

  -- Nvim Tree
  use({ "kyazdani42/nvim-tree.lua", config = get_config("nvim-tree") })

  -- BufDelete ( close buffer leave the window )
  use("famiu/bufdelete.nvim")

  -- Lightspeed motion plugin
  use({ "ggandor/lightspeed.nvim" })

end)
