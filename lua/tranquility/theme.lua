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
        statement = { fg = s.dim_0, bold = true },
        literal = { fg = s.yellow },
        literal_badge = { fg = s.yellow, bg = s.bg_yellow },
        type = { fg = s.fg_0 },
        operator = { fg = s.orange },
        comment = { fg = s.green },
        link = { fg = s.blue },
        conceal = { fg = s.dim_0 },
        raw_badge = { fg = s.fg_1, bg = s.bg_2 },
        lens = { fg = s.blue, bg = s.bg_blue },
        visual = { fg = s.blue },
        visual_badge = { bg = s.bg_blue }, -- Note: no fg

        -- UI elements
        background = util.none, -- Transparent background
        ui_dim_background = s.bg_1,
        ui_background = s.bg_2,
        cursor = s.fg_1,
        ui_text = s.fg_1,
        ui_dim_text = s.dim_0,
        ui_widget = s.green,
        ui_highlight = s.violet,
        ui_extra_highlight = s.cyan,

        -- Status elements
        ok = { fg = s.green },
        ok_badge = { fg = s.green, bg = s.bg_green },
        error = { fg = s.red },
        error_badge = { fg = s.red, bg = s.bg_red },
        warning = { fg = s.magenta },
        warning_badge = { fg = s.magenta, bg = s.bg_magenta },
        unnecessary_badge = { fg = s.dim_0, bg = s.bg_2 },

        info = { fg = s.cyan },
        info_badge = { fg = s.cyan, bg = s.bg_cyan },
        hint = { fg = s.fg_1 },
        hint_badge = { fg = s.fg_1, bg = s.bg_2 },
        added = { fg = s.green },
        added_badge = { fg = s.green, bg = s.bg_green },
        changed = { fg = s.yellow },
        changed_badge = { fg = s.yellow, bg = s.bg_yellow },
        deleted = { fg = s.red },
        deleted_badge = { fg = s.red, bg = s.bg_red },

        highlight = { fg = s.cyan, bg = s.bg_cyan },
        highlight_plus = { fg = s.bg_2, bg = s.cyan }
    },
    nord = {
        name = 'Tranquil Nord',

        -- Syntax elements
        normal = { fg = n.snow_storm_2, bg = n.polar_night_0 },
        statement = { fg = n.frost_3 },
        literal = { fg = n.aurora_2 },
        literal_badge = { fg = n.aurora_2, bg = n.bg_aurora_2 },
        type = { fg = n.snow_storm_0 },
        operator = { fg = n.frost_0 },
        comment = { fg = n.aurora_3 },
        link = { fg = n.frost_1 },
        conceal = { fg = n.polar_night_3 },
        raw_badge = { fg = s.snow_storm_2, bg = s.polar_night_3 },
        lens = { fg = n.frost_1, bg = n.bg_frost_1 },
        visual = { fg = n.frost_1 },
        visual_badge = { bg = n.bg_frost_1 }, -- Note: no fg

        -- UI elements
        background = n.polar_night_0,
        ui_dim_background = n.polar_night_1,
        ui_background = n.polar_night_2,
        cursor = n.snow_storm_2,
        ui_text = n.snow_storm_2,
        ui_dim_text = n.polar_night_3,
        ui_widget = n.aurora_3,
        ui_highlight = n.aurora_4,
        ui_extra_highlight = n.frost_2,

        -- Status elements
        ok = { fg = n.aurora_3 },
        ok_badge = { fg = n.aurora_3, bg = n.bg_aurora_3 },
        error = { fg = n.aurora_0 },
        error_badge = { fg = n.aurora_0, bg = n.bg_aurora_0 },
        warning = { fg = n.aurora_4 },
        warning_badge = { fg = n.aurora_4, bg = n.bg_aurora_4 },
        unnecessary_badge = { fg = s.polar_night_3, bg = s.polar_night_3 },

        info = { fg = n.frost_2 },
        info_badge = { fg = n.frost_2, bg = n.bg_frost_2 },
        hint = { fg = n.snow_storm_2 },
        hint_badge = { fg = n.snow_storm_2, bg = n.polar_night_3 },
        added = { fg = n.aurora_3 },
        added_badge = { fg = n.aurora_3, bg = n.bg_aurora_3 },
        changed = { fg = n.aurora_2 },
        changed_badge = { fg = n.aurora_2, bg = n.bg_aurora_2 },
        deleted = { fg = n.aurora_0 },
        deleted_badge = { fg = n.aurora_0, bg = n.bg_aurora_0 },

        highlight = { fg = n.frost_2, bg = n.bg_frost_2 },
        highlight_plus = { fg = n.polar_night_2, bg = n.frost_2 }
    }
}

local function define_colors(theme_name)
    return themes[theme_name]
end

return { define_colors = define_colors }
