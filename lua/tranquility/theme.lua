local util = require('tranquility.util')

local palettes = {
    selenized = {
        bg_0       = '#181818',
        bg_1       = '#252525',
        bg_2       = '#3b3b3b',
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
    nord = {
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
    }
}

local s = palettes.selenized
local n = palettes.nord

local themes = {
    selenized = {
        name = 'Tranquility',

        -- Syntax elements
        normal = { fg = s.fg_1, bg = util.none },
        statement = s.dim_0,
        literal = s.yellow,
        type = s.fg_0,
        operator = s.orange,
        comment = s.green,
        link = s.blue,
        conceal = s.dim_0,
        highlighted_background = s.bg_2,

        -- UI elements
        background = util.none, -- Transparent background
        ui_dim_background = s.bg_1,
        ui_background = s.bg_2,
        visual = s.blue,
        cursor = s.fg_1,
        lens = s.blue,
        ui_text = s.fg_1,
        ui_dim_text = s.dim_0,
        ui_widget = s.green,
        ui_highlight = s.violet,
        ui_extra_highlight = s.cyan,

        -- Status elements
        error = s.red,
        warning = s.magenta,
        info = s.cyan,
        hint = s.fg_1,
        added = s.green,
        changed = s.yellow,
        deleted = s.red
    },
    nord = {
        name = 'Tranquil Nord',

        -- Syntax elements
        normal = { fg = n.snow_storm_2, bg = n.polar_night_0 },
        statement = n.frost_3,
        literal = n.aurora_2,
        type = n.snow_storm_0,
        operator = n.frost_0,
        comment = n.aurora_3,
        link = n.frost_1,
        conceal = n.polar_night_3,
        highlighted_background = n.polar_night_2,

        -- UI elements
        background = n.polar_night_0,
        ui_dim_background = n.polar_night_1,
        ui_background = n.polar_night_2,
        visual = n.frost_1,
        cursor = n.snow_storm_2,
        lens = n.frost_1,
        ui_text = n.snow_storm_2,
        ui_dim_text = n.polar_night_3,
        ui_widget = n.aurora_3,
        ui_highlight = n.aurora_4,
        ui_extra_highlight = n.frost_2,

        -- Status elements
        error = n.aurora_0,
        warning = n.aurora_4,
        info = n.frost_2,
        hint = n.snow_storm_2,
        added = n.aurora_3,
        changed = n.aurora_2,
        deleted = n.aurora_0
    }
}

local function define_colors(theme_name)
    return themes[theme_name]
end

return { define_colors = define_colors }
