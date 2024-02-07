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
            literal = 'bright_yellow',
            type = 'fg_0',
            operator = 'orange',
            comment = 'bright_green',
            link = 'bright_blue',
            conceal = 'dim_0',
            highlighted_background = 'bg_2',

            -- UI elements
            background = 'bg_0',
            ui_dim_background = 'bg_1',
            ui_background = 'bg_2',
            visual = 'bg_2',
            cursor = 'fg_1',
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
            conceal = 'frost_3',
            highlighted_background = 'polar_night_2',

            -- UI elements
            background = 'polar_night_0',
            ui_dim_background = 'polar_night_1',
            ui_background = 'polar_night_2',
            visual = 'polar_night_2',
            cursor = 'snow_storm_2',
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
    },
    catppuccin = {
        transparent_background = true,
        palette = {
            rosewater = '#f5e0dc',
            flamingo = '#f2cdcd',
            pink = '#f5c2e7',
            mauve = '#cba6f7',
            red = '#f38ba8',
            maroon = '#eba0ac',
            peach = '#fab387',
            yellow = '#f9e2af',
            green = '#a6e3a1',
            teal = '#94e2d5',
            sky = '#89dceb',
            sapphire = '#74c7ec',
            blue = '#89b4fa',
            lavender = '#b4befe',
            text = '#cdd6f4',
            subtext1 = '#bac2de',
            subtext0 = '#a6adc8',
            overlay2 = '#9399b2',
            overlay1 = '#7f849c',
            overlay0 = '#6c7086',
            surface2 = '#585b70',
            surface1 = '#45475a',
            surface0 = '#313244',
            base = '#1e1e2e',
            mantle = '#181825',
            crust = '#11111b'
        },
        mappings = {
            -- Syntax elements
            identifier = 'text',
            statement = 'mauve',
            literal = 'yellow',
            type = 'lavender',
            operator = 'peach',
            comment = 'green',
            link = 'blue',
            conceal = 'overlay2',
            highlighted_background = 'surface2',

            -- UI elements
            background = 'base',
            ui_dim_background = 'surface0',
            ui_background = 'surface2',
            visual = 'surface2',
            cursor = 'rosewater',
            ui_text = 'rosewater',
            ui_dim_text = 'subtext0',
            ui_widget = 'blue',
            ui_highlight = 'sapphire',
            ui_extra_highlight = 'teal',

            -- Status elements
            error = 'red',
            warning = 'yellow',
            info = 'teal',
            hint = 'flamingo',
            added = 'green',
            changed = 'blue',
            deleted = 'red'
        }
    },
    intellij = {
        transparent_background = true,
        palette = {
            background = '#1e1f22',
            bg_inline_hint = '#393b40',
            bg_injected_lang = '#293c40',
            text = '#bcbec4',
            unused_symbol = '#6f737a',
            fg_inline_hint = '#858a94',
            keyword = '#cf8e6d',
            string = '#6aab73',
            metadata = '#b3ae60',
            hyperlink = '#548af7',
            button = '#3675f0',
            weak_warning = '#857042',
            typo = '#7ec482',
            error = '#fa6675',
            warning = '#f2c55c',
        },
        mappings = {
            -- Syntax elements
            identifier = 'text',
            statement = 'unused_symbol',
            literal = 'metadata',
            type = 'text',
            operator = 'keyword',
            comment = 'string',
            link = 'hyperlink',
            conceal = 'fg_inline_hint',
            highlighted_background = 'bg_injected_lang',

            -- UI elements
            background = 'background',
            ui_dim_background = 'bg_inline_hint',
            ui_background = 'bg_injected_lang',
            visual = 'bg_injected_lang',
            cursor = 'text',
            ui_text = 'text',
            ui_dim_text = 'fg_inline_hint',
            ui_widget = 'button',
            ui_highlight = 'weak_warning',
            ui_extra_highlight = 'typo',

            -- Status elements
            error = 'error',
            warning = 'warning',
            info = 'typo',
            hint = 'text',
            added = 'typo',
            changed = 'warning',
            deleted = 'error'
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
