-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Automatically indent new lines
vim.o.smartindent = true
-- Auto-indent based on the previous line
vim.o.autoindent = true
-- Enable C-style indenting (useful for C, C++, etc.)
vim.o.cindent = true

vim.opt.wrap = true -- Enable line wrapping
vim.opt.linebreak = true
vim.opt.breakindent = true -- Wrap lines with proper indentation
vim.opt.textwidth = 80 -- Optional: Set a preferred text width (adjust to your needs)
--vim.opt.softtabstop = 4      -- Optional: Set soft tab stop to 4 spaces
vim.opt.shiftwidth = 4 -- Optional: Indentation width for auto-indentation
--vim.opt.expandtab = true     -- Optional: Convert tabs to spaces
--

vim.opt.list = false
vim.opt.ignorecase = true
vim.g.autoformat = false
