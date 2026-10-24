vim.keymap.set(
  "n",
  "<leader>p",
  -- 'yiwoprint(f"<ESC>pa: {<ESC>pa}")<ESC>',
  function()
    local filename = vim.fn.expand "%t"
    local line = vim.fn.line "."
    local word = vim.fn.expand "<cword>" -- same is yiw

    local keys = 'yiwoprint(f"' .. filename .. ":" .. line .. "|" .. word .. ': {<ESC>pa}")<ESC>'

    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, false, true), "n", false)
  end,
  {
    desc = "Python Print Debugging",
    buffer = true,
  }
)
