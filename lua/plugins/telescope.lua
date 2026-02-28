---@type LazySpec
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    cmd = "Telescope",
    keys = {
      { "<Leader>ff", "<Cmd>Telescope find_files<CR>", desc = "Find files" },
      { "<Leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "Live grep" },
      { "<Leader>fb", "<Cmd>Telescope buffers<CR>", desc = "Buffers" },
      { "<Leader>fs", "<Cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Search buffer" },
      { "<Leader>fh", "<Cmd>Telescope help_tags<CR>", desc = "Help" },
    },
    opts = function()
      local actions = require "telescope.actions"
      return {
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
          },
        },
        pickers = {
          find_files = { hidden = true },
        },
      }
    end,
    config = function(_, opts)
      local telescope = require "telescope"
      telescope.setup(opts)
      pcall(telescope.load_extension, "fzf")
    end,
  },
}
