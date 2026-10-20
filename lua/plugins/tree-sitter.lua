return {
  'nvim-treesitter/nvim-treesitter',
  event = {"BufReadPost", "BufNewFile"},
  build = ':TSUpdate',
  config = function()
    local treesitter = require('nvim-treesitter')
    treesitter.setup()

    treesitter.install({
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
    })
  end,
}
