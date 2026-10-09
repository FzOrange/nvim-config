return {
  -- 1. 声明 catppuccin 插件
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",             
      transparent_background = true,  -- 透明背景，让 Kitty 毛玻璃透出来
    },
  },
  -- 2. 设置 LazyVim 默认主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
