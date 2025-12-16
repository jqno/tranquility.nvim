local theme = require('tranquility.theme')
local highlights = require('tranquility.highlights')

local colors = nil

local function clear()
    vim.cmd([[hi clear]])
    vim.cmd([[if exists("g:syntax_on") | syntax reset | endif]])
end

local function setup_lualine(name)
    local ok, lualine = pcall(require, 'lualine')
    if ok then
        local config = require('lualine').get_config()
        config.options.theme = name
        lualine.setup(config)
    end
end

local function setup(name)
    clear()
    colors = theme.define_colors(name)
    highlights.set_highlights(colors)
    setup_lualine(name)
    vim.g.colors_name = colors.theme_name
end

local function theme_colors()
    return colors
end

return { setup = setup, colors = theme_colors }
