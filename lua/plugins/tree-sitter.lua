return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPost", "BufNewFile" },
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

    -- Enable Tree-sitter highlighting for every supported buffer
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)
        if lang and pcall(vim.treesitter.start, args.buf, lang) then
          -- Highlighting is now enabled for this buffer
        end
      end,
    })
  end,
}
