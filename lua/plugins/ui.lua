return {
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {
        c   = {
          icon = "󰙱",
          color = "#939f91",
          name = "C"
        },
        cpp = {
          icon = "",
          color = "#939f91",
          name = "Cpp"
        },
        py  = {
          icon = "",
          color = "#939f91",
          name = "Python"
        },
        js  = {
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
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        theme = "auto",
        always_divide_middle = false,
        component_separators = { left = "", right = "|" },
        section_separators = { left = "", right = "" },
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
        lualine_a = { "mode" },
        lualine_b = { { "location", color = { fg = "#b8ccbe" } }, "diagnostics", "diff" },
        lualine_c = { "branch", { "filename", path = 3, file_status = true, newfile_status = true, color = { fg = "#55544a" } }
        },
        lualine_x = {},
        lualine_y = { { function() return os.date("%H:%M") end, }, "encoding", "fileformat" },
        lualine_z = { "filetype" },
      },
      inactive_sections = {
        lualine_a = { "" },
        lualine_z = { "filetype" },
      },
      winbar = {
        lualine_a = {},
      },
      inactive_winbar = {
        lualine_z = { { function() return os.date("%H:%M") end, } },
      },
      tabline = {},
      extensions = {},
      config = function(_, opts)
        require('lualine').setup(opts)
      end
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      close_if_last_window = true,
      enable_diagnostics = true,
      enable_git_status = true,

      filesystem = {
        display_current_path = false, --隱藏當前路徑
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true
        },
      },
      window = {
        position = "float", --"left", "right", "float", "current"
        popup = {
          position = { row = 1, col = 1 },
          size = { width = 28, height = 24 },
          border = "rounded",
          winblend = 10,
          title = "" -- 空字串即可隱藏 title
        },
      },

      default_component_configs = {
        source_name = {
          name = "",
        },
      },

      source_selector = {
        winbar = false,
        statusline = false
      },
    },
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    main = "rainbow-delimiters.setup",
    submodules = false,
    opts = {}
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = "VeryLazy",
    opts = {
      user_default_options = {
        names = false,
        RRGGBB = true,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        tailwind = false,
      },
    },
    config = function(_, opts)
      require("colorizer").setup(opts)
    end,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      popupmenu = {
        enabled = true,
        ---@type 'nui'|'cmp'
        backend = "nui",
        kind_icons = {}
      },
      messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    "nvim-mini/mini.animate",
    version = '*'
  },
}

