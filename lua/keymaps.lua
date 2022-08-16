local map = vim.keymap.set
local default_options = { silent = true }
local expr_options = { expr = true, silent = true }

map({ "n", "v" }, "<Space>", "<Nop>", default_options )
vim.g.mapleader = " "

map("n", "<C-p>", "<cmd>Telescope find_files<cr>", default_options)

-- Tab switch buffer
map("n", "<TAB>", ":bnext<CR>", default_options)
map("n", "<S-TAB>", ":bprev<CR>", default_options)

-- paste over currently selected text without yanking it
map("v", "p", '"_dP', default_options)

-- Y to yank to end of line
map("n", "Y", "y$", default_options)
