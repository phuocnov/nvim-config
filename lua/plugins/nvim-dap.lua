return {
  -- Add mason-nvim-dap plugin
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "mason.nvim", -- Required for mason
      "nvim-dap", -- Required for dap support
    },
    config = function()
      -- Optional config if you want to customize
      require("mason-nvim-dap").setup()
    end,
  },
}
