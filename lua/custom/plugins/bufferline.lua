return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local util = require 'util'
    require('bufferline').setup {
      options = {
        close_command = function(n)
          util.bufremove(n)
        end,
        right_mouse_command = function(n)
          util.bufremove(n)
        end,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
    vim.keymap.set('n', '<leader>bo', '<CMD>BufferLineCloseOthers<CR>', { noremap = true, silent = true, desc = 'Close Other Buffers' })
    vim.keymap.set('n', '<leader>br', '<CMD>BufferLineCloseRight<CR>', { noremap = true, silent = true, desc = 'Close Buffers To The Right' })
  end,
}
