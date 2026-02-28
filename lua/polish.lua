-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.keymap.set("n", "<Leader>fs", "<Cmd>Telescope current_buffer_fuzzy_find<CR>", {
  desc = "Search buffer",
  silent = true,
})
