return {
  "m4xshen/smartcolumn.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    disabled_filetypes = {
      "NvimTree",
      "lazy",
      "mason",
      "help",
      "checkhealth",
      "lspinfo",
      "noice",
      "Trouble",
      "fish",
      "zsh",
    },
    custom_colorcolumn = {
      python = "79",
    },
  },
}
