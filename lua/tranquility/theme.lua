local util = require('tranquility.util')

local palettes = {
    selenized = {
        dark_black = { '#252525', '235' },
        light_black = { '#3b3b3b', '237' },
        dark_red = { '#ed4a46', '204' },
        light_red = { '#ff5e56', '203' },
        dark_green = { '#70b433', '107' },
        light_green = { '#83c746', '113' },
        dark_yellow = { '#dbb32d', '179' },
        light_yellow = { '#efc541', '221' },
        dark_blue = { '#368aeb', '69' },
        light_blue = { '#4f9cfe', '75' },
        dark_magenta = { '#eb6eb7', '205' },
        light_magenta = { '#ff81ca', '212' },
        dark_cyan = { '#3fc5b7', '79' },
        light_cyan = { '#56d8c9', '80' },
        dark_white = { '#777777', '243' },
        light_white = { '#dedede', '253' }
    },
    nord = {
        dark_black = { '#2e3440', '23' },
        light_black = { '#4c566a', '59' },
        dark_red = { '#bf616a', '131' },
        light_red = { '#d08770', '173' },
        dark_green = { '#8fbcbb', '109' },
        light_green = { '#a3be8c', '144' },
        dark_yellow = { '#ebcb8b', '222' },
        light_yellow = { '#ebcb8b', '222' },
        dark_blue = { '#5e81ac', '67' },
        light_blue = { '#81a1c1', '109' },
        dark_magenta = { '#b48ead', '139' },
        light_magenta = { '#b48ead', '139' },
        dark_cyan = { '#88c0d0', '110' },
        light_cyan = { '#88c0d0', '110' },
        dark_white = { '#d8dee9', '188' },
        light_white = { '#eceff4', '231' }
    },
    intellij = {
        dark_black = { '#2b2b2b', '16' },
        light_black = { '#52503a', '59' },
        dark_red = { '#bc3f3c', '131' },
        light_red = { '#ff6b68', '203' },
        dark_green = { '#6a8759', '65' },
        light_green = { '#77b767', '107' },
        dark_yellow = { '#bbb529', '142' },
        light_yellow = { '#ffc66d', '221' },
        dark_blue = { '#287bde', '32' },
        light_blue = { '#6897bb', '67' },
        dark_magenta = { '#9876aa', '103' },
        light_magenta = { '#cc7832', '173' },
        dark_cyan = { '#507874', '66' },
        light_cyan = { '#80bfff', '111' },
        dark_white = { '#808080', '102' },
        light_white = { '#a9b7c6', '146' }
    },
    dracula = {
        dark_black = { '#21222c', '235' },
        light_black = { '#6272a4', '61' },
        dark_red = { '#ff5555', '203' },
        light_red = { '#ff6e6e', '203' },
        dark_green = { '#50fa7b', '84' },
        light_green = { '#69ff94', '84' },
        dark_yellow = { '#f1fa8c', '228' },
        light_yellow = { '#ffffa5', '229' },
        dark_blue = { '#bd94f9', '141' },
        light_blue = { '#d6acff', '183' },
        dark_magenta = { '#ff79c6', '212' },
        light_magenta = { '#ff92df', '212' },
        dark_cyan = { '#8be9fd', '117' },
        light_cyan = { '#a4ffff', '159' },
        dark_white = { '#f8f8f2', '253' },
        light_white = { '#ffffff', '231' }
    }
}

local mappings = {
    selenized = {
        comment = 'light_green',
        literal = 'light_yellow',
        operator = 'dark_yellow',
        ui = 'light_blue',
        error = 'light_red',
        warning = 'light_magenta',
        info = 'light_white',
        hint = 'light_cyan'
    },
    nord = {
        comment = 'light_blue',
        literal = 'light_green',
        operator = 'dark_green',
        ui = 'light_cyan',
        error = 'light_red',
        warning = 'light_yellow',
        info = 'light_white',
        hint = 'light_cyan'
    },
    intellij = {
        comment = 'light_green',
        literal = 'light_magenta',
        operator = 'dark_yellow',
        ui = 'light_blue',
        error = 'light_red',
        warning = 'light_yellow',
        info = 'light_white',
        hint = 'light_cyan'
    },
    dracula = {
        comment = 'light_magenta',
        literal = 'light_blue',
        operator = 'dark_blue',
        ui = 'light_cyan',
        error = 'light_red',
        warning = 'light_yellow',
        info = 'light_white',
        hint = 'light_cyan'
    }
}

local themes = {
    selenized = {
        palette = 'selenized',
        transparent_background = true,
        mappings = mappings.selenized
    },
    nord = {
        palette = 'nord',
        transparent_background = false,
        mappings = mappings.nord
    },
    intellij = {
        palette = 'intellij',
        transparent_background = false,
        mappings = mappings.intellij
    },
    dracula = {
        palette = 'dracula',
        transparent_background = false,
        mappings = mappings.dracula
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

return { define_colors = define_colors }
