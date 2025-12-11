return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "clangd" },
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
    "neovim/nvim-lspconfig",
  },
}
