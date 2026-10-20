vim.loader.enable()

require "core.options"
require "core.lazy"
require "core.autocommands"
require "core.keybinds"

-- require "core.persistent_colorscheme"
local ok = pcall(require, "core.persistent_colorscheme")

if not ok then vim.cmd.colorscheme "paradise" end
