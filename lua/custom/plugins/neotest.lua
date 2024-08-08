return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    -- 'fredrikaverpil/neotest-golang', -- Installation
    'nvim-neotest/neotest-go',
    'mrcjkb/rustaceanvim',
  },
  enabled = false,
  config = function()
    -- local config = { -- Specify configuration
    --   go_test_args = {
    --     '-count=1',
    --     '-mod vendor',
    --     '-tags=dev,test',
    --   },
    -- }
    require('neotest').setup {
      adapters = {
        -- require 'neotest-golang'(config), -- Registration
        require 'neotest-go' {
          experimental = {
            test_table = true,
          },
          args = { '-count=1', '-tags=dev,test', '-mod vendor', '-v' },
        },
        require 'rustaceanvim.neotest',
      },
      -- See all config options with :h neotest.Config
      discovery = {
        -- Drastically improve performance in ginormous projects by
        -- only AST-parsing the currently opened buffer.
        enabled = false,
        -- Number of workers to parse files concurrently.
        -- A value of 0 automatically assigns number based on CPU.
        -- Set to 1 if experiencing lag.
        concurrent = 1,
      },
      running = {
        -- Run tests concurrently when an adapter provides multiple commands to run.
        concurrent = true,
      },
    }
    -- setup keymaps
    local run_file = function()
      require('neotest').run.run(vim.fn.expand '%')
    end
    vim.keymap.set('n', '<leader>ta', require('neotest').run.run, { noremap = true, silent = true, desc = 'Run Nearest Test' })
    vim.keymap.set('n', '<leader>tt', run_file, { noremap = true, silent = true, desc = 'Run Tests in File' })
    vim.keymap.set('n', '<leader>tr', require('neotest').run.run, { noremap = true, silent = true, desc = 'Rune Nearest Test' })
    vim.keymap.set('n', '<leader>to', require('neotest').output_panel.toggle, { noremap = true, silent = true, desc = 'Toggle output panel' })
    vim.keymap.set('n', '<leader>ts', require('neotest').summary.toggle, { noremap = true, silent = true, desc = 'Toggle summary panel' })
  end,
}
