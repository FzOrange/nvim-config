return {
  {
    "LazyVim/LazyVim",
    keys = {
      -- C/C++ 编译 + 运行（自动识别 .c 和 C++）
      {
        "<leader>rc",
        function()
          vim.cmd("write")
          local file = vim.fn.expand("%")
          local ext = vim.fn.expand("%:e")
          local out = "/tmp/" .. vim.fn.expand("%:t:r")

          local compiler = "/usr/bin/clang++"
          local std = "-std=c++17"
          if ext == "c" then
            compiler = "/usr/bin/clang"
            std = "-std=c11"
          end

          vim.cmd("term " .. compiler .. " " .. std .. " -Wall " .. file .. " -o " .. out .. " && " .. out)
        end,
        desc = "Compile and run C/C++ file",
      },

      -- Python 运行（自动使用当前 Conda 环境）
      {
        "<leader>rp",
        function()
          vim.cmd("write")
          local venv = vim.env.VIRTUAL_ENV
          local python = venv and (venv .. "/bin/python") or "python3"
          vim.cmd("term " .. python .. " " .. vim.fn.expand("%"))
        end,
        desc = "Run Python file",
      },
    },
  },
}
