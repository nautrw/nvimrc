return {
    'nvim-lualine/lualine.nvim',
    dependencies = { "Mirsmog/real-icons.nvim" },
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = {left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
                statusline = { "snacks_dashboard" }
            },
            always_show_tabline = false,
            globalstatus = true,
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = {"filename"},
                lualine_x = {"encoding", "fileformat", "filetype"},
                lualine_y = {},
                lualine_z = {"location", "progress"},
            }
    }
}
