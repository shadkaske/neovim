local telescope = require("telescope")
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")
--local fb_actions = require("telescope").extensions.file_browser.actions

telescope.setup({
  extensions = {
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    },
    -- find_command = { "fd", "--hidden", "--type", "file", "--follow", "--strip-cwd-prefix" },
  },
  defaults = {
    file_ignore_patterns = { "node_modules", ".git", ".terraform", "%.jpg", "%.png" },
    -- used for grep_string and live_grep
    vimgrep_arguments = {
      "rg",
      "--follow",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--no-ignore",
      "--trim",
    },
    mappings = {
      i = {
        -- Close on first esc instead of going to normal mode
        -- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.send_selected_to_qflist,
        ["<C-l>"] = actions.send_to_qflist,
        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<cr>"] = actions.select_default,
        ["<c-p>"] = action_layout.toggle_preview,
        ["<c-o>"] = action_layout.toggle_mirror,
        ["<c-h>"] = actions.which_key,
      },
    },
    prompt_prefix = "> ",
    selection_caret = " ",
    entry_prefix = "  ",
    multi_icon = "<>",
    initial_mode = "insert",
    scroll_strategy = "cycle",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      width = 0.60,
      height = 0.85,
      -- preview_cutoff = 120,
      prompt_position = "top",
      horizontal = {
        preview_width = function(_, cols, _)
          if cols > 200 then
            return math.floor(cols * 0.4)
          else
            return math.floor(cols * 0.6)
          end
        end,
      },
      vertical = { width = 0.9, height = 0.95, preview_height = 0.5 },
      flex = { horizontal = { preview_width = 0.9 } },
    },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    use_less = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
  },
})

--telescope.load_extension("projects")
--telescope.load_extension("fzf")
--telescope.load_extension("file_browser")
-- telescope.load_extension("packer")
--telescope.load_extension("ui-select")
--telescope.load_extension("notify")
