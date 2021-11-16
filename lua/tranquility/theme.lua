local util = require('tranquility.util')

local palettes = {
    selenized = {
        black = {dark = '#252525', light = '#3b3b3b'},
        red = {dark = '#ed4a46', light = '#ff5e56'},
        green = {dark = '#70b433', light = '#83c746'},
        yellow = {dark = '#dbb32d', light = '#efc541'},
        blue = {dark = '#368aeb', light = '#4f9cfe'},
        magenta = {dark = '#eb6eb7', light = '#ff81ca'},
        cyan = {dark = '#3fc5b7', light = '#56d8c9'},
        white = {dark = '#777777', light = '#dedede'}
    }
}

local themes = {
    default = {
        palette = 'selenized',
        transparent_background = true,
        mappings = {
            comment = 'green',
            literal = 'yellow',
            operator = 'yellow',
            ui = 'blue',
            error = 'red',
            warning = 'magenta',
            info = 'white',
            hint = 'cyan'
        }
    }
}

local function define_colors(theme_name)
    local theme = themes[theme_name]
    local colors = vim.deepcopy(palettes[theme.palette])

    colors.comment = vim.deepcopy(colors[theme.mappings.comment])
    colors.literal = vim.deepcopy(colors[theme.mappings.literal])
    colors.operator = vim.deepcopy(colors[theme.mappings.operator])
    colors.ui = vim.deepcopy(colors[theme.mappings.ui])
    colors.error = vim.deepcopy(colors[theme.mappings.error])
    colors.warning = vim.deepcopy(colors[theme.mappings.warning])
    colors.info = vim.deepcopy(colors[theme.mappings.info])
    colors.hint = vim.deepcopy(colors[theme.mappings.hint])

    if theme.transparent_background then
        colors.bg = util.mod.none
    else
        colors.bg = colors.black.dark
    end

    return colors
end

return {define_colors = define_colors}
