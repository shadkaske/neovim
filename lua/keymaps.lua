local map = vim.keymap.set
local default_options = { silent = true }
local expr_options = { expr = true, silent = true }

vim.g.mapleader = " "

map("n", "<C-p>", "<cmd>Telescope find_files<cr>", default_options)

-- Tab switch buffer
map("n", "<TAB>", ":bnext<CR>", default_options)
map("n", "<S-TAB>", ":bprev<CR>", default_options)

-- paste over currently selected text without yanking it
map("v", "p", '"_dP', default_options)

-- Y to yank to end of line
map("n", "Y", "y$", default_options)

-- Close Window with C-q
map("n", "<C-q>", "<C-w>q", default_options)

-- Add line above or below without insert mode
map("n", "[o", "o<esc>", default_options)
map("n", "]o", "O<esc>", default_options)

-- Pane navigation
map("n", "<C-j>", "<C-w>j", default_options)
map("n", "<C-k>", "<C-w>k", default_options)
map("n", "<C-l>", "<C-w>l", default_options)
map("n", "<C-h>", "<C-w>h", default_options)
