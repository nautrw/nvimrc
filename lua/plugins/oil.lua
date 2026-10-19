return {
  'stevearc/oil.nvim',
  lazy = true,
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "Mirsmog/real-icons.nvim" },
  cmd = "Oil",
  keys = {
    {"<leader>e", "<cmd>Oil<CR>", desc = "Open Oil file explorer"}
  },
  opts = {
    columns = {
      "permissions",
      "size",
      "mtime",
      "icon",
    },
    preview_win = {
      disable_preview = function(filename)
        return vim.fn.getfsize(filename) > 1024 * 1000
      end
    },
  },
}
