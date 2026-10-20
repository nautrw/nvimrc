vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "auto" -- the gutter

vim.o.mouse = "a" -- enables mouse in all modes

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.breakindent = true -- indent wrapped lines

vim.o.showmode = false

-- this could increase startup times so its put inside vim.schedule
vim.schedule(function() vim.o.clipboard = "unnamedplus" end)

vim.o.swapfile = true
vim.o.undofile = true

vim.o.ignorecase = true -- ignore case in search
-- lowercase will be case insensitive but uppercase will force case sensitivity
vim.o.smartcase = true

vim.o.list = true

vim.o.fillchars = {
  eob = " ", -- stops the '~' at the end of the file
}

vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣", -- U+202F
}

vim.o.cursorline = true

-- ask to save file instead of throwing an error
vim.o.confirm = true

vim.o.laststatus = 3 -- universal statusline

vim.o.winborder = "rounded"

-- keep an amount of lines above or below the cursor
vim.o.scrolloff = 10

vim.opt.whichwrap:append "<>[]hl"

vim.o.splitright = true

vim.o.termguicolors = true
