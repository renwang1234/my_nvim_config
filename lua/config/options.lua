--rdisable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--行號顯示
vim.opt.number = true
vim.opt.relativenumber = true

--高亮
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 10
vim.opt.startofline = false

vim.opt.conceallevel = 2

vim.o.signcolumn = "yes:1"
vim.o.foldenable = false
vim.o.termguicolors = true

vim.wo.wrap = false

-- Tab related options
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.splitbelow = true
vim.opt.splitright = true


-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--python "env"
vim.g.python3_host_prog = 'C:\\Users\\Yumi\\myenv\\Scripts\\python3'  -- 替換為你的虛擬環境路徑


vim.api.nvim_create_autocmd('ColorScheme', {
    group = vim.api.nvim_create_augroup('custom_highlights_everforest', {}),
    pattern = 'everforest',
    callback = function()
      local api = vim.api
      --background window, which is transparent.
      api.nvim_set_hl(0, 'NormalFloat', {bg="NONE"})  
      api.nvim_set_hl(0, 'FloatBorder', {bg="NONE"})
  end
})
