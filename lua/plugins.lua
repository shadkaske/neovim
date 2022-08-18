local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local function get_setup(name)
  return string.format('require("setup.%s")', name)
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
  })

  -- TreeSitter
  use({
    "nvim-treesitter/nvim-treesitter",
  })

  -- lualine
  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })
  -- Galaxy Line
  -- use({
  --   "NTBBloodbath/galaxyline.nvim",
  --   -- your statusline
  --   config = function()
  --     require("galaxyline.themes.eviline")
  --   end,
  --   -- some optional icons
  --   requires = { "kyazdani42/nvim-web-devicons", opt = true }
  -- })

  -- Autopairs
  use("windwp/nvim-autopairs")

  -- Nvim Tree
  use("kyazdani42/nvim-tree.lua")

  -- BufDelete ( close buffer leave the window )
  use("famiu/bufdelete.nvim")

  -- Lightspeed motion plugin
  use("ggandor/lightspeed.nvim")

  -- Which Key
  use ("folke/which-key.nvim")

  -- Comments
  use ("terrortylor/nvim-comment")

  -- Bufferline
  use({
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    requires = "kyazdani42/nvim-web-devicons",
  })

  -- Completion
  use({ "onsails/lspkind-nvim", requires = { "famiu/bufdelete.nvim" } })
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "f3fora/cmp-spell",
      "hrsh7th/cmp-calc",
      "lukas-reineke/cmp-rg",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
  })

  -- Snippets
  use({ "rafamadriz/friendly-snippets" })

  use({
    "L3MON4D3/LuaSnip",
    requires = "saadparwaiz1/cmp_luasnip",
  })

  -- LSP
  use("neovim/nvim-lspconfig")

  use("williamboman/mason.nvim")

  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Git Things
  use({
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  -- Utility plugins
  use("RRethy/vim-illuminate")

  use("SmiteshP/nvim-navic")

  -- ToggleTerm
  use({
    "akinsho/toggleterm.nvim",
    tag = 'v2.*'
  })

  -- Alpha Dashboard
  use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
  }

end)

require("setup.treesitter")
require("setup.nvim-tree")
require("setup.bufferline")
require("setup.nvim-comment")
require("setup.nvim-autopairs")
require("setup.which-key")
require("setup.telescope")
require("setup.lualine")
require("setup.luasnip")
require("setup.cmp")
require("setup.lsp")
require("setup.mason")
require("setup.illuminate")
require("setup.null-ls")
require("setup.gitsigns")
require("setup.diffview")
require("setup.neogit")
require("setup.toggleterm")
require("setup.alpha")
