return {
    'nvim-lualine/lualine.nvim',
    dependencies = { "nautrw/real-icons.nvim" },
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
            lualine_c = {
                {
                    "filename",
                    path = 1,
                    shorting_target = 75
                },
            },
            lualine_x = { "filesize", "filetype" },
            lualine_y = { "lsp_status" },
            lualine_z = { "searchcount", "location", "progress" },
        }
    }
}
