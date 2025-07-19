return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        theme = "auto",
        always_divide_middle = false,
        component_separators = {left="", right="|"},
        section_separators = {left="", right=""},
      },
      ignore_focus = {},
      always_divide_middle = true,

      always_show_tabline = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
      sections = {
        lualine_a = {"mode"},
        lualine_b = {{"location",color={fg="#b8ccbe"}}, "diagnostics", "diff"},
        lualine_c = {"branch",{"filename",path=3,file_status=true,newfile_status=true,color={fg="#55544a"}}
        },
        lualine_x = {},
        lualine_y = {{function() return os.date("%H:%M") end,}, "encoding", "fileformat"},
        lualine_z = {"filetype"},
      },
      inactive_sections = {
        lualine_a = {""},
        lualine_z = {"filetype"},
      },
      winbar = {
        lualine_a = {"filename"},
      },
      inactive_winbar = {
        lualine_a = {{"filename",path=3}},
        lualine_z = {{function() return os.date("%H:%M") end,}},
      },
      tabline = {},
      extensions = {},
      config = function(_, opts)
        require('lualine').setup(opts)
      end
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {"<leader>e", "<CMD>NvimTreeToggle<CR>", mode = {"n"}, desc = "[NvimTree] Toggle NvimTree"},
    },
    opts = {
      view = {
        float = {
          enable = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 28,
            height = 24,
            row = 1,
            col = 1
          },
        },
        signcolumn = "yes",
        width = 28,
      },
      renderer = {
        root_folder_label = false,                                               -- <== HIDE FILE PATH
      },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    },
  },

  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        py = {
          icon = "", 
          color = "#939f91",
          name = "Python"
        },
        js = {
          icon = "", 
          color = "#939f91",
          name = "JavaScript"
        },
        lua = {
          icon = "",
          color = "#939f91",
          name = "Lua"
        },
      },
    },
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    main = "rainbow-delimiters.setup",
    submodules = false,
    opts = {},
  },


  {
     {'romgrk/barbar.nvim',
      version = "^1.0.0",                                                        --optional: only update a new 1.x version is released
      dependencies = {
        'lewis6991/gitsigns.nvim',                                               -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons',                                           -- OPTIONAL: for file icons
      },
      init = function() 
        vim.g.barbar_auto_setup = false
      end,
      opts = {
        animation = false,
        auto_hide = 1,

        sidebar_filetype = {
          NvimTRee = true
        },
      },
      keys = {
        { "<A-<>", "<CMD>BufferMovePrevious<CR>", mode = {"n"},                  desc = "[Buffer] Move buffer left"  },
        { "<A->>", "<CMD>BufferMoveNext<CR>",     mode = {"n"},                  desc = "[Buffer] Move buffer right" },
        { "<A-1>", "<CMD>BufferGoto 1<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 1"    },
        { "<A-2>", "<CMD>BufferGoto 2<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 2"    },
        { "<A-3>", "<CMD>BufferGoto 3<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 3"    },
        { "<A-4>", "<CMD>BufferGoto 4<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 4"    },
        { "<A-5>", "<CMD>BufferGoto 5<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 5"    },
        { "<A-6>", "<CMD>BufferGoto 6<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 6"    },
        { "<A-7>", "<CMD>BufferGoto 7<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 7"    },
        { "<A-8>", "<CMD>BufferGoto 8<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 8"    },
        { "<A-9>", "<CMD>BufferGoto 9<CR>",       mode = {"n"},                  desc = "[Buffer] Go to buffer 9"    },
        { "<A-h>", "<CMD>BufferPrevious<CR>",     mode = {"n"},                  desc = "[Buffer] Previous buffer"   },
        { "<A-l>", "<CMD>BufferNext<CR>",         mode = {"n"},                  desc = "[Buffer] Next buffer"       },
      },
    },
  },

}
