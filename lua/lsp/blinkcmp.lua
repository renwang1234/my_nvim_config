return {
  "saghen/blink.cmp",
  -- dependencies = { "rafamadriz/friendly-snippets" },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = "super-tab" },

    appearance = {
      nerd_font_variant = "mono"
    },

    completion = { documentation = { auto_show = true } },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    cmdline = {
      sources = function()
        local cmd_type = vim.fn.getcmdtype()
        if cmd_type == "/" then
          return {"buffer"}
        end
        if cmd_type == ":" then
          return {"cmdline"}
        end
        return {}
      end,
      keymap = { preset = "super-tab" },
      completion = { menu = { auto_show = true } }
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
