local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    --[[ mode = "tabs", ]]
    separator_style = 'thin',
    -- always_show_bufferline = false,
    -- show_buffer_close_icons = false,
    -- show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#292C40',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#192C40'
    },
    buffer_selected = {
      -- fg = '#fdf6e3',
      bold = true,
      bg = '#434344'

    },
    fill = {
      -- bg = '#292C40'
    }
  },
})
vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>')
vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>')
vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>')
vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>')
vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>')
vim.keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>')
vim.keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>')
vim.keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>')
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
