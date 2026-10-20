return {
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    -- event = "User FilePost",
    cmd = { 'LspInfo', 'LspInstall', 'LspUninstall' },
    -- lazy = false,
    dependencies = {
      { 'mason-org/mason-lspconfig.nvim' },
      { 'j-hui/fidget.nvim', opts = {} },
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
        jump = { on_jump = vim.diagnostic.open_float, },
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
}
