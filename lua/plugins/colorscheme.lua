return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,

  config = function()
    local g, cmd, api = vim.g, vim.cmd, vim.api

    g.everforest_background = "hard"                                             -- "hard", "medium", "soft"
    g.everforest_float_style = "dim"                                             --"bright","dim"
    g.everforest_ui_contrast = "high"
    g.everforest_enable_italic = true
    g.everforest_enable_italic_comment = true
    g.everforest_better_performance = true
    g.everforest_dim_inactive_windows = true
    g.everforest_spell_foreground = "colored"
    g.everforest_transparent_background = true
    g.everforest_sign_column_background = "none"
    g.everforest_inlay_hints_background = "none"                                 --"dimmed"
    g.everforest_diagnostic_virtual_text = "highlighted"                         --"grey","colored","highlighted"
    g.everforest_nvimtree_transparent_background = true

    cmd("colorscheme everforest")
    cmd("highlight LineNr guifg=#757567")                                        --#55544a #42423a #757576
    cmd("highlight Comment guifg=#fad7f2")
    cmd("highlight CursorNr guifg=#b8ccbe")
    cmd("highlight CursorLine guibg=#5b6266")                                    --#6e777d
    cmd("highlight ColorColumn guibg=#5b6266")                                   --#ccccaf #dedeb4 #829e9e

    -- For completion menus like blink.cmp.
    --vim.api.nvim_set_hl(0, 'Pmenu', {})
    -- For regular floating windows.
    api.nvim_set_hl(0, 'NvimTreeNormalFloat', {})
    api.nvim_set_hl(0, 'NvimTreeNormalFloatBorder', {})

  end
}
