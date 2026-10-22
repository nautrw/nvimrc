return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nautrw/real-icons.nvim" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = { "snacks_dashboard" },
      },
      always_show_tabline = false,
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        "branch",
        {
          "diff",
          source = function()
            local gitsigns = vim.b.gitsigns_status_dict
            if gitsigns then
              return {
                added = gitsigns.added,
                modified = gitsigns.changed,
                removed = gitsigns.removed,
              }
            end
          end,
         symbols = {
            added = " ",
            modified = " ",
            removed = " ",
          },
          colored = true,
          always_visible = false,
        },
        "diagnostics",
      },
      lualine_c = {
        {
          "filename",
          path = 1,
          shorting_target = 75,
        },
      },
      lualine_x = { "filesize", "filetype" },
      lualine_y = { "lsp_status" },
      lualine_z = { "searchcount", "location", "progress" },
    },
  },
}
