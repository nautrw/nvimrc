vim.keymap.set("n", "X", function()
  local line = vim.api.nvim_get_current_line()

  if line:match "%[ %]" then
    line = line:gsub("%[ %]", "[x]", 1)
  elseif line:match "%[[xX]%]" then
    line = line:gsub("%[[xX]%]", "[ ]", 1)
  else
    return
  end

  vim.api.nvim_set_current_line(line)
end, { desc = "Toggle Markdown checkbox", buffer = true })
