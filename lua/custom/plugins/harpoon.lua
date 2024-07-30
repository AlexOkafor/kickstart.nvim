return {
  'ThePrimeagen/harpoon',
  keys = {
      -- stylua: ignore
      {
        "<leader>aa",
        function() require("harpoon.mark").add_file() end,
        desc = "Add File to harpoon",
      },
      -- stylua: ignore
      {
        "<leader>af",
        function() require("harpoon.ui").toggle_quick_menu() end,
        desc = "Toggle Harpoon UI",
      },
      -- stylua: ignore
      {
        "<leader>aw",
        function() require("harpoon.ui").nav_file(1) end,
        desc = "Harpoon File 1",
      },
      -- stylua: ignore
      {
        "<leader>ae",
        function() require("harpoon.ui").nav_file(2) end,
        desc = "Harpoon File 2",
      },
      -- stylua: ignore
      {
        "<leader>ar",
        function() require("harpoon.ui").nav_file(3) end,
        desc = "Harpoon File 3",
      },
      -- stylua: ignore
      {
        "<leader>at",
        function() require("harpoon.ui").nav_file(4) end,
        desc = "Harpoon File 4",
      },
  },
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
  },
}
