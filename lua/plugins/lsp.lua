return {
  {
    "neovim/nvim-lspconfig", -- LSP support
    opts = {
      servers = {
        clangd = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter", -- Syntax highlighting
    opts = {
      ensure_installed = { "cpp", "c" },
    },
  },
  {
    "mfussenegger/nvim-dap", -- Debugging
  },
  {
    "rcarriga/nvim-dap-ui", -- DAP UI
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "nvim-telescope/telescope.nvim", -- File searching and browsing
  },
}
