return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,

  config = function()
    local g, cmd = vim.g, vim.cmd
    g.everforest_better_performance = true
    g:everforest_diagnostic_line_highlight = 1
    g.everforest_transparent_background = true
    cmd("colorscheme everforest")
    cmd("highlight LineNr gui=#757567")
    cmd("highlight CursorNr guifg=#b8ccbe")
    cmd("highlight CursorLine guibg=#5b6266")
    cmd("highlight ColorColumn gui g=#5b6266")
  end
}
