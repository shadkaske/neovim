require("which-key").setup({})

local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    w = { "<cmd>w!<CR>", "Save" },
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer", },
    h = { "<cmd>nohlsearch<cr>", "Highlight" },
    n = { "<cmd>ene!<cr>", "New File" },
    f = {
      name = "+File",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent Files"},
      g = { "<cmd>Telescope live_grep<cr>", "Live Grep Files"},
      p = { "<cmd>Telescope projects<cr>", "Projects" }
    },
    P = {
      name = "+Packer",
      i = { "<cmd>PackerInstall<cr>", "Install" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      c = { "<cmd>PackerCompile<cr>", "Compile" },
    },
    g = {
      name = "+Git",
      s = { "<cmd>Neogit<cr>", "Neogit Status" },
    },
    b = {
      name = "+Buffers",
      d = { "<cmd>Bdelete<cr>", "Close" },
      c = { "<cmd>BufferLinePick<cr>", "Change Buffer"},
      n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer"},
      p = { "<cmd>BufferLineCyclePrev<cr>", "Previous Buffer"},
      N = { "<cmd>BufferLineMoveNext<cr>", "Move Buffer Next"},
      P = { "<cmd>BufferLineMovePrev<cr>", "Move Buffer Previous"},
    },
    c = {
      name = "+Nvim Config",
      r = { "<cmd>luafile %<cr>", "Reload Current File" },
      R = { "<cmd>luafile ~/.config/nvim/init.lua<cr>", "Reload Config" },
    },
    t = {
      name = "+Terminal",
      t = { "<cmd>ToggleTerm<cr>", "ToggleTerm" },
    },
  }
})
