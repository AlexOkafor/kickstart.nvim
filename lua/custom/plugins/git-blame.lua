return {
  'f-person/git-blame.nvim',
  config = function()
    vim.keymap.set('n', '<leader>go', '<CMD>GitBlameOpenCommitURL<CR>', { noremap = true, silent = true, desc = 'Open Commit' })
  end,
}
