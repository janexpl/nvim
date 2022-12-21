local status, clr = pcall(require, "catppuccin")
if (not status) then return end

clr.setup({
  flavour = "frappe",
  transparent_background = true
})

function ColorMyPencils(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
