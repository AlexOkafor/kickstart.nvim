return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {}
    vim.keymap.set('n', '<leader>bo', '<CMD>BufferLineCloseOthers<CR>', { noremap = true, silent = true, desc = 'Close Other Buffers' })
    vim.keymap.set('n', '<leader>br', '<CMD>BufferLineCloseRight<CR>', { noremap = true, silent = true, desc = 'Close Buffers To The Right' })
  end,
}
