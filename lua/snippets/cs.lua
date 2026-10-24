local ls = require "luasnip"
local fmt = require("luasnip.extras.fmt").fmt
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- {{ and }} are literal { and }
ls.add_snippets("cs", {
  s(
    "bsp",
    fmt(
      [[
class {}
{{
    public static void Main(string[] args)
    {{
        {}
    }}
}}
    ]],
      {
        i(1, "Name"),
        i(2),
      }
    )
  ),
})
