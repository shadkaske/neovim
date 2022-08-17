require("which-key").setup({})

local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    e = { "<cmd>NvimTreeToggle<cr>", "Explorer", },
    h = { "<cmd>nohlsearch<cr>", "Turn off Highlight" },
    f = {
      name = "+File",
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent Files"},
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
  }
})
