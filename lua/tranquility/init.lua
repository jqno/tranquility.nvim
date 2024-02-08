local theme = require('tranquility.theme')
local highlights = require('tranquility.highlights')

local colors = nil

local function clear()
    vim.cmd([[hi clear]])
    vim.cmd([[if exists("g:syntax_on") | syntax reset | endif]])
end

local function setup(name)
    clear()
    colors = theme.define_colors(name)
    highlights.set_highlights(colors)
    vim.g.colors_name = colors.theme_name
end

local function theme_colors()
    return colors
end

return { setup = setup, colors = theme_colors }
