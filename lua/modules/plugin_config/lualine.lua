require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'tokyonight-storm',
    },
    sections = {
        lualine_a = {
            'filename',
            path = 1,
        }
    }
}
