local util = require('tranquility.util')
local mod = util.mod
local hi = util.hi
local hilink = util.hilink

local function set_native_syntax(colors, bg)
    hi('Comment', colors.comment, bg)
    hi('Constant', colors.literal, bg)
    hi('Debug', colors.warning, bg)
    hi('Delimiter', colors.dark_white, bg)
    hi('Error', colors.error, bg)
    hi('Identifier', colors.light_white, bg)
    hi('Ignore', colors.dark_white, bg)
    hi('Operator', colors.operator, bg)
    hi('Statement', colors.dark_white, bg, mod.bold)
    hi('Title', colors.literal, bg)
    hi('Todo', colors.comment, bg, mod.bold)
    hi('Type', colors.light_white, bg, mod.bold)
    hi('Underlined', colors.light_white, bg, mod.underline)

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

local function set_visual_elements(colors, bg)
    hilink('Terminal', 'Normal')
    hilink('NonText', 'Ignore')
    hilink('EndOfBuffer', 'Ignore')
    hi('Conceal', colors.light_black, bg)
    hi('FloatBorder', colors.ui, colors.light_black)
end

local function set_floaterm()
    hilink('FloatermBorder', 'FloatBorder')
end

local function set_gitsigns(colors, bg)
    hi('GitSignsAdd', colors.light_green, bg)
    hi('GitSignsChange', colors.light_yellow, bg)
    hi('GitSignsDelete', colors.light_red, bg)
end

local function set_lsp(colors, bg)
    hi('LspReferenceText', mod.none, mod.none, mod.italic)
    hilink('LspReferenceRead', 'DiffAdd')
    hilink('LspReferenceWrite', 'DiffDelete')

    hi('DiagnosticSignError', colors.error, bg)
    hi('DiagnosticSignWarning', colors.warning, bg)
    hi('DiagnosticSignInformation', colors.info, bg)
    hi('DiagnosticSignHint', colors.hint, bg)
    hi('DiagnosticUnderlineError', colors.error, bg, mod.underline)
    hi('DiagnosticUnderlineWarning', colors.warning, bg, mod.underline)
    hi('DiagnosticUnderlineInformation', colors.info, bg, mod.underline)
    hi('DiagnosticUnderlineHint', colors.hint, bg, mod.underline)
    hilink('DiagnosticVirtualTextError', 'DiagnosticSignError')
    hilink('DiagnosticVirtualTextWarning', 'DiagnosticSignWarning')
    hilink('DiagnosticVirtualTextInformation', 'DiagnosticSignInformation')
    hilink('DiagnosticVirtualTextHint', 'DiagnosticSignHint')
end

local function set_neovim(colors)
    hi('healthError', colors.light_black, colors.error, mod.bold)
    hi('healthSuccess', colors.light_black, colors.green, mod.bold)
    hi('healthWarning', colors.light_black, colors.warning, mod.bold)
end

local function set_nvimtree()
    hilink('NvimTreeRootFolder', 'Comment')
end

local function set_telescope(colors, bg)
    hi('TelescopeBorder', colors.ui, bg)
    hi('TelescopeMatching', colors.ui, bg)
end

local function set_treesitter(colors, bg)
    hilink('TSComment', 'Comment')
    hilink('TSKeyword', 'Statement')
    hilink('TSLiteral', 'Constant')
    hilink('TSOperator', 'Operator')
    hilink('TSPunctDelimiter', 'Delimiter')
    hilink('TSType', 'Type')
    hilink('TSVariable', 'Identifier')
    hilink('TSNote', 'Todo')
    hilink('TSError', 'Error')
    hilink('TSWarning', 'Debug')

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
    hilink('TSVariableBuiltin', 'TSKeyword')

    hi('TSURI', colors.light_blue, bg)
    hi('TSText', colors.light_white, bg)
    hi('TSStrong', colors.light_white, bg, mod.bold)
    hi('TSEmphasis', colors.light_white, bg, mod.italic)
    hi('TSStrike', colors.dark_white, bg)
    hilink('TSUnderline', 'Underlined')
    hilink('TSTitle', 'Title')
    hilink('TSMath', 'TSText')
    hilink('TSTextReference', 'TSComment')
    hilink('TSEnvironment', 'TSKeyword')
    hilink('TSEnvironmentName', 'TSLiteral')
end

local function set_filetype_gitcommit()
    hilink('gitcommitSummary', 'Constant')
    hilink('gitcommitOverflow', 'Error')
end

local function set_filetype_html()
    hilink('htmlBold', 'TSStrong')
    hilink('htmlItalic', 'TSEmphasis')
    hilink('htmlTSEmphasis', 'TSEmphasis')
    hilink('htmlTSNone', 'TSVariable')
    hilink('htmlTSStrong', 'TSStrong')
end

local function set_filetype_lua()
    hilink('luaFunction', 'Keyword')
    hilink('luaFunctionBlock', 'Function')
end

local function set_filetype_markdown()
    hilink('markdownBoldDelimiter', 'Delimiter')
    hilink('markdownCodeDelimiter', 'Delimiter')
    hilink('markdownItalicDelimiter', 'Delimiter')
    hilink('markdownCode', 'Keyword')
end

local function set_filetype_vimwiki(colors, bg)
    hi('VimwikiWeblink1', colors.literal, bg, mod.underline)
end

local function set_filetype_xml()
    hilink('xmlAttrib', 'TSTagAttribute')
    hilink('xmlAttribPunct', 'TSTagDelimiter')
    hilink('xmlEqual', 'TSTagDelimiter')
    hilink('xmlString', 'TSLiteral')
    hilink('xmlTagName', 'TSTag')
    hilink('xmlTag', 'TSTagDelimiter')
end

local function set_gui(colors, bg)
    -- messages
    hi('ErrorMsg', colors.light_white, colors.error, mod.bold)
    hi('WarningMsg', colors.light_black, colors.warning, mod.bold)
    hi('ModeMsg', colors.ui, bg)
    hilink('MoreMsg', 'ModeMsg')
    hilink('Question', 'ModeMsg')

    -- statusline and other lines
    hi('StatusLine', colors.ui, colors.light_white)
    hi('StatusLineNC', colors.dark_white, colors.light_black)
    hilink('StatusLineTerm', 'StatusLine')
    hilink('StatusLineTermNC', 'StatusLineNC')
    hilink('TabLine', 'StatusLineNC')
    hilink('TabLineFill', 'StatusLineNC')
    hilink('TabLineSel', 'StatusLine')
    hilink('ToolbarButton', 'StatusLine')
    hilink('ToolbarLine', 'StatusLineNC')
    hi('WildMenu', colors.ui, colors.light_white)
    hi('VertSplit', colors.light_black, colors.light_black)
    hi('WinSeparator', colors.ui, mod.none)

    -- cursor
    hi('ColorColumn', mod.none, colors.ui)
    hi('CursorColumn', mod.none, colors.light_black)
    hilink('CursorLine', 'CursorColumn')
    hi('Cursor', mod.none, colors.ui)
    hilink('CursorIM', 'Cursor')
    hilink('lCursor', 'Cursor')
    hi('LineNr', colors.dark_white, bg)
    hi('CursorLineNr', colors.ui, bg)
    hi('SignColumn', mod.none, bg)

    -- visual
    hi('Visual', mod.none, colors.ui, mod.bold)
    hi('VisualNOS', mod.none, colors.ui, mod.bold)

    -- Pmenu
    hi('Pmenu', colors.light_white, colors.light_black)
    hi('PmenuSel', colors.light_white, colors.ui, mod.bold)
    hi('PmenuSbar', mod.none, colors.dark_white)
    hi('PmenuThumb', mod.none, colors.ui)

    -- folds
    hi('FoldColumn', colors.dark_white, bg)
    hi('Folded', colors.dark_white, bg, mod.italic)

    -- search
    hi('IncSearch', colors.light_black, colors.warning, mod.bold)
    hi('Search', colors.light_white, colors.ui)
    hi('MatchParen', mod.none, colors.ui, mod.bold)

    -- diagnostics
    hi('SpellBad', colors.warning, bg, mod.underline)
    hilink('SpellCap', 'SpellBad')
    hilink('SpellLocal', 'SpellBad')
    hilink('SpellRare', 'SpellBad')

    -- diff
    hi('DiffAdd', colors.light_black, colors.light_green)
    hi('DiffChange', colors.light_black, colors.light_yellow)
    hi('DiffDelete', colors.light_black, colors.light_red)
    hilink('DiffText', 'Normal')
    hilink('diffAdded', 'DiffAdd')
    hilink('diffChanged', 'DiffChange')
    hilink('diffRemoved', 'DiffDelete')
    hilink('diffLine', 'DiffText')

    -- other
    hi('Directory', colors.ui, bg)
end

local function set_highlights(colors)
    hi('Normal', colors.light_white, colors.bg)

    set_native_syntax(colors, colors.bg)
    set_visual_elements(colors, colors.bg)

    set_floaterm()
    set_gitsigns(colors, colors.bg)
    set_lsp(colors, colors.bg)
    set_neovim(colors)
    set_nvimtree()
    set_telescope(colors, colors.bg)
    set_treesitter(colors, colors.bg)

    set_filetype_gitcommit()
    set_filetype_html()
    set_filetype_lua()
    set_filetype_markdown()
    set_filetype_vimwiki(colors, colors.bg)
    set_filetype_xml()

    set_gui(colors, colors.bg)
end

return { set_highlights = set_highlights }
