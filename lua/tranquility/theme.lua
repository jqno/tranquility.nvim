local util = require('tranquility.util')

local themes = {
    selenized = {
        name = 'Tranquility',
        transparent_background = true,
        palette = {
            bg_0       = '#181818',
            bg_1       = '#252525',
            bg_2       = '#3b3b3b',
            bg_3       = '#595959',
            dim_0      = '#777777',
            fg_0       = '#b9b9b9',
            fg_1       = '#dedede',
            red        = '#ff5e56',
            green      = '#83c746',
            yellow     = '#efc541',
            blue       = '#4f9cfe',
            magenta    = '#ff81ca',
            cyan       = '#56d8c9',
            orange     = '#fa9153',
            violet     = '#b891f5',
            bg_red     = '#5d2d2b',
            bg_green   = '#384d26',
            bg_yellow  = '#584c24',
            bg_blue    = '#28405d',
            bg_magenta = '#5d384d',
            bg_cyan    = '#2b524d',
            bg_orange  = '#5c3c2a',
            bg_violet  = '#483c5a'
        },
        mappings = {
            -- Syntax elements
            identifier = 'fg_1',
            statement = 'dim_0',
            literal = 'yellow',
            type = 'fg_0',
            operator = 'orange',
            comment = 'green',
            link = 'blue',
            conceal = 'dim_0',
            highlighted_background = 'bg_2',

            -- UI elements
            background = 'bg_0',
            ui_dim_background = 'bg_1',
            ui_background = 'bg_2',
            visual = 'blue',
            cursor = 'fg_1',
            lens = 'blue',
            ui_text = 'fg_1',
            ui_dim_text = 'dim_0',
            ui_widget = 'green',
            ui_highlight = 'violet',
            ui_extra_highlight = 'cyan',

            -- Status elements
            error = 'red',
            warning = 'magenta',
            info = 'cyan',
            hint = 'fg_1',
            added = 'green',
            changed = 'yellow',
            deleted = 'red'
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
            bg_frost_0 = '#3c4949',
            bg_frost_1 = '#3a4a4f',
            bg_frost_2 = '#38414b',
            bg_frost_3 = '#2d3844',

            aurora_0 = '#bf616a',
            aurora_1 = '#d08770',
            aurora_2 = '#ebcb8b',
            aurora_3 = '#a3be8c',
            aurora_4 = '#b48ead',
            bg_aurora_0 = '#4a2e31',
            bg_aurora_1 = '#4f3932',
            bg_aurora_2 = '#574e3a',
            bg_aurora_3 = '#424a3b',
            bg_aurora_4 = '#473b45'
        },
        mappings = {
            -- Syntax elements
            identifier = 'snow_storm_2',
            statement = 'frost_3',
            literal = 'aurora_2',
            type = 'snow_storm_0',
            operator = 'frost_0',
            comment = 'aurora_3',
            link = 'frost_1',
            conceal = 'polar_night_3',
            highlighted_background = 'polar_night_2',

            -- UI elements
            background = 'polar_night_0',
            ui_dim_background = 'polar_night_1',
            ui_background = 'polar_night_2',
            visual = 'frost_1',
            cursor = 'snow_storm_2',
            lens = 'frost_1',
            ui_text = 'snow_storm_2',
            ui_dim_text = 'polar_night_3',
            ui_widget = 'aurora_3',
            ui_highlight = 'aurora_4',
            ui_extra_highlight = 'frost_2',

            -- Status elements
            error = 'aurora_0',
            warning = 'aurora_4',
            info = 'frost_2',
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
