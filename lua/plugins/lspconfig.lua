return {
  {
    'neovim/nvim-lspconfig',
    event = {"BufReadPre", "BufNewFile"},
    cmd = {"LspInfo", "LspInstall", "LspUninstall"},
    dependencies = {
      { 'mason-org/mason-lspconfig.nvim' },
      { 'j-hui/fidget.nvim' },
    },
    config = function()
      vim.diagnostic.config {
        update_in_insert = true,
        severity_sort = true,
        float = { border = 'rounded', source = 'if_many' },
        virtual_text = false,
        signs = {
          active = true,
          text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
          },
        },
        jump = { float = true, },
      }

      vim.lsp.config('lua_ls', {
        root_markers = {
          '.luarc.json',
          '.luarc.jsonc',
          '.luacheckrc',
          '.stylua.toml',
          'selene.toml',
          'seleme.yml',
        },
      })
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {
        automatic_enable = true,
    },
  }
}
