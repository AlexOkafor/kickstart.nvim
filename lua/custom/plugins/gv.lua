return {
  'junegunn/gv.vim',
  dependencies = {
    'tpope/vim-fugitive',
  },
  config = function()
    vim.keymap.set('n', '<leader>gc', '<CMD>GV!<CR>', { noremap = true, silent = true, desc = 'View Git Commits of Current File' })
  end,
}
