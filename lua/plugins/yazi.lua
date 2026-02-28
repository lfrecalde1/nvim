---@type LazySpec
return {
  {
    "mikavilpas/yazi.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = {
      { "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
      {
        "<Leader>-",
        mode = { "n", "v" },
        "<Cmd>Yazi<CR>",
        desc = "Open Yazi at current file",
      },
      {
        "<Leader>cw",
        "<Cmd>Yazi cwd<CR>",
        desc = "Open Yazi in working directory",
      },
      {
        "<C-Up>",
        "<Cmd>Yazi toggle<CR>",
        desc = "Resume Yazi session",
      },
    },
    opts = {
      open_for_directories = false,
      keymaps = {
        show_help = "<F1>",
      },
    },
  },
}
