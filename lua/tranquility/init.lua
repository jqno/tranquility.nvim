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
end

local function theme_colors()
    return colors
end

return { setup = setup, colors = theme_colors }
