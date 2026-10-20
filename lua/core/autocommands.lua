vim.api.nvim_create_autocmd("User", {
  desc = "Enable preview on oil automatically",
  pattern = "OilEnter",
  callback = vim.schedule_wrap(function(args)
    local oil = require "oil"
    if vim.api.nvim_get_current_buf() == args.data.buf and oil.get_cursor_entry() and vim.fn.winwidth "%" > 100 then
      oil.open_preview()
    end
  end),
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  desc = "Make help menu go on vertical split",
  pattern = { "*.txt" },
  callback = function()
    if vim.bo.filetype == "help" then vim.cmd.wincmd "L" end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function() vim.highlight.hl_op() end,
})
