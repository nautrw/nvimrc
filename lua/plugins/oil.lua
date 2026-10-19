return {
  'stevearc/oil.nvim',
  lazy = true,
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { "Mirsmog/real-icons.nvim" },
  cmd = "Oil",
  keys = {
    {"<leader>e", "<cmd>Oil<CR>", desc = "Open Oil file explorer"}
  },
}
