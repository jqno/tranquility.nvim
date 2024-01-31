local util = require('tranquility.util')

local palettes = {
    selenized = {
        dark_black = '#252525',
        light_black = '#3b3b3b',
        dark_red = '#ed4a46',
        light_red = '#ff5e56',
        dark_green = '#70b433',
        light_green = '#83c746',
        dark_yellow = '#dbb32d',
        light_yellow = '#efc541',
        dark_blue = '#368aeb',
        light_blue = '#4f9cfe',
        dark_magenta = '#eb6eb7',
        light_magenta = '#ff81ca',
        dark_cyan = '#3fc5b7',
        light_cyan = '#56d8c9',
        dark_white = '#777777',
        light_white = '#dedede'
    }
}

local mappings = {
    selenized = {
        -- Syntax elements
        identifier = 'light_white',
        statement = 'dark_white',
        literal = 'light_green',
        type = 'light_white',
        operator = 'dark_yellow',
        comment = 'light_green',
        link = 'light_blue',
        conceal = 'dark_white',
        highlighted_background = 'light_black',

        -- UI elements
        ui_text = 'light_white',
        ui_widget = 'dark_green',
        ui_highlight = 'dark_blue',
        ui_background = 'light_black',
        ui_dim_text = 'dark_white',
        ui_dim_background = 'dark_black',
        visual = 'light_black',

        -- Status elements
        error = 'light_red',
        warning = 'light_magenta',
        info = 'light_cyan',
        hint = 'light_white',
        added = 'light_green',
        changed = 'light_yellow',
        deleted = 'light_red'
    }
}

local themes = {
    selenized = {
        palette = 'selenized',
        transparent_background = true,
        mappings = mappings.selenized
    }
}

local function define_colors(theme_name)
    local overrides = vim.g.tranquility_overrides or {}

    local preset_theme = themes[theme_name]
    local theme = vim.deepcopy(preset_theme)
    theme.mappings = vim.tbl_extend('force', preset_theme.mappings, overrides.mappings or {})
    if overrides.transparent_background ~= nil then
        theme.transparent_background = overrides.transparent_background
    end

    local preset_colors = vim.deepcopy(palettes[theme.palette])
    local colors = vim.tbl_extend('force', preset_colors, overrides.palette or {})
    for key, _ in pairs(theme.mappings) do
        colors[key] = vim.deepcopy(colors[theme.mappings[key]])
    end

    if theme.transparent_background then
        colors.bg = util.mod.none
    else
        colors.bg = colors.dark_black
    end

    return colors
end

return { define_colors = define_colors }
