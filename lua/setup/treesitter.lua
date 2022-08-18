require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "bash",
    "css",
    "cmake",
    "dockerfile",
    "html",
    "java",
    "javascript",
    "json",
    "lua",
    "markdown",
    "php",
    "python",
    "toml",
    "yaml",
  }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {}, -- list of language that will be disabled
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      scope_incremental = "<CR>",
      node_incremental = "<TAB>",
      node_decremental = "<S-TAB>",
    },
  },
  indent = { enable = true },
  autopairs = { enable = true },
})
