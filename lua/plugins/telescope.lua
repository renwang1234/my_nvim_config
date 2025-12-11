return {
  -- init.lua:
  {
    "nvim-telescope/telescope.nvim",
    tag = 'v0.2.0',
    dependencies = {
      'nvim-lua/plenary.nvim',
      "nvim-telescope/telescope-fzy-native.nvim",
    },
    opts = {},
    config = function (_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension('fzy_native')
    end
  }
}
