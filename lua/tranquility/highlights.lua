local util = require('tranquility.util')
local mod = util.mod
local hi = util.hi
local hilink = util.hilink

local function set_native_syntax(colors, bg)
    hi('Comment', colors.comment, bg)
    hi('Constant', colors.literal, bg)
    hi('Debug', colors.warning, bg)
    hi('Delimiter', colors.dark_yellow, bg)
    hi('Error', colors.error, bg)
    hi('Identifier', colors.light_white, bg)
    hi('Ignore', colors.dark_white, bg, mod.italic)
    hi('Operator', colors.operator, bg)
    hi('Statement', colors.statement, bg, mod.bold)
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
    hi('FloatBorder', colors.ui, mod.none)
end

local function set_cmp(colors, bg)
    hi('CmpItemAbbrMatch', colors.dark_yellow, bg)
    hi('CmpItemAbbrMatchFuzzy', colors.dark_yellow, bg)
    hi('CmpItemAbbrDeprecated', colors.light_white, bg, mod.strikethrough)
end

local function set_floaterm()
    hilink('FloatermBorder', 'FloatBorder')
end

local function set_gitsigns(colors, bg)
    hi('GitSignsAdd', colors.light_green, bg)
    hi('GitSignsChange', colors.light_yellow, bg)
    hi('GitSignsDelete', colors.light_red, bg)
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
    hi('TelescopeBorder', colors.ui, mod.none)
    hi('TelescopeSelection', mod.none, colors.ui)
    hi('TelescopeMatching', colors.ui_highlight, bg, mod.bold)
end

local function set_treesitter(colors, bg)
    hilink('@comment', 'Comment')
    hilink('@error', 'Error')
    hilink('@keyword', 'Statement')
    hilink('@none', 'Normal')
    hilink('@operator', 'Operator')
    hilink('@punctuation.delimiter', 'Delimiter')
    hilink('@type', 'Type')
    hilink('@variable', 'Identifier')

    hilink('@annotation', '@variable')
    hilink('@attribute', '@annotation')
    hilink('@boolean', 'Constant')
    hilink('@character', 'Constant')
    hilink('@comment.danger', 'Debug')
    hilink('@comment.error', 'Debug')
    hilink('@comment.note', 'Todo')
    hilink('@comment.todo', 'Debug')
    hilink('@comment.warning', 'Debug')
    hilink('@conditional', '@keyword')
    hilink('@constant', 'Constant')
    hilink('@constant.builtin', 'Constant')
    hilink('@constant.macro', '@keyword')
    hilink('@constructor', '@variable')
    hilink('@exception', '@keyword')
    hilink('@field', '@variable')
    hilink('@float', 'Constant')
    hilink('@function', '@variable')
    hilink('@function.builtin', '@function')
    hi('@function.call', colors.light_white, bg, mod.italic)
    hilink('@function.macro', '@keyword')
    hilink('@include', '@punctuation.delimiter')
    hilink('@keyword.function', '@keyword')
    hilink('@keyword.operator', '@operator')
    hilink('@keyword.return', '@keyword')
    hilink('@label', 'Constant')
    hilink('@method', '@variable')
    hi('@method.call', colors.light_white, bg, mod.italic)
    hilink('@namespace', '@variable')
    hilink('@number', 'Constant')
    hilink('@parameter.reference', '@variable.parameter')
    hilink('@property', '@field')
    hilink('@punctuation.bracket', '@punctuation.delimiter')
    hilink('@punctuation.special', '@punctuation.delimiter')
    hilink('@repeat', '@keyword')
    hilink('@string', 'Constant')
    hilink('@string.escape', '@string')
    hilink('@string.regexp', '@string')
    hilink('@string.special', '@string')
    hilink('@string.special.symbol', 'Constant')
    hilink('@tag', '@type')
    hilink('@tag.attribute', '@type')
    hilink('@tag.delimiter', '@punctuation.delimiter')
    hilink('@type.builtin', '@type')
    hilink('@type.qualifier', '@keyword')
    hilink('@variable.builtin', '@keyword')
    hilink('@variable.parameter', '@variable')

    hi('@markup', colors.light_white, bg)
    hi('@markup.italic', colors.light_white, bg, mod.italic)
    hi('@markup.link', colors.light_blue, bg)
    hi('@markup.strikethrough', colors.dark_white, bg)
    hi('@markup.strong', colors.light_white, bg, mod.bold)
    hilink('@markup.environment', '@keyword')
    hilink('@markup.environment.name', 'Constant')
    hilink('@markup.heading', 'Title')
    hilink('@markup.link.label', '@markup.link')
    hilink('@markup.link.url', '@markup.link')
    hilink('@markup.math', '@text')
    hilink('@markup.raw', 'Constant')
    hilink('@markup.underline', 'Underlined')

    hilink('@diff.plus', 'DiffAdd')
    hilink('@diff.minus', 'DiffDelete')
    hilink('@diff.delta', 'DiffChange')
end

local function set_lsp(colors, bg)
    hilink('@lsp.type.class', '@type')
    hilink('@lsp.type.decorator', '@function')
    hilink('@lsp.type.enum', '@type')
    hilink('@lsp.type.enumMember', '@constant')
    hilink('@lsp.type.function', '@function')
    hilink('@lsp.type.interface', '@type')
    hilink('@lsp.type.keyword', '@keyword')
    hilink('@lsp.type.macro', '@macro')
    hilink('@lsp.type.method', '@method')
    hilink('@lsp.type.modifier', '@keyword')
    hilink('@lsp.type.namespace', '@namespace')
    hilink('@lsp.type.parameter', '@variable.parameter')
    hilink('@lsp.type.property', '@property')
    hilink('@lsp.type.struct', '@structure')
    hilink('@lsp.type.type', '@type')
    hilink('@lsp.type.variable', '@variable')

    hi('LspCodeLens', colors.ui_highlight, bg, mod.italic)
    hilink('LspCodeLensSeparator', 'LspCodeLens')
    hilink('LspReferenceText', 'DiffChange')
    hilink('LspReferenceRead', 'DiffAdd')
    hilink('LspReferenceWrite', 'DiffDelete')

    hi('DiagnosticSignError', colors.error, bg)
    hi('DiagnosticSignWarn', colors.warning, bg)
    hi('DiagnosticSignInfo', colors.info, bg)
    hi('DiagnosticSignHint', colors.hint, bg)
    hi('DiagnosticUnderlineError', colors.error, colors.light_black, mod.underline)
    hi('DiagnosticUnderlineWarn', colors.warning, colors.light_black, mod.underline)
    hi('DiagnosticUnderlineInfo', colors.info, colors.light_black, mod.underline)
    hi('DiagnosticUnderlineHint', colors.hint, colors.light_black, mod.underline)
    hi('DiagnosticFloatingError', colors.error, colors.light_black, mod.italic)
    hi('DiagnosticFloatingWarn', colors.warning, colors.light_black, mod.italic)
    hi('DiagnosticFloatingInfo', colors.info, colors.light_black, mod.italic)
    hi('DiagnosticFloatingHint', colors.hint, colors.light_black, mod.italic)
    hilink('DiagnosticVirtualTextError', 'DiagnosticSignError')
    hilink('DiagnosticVirtualTextWarn', 'DiagnosticSignWarn')
    hilink('DiagnosticVirtualTextInfo', 'DiagnosticSignInfo')
    hilink('DiagnosticVirtualTextHint', 'DiagnosticSignHint')
    vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { fg = colors.dark_white[1], underdotted = true, special = colors.warning[1] })

    -- Needed to properly display treesitter TODO comment highlights; see https://www.reddit.com/r/neovim/comments/14ecf5o/semantic_highlights_messing_with_todo_comments/
    vim.api.nvim_set_hl(0, '@lsp.type.comment', {})
end

local function set_filetype_gitcommit()
    hilink('gitcommitSummary', 'Constant')
    hilink('gitcommitOverflow', 'Error')
end

local function set_filetype_html()
    hilink('htmlBold', '@markup.strong')
    hilink('htmlItalic', '@markup.italic')
    hilink('htmlTSEmphasis', '@markup.italic')
    hilink('htmlNone', '@variable')
    hilink('htmlTSStrong', '@markup.strong')
end

local function set_filetype_lua()
    hilink('luaFunction', 'Keyword')
    hilink('luaFunctionBlock', 'Function')
end

local function set_filetype_markdown(colors, bg)
    hi('@markup.quote.markdown', colors.comment, bg, mod.italic)
    hilink('markdownBoldDelimiter', 'Delimiter')
    hilink('markdownCodeDelimiter', 'Delimiter')
    hilink('markdownItalicDelimiter', 'Delimiter')
    hilink('markdownCode', 'Keyword')
end

local function set_filetype_vimwiki(colors, bg)
    hi('VimwikiWeblink1', colors.literal, bg, mod.underline)
end

local function set_filetype_xml()
    hilink('xmlAttrib', '@tag.attribute')
    hilink('xmlAttribPunct', '@tag.delimiter')
    hilink('xmlEqual', '@tag.delimiter')
    hilink('xmlString', '@markup.raw')
    hilink('xmlTagName', '@tag')
    hilink('xmlTag', '@tag.delimiter')
end

local function set_gui(colors, bg)
    -- messages
    hi('ErrorMsg', colors.light_white, colors.error, mod.bold)
    hi('WarningMsg', colors.light_black, colors.warning, mod.bold)
    hi('MsgArea', colors.light_white, bg)
    hi('ModeMsg', colors.ui_highlight, bg)
    hilink('MoreMsg', 'ModeMsg')
    hilink('Question', 'ModeMsg')

    -- statusline and other lines
    if colors.invert_statusline then
        hi('StatusLine', colors.dark_white, colors.light_black)
        hi('StatusLineNC', colors.ui, colors.light_white)
    else
        hi('StatusLine', colors.ui, colors.light_white)
        hi('StatusLineNC', colors.dark_white, colors.light_black)
    end
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
    hi('ColorColumn', mod.none, colors.ui_highlight)
    hi('CursorColumn', mod.none, colors.light_black)
    hilink('CursorLine', 'CursorColumn')
    hi('Cursor', mod.none, colors.ui_highlight)
    hilink('CursorIM', 'Cursor')
    hilink('lCursor', 'Cursor')
    hi('LineNr', colors.dark_white, bg)
    hi('CursorLineNr', colors.ui, bg)
    hi('SignColumn', mod.none, bg)

    -- visual
    hi('Visual', mod.none, colors.light_black, mod.bold)
    hi('VisualNOS', mod.none, colors.light_black, mod.bold)

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
    hi('Search', colors.light_white, colors.ui_highlight)
    hi('MatchParen', colors.operator, colors.light_black, mod.bold)

    -- diagnostics
    hi('SpellBad', colors.warning, colors.light_black, mod.underline)
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

local function create_mutability_autocommand(pattern, ...)
    local types = {...}

    vim.api.nvim_create_autocmd('LspTokenUpdate', {
        group = 'LspTokenUpdateForMutability',
        pattern = { pattern },
        callback = function(args)
            local token = args.data.token
            for _, type in ipairs(types) do
                if token.type == type and not token.modifiers.readonly then
                    vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, '@mutable')
                end
            end
        end
    })
end

local function set_lsp_mutability_markers(colors)
    vim.api.nvim_set_hl(0, '@mutable', { bg = colors.light_black[1], underdotted = true, special = colors.info[1] })
    vim.api.nvim_create_augroup('LspTokenUpdateForMutability', { clear = true })

    create_mutability_autocommand('*.java', 'property')
    create_mutability_autocommand('*.js', 'variable')
    create_mutability_autocommand('*.scala', 'parameter', 'property', 'variable')
end

local function set_highlights(colors)
    hi('Normal', colors.light_white, colors.bg)

    set_native_syntax(colors, colors.bg)
    set_visual_elements(colors, colors.bg)

    set_cmp(colors, colors.bg)
    set_floaterm()
    set_gitsigns(colors, colors.bg)
    set_neovim(colors)
    set_nvimtree()
    set_telescope(colors, colors.bg)
    set_treesitter(colors, colors.bg)
    set_lsp(colors, colors.bg)

    set_filetype_gitcommit()
    set_filetype_html()
    set_filetype_lua()
    set_filetype_markdown(colors, colors.bg)
    set_filetype_vimwiki(colors, colors.bg)
    set_filetype_xml()

    set_gui(colors, colors.bg)

    set_lsp_mutability_markers(colors)
end

return { set_highlights = set_highlights }
