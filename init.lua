-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")

