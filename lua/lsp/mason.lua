return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "clangd" },
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
          height = 0.8,
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      },
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        vim.diagnostic.config({
          underline = false,
          signs = true,
          update_in_insert = true,
          virtual_text = { spacing = 2, prefix = "•" },
          severity_sort = true,
          float = {
            border = "rounded",
          },
        })
      end,
    },
  },
}
