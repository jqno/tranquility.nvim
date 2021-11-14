local none = 'NONE'

local defaults = {
    palettes = {
        selenized = {
            black = {dark = '#252525', light = '#3b3b3b'},
            red = {dark = '#ed4a46', light = '#ff5e56'},
            green = {dark = '#70b433', light = '#83c746'},
            yellow = {dark = '#dbb32d', light = '#efc541'},
            blue = {dark = '#368aeb', light = '#4f9cfe'},
            magenta = {dark = '#eb6eb7', light = '#ff81ca'},
            cyan = {dark = '#3fc5b7', light = '#56d8c9'},
            white = {dark = '#777777', light = '#dedede'}
        }
    }
}

local function define_colors(config)
  local colors = vim.deepcopy(defaults.palettes[config.palette])

  colors.comment = vim.deepcopy(colors[config.mappings.comment])
  colors.literal = vim.deepcopy(colors[config.mappings.literal])
  colors.ui = vim.deepcopy(colors[config.mappings.ui])

  if config.transparent_background then
    colors.bg = none
  else
    colors.bg = colors.black.dark
  end

  return colors
end

local function hi(group, fg, bg, gui)
    local cmd = 'highlight ' .. group
    if fg ~= nil then cmd = cmd .. ' guifg=' .. fg end
    if bg ~= nil then cmd = cmd .. ' guibg=' .. bg end
    if gui ~= nil then cmd = cmd .. ' gui=' .. gui end
    vim.cmd(cmd)
end

local function hilink(group, link)
    local cmd = string.format('highlight link %s %s', group, link)
    vim.cmd(cmd)
end

local function set_highlights(colors)
  highlight('Normal', '#777777', colors.bg)
end

local function setup(config)
  local colors = define_colors(config)
  set_highlights(colors)
end

return {
    setup = setup
}
