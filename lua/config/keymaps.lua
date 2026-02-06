-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Oil File Explorer" }),
  vim.keymap.set("n", "<leader>fy", function()
    local relative_path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
    vim.fn.setreg("+", relative_path)
    vim.notify("Copied: " .. relative_path, vim.log.levels.INFO)
  end, { noremap = true, silent = false, desc = "Yank relative path" }),
}
