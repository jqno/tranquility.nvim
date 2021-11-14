local mod = {
  none = 'NONE',
  bold = 'bold',
  italic = 'italic',
  underline = 'underline'
}

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
  colors.error = vim.deepcopy(colors.red)
  colors.warning = vim.deepcopy(colors.yellow)

  if config.transparent_background then
    colors.bg = mod.none
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
  vim.cmd([[hi clear]])
  vim.cmd([[if exists("g:syntax_on") | syntax reset | endif]])

  local bg = colors.bg

  hi('Normal', colors.white.light, bg)

  hi('TSComment', colors.comment.light, bg)
  hi('TSKeyword', colors.white.dark, bg, mod.bold)
  hi('TSLiteral', colors.literal.light, bg, mod.bold)
  hi('TSOperator', colors.literal.dark, bg)
  hi('TSPunctDelimiter', colors.white.dark, bg)
  hi('TSType', colors.white.light, bg)
  hi('TSVariable', colors.white.light, bg, mod.bold)
  hi('TSNote', colors.comment.light, bg, mod.bold)
  hi('TSError', colors.error.light, bg)
  hi('TSWarning', colors.warning.dark, bg)

  hilink('TSAnnotation', 'TSVariable')
  hilink('TSAttribute', 'TSAnnotation')
  hilink('TSBoolean', 'TSLiteral')
  hilink('TSCharacter', 'TSLiteral')
  hilink('TSConditional', 'TSKeyword')
  hilink('TSConstant', 'TSLiteral')
  hilink('TSConstBuiltin', 'TSLiteral')
  hilink('TSConstMacro', 'TSLiteral')
  hilink('TSConstructor', 'TSVariable')
  hilink('TSDanger', 'TSError')
  hilink('TSException', 'TSKeyword')
  hilink('TSField', 'TSVariable')
  hilink('TSFloat', 'TSLiteral')
  hilink('TSFunction', 'TSVariable')
  hilink('TSFuncBuiltIn', 'TSFunction')
  hilink('TSFuncMacro', 'TSFunction')
  hilink('TSInclude', 'TSPunctDelimiter')
  hilink('TSKeywordFunction', 'TSKeyword')
  hilink('TSKeywordOperator', 'TSOperator')
  hilink('TSKeywordReturn', 'TSKeyword')
  hilink('TSLabel', 'TSLiteral')
  hilink('TSMethod', 'TSVariable')
  hilink('TSNamespace', 'TSVariable')
  hilink('TSNone', 'Normal')
  hilink('TSNumber', 'TSLiteral')
  hilink('TSParameter', 'TSVariable')
  hilink('TSParameterReference', 'TSParameter')
  hilink('TSProperty', 'TSField')
  hilink('TSPunctBracket', 'TSPunctDelimiter')
  hilink('TSPunctSpecial', 'TSPunctDelimiter')
  hilink('TSRepeat', 'TSKeyword')
  hilink('TSStringEscape', 'TSString')
  hilink('TSStringRegex', 'TSString')
  hilink('TSStringSpecial', 'TSString')
  hilink('TSString', 'TSLiteral')
  hilink('TSSymbol', 'TSLiteral')
  hilink('TSTag', 'TSType')
  hilink('TSTagAttribute', 'TSType')
  hilink('TSTagDelimiter', 'TSPunctDelimiter')
  hilink('TSTypeBuiltin', 'TSType')
  hilink('TSVariableBuiltin', 'TSVariable')


  hi('TSText', colors.white.light, bg)
  hi('TSStrong', colors.white.light, bg, mod.bold)
  hi('TSEmphasis', colors.white.light, bg, mod.italic)
  hi('TSUnderline', colors.white.light, bg, mod.underline)
  hi('TSStrike', colors.white.dark, bg)
  hi('TSTitle', colors.literal.light, bg)
  hi('TSURI', colors.blue.light, bg)
  hilink('TSMath', 'TSText')
  hilink('TSTextReference', 'TSComment')
  hilink('TSEnvironment', 'TSKeyword')
  hilink('TSEnvironmentName', 'TSLiteral')

  hilink('htmlTSNone', 'TSVariable')
end

local function setup(config)
  local colors = define_colors(config)
  set_highlights(colors)
end

return {
    setup = setup
}
