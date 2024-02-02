local util = require('tranquility.util')

local themes = {
    selenized = {
        transparent_background = true,
        palette = {
            bg_0 = '#181818',
            bg_1 = '#252525',
            bg_2 = '#3b3b3b',
            red = '#ed4a46',
            bright_red = '#ff5e56',
            green = '#70b433',
            bright_green = '#83c746',
            yellow = '#dbb32d',
            bright_yellow = '#efc541',
            blue = '#368aeb',
            bright_blue = '#4f9cfe',
            magenta = '#eb6eb7',
            bright_magenta = '#ff81ca',
            cyan = '#3fc5b7',
            bright_cyan = '#56d8c9',
            orange = '#e67f43',
            bright_orange = '#fa9153',
            violet = '#a580e2',
            bright_violet = '#b891f5',
            dim_0 = '#777777',
            fg_0 = '#b9b9b9',
            fg_1 = '#dedede'
        },
        mappings = {
            -- Syntax elements
            identifier = 'fg_1',
            statement = 'dim_0',
            literal = 'bright_orange',
            type = 'fg_1',
            operator = 'yellow',
            comment = 'bright_green',
            link = 'bright_blue',
            conceal = 'dim_0',
            highlighted_background = 'bg_2',

            -- UI elements
            background = 'bg_0',
            cursor = 'fg_1',
            ui_text = 'fg_1',
            ui_widget = 'green',
            ui_highlight = 'violet',
            ui_extra_highlight = 'cyan',
            ui_background = 'bg_2',
            ui_dim_text = 'dim_0',
            ui_dim_background = 'bg_1',
            visual = 'bg_2',

            -- Status elements
            error = 'bright_red',
            warning = 'bright_magenta',
            info = 'bright_cyan',
            hint = 'fg_1',
            added = 'bright_green',
            changed = 'bright_yellow',
            deleted = 'bright_red'
        }
    }
}

local function define_colors(theme_name)
    local theme = themes[theme_name]

    local colors = {}
    for key, _ in pairs(theme.mappings) do
        colors[key] = theme.palette[theme.mappings[key]]
    end

    if theme.transparent_background then
        colors.background = util.mod.none
    end

    return colors
end

return { define_colors = define_colors }
