return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },



  {
    "nvim-mini/mini.ai",
    version = '*',
    opts = {},
  },

  {
    "nvim-mini/mini.trailspace",
    version = '*',
    opts = {},
  },

  {
    'nvim-mini/mini.align',
    version = '*',
    opts = {},
  },

  {
    'nvim-mini/mini.surround',
    version = '*',
    opts = {},
  },
}
