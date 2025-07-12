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
