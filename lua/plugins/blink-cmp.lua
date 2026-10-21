return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  build = function() require("blink.cmp").build():wait(60000) end,
  dependencies = { "rafamadriz/friendly-snippets", "saghen/blink.lib", "L3MON4D3/LuaSnip" },
  opts = {
    signature = {
      enabled = true,
      trigger = {
        enabled = true,
      },
      window = {
        border = "rounded",
        show_documentation = true,
      },
    },
    keymap = {
      preset = "super-tab",
      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation", "fallback" },
      ["<Esc>"] = {
        function(cmp)
          if cmp.is_menu_visible() then
            cmp.hide()
            return true
          end
          return false
        end,
        "fallback",
      },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = {
        auto_show = false,
      },
      menu = {
        draw = {
          columns = {
            {
              "kind_icon",
              "label",
              "label_description",
              gap = 1,
            },
            {
              "source_name",
              "kind",
              gap = 1,
            },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
