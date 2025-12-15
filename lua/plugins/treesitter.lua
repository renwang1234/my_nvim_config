return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "json", "python", "css", "html", "javascript", "typescript" },
    auto_install = false,
    sync_install = false,
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    indent = { enable = true },
  },
}

