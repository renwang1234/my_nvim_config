return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "clangd", "pyright" },
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
          underline = true,
          signs = true,
          update_in_insert = true,
          virtual_text = { spacing = 2, prefix = "•" },
          severity_sort = true,
          float = { border = "rounded" },
        })
        local capabilities = require("blink.cmp").get_lsp_capabilities()
        local servers = {
          lua_ls = {
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          },
          clangd = {},
          pyright = {},
        }
        for server, config in pairs(servers) do
          vim.lsp.config(server, vim.tbl_deep_extend("force", {
            capabilities = capabilities,
          }, config))
        end
      end,
    },
  },
}
