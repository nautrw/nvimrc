return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
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
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    build = ":MasonInstallAll",
    dependencies = {
      "mason-org/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "ty",
        "ruff",
        "lua-language-server",
        "stylua",
        "xmlformatter",
        "typescript-language-server",
        "prettier",
        "clangd",
        "clang-format",
        "codelldb",
        "shfmt",
        "csharpier",
        "roslyn-language-server"
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {},
  },
}
