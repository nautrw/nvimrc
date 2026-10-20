Snacks = require "snacks"
local M = {}
local unwanted_cache

local function get_unwanted_colorschemes()
  if unwanted_cache then return unwanted_cache end

  unwanted_cache = {}

  local path = vim.fs.joinpath(vim.fn.stdpath "config", "lua", "pickers", "unwanted_colorschemes.txt")

  vim.fn.mkdir(vim.fs.dirname(path), "p")

  local file = io.open(path, "a")
  if not file then return unwanted_cache end
  file:close()

  local file = io.open(path, "r")
  if not file then return unwanted_cache end

  for line in file:lines() do
    line = line:match "^%s*(.-)%s*$"

    if line ~= "" and not line:match "^#" then unwanted_cache[line] = true end
  end

  file:close()
  return unwanted_cache
end

local function exclude_colorscheme(name)
  local path = vim.fs.joinpath(vim.fn.stdpath "config", "lua", "pickers", "unwanted_colorschemes.txt")

  vim.fn.mkdir(vim.fs.dirname(path), "p")

  local file, err = io.open(path, "a")
  if not file then
    vim.notify("Failed to exclude colorscheme " .. name .. ": " .. tostring(err), vim.log.levels.ERROR)
    return
  end

  file:write(name, "\n")
  file:close()

  unwanted_cache = nil

  vim.notify("Excluded colorscheme: " .. name, vim.log.levels.INFO)
end

function M.get_filtered_colorschemes()
  local unfiltered_list = vim.fn.getcompletion("", "color")

  -- if lazy is available, extend the unfiltered list with unloaded colorschemes
  local lazy = package.loaded["lazy.core.util"]
  if lazy and lazy.get_unloaded_rtp then
    local paths = lazy.get_unloaded_rtp ""
    local all_files = vim.fn.globpath(table.concat(paths, ","), "colors/*", true, true)

    for _, f in ipairs(all_files) do
      local color = vim.fn.fnamemodify(f, ":t:r")
      if not vim.tbl_contains(unfiltered_list, color) then table.insert(unfiltered_list, color) end
    end
  end

  local unwanted = get_unwanted_colorschemes()
  local filtered = {}

  for _, name in ipairs(unfiltered_list) do
    if not unwanted[name] then filtered[#filtered + 1] = name end
  end

  return filtered
end

function M.picker()
  local items = {}
  local colorschemes = M.get_filtered_colorschemes()

  for idx, colorscheme in ipairs(colorschemes) do
    local item = {
      idx = idx,
      text = colorscheme,
    }

    table.insert(items, item)
  end

  Snacks.picker {
    title = "Colorscheme Picker",
    layout = {
      preset = "right",
      preview = false,
    },
    items = items,
    format = function(item, _)
      return {
        { item.text, item.text_hl },
      }
    end,
    confirm = function(picker, item)
      vim.schedule(function()
        local _, _ = pcall(function() vim.cmd.colorscheme(item.text) end)
      end)

      local file = io.open(vim.fs.joinpath(vim.fn.stdpath "config", "lua", "core", "persistent_colorscheme.lua"), "w")

      file:write([[if pcall(function() vim.cmd.colorscheme("]] .. item.text .. [[") end) then
  return
else
  vim.cmd.colorscheme("paradise")
  print("Failed to load colorscheme `]] .. item.text .. [[`")
end]])
      file:close()

      picker:close()
    end,
    on_change = function(_, item)
      vim.schedule(function()
        local _, _ = pcall(function() vim.cmd.colorscheme(item.text) end)
      end)
    end,
    actions = {
      exclude_colorscheme = function(picker)
        local item = picker:current()
        if not item then return end

        exclude_colorscheme(item.text)

        for i, entry in ipairs(picker.list.items) do
          if entry.text == item.text then
            table.remove(picker.list.items, i)
            break
          end
        end

        picker.list:update { force = true }
      end,
    },
    win = {
      input = {
        keys = {
          ["<C-x>"] = {
            "exclude_colorscheme",
            mode = { "n", "i" },
            desc = "Exclude colorscheme",
          },
        },
      },
    },
  }
end

return M
