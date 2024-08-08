return {
  'vim-test/vim-test',
  config = function()
    vim.g['test#strategy'] = 'neovim_sticky'
    vim.g['test#go#gotest#options'] = '-count=1 -tags=dev,test -mod vendor -v'
    vim.keymap.set('n', '<leader>tl', '<CMD>TestLast<CR>', { noremap = true, silent = true, desc = 'Run Nearest Test' })
    vim.keymap.set('n', '<leader>tt', '<CMD>TestFile<CR>', { noremap = true, silent = true, desc = 'Run Tests in File' })
    vim.keymap.set('n', '<leader>tr', '<CMD>TestNearest<CR>', { noremap = true, silent = true, desc = 'Rune Nearest Test' })
  end,
}
