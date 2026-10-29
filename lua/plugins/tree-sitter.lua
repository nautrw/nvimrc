return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
      local treesitter = require "nvim-treesitter"

      treesitter.setup()

      treesitter.install {
        "python",
        "lua",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "rust",
        "ini",
        "toml",
        "markdown",
        "markdown_inline",
        "sql",
        "c",
        "c_sharp",
        "cpp",
        "bash",
        "zsh",
      }

      -- Enable Tree-sitter highlighting
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match)
          if lang then
            pcall(vim.treesitter.start, args.buf, lang)
          end
        end,
      })
    end,
  },

  -- Bracket textobjects
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    config = function()
      require("mini.ai").setup()
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      -- Select textobjects
      {
        "af",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Around function",
      },
      {
        "if",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Inside function",
      },
      {
        "ac",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Around class",
      },
      {
        "ic",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Inside class",
      },
      {
        "al",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@loop.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Around loop",
      },
      {
        "il",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@loop.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Inside loop",
      },
      {
        "a/",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@comment.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Around comment",
      },
      {
        "i/",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@comment.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Inside comment",
      },
      {
        "aa",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@parameter.outer", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Around parameter",
      },
      {
        "ia",
        function()
          require("nvim-treesitter-textobjects.select").select_textobject("@parameter.inner", "textobjects")
        end,
        mode = { "x", "o" },
        desc = "Inside parameter",
      },

      -- Move between textobjects
      {
        "]m",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_start("@function.outer", "textobjects")
        end,
        desc = "Next function",
      },
      {
        "]M",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_end("@function.outer", "textobjects")
        end,
        desc = "End of next function",
      },
      {
        "[m",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_start("@function.outer", "textobjects")
        end,
        desc = "Previous function",
      },
      {
        "[M",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_end("@function.outer", "textobjects")
        end,
        desc = "End of previous function",
      },

      {
        "]]",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_start("@class.outer", "textobjects")
        end,
        desc = "Next class",
      },
      {
        "][",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_end("@class.outer", "textobjects")
        end,
        desc = "End of next class",
      },
      {
        "[[",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_start("@class.outer", "textobjects")
        end,
        desc = "Previous class",
      },
      {
        "[]",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_end("@class.outer", "textobjects")
        end,
        desc = "End of previous class",
      },

      {
        "]a",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_start("@parameter.inner", "textobjects")
        end,
        desc = "Next parameter",
      },
      {
        "]A",
        function()
          require("nvim-treesitter-textobjects.move").goto_next_end("@parameter.inner", "textobjects")
        end,
        desc = "End of next parameter",
      },
      {
        "[a",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_start("@parameter.inner", "textobjects")
        end,
        desc = "Previous parameter",
      },
      {
        "[A",
        function()
          require("nvim-treesitter-textobjects.move").goto_previous_end("@parameter.inner", "textobjects")
        end,
        desc = "End of previous parameter",
      },
    },
    opts = {
      select = {
        lookahead = true,
      },
    },
  },
}
