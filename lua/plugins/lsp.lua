
-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "jose-elias-alvarez/typescript.nvim" },
    },

    -- Runs when the plugin is loaded
    init = function()
      local lsp = require("snacks.util.lsp")

      -- Attach keymaps when any LSP client attaches
      lsp.on({},"attach", function(_, buffer)
        local map = function(lhs, rhs, desc)
          vim.keymap.set("n", lhs, rhs, {
            buffer = buffer,
            silent = true,
            desc = desc,
          })
        end

        map("<leader>co", function()
          vim.cmd("TypescriptOrganizeImports")
        end, "Organize Imports")

        map("<leader>cR", function()
          vim.cmd("TypescriptRenameFile")
        end, "Rename File")
      end)
    end,

    -- LSP server configuration
    opts = {
      servers = {
        pyright = {},   -- Python
        tsserver = {},  -- TypeScript/JavaScript
      },

      setup = {
        -- Use typescript.nvim to setup tsserver instead of default lspconfig
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true -- prevent lspconfig from setting up tsserver again
        end,
      },
    },
  },
}

