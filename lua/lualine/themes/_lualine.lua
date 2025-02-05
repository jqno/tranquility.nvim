local This = {}

function This.get(theme)
    local colors = require('tranquility.theme').define_colors(theme)
    return {
        normal = {
            a = { bg = colors.ui_widget, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.identifier, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.identifier },
        },
        insert = {
            a = { bg = colors.literal, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.identifier, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.identifier },
        },
        visual = {
            a = { bg = colors.visual, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.identifier, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.identifier },
        },
        replace = {
            a = { bg = colors.operator, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.identifier, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.identifier },
        },
        command = {
            a = { bg = colors.warning, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.identifier, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.identifier },
        },
        inactive = {
            a = { bg = colors.identifier, fg = colors.ui_dim_background, gui = 'bold' },
            b = { bg = colors.identifier, fg = colors.ui_dim_background },
            c = { bg = colors.ui_background, fg = colors.identifier },
        }
    }
end

return This
