return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- options = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' },
    -- add any custom options here
  },
  -- config = function()
  -- ignore neotree and other non-relevant buffers. seems the default "blank" was tripping it up
  -- see :h sessionoptions
  -- vim.opt.sessionoptions = { 'buffers', 'curdir', 'tabpages', 'winsize', 'help', 'globals', 'skiprtp', 'folds' }
  -- vim.opt.sessionoptions = 'buffers,curdir,folds,help,tabpages,winsize,terminal'
  -- end,
}
