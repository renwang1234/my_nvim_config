return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "lua_ls" },
      c   = { "clang_format" },
      cpp = { "clang_format" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },

    formatters = {
      lua_ls = {
        args = {
          "--indent-width", "2",
          "--indent-type", "Spaces",
          "--stdin-from-filename", "$FILENAME",
        },
      },
    },
  },
}
