local gps = require('nvim-gps')
require('lualine').setup{
    options = {
        theme = 'auto'
    },
    sections = {
        lualine_c = {
            { 'filename' },
            { gps.get_location, cond = gps.is_available },
        }
    },
    inactive_sections = {
        lualine_c = {}
    }
}
