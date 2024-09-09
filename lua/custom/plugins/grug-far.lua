return {
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup {
      -- ... options, see Configuration section below ...
      -- ... there are no required options atm...
      -- ... engine = 'ripgrep' is default, but 'astgrep' can be specified...
    }
    local grug = require 'grug-far'
    vim.keymap.set('n', '<leader>sr', grug.open, { noremap = true, silent = true, desc = 'Toggle Grug-Frag' })
  end,
}
