-- Make sure to setup mapleader and maplocalleader before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local mode_nv = {"n", "v"}
local mode_n = {"n"}
local mode_v = {"v"}
local mode_i = {"i"}

local keymappings = {
  {from = "W",             to = ":w<CR>",                                         desc = "Save"},
  {from = "Q",             to = ":q<CR>",                                         desc = "Quit"},
  {from = ";",             to = ":",                      mode = mode_nv,         desc = "Command mode"},
  {from = "jk",            to = "<esc>",                  mode = mode_i,          desc = "Exit insert mode"},

  -- Movement
  {from = "<C-k>",         to = "<Up>",                   mode = mode_i,          desc = "Move up"},
  {from = "<C-j>",         to = "<Down>",                 mode = mode_i,          desc = "Move down"},
  {from = "<C-h>",         to = "<Left>",                 mode = mode_i,          desc = "Move left"},
  {from = "<C-l>",         to = "<Right>",                mode = mode_i,          desc = "Move right"},

  -- Window & splits
  {from = "<C-j>",         to = "<C-w>j",                 mode = mode_n,          desc = "Window up"},
  {from = "<C-h>",         to = "<C-w>h",                 mode = mode_n,          desc = "Window down"},
  {from = "<C-h>",         to = "<C-w>h",                 mode = mode_n,          desc = "Window left"},
  {from = "<C-k>",         to = "<C-w>k",                 mode = mode_n,          desc = "Window right"},

  {from = "<leader>e",     to = ":Neotree toggle<CR>",    mode = mode_nv,         desc = "Toggle file explorer"}
}

for _, keymap in ipairs(keymappings) do
  vim.keymap.set(keymap.mode or "n", keymap.from, keymap.to, { noremap = true, silent = true, desc = keymap.desc })
end
