-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local dap = require("dap")
-- Customize the Visual highlight
require("telescope").setup({
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "dist",
    },
  },
})

-- Example configuration for debugging a Node.js project
dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = { vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
}

dap.configurations.javascript = {
  {
    type = "node2",
    request = "launch",
    name = "Launch Program",
    program = "${workspaceFolder}/app.js",
  },
}

vim.cmd([[colorscheme tokyonight]])
