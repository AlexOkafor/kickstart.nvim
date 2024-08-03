vim.g.rustaceanvim = {
  -- LSP configuration
  server = {
    default_settings = {
      -- rust-analyzer language server configuration
      ['rust-analyzer'] = {
        checkOnSave = {
          enable = true,
          command = 'check',
          extraArgs = { '--target-dir', '/tmp/rust-analyzer-check' },
        },
      },
    },
  },
}

return {
  'mrcjkb/rustaceanvim',
  version = '^5', -- Recommended
  lazy = false, -- This plugin is already lazy
}
