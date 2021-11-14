local util = require('tranquility.util')
local mod = util.mod
local hi = util.hi
local hilink = util.hilink

local function set_treesitter(colors, bg)
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
end

local function set_filetype_html()
    hilink('htmlTSNone', 'TSVariable')
end

local function set_highlights(colors)
    hi('Normal', colors.white.light, colors.bg)

    set_treesitter(colors, colors.bg)
    set_filetype_html()
end

return {set_highlights = set_highlights}
