return {
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 0.8, -- Dim the background slightly
        width = 80, -- Width of the Zen window
        height = 0.95, -- Height as a percentage of the editor
        options = {
          -- signcolumn = "no", -- Hide sign column
          -- number = true, -- Disable line numbers
          -- relativenumber = true,
          -- cursorline = false,
          -- cursorcolumn = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
        },
      },
    },
    keys = {
      { "<leader>wz", "<cmd>ZenMode<CR>", desc = "Toggle Zen Mode" },
    },
  },
}
