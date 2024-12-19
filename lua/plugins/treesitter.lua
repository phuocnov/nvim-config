return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_hidden = false, -- Show hidden files
        hide_dotfiles = false, -- Show dotfiles (files starting with '.')
      },
    },
    window = {
      position = "float", -- Set the position to "float"
      popup = {
        size = { height = "80%", width = "80%" }, -- Set floating window size
        position = "50%", -- Center the floating window
      },
    },
  },
}
