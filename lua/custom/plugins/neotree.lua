return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  buffers = {
    follow_current_file = { enabled = true },
    leave_dirs_open = false,
  },
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    open_files_do_not_replace_types = { 'terminal', 'Trouble', 'trouble', 'qf', 'Outline' },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)

    vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
    vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
    vim.fn.sign_define('DiagnosticSignInfo', { text = ' ', texthl = 'DiagnosticSignInfo' })
    vim.fn.sign_define('DiagnosticSignHint', { text = '󰌵', texthl = 'DiagnosticSignHint' })
    vim.keymap.set('n', '<leader>e', '<CMD>Neotree toggle reveal<CR>', { noremap = true, silent = true, desc = 'Toggle Neotree' })
    -- when we close lazygit refresh the file tree
    vim.api.nvim_create_autocmd('TermClose', {
      pattern = '*lazygit',
      callback = function()
        if package.loaded['neo-tree.sources.git_status'] then
          require('neo-tree.sources.git_status').refresh()
        end
      end,
    })
  end,
}
