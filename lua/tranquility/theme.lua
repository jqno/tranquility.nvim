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
    },
    nord = {
        black = {dark = {'#2e3440', '23'}, light = {'#4c566a', '59'}},
        red = {dark = {'#bf616a', '131'}, light = {'#d08770', '173'}},
        green = {dark = {'#8fbcbb', '109'}, light = {'#a3be8c', '144'}},
        yellow = {dark = {'#ebcb8b', '222'}, light = {'#ebcb8b', '222'}},
        blue = {dark = {'#5e81ac', '67'}, light = {'#81a1c1', '109'}},
        magenta = {dark = {'#b48ead', '139'}, light = {'#b48ead', '139'}},
        cyan = {dark = {'#88c0d0', '110'}, light = {'#88c0d0', '110'}},
        white = {dark = {'#d8dee9', '188'}, light = {'#eceff4', '231'}}
    },
    dracula = {
        black = {dark = {'#21222c', '235'}, light = {'#6272a4', '61'}},
        red = {dark = {'#ff5555', '203'}, light = {'#ff6e6e', '203'}},
        green = {dark = {'#50fa7b', '84'}, light = {'#69ff94', '84'}},
        yellow = {dark = {'#f1fa8c', '228'}, light = {'#ffffa5', '229'}},
        blue = {dark = {'#bd94f9', '141'}, light = {'#d6acff', '183'}},
        magenta = {dark = {'#ff79c6', '212'}, light = {'#ff92df', '212'}},
        cyan = {dark = {'#8be9fd', '117'}, light = {'#a4ffff', '159'}},
        white = {dark = {'#f8f8f2', '253'}, light = {'#ffffff', '231'}}
    }
}

local mappings = {
    selenized = {
        comment = 'green',
        literal = 'yellow',
        operator = 'yellow',
        ui = 'blue',
        error = 'red',
        warning = 'magenta',
        info = 'white',
        hint = 'cyan'
    },
    nord = {
        comment = 'blue',
        literal = 'green',
        operator = 'green',
        ui = 'cyan',
        error = 'red',
        warning = 'yellow',
        info = 'white',
        hint = 'cyan'
    },
    dracula = {
        comment = 'magenta',
        literal = 'blue',
        operator = 'blue',
        ui = 'cyan',
        error = 'red',
        warning = 'yellow',
        info = 'white',
        hint = 'cyan'
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
    dracula = {
        palette = 'dracula',
        transparent_background = false,
        mappings = mappings.dracula
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
