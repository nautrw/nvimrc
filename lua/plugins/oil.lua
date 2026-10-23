return {
  "stevearc/oil.nvim",
  lazy = true,
  dependencies = { "nautrw/real-icons.nvim" },
  cmd = "Oil",
  keys = {
    { "<leader>e", "<cmd>Oil<CR>", desc = "Open Oil file explorer" },
  },
  opts = {
    columns = {
      "permissions",
      "size",
      "mtime",
      "icon",
    },
    preview_win = {
      disable_preview = function(filename) return vim.fn.getfsize(filename) > 1024 * 1000 end,
    },
    view_options = {
      show_hidden = true,
    },
  },
}
