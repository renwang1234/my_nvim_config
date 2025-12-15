return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  main = "nvim-treesitter.configs",
  opts = {
    auto_install = false,
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "json", "python", "css", "html", "javascript", "typescript" },
    sync_install = false,
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    indent = { enable = true },
  },
}
