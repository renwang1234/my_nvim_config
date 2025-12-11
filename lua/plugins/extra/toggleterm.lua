return {
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",                     -- 只有在執行 :ToggleTerm 命令時才會加載插件
    keys = {
      { "<c-\\>", desc = "Open terminal" }, -- 設置快捷鍵，按 Ctrl+\ 開啟終端
    },
    opts = {
      -- 基本配置
      size = 20,                -- 設定終端大小，僅對非浮動終端有效
      open_mapping = [[<c-\>]], -- 使用 Ctrl+\ 開啟終端
      direction = "float",      -- 設定終端顯示為浮動終端

      -- 終端退出時的行為
      close_on_exit = true,   -- 終端退出時自動關閉
      shade_terminals = true, -- 給終端加陰影
      hidden = true,          -- 啟用隱藏選項，防止終端被丟棄
      highlights = {
        FloatBorder = { link = 'FloatBorder' },
        NormalFloat = { link = 'Normal' },
      },

      -- 配置浮動終端的具體參數
      float_opts = {
        border = "rounded", -- 邊框樣式，'single' / 'double' / 'rounded'
        winblend = 0,       -- 設置透明度，0 表示完全不透明
        width = 60,         -- 浮動終端寬度，使用像素值而非比例
        height = 20,        -- 浮動終端高度，使用像素值而非比例
        x = 0.5,            -- 終端在水平位置上的顯示比例，0.5 表示居中
        y = 0.5,            -- 終端在垂直位置上的顯示比例，0.5 表示居中
      },
      shell = "pwsh",
      shell_cmd = "pwsh.exe"
    },
  },
}
