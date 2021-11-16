local palettes = require('tranquility.palettes')
local util = require('tranquility.util')
local highlights = require('tranquility.highlights')

local function clear()
    vim.cmd([[hi clear]])
    vim.cmd([[if exists("g:syntax_on") | syntax reset | endif]])
end

local function define_colors(config)
    local colors = vim.deepcopy(palettes[config.palette])

    colors.comment = vim.deepcopy(colors[config.mappings.comment])
    colors.literal = vim.deepcopy(colors[config.mappings.literal])
    colors.operator = vim.deepcopy(colors[config.mappings.operator])
    colors.ui = vim.deepcopy(colors[config.mappings.ui])
    colors.error = vim.deepcopy(colors[config.mappings.error])
    colors.warning = vim.deepcopy(colors[config.mappings.warning])
    colors.hint = vim.deepcopy(colors[config.mappings.hint])

    if config.transparent_background then
        colors.bg = util.mod.none
    else
        colors.bg = colors.black.dark
    end

    return colors
end

local function setup(config)
    clear()
    local colors = define_colors(config)
    highlights.set_highlights(colors)
end

return {setup = setup}
