return {
  "nautrw/real-icons.nvim",
  build = ":RealIcons install",
  cmd = "RealIcons",
  opts = {
    integrations = {
      oil = true,
      snacks_picker = true,
      lualine = true
    },
  },
}
