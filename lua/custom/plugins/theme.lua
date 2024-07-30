return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = { flavour = 'mocha' },
  config = function()
    local cat = require 'catppuccin'
    cat.setup {
      integrations = {
        telescope = {
          enabled = true,
        },
        cmp = true,
        gitsigns = true,
        neotest = true,
        neotree = true,
      },
    }
  end,
}
