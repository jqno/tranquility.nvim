local util = require('tranquility.util')
local mod = util.mod
local hi = util.hi
local hilink = util.hilink

local function set_native_syntax(colors, bg)
    hi('Comment', colors.comment.light, bg)
    hi('Constant', colors.literal.light, bg)
    hi('Debug', colors.warning.light, bg)
    hi('Delimiter', colors.white.dark, bg)
    hi('Error', colors.error.light, bg)
    hi('Identifier', colors.white.light, bg)
    hi('Ignore', colors.white.dark, bg)
    hi('Operator', colors.operator.dark, bg)
    hi('Statement', colors.white.dark, bg, mod.bold)
    hi('Title', colors.literal.light, bg)
    hi('Todo', colors.comment.light, bg, mod.bold)
    hi('Type', colors.white.light, bg, mod.bold)
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

local function set_visual_elements(colors, bg)
    hilink('Terminal', 'Normal')
    hilink('NonText', 'Ignore')
    hilink('EndOfBuffer', 'Ignore')
    hi('Conceal', colors.black.light, bg)
end

local function set_gitsigns(colors, bg)
    hi('GitSignsAdd', colors.green.light, bg)
    hi('GitSignsChange', colors.yellow.light, bg)
    hi('GitSignsDelete', colors.red.light, bg)
end

local function set_lsp(colors, bg)
    hi('LspReferenceText', mod.none, mod.none, mod.italic)
    hilink('LspReferenceRead', 'DiffAdd')
    hilink('LspReferenceWrite', 'DiffDelete')

    hi('LspDiagnosticsSignError', colors.error.light, bg)
    hi('LspDiagnosticsSignWarning', colors.warning.light, bg)
    hi('LspDiagnosticsSignInformation', colors.info.light, bg)
    hi('LspDiagnosticsSignHint', colors.hint.light, bg)
    hi('LspDiagnosticsUnderlineError', colors.error.light, bg, mod.underline)
    hi('LspDiagnosticsUnderlineWarning', colors.warning.light, bg, mod.underline)
    hi('LspDiagnosticsUnderlineInformation', colors.info.light, bg,
       mod.underline)
    hi('LspDiagnosticsUnderlineHint', colors.hint.light, bg, mod.underline)
    hilink('LspDiagnosticsVirtualTextError', 'LspDiagnosticsSignError')
    hilink('LspDiagnosticsVirtualTextWarning', 'LspDiagnosticsSignWarning')
    hilink('LspDiagnosticsVirtualTextInformation',
           'LspDiagnosticsSignInformation')
    hilink('LspDiagnosticsVirtualTextHint', 'LspDiagnosticsSignHint')
end

local function set_neovim(colors)
    hi('healthError', colors.black.light, colors.error.light, mod.bold)
    hi('healthSuccess', colors.black.light, colors.green.light, mod.bold)
    hi('healthWarning', colors.black.light, colors.warning.light, mod.bold)
end

local function set_nvimtree()
    hilink('NvimTreeRootFolder', 'Comment')
end

local function set_telescope(colors, bg)
    hi('TelescopeBorder', colors.ui.light, bg)
    hi('TelescopeMatching', colors.ui.red, bg)
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
    hilink('TSVariableBuiltin', 'TSVariable')

    hi('TSURI', colors.blue.light, bg)
    hi('TSText', colors.white.light, bg)
    hi('TSStrong', colors.white.light, bg, mod.bold)
    hi('TSEmphasis', colors.white.light, bg, mod.italic)
    hi('TSStrike', colors.white.dark, bg)
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
    hi('VimwikiWeblink1', colors.literal.light, bg, mod.underline)
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
    hi('ErrorMsg', colors.white.light, colors.error.dark, mod.bold)
    hi('WarningMsg', colors.black.light, colors.warning.dark, mod.bold)
    hi('ModeMsg', colors.ui.dark, bg)
    hilink('MoreMsg', 'ModeMsg')
    hilink('Question', 'ModeMsg')

    -- statusline and other lines
    hi('StatusLine', colors.ui.light, colors.white.light)
    hi('StatusLineNC', colors.black.light, colors.white.light)
    hilink('StatusLineTerm', 'StatusLine')
    hilink('StatusLineTermNC', 'StatusLineNC')
    hilink('TabLine', 'StatusLineNC')
    hilink('TabLineFill', 'StatusLineNC')
    hilink('TabLineSel', 'StatusLine')
    hilink('ToolbarButton', 'StatusLine')
    hilink('ToolbarLine', 'StatusLineNC')
    hi('WildMenu', colors.ui.light, colors.white.light)
    hi('VertSplit', colors.black.light, colors.black.light)

    -- cursor
    hi('ColorColumn', mod.none, colors.ui.dark)
    hi('CursorColumn', mod.none, colors.black.light)
    hilink('CursorLine', 'CursorColumn')
    hi('Cursor', mod.none, colors.ui.dark)
    hilink('CursorIM', 'Cursor')
    hilink('lCursor', 'Cursor')
    hi('LineNr', colors.white.dark, bg)
    hi('CursorLineNr', colors.ui.dark, bg)
    hi('SignColumn', mod.none, bg)

    -- visual
    hi('Visual', mod.none, colors.ui.dark, mod.bold)
    hi('VisualNOS', mod.none, colors.ui.dark, mod.bold)

    -- Pmenu
    hi('Pmenu', colors.white.light, colors.black.light)
    hi('PmenuSel', colors.white.light, colors.ui.light, mod.bold)
    hi('PmenuSbar', mod.none, colors.white.dark)
    hi('PmenuThumb', mod.none, colors.ui.light)

    -- folds
    hi('FoldColumn', colors.white.dark, bg)
    hi('Folded', colors.white.dark, bg, mod.italic)

    -- search
    hi('IncSearch', colors.black.light, colors.warning.dark, mod.bold)
    hi('Search', colors.white.light, colors.ui.dark)
    hi('MatchParen', mod.none, colors.ui.dark, mod.bold)

    -- diagnostics
    hi('SpellBad', colors.warning.dark, bg, mod.underline)
    hilink('SpellCap', 'SpellBad')
    hilink('SpellLocal', 'SpellBad')
    hilink('SpellRare', 'SpellBad')

    -- diff
    hi('DiffAdd', colors.black.light, colors.green.light)
    hi('DiffChange', colors.black.light, colors.yellow.light)
    hi('DiffDelete', colors.black.light, colors.red.light)
    hilink('DiffText', 'Normal')
    hilink('diffAdded', 'DiffAdd')
    hilink('diffChanged', 'DiffChange')
    hilink('diffRemoved', 'DiffDelete')
    hilink('diffLine', 'DiffText')

    -- other
    hi('Directory', colors.ui.light, bg)
end

local function set_highlights(colors)
    hi('Normal', colors.white.light, colors.bg)

    set_native_syntax(colors, colors.bg)
    set_visual_elements(colors, colors.bg)

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

return {set_highlights = set_highlights}
