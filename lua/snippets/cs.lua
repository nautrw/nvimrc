local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cs", {
    s("bspc", {
        t('class '),
        i(1, "Name"),
        t("{"),
    })
})
