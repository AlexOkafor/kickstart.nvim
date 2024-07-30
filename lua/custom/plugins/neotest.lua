return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'fredrikaverpil/neotest-golang', -- Installation
    'mrcjkb/rustaceanvim',
  },
  config = function()
    local config = { -- Specify configuration
      go_test_args = {
        '-count=1',
        '-mod vendor',
        '-tags=dev,test',
      },
    }
    require('neotest').setup {
      adapters = {
        require 'neotest-golang'(config), -- Registration
        require 'rustaceanvim.neotest',
      },
    }
    -- setup keymaps
    local run_file = function()
      require('neotest').run.run(vim.fn.expand '%')
    end
    vim.keymap.set('n', '<leader>ts', require('neotest').run.run, { noremap = true, silent = true, desc = 'Rune Nearest Test' })
    vim.keymap.set('n', '<leader>tt', run_file, { noremap = true, silent = true, desc = 'Run Tests in File' })
  end,
  -- opts = {
  --   adapters = {
  --     -- ['neotest-go'] = {
  --     --   args = { '-tags=dev,test -count 1 -mod vendor' },
  --     -- },
  --   },
  -- },
}
