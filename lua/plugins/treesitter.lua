return {
  "nvim-treesitter/nvim-treesitter",
  main = "nvim-treesitter.configs",
  opts = {
    auto_install = false,
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
