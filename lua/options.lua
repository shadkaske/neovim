local o = vim.opt

-- Options
o.number = true
o.relativenumber = true
-- Spaces not tabs
o.smarttab = true
o.tabstop = 2
o.softtabstop = 4
o.shiftwidth = 2
o.expandtab = true
o.mouse = 'a'
o.timeoutlen = 300
o.hidden = true
o.cmdheight = 1
o.title = true
o.scrolloff = 3
o.splitbelow = true
o.splitright = true

o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.lazyredraw = true

o.errorbells = false
o.visualbell = true

o.termguicolors = true

o.shortmess:append "c" -- don't show redundant messages from ins-completion-menu
o.shortmess:append "I" -- don't show the default intro message
o.whichwrap:append "<,>,[,],h,l"

o.signcolumn = "yes"

o.undofile = true

o.backup = false

o.clipboard = "unnamedplus"

