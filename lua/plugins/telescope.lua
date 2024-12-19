return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules/", "dist/", "%.lock", "%.git/", "coverage/" },
      },
    })
  end,
}
