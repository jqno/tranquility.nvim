local util = require('tranquility.util')

local palettes = {
    selenized = {
        black = {dark = {'#252525', '235'}, light = {'#3b3b3b', '237'}},
        red = {dark = {'#ed4a46', '204'}, light = {'#ff5e56', '203'}},
        green = {dark = {'#70b433', '107'}, light = {'#83c746', '113'}},
        yellow = {dark = {'#dbb32d', '179'}, light = {'#efc541', '221'}},
        blue = {dark = {'#368aeb', '69'}, light = {'#4f9cfe', '75'}},
        magenta = {dark = {'#eb6eb7', '205'}, light = {'#ff81ca', '212'}},
        cyan = {dark = {'#3fc5b7', '79'}, light = {'#56d8c9', '80'}},
        white = {dark = {'#777777', '243'}, light = {'#dedede', '253'}}
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
