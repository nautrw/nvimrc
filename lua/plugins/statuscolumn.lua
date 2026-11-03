return {
  "nvim-mini/mini.statuscolumn",
  version = false,
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local statuscolumn = require "mini.statuscolumn"

    statuscolumn.setup {
      content = statuscolumn.gen_content.main {
        -- Signs first, line numbers, then folds
        { format = "s=l=f", sep = "▏" },

        -- Virtual lines
        { ltype = "virt", lnum = "•" },

        -- Wrapped lines
        { ltype = "wrap", lnum = "↳" },

        -- Inactive windows: subtle separator
        { win = "inactive", sep = " " },

        -- More prominent cursor line separator
        { pos = "cursor", sep = "▏" },
      },

      dim_inactive = true,
    }

    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.signcolumn = "yes"
    vim.opt.foldcolumn = "1"
  end,
}
