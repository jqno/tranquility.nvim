local util = require('tranquility.util')

local themes = {
    selenized = {
        name = 'Tranquility',
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
            literal = 'bright_yellow',
            type = 'fg_0',
            operator = 'orange',
            comment = 'bright_green',
            link = 'bright_blue',
            conceal = 'blue',
            highlighted_background = 'bg_2',

            -- UI elements
            background = 'bg_0',
            ui_dim_background = 'bg_1',
            ui_background = 'bg_2',
            visual = 'dim_0',
            cursor = 'fg_1',
            lens = 'bright_blue',
            ui_text = 'fg_1',
            ui_dim_text = 'dim_0',
            ui_widget = 'green',
            ui_highlight = 'violet',
            ui_extra_highlight = 'cyan',

            -- Status elements
            error = 'bright_red',
            warning = 'bright_magenta',
            info = 'bright_cyan',
            hint = 'fg_1',
            added = 'bright_green',
            changed = 'bright_yellow',
            deleted = 'bright_red'
        }
    },
    nord = {
        name = 'Tranquil Nord',
        transparent_background = true,
        palette = {
            polar_night_0 = '#2e3440',
            polar_night_1 = '#3b4252',
            polar_night_2 = '#434c5e',
            polar_night_3 = '#4c566a',
            snow_storm_0 = '#d8dee9',
            snow_storm_1 = '#e5e9f0',
            snow_storm_2 = '#eceff4',
            frost_0 = '#8fbcbb',
            frost_1 = '#88c0d0',
            frost_2 = '#81a1c1',
            frost_3 = '#5e81ac',
            aurora_0 = '#bf616a',
            aurora_1 = '#d08770',
            aurora_2 = '#ebcb8b',
            aurora_3 = '#a3be8c',
            aurora_4 = '#b48ead'
        },
        mappings = {
            -- Syntax elements
            identifier = 'snow_storm_2',
            statement = 'frost_1',
            literal = 'aurora_2',
            type = 'snow_storm_0',
            operator = 'frost_0',
            comment = 'aurora_3',
            link = 'frost_0',
            conceal = 'polar_night_3',
            highlighted_background = 'polar_night_2',

            -- UI elements
            background = 'polar_night_0',
            ui_dim_background = 'polar_night_1',
            ui_background = 'polar_night_2',
            visual = 'polar_night_2',
            cursor = 'snow_storm_2',
            lens = 'aurora_1',
            ui_text = 'snow_storm_2',
            ui_dim_text = 'polar_night_3',
            ui_widget = 'aurora_3',
            ui_highlight = 'aurora_4',
            ui_extra_highlight = 'frost_1',

            -- Status elements
            error = 'aurora_0',
            warning = 'aurora_4',
            info = 'frost_1',
            hint = 'snow_storm_2',
            added = 'aurora_3',
            changed = 'aurora_2',
            deleted = 'aurora_0'
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
        colors.background = util.none
    end

    colors.theme_name = theme.name

    return colors
end

return { define_colors = define_colors }
