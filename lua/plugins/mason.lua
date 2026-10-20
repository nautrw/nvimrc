return {
  {
    'williamboman/mason.nvim',
    dependencies = {
      {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        opts = {
          ensure_installed = {
            'ty',
            'ruff',
            'lua-language-server',
            'stylua',
            'xmlformatter',
            'typescript-language-server',
            'prettier',
            'clangd',
            'clang-format',
            'codelldb',
            "shfmt"
          },
        },
      },
    },
    opts = {
      ui = {
        icons = {
          package_installed = "",
          package_pending = "󰦖",
          package_uninstalled = "",
        },
      },
    },
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
