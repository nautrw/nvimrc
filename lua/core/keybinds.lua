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

vim.keymap.set(
  "n",
  "<leader>th",
  function()
    require('pickers.colorscheme_picker').picker()
  end,
  { desc = "Colorscheme picker" }
)
