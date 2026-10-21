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
    },
    notify_on_error = true,
  },
  keys = {
    {
      "<leader>fm",
      function() require("conform").format { async = true, lsp_format = "fallback" } end,
      desc = "Format buffer",
    }
  },
}
