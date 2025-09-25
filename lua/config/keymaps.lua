-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "kk", "<Esc>")
vim.keymap.set("v", "uu", "<Esc>")

-- Move line up
vim.api.nvim_set_keymap("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move line down
vim.api.nvim_set_keymap("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Move selected block up
vim.api.nvim_set_keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Move selected block down
vim.api.nvim_set_keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Toggle auto formatting
vim.keymap.set("n", "<leader>fa", function()
  vim.g.autoformat = not vim.g.autoformat
  local status = vim.g.autoformat and "enabled" or "disabled"
  vim.notify("Autoformat " .. status, vim.log.levels.INFO)
end, { desc = "Toggle autoformat" })

-- Show diagnostic in a floating window (wrapped)
vim.keymap.set("n", "<leader>k", function()
vim.diagnostic.open_float(nil, { wrap = true })
end, { desc = "Show diagnostic in float" })


-- Delete in visual mode without yanking
vim.keymap.set("v", "d", '"_d', { desc = "Delete without copying" })
