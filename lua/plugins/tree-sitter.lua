return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
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

      -- Enable Tree-sitter highlighting for every supported buffer
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match)
          -- if lang and pcall(vim.treesitter.start, args.buf, lang) then
          --   -- Highlighting is now enabled for this buffer
          -- end
          pcall(vim.treesitter.language.get_lang(args.match))
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    opts = {
      textobjects = {
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["gj"] = "@function.outer",
            ["]]"] = "@class.outer",
            ["]b"] = "@block.outer",
            ["]a"] = "@parameter.inner",
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["gJ"] = "@function.outer",
            ["]["] = "@class.outer",
            ["]B"] = "@block.outer",
            ["]A"] = "@parameter.inner",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["gk"] = "@function.outer",
            ["[["] = "@class.outer",
            ["[b"] = "@block.outer",
            ["[a"] = "@parameter.inner",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["gK"] = "@function.outer",
            ["[]"] = "@class.outer",
            ["[B"] = "@block.outer",
            ["[A"] = "@parameter.inner",
          },
        },
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["ab"] = "@block.outer",
            ["ib"] = "@block.inner",
            ["al"] = "@loop.outer",
            ["il"] = "@loop.inner",
            ["a/"] = "@comment.outer",
            ["i/"] = "@comment.outer", -- no inner for comment
            ["aa"] = "@parameter.outer", -- parameter -> argument
            ["ia"] = "@parameter.inner",
          },
        },
      },
    },
  },
}
