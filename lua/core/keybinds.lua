local wk = require("which-key")
wk.add({
  { "<leader>f", group = "Finders" },
  { "<leader>b", group = "buffers", expand = function()
      return require("which-key.extras").expand.buf()
    end
  },
})
