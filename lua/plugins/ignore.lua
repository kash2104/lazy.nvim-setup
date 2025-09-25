-- lua/plugins/bufferline.lua
-- taplo toml lsp
return {
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        taplo = {
          settings = {
            evenBetterToml = {
              schema = {
                enabled = false,
              },
            },
          },
        },
      },
    },
  },
}
