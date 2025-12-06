local This = {}

function This.get(theme)
    local colors = require('tranquility.theme').define_colors(theme)
    return {
        normal = {
            a = { bg = colors.ui_widget, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.normal.fg, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.normal.fg },
        },
        insert = {
            a = { bg = colors.literal.fg, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.normal.fg, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.normal.fg },
        },
        visual = {
            a = { bg = colors.visual.fg, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.normal.fg, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.normal.fg },
        },
        replace = {
            a = { bg = colors.operator.fg, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.normal.fg, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.normal.fg },
        },
        command = {
            a = { bg = colors.warning.fg, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.normal.fg, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.normal.fg },
        },
        inactive = {
            a = { bg = colors.normal.fg, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.normal.fg, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.normal.fg },
        }
    }
end

return This
