local This = {}

function This.get(theme)
    local colors = require('tranquility.theme').define_colors(theme)
    local util = require('tranquility.util')
    return {
        normal = {
            a = util.merge(colors.lualine, { bg = colors.ok.fg }),
            b = util.invert(colors.statusline),
            c = colors.statusline,
        },
        insert = {
            a = util.merge(colors.lualine, { bg = colors.literal.fg }),
            b = util.invert(colors.statusline),
            c = colors.statusline,
        },
        visual = {
            a = util.merge(colors.lualine, { bg = colors.visual.fg }),
            b = util.invert(colors.statusline),
            c = colors.statusline,
        },
        replace = {
            a = util.merge(colors.lualine, { bg = colors.operator.fg }),
            b = util.invert(colors.statusline),
            c = colors.statusline,
        },
        command = {
            a = util.merge(colors.lualine, { bg = colors.warning.fg }),
            b = util.invert(colors.statusline),
            c = colors.statusline,
        },
        inactive = {
            a = util.merge(colors.lualine, { bg = colors.normal.fg }),
            b = util.invert(colors.statusline),
            c = colors.statusline,
        }
    }
end

return This
