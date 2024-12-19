-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<C-c><leader>c", "<cmd>ScratchPad<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>lg", function()
  require("telescope.builtin").grep_string({
    search = "",
    additional_args = function()
      return { "--hidden", "--glob", "!.git/*" }
    end,
  })
end, { desc = "Live Grep Git-tracked files only" })
