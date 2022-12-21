vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<cr>", { silent = true })
vim.keymap.set("n", "<leader>th", ":ToggleTerm size=10 direction=horizontal<cr>", { silent = true })
vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=80 direction=vertical<cr>", { silent = true })

require("toggleterm").setup{
  size = 10,
  open_mapping = [[<F7>]],
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
}
