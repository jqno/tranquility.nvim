local util = require('tranquility.util')
local mod = util.mod
local hi = util.hi
local hilink = util.hilink

local function set_native_syntax(colors, bg)
    hi('Comment', colors.comment.light, bg)
    hi('Constant', colors.literal.light, bg, mod.bold)
    hi('Debug', colors.warning.ligh, bg)
    hi('Delimiter', colors.white.dark, bg)
    hi('Error', colors.error.light, bg)
    hi('Identifier', colors.white.light, bg, mod.bold)
    hi('Ignore', colors.white.dark, bg)
    hi('Operator', colors.literal.dark, bg)
    hi('Statement', colors.white.dark, bg, mod.bold)
    hi('Todo', colors.comment.light, bg, mod.bold)
    hi('Type', colors.white.light, bg)
    hi('Underlined', colors.white.light, bg, mod.underline)

    hilink('Boolean', 'Constant')
    hilink('Character', 'Constant')
    hilink('Conditional', 'Statement')
    hilink('Define', 'Delimiter')
    hilink('Exception', 'Statement')
    hilink('Float', 'Constant')
    hilink('Function', 'Identifier')
    hilink('Include', 'Delimiter')
    hilink('Keyword', 'Statement')
    hilink('Label', 'Statement')
    hilink('Macro', 'Define')
    hilink('Number', 'Constant')
    hilink('PreProc', 'Delimiter')
    hilink('PreCondit', 'Delimiter')
    hilink('Repeat', 'Statement')
    hilink('SpecialChar', 'String')
    hilink('SpecialComment', 'Comment')
    hilink('Special', 'Constant')
    hilink('StorageClass', 'Keyword')
    hilink('String', 'Constant')
    hilink('Structure', 'Type')
    hilink('Tag', 'Type')
    hilink('Typedef', 'Type')
end

local function set_visual_elements()
    hilink('Terminal', 'Normal')
    hilink('NonText', 'Ignore')
    hilink('EndOfBuffer', 'Ignore')
end

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
    hilink('TSConstMacro', 'TSDelimiter')
    hilink('TSConstructor', 'TSVariable')
    hilink('TSDanger', 'TSError')
    hilink('TSException', 'TSKeyword')
    hilink('TSField', 'TSVariable')
    hilink('TSFloat', 'TSLiteral')
    hilink('TSFunction', 'TSVariable')
    hilink('TSFuncBuiltIn', 'TSFunction')
    hilink('TSFuncMacro', 'TSDelimiter')
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

    set_native_syntax(colors, colors.bg)
    set_visual_elements()
    set_treesitter(colors, colors.bg)
    set_filetype_html()
end

return {set_highlights = set_highlights}
