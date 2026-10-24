return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format", "ruff_organize_imports" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      sh = { "shfmt" },
      bash = { "shfmt" },
      zsh = { "shfmt" },
      -- ASP.NET runtime must be installed to use csharpier
      -- sudo pacman -S aspnet-runtime-10.0
      cs = { "csharpier" },
    },
    notify_on_error = true,
  },
  keys = {
    {
      "<leader>fm",
      function() require("conform").format { async = true, lsp_format = "fallback" } end,
      desc = "Format buffer",
    },
  },
}
