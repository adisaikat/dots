-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true
lvim.plugins = {
  { "github/copilot.vim", },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
      {
        ---@type string
        arg = "leetcode.nvim",

        ---@type lc.lang
        lang = "cpp",

        cn = { -- leetcode.cn
          enabled = false, ---@type boolean
          translator = true, ---@type boolean
          translate_problems = true, ---@type boolean
        },

        ---@type lc.storage
        storage = {
          home = vim.fn.stdpath("data") .. "/leetcode",
          cache = vim.fn.stdpath("cache") .. "/leetcode",
        },

        ---@type table<string, boolean>
        plugins = {
          non_standalone = false,
        },

        ---@type boolean
        logging = true,

        injector = {}, ---@type table<lc.lang, lc.inject>

        cache = {
          update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
        },

        console = {
          open_on_runcode = true, ---@type boolean

          dir = "row", ---@type lc.direction

          size = { ---@type lc.size
            width = "90%",
            height = "75%",
          },

          result = {
            size = "60%", ---@type lc.size
          },

          testcase = {
            virt_text = true, ---@type boolean

            size = "40%", ---@type lc.size
          },
        },

        description = {
          position = "left", ---@type lc.position

          width = "40%", ---@type lc.size

          show_stats = true, ---@type boolean
        },

        hooks = {
          ---@type fun()[]
          ["enter"] = {},

          ---@type fun(question: lc.ui.Question)[]
          ["question_enter"] = {},

          ---@type fun()[]
          ["leave"] = {},
        },

        keys = {
          toggle = { "q" }, ---@type string|string[]
          confirm = { "<CR>" }, ---@type string|string[]

          reset_testcases = "r", ---@type string
          use_testcase = "U", ---@type string
          focus_testcases = "H", ---@type string
          focus_result = "L", ---@type string
        },

        ---@type lc.highlights
        theme = {},

        ---@type boolean
        image_support = false,
      }
    },
  }
}
