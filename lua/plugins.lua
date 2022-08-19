local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

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
    config = function ()
      require("setup.telescope")
    end
  })

  use({
    "ahmedkhalf/project.nvim",
    config = function ()
      require("setup.project")
    end,
  })

  -- TreeSitter
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("setup.treesitter")
    end,
  })

  -- lualine
  use ({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function ()
      require("setup.lualine")
    end,
  })

  -- Autopairs
  use({
    "windwp/nvim-autopairs",
    config = function ()
      require("setup.nvim-autopairs")
    end,
  })

  -- Nvim Tree
  use({
    "kyazdani42/nvim-tree.lua",
    config = function ()
      require("setup.nvim-tree")
    end,
  })

  -- BufDelete ( close buffer leave the window )
  use("famiu/bufdelete.nvim")

  -- Lightspeed motion plugin
  use("ggandor/lightspeed.nvim")

  -- Which Key
  use ({
    "folke/which-key.nvim",
    config = function ()
      require("setup.which-key")
    end,
  })

  -- Comments
  use ({
    "terrortylor/nvim-comment",
    config = function ()
      require("setup.nvim-comment")
    end,
  })

  -- Bufferline
  use({
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    requires = "kyazdani42/nvim-web-devicons",
    config = function ()
      require("setup.bufferline")
    end,
  })

  -- Completion
  use({
    "onsails/lspkind-nvim",
    requires = { "famiu/bufdelete.nvim" },
  })

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
    config = function ()
      require("setup.cmp")
    end,
  })

  -- Snippets
  use({ "rafamadriz/friendly-snippets" })

  use({
    "L3MON4D3/LuaSnip",
    requires = "saadparwaiz1/cmp_luasnip",
    config = function ()
      require("setup.luasnip")
    end,
  })

  -- LSP
  use({
    "neovim/nvim-lspconfig",
    config = function ()
      require("setup.lsp")
    end,
  })

  use({
    "williamboman/mason.nvim",
    config = function ()
      require("setup.mason")
    end,
  })

  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function ()
      require("setup.null-ls")
    end,
  })

  -- Git Things
  use({
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("setup.gitsigns")
    end,
  })

  -- use ({
  --   'sindrets/diffview.nvim',
  --   requires = 'nvim-lua/plenary.nvim',
  --   config = function ()
  --     require("setup.diffview")
  --   end,
  -- })

  use ({
    'TimUntersberger/neogit',
    requires = 'nvim-lua/plenary.nvim',
    config = function ()
      require("setup.neogit")
    end,
  })

  -- Utility plugins
  use({
    "RRethy/vim-illuminate",
    config = function ()
      require("setup.illuminate")
    end,
  })

  use("SmiteshP/nvim-navic")

  -- ToggleTerm
  use({
    "akinsho/toggleterm.nvim",
    tag = 'v2.*',
    config = function ()
      require("setup.toggleterm")
    end,
  })

  -- Alpha Dashboard
  use ({
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
      require("setup.alpha")
    end,
  })

end)
