-- REMINDER: MANY KEYBINDS ARE IN THEIR PLUGIN FILES

local wk = require "which-key"
wk.add {
  { "<leader>f", group = "Finders" },
  { "<leader>s", group = "Splits" },
  {
    "<leader>b",
    group = "buffers",
    expand = function() return require("which-key.extras").expand.buf() end,
  },
}

-- Better up & down
-- This allows going up even when there are wrapped lines
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", {
  desc = "Down",
  expr = true,
  silent = true,
})
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", {
  desc = "Down",
  expr = true,
  silent = true,
})
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", {
  desc = "Down",
  expr = true,
  silent = true,
})
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", {
  desc = "Down",
  expr = true,
  silent = true,
})

vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Ctrl+Backspace" })

vim.keymap.set("i", "<A-h>", "<Left>", { desc = "Move cursor left" })
vim.keymap.set("i", "<A-j>", "<Down>", { desc = "Move cursor down" })
vim.keymap.set("i", "<A-k>", "<Up>", { desc = "Move cursor up" })
vim.keymap.set("i", "<A-l>", "<Right>", { desc = "Move cursor right" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus window to the left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus window below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus window above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus window to the right" })

vim.keymap.set('n', '<leader>mc', function()
  vim.api.nvim_buf_clear_namespace(
    0,
    vim.api.nvim_create_namespace('nvim.multicursor'),
    0,
    -1
  )
end, { desc = 'Clear multicursors' })
