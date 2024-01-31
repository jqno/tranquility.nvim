local util = require('tranquility.util')
local mod = util.mod
local hi = util.hi

local function set_native_syntax(colors)
    hi('Comment', { fg = colors.comment })
    hi('Constant', { fg = colors.literal })
    hi('Debug', { fg = colors.warning })
    hi('Delimiter', { fg = colors.operator })
    hi('Error', { fg = colors.error })
    hi('Identifier', { fg = colors.identifier })
    hi('Ignore', { fg = colors.conceal, italic = true })
    hi('Operator', { fg = colors.operator })
    hi('Statement', { fg = colors.statement, bold = true })
    hi('Title', { fg = colors.literal })
    hi('Todo', { fg = colors.comment, bold = true })
    hi('Type', { fg = colors.type, bold = true })
    hi('Underlined', { fg = colors.identifier, underline = true })

    hi('Boolean', 'Constant')
    hi('Character', 'Constant')
    hi('Conditional', 'Statement')
    hi('Define', 'Delimiter')
    hi('Exception', 'Statement')
    hi('Float', 'Constant')
    hi('Function', 'Identifier')
    hi('Include', 'Delimiter')
    hi('Keyword', 'Statement')
    hi('Label', 'Statement')
    hi('Macro', 'Define')
    hi('Number', 'Constant')
    hi('PreProc', 'Delimiter')
    hi('PreCondit', 'Delimiter')
    hi('Repeat', 'Statement')
    hi('SpecialChar', 'String')
    hi('SpecialComment', 'Comment')
    hi('Special', 'Constant')
    hi('StorageClass', 'Keyword')
    hi('String', 'Constant')
    hi('Structure', 'Type')
    hi('Tag', 'Type')
    hi('Typedef', 'Type')
end

local function set_visual_elements(colors)
    hi('Terminal', 'Normal')
    hi('NonText', 'Ignore')
    hi('EndOfBuffer', 'Ignore')
    hi('Conceal', { fg = colors.conceal })
    hi('FloatBorder', { fg = colors.ui_widget })
end

local function set_cmp(colors)
    hi('CmpItemAbbrMatch', { fg = colors.ui_highlight })
    hi('CmpItemAbbrMatchFuzzy', { fg = colors.ui_highlight })
    hi('CmpItemAbbrDeprecated', { fg = colors.identifier, strikethrough = true })
end

local function set_floaterm()
    hi('FloatermBorder', 'FloatBorder')
end

local function set_gitsigns(colors)
    hi('GitSignsAdd', { fg = colors.added })
    hi('GitSignsChange', { fg = colors.changed })
    hi('GitSignsDelete', { fg = colors.deleted })
end

local function set_neovim(colors)
    hi('healthError', { fg = colors.highlighted_background, bg = colors.error, bold = true })
    hi('healthSuccess', { fg = colors.highlighted_background, bg = colors.green, bold = true })
    hi('healthWarning', { fg = colors.highlighted_background, bg = colors.warning, bold = true })
end

local function set_nvimtree()
    hi('NvimTreeRootFolder', 'Comment')
end

local function set_telescope(colors)
    hi('TelescopeBorder', { fg = colors.ui_widget })
    hi('TelescopeSelection', { bg = colors.ui_widget })
    hi('TelescopeMatching', { fg = colors.ui_highlight, bold = true })
end

local function set_treesitter(colors)
    hi('@comment', 'Comment')
    hi('@error', 'Error')
    hi('@keyword', 'Statement')
    hi('@none', 'Normal')
    hi('@operator', 'Operator')
    hi('@punctuation.delimiter', 'Delimiter')
    hi('@type', 'Type')
    hi('@variable', 'Identifier')

    hi('@annotation', '@variable')
    hi('@attribute', '@annotation')
    hi('@boolean', 'Constant')
    hi('@character', 'Constant')
    hi('@comment.danger', 'Debug')
    hi('@comment.error', 'Debug')
    hi('@comment.note', 'Todo')
    hi('@comment.todo', 'Debug')
    hi('@comment.warning', 'Debug')
    hi('@conditional', '@keyword')
    hi('@constant', 'Constant')
    hi('@constant.builtin', 'Constant')
    hi('@constant.macro', '@keyword')
    hi('@constructor', '@variable')
    hi('@exception', '@keyword')
    hi('@field', '@variable')
    hi('@float', 'Constant')
    hi('@function', '@variable')
    hi('@function.builtin', '@function')
    hi('@function.call', { fg = colors.identifier, italic = true })
    hi('@function.macro', '@keyword')
    hi('@include', '@punctuation.delimiter')
    hi('@keyword.function', '@keyword')
    hi('@keyword.operator', '@operator')
    hi('@keyword.return', '@keyword')
    hi('@label', 'Constant')
    hi('@method', '@variable')
    hi('@method.call', '@function.call')
    hi('@namespace', '@variable')
    hi('@number', 'Constant')
    hi('@parameter.reference', '@variable.parameter')
    hi('@property', '@field')
    hi('@punctuation.bracket', '@punctuation.delimiter')
    hi('@punctuation.special', '@punctuation.delimiter')
    hi('@repeat', '@keyword')
    hi('@string', 'Constant')
    hi('@string.escape', '@string')
    hi('@string.regexp', '@string')
    hi('@string.special', '@string')
    hi('@string.special.symbol', 'Constant')
    hi('@tag', '@type')
    hi('@tag.attribute', '@type')
    hi('@tag.delimiter', '@punctuation.delimiter')
    hi('@type.builtin', '@type')
    hi('@type.qualifier', '@keyword')
    hi('@variable.builtin', '@keyword')
    hi('@variable.parameter', '@variable')

    hi('@markup', { fg = colors.identifier })
    hi('@markup.italic', { fg = colors.identifier, italic = true })
    hi('@markup.link', { fg = colors.link })
    hi('@markup.strikethrough', { fg = colors.identifier })
    hi('@markup.strong', { fg = colors.identifier, bold = true })
    hi('@markup.environment', '@keyword')
    hi('@markup.environment.name', 'Constant')
    hi('@markup.heading', 'Title')
    hi('@markup.link.label', '@markup.link')
    hi('@markup.link.url', '@markup.link')
    hi('@markup.math', '@text')
    hi('@markup.raw', 'Constant')
    hi('@markup.underline', 'Underlined')

    hi('@diff.plus', 'DiffAdd')
    hi('@diff.minus', 'DiffDelete')
    hi('@diff.delta', 'DiffChange')
end

local function set_lsp(colors)
    hi('@lsp.type.class', '@type')
    hi('@lsp.type.decorator', '@function')
    hi('@lsp.type.enum', '@type')
    hi('@lsp.type.enumMember', '@constant')
    hi('@lsp.type.function', '@function')
    hi('@lsp.type.interface', '@type')
    hi('@lsp.type.keyword', '@keyword')
    hi('@lsp.type.macro', '@macro')
    hi('@lsp.type.method', '@method')
    hi('@lsp.type.modifier', '@keyword')
    hi('@lsp.type.namespace', '@namespace')
    hi('@lsp.type.parameter', '@variable.parameter')
    hi('@lsp.type.property', '@property')
    hi('@lsp.type.struct', '@structure')
    hi('@lsp.type.type', '@type')
    hi('@lsp.type.variable', '@variable')

    hi('LspCodeLens', { fg = colors.ui_highlight, italic = true })
    hi('LspCodeLensSeparator', 'LspCodeLens')
    hi('LspReferenceText', 'DiffChange')
    hi('LspReferenceRead', 'DiffAdd')
    hi('LspReferenceWrite', 'DiffDelete')

    hi('DiagnosticSignError', { fg = colors.error })
    hi('DiagnosticSignWarn', { fg = colors.warning })
    hi('DiagnosticSignInfo', { fg = colors.info })
    hi('DiagnosticSignHint', { fg = colors.hint })
    hi('DiagnosticUnderlineError', { fg = colors.error, bg = colors.highlighted_background, underline = true })
    hi('DiagnosticUnderlineWarn', { fg = colors.warning, bg = colors.highlighted_background, underline = true })
    hi('DiagnosticUnderlineInfo', { fg = colors.info, bg = colors.highlighted_background, underline = true })
    hi('DiagnosticUnderlineHint', { fg = colors.hint, bg = colors.highlighted_background, underline = true })
    hi('DiagnosticFloatingError', { fg = colors.error, bg = colors.highlighted_background, italic = true })
    hi('DiagnosticFloatingWarn', { fg = colors.warning, bg = colors.highlighted_background, italic = true })
    hi('DiagnosticFloatingInfo', { fg = colors.info, bg = colors.highlighted_background, italic = true })
    hi('DiagnosticFloatingHint', { fg = colors.hint, bg = colors.highlighted_background, italic = true })
    hi('DiagnosticVirtualTextError', 'DiagnosticSignError')
    hi('DiagnosticVirtualTextWarn', 'DiagnosticSignWarn')
    hi('DiagnosticVirtualTextInfo', 'DiagnosticSignInfo')
    hi('DiagnosticVirtualTextHint', 'DiagnosticSignHint')
    vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', { fg = colors.conceal, underdotted = true, special = colors.warning })

    -- Needed to properly display treesitter TODO comment highlights; see https://www.reddit.com/r/neovim/comments/14ecf5o/semantic_highlights_messing_with_todo_comments/
    vim.api.nvim_set_hl(0, '@lsp.type.comment', {})
end

local function set_filetype_gitcommit()
    hi('gitcommitSummary', 'Constant')
    hi('gitcommitOverflow', 'Error')
end

local function set_filetype_html()
    hi('htmlBold', '@markup.strong')
    hi('htmlItalic', '@markup.italic')
    hi('htmlTSEmphasis', '@markup.italic')
    hi('htmlNone', '@variable')
    hi('htmlTSStrong', '@markup.strong')
end

local function set_filetype_lua()
    hi('luaFunction', 'Keyword')
    hi('luaFunctionBlock', 'Function')
end

local function set_filetype_markdown(colors)
    hi('@markup.quote.markdown', { fg = colors.comment, italic = true })
    hi('markdownBoldDelimiter', 'Delimiter')
    hi('markdownCodeDelimiter', 'Delimiter')
    hi('markdownItalicDelimiter', 'Delimiter')
    hi('markdownCode', 'Keyword')
end

local function set_filetype_vimwiki(colors)
    hi('VimwikiWeblink1', { fg = colors.literal, underline = true })
end

local function set_filetype_xml()
    hi('xmlAttrib', '@tag.attribute')
    hi('xmlAttribPunct', '@tag.delimiter')
    hi('xmlEqual', '@tag.delimiter')
    hi('xmlString', '@markup.raw')
    hi('xmlTagName', '@tag')
    hi('xmlTag', '@tag.delimiter')
end

local function set_gui(colors)
    -- messages
    hi('ErrorMsg', { fg = colors.ui_text, bg = colors.error, bold = true })
    hi('WarningMsg', { fg = colors.ui_background, bg = colors.warning, bold = true })
    hi('MsgArea', { fg = colors.ui_text })
    hi('ModeMsg', { fg = colors.ui_highlight })
    hi('MoreMsg', 'ModeMsg')
    hi('Question', 'ModeMsg')

    -- statusline and other lines
    hi('StatusLine', { fg = colors.ui_text, bg = colors.ui_background })
    hi('StatusLineNC', { fg = colors.ui_dim_text, bg = colors.ui_dim_background })
    hi('StatusLineTerm', 'StatusLine')
    hi('StatusLineTermNC', 'StatusLineNC')
    hi('TabLine', 'StatusLineNC')
    hi('TabLineFill', 'StatusLineNC')
    hi('TabLineSel', 'StatusLine')
    hi('ToolbarButton', 'StatusLine')
    hi('ToolbarLine', 'StatusLineNC')
    hi('WildMenu', { fg = colors.ui_widget, bg = colors.ui_text })
    hi('VertSplit', { fg = colors.ui_background, bg = colors.ui_background })
    hi('WinSeparator', { fg = colors.ui_widget })

    -- cursor
    hi('ColorColumn', { bg = colors.ui_highlight })
    hi('CursorColumn', { bg = colors.ui_background })
    hi('CursorLine', 'CursorColumn')
    hi('Cursor', { bg = colors.ui_highlight })
    hi('CursorIM', 'Cursor')
    hi('lCursor', 'Cursor')
    hi('LineNr', { fg = colors.statement })
    hi('CursorLineNr', { fg = colors.ui_widget })
    hi('SignColumn', { fg = mod.none })

    -- visual
    hi('Visual', { bg = colors.visual, bold = true })
    hi('VisualNOS', 'Visual')

    -- Pmenu
    hi('Pmenu', { fg = colors.ui_text, bg = colors.ui_background })
    hi('PmenuSel', { fg = colors.ui_text, bg = colors.ui_widget, bold = true })
    hi('PmenuSbar', { bg = colors.ui_widget })
    hi('PmenuThumb', { bg = colors.ui_widget })

    -- folds
    hi('FoldColumn', { fg = colors.ui_dim_text })
    hi('Folded', { fg = colors.ui_dim_text, italic = true })

    -- search
    hi('IncSearch', { fg = colors.highlighted_background, bg = colors.warning, bold = true })
    hi('Search', { fg = colors.highlighted_background, bg = colors.ui_highlight, bold = true })
    hi('MatchParen', { fg = colors.operator, bg = colors.highlighted_background, bold = true })

    -- diagnostics
    hi('SpellBad', { fg = colors.warning, bg = colors.highlighted_background, underline = true })
    hi('SpellCap', 'SpellBad')
    hi('SpellLocal', 'SpellBad')
    hi('SpellRare', 'SpellBad')

    -- diff
    hi('DiffAdd', { fg = colors.highlighted_background, bg = colors.added })
    hi('DiffChange', { fg = colors.highlighted_background, bg = colors.changed })
    hi('DiffDelete', { fg = colors.highlighted_background, bg = colors.deleted })
    hi('DiffText', 'Normal')
    hi('diffAdded', 'DiffAdd')
    hi('diffChanged', 'DiffChange')
    hi('diffRemoved', 'DiffDelete')
    hi('diffLine', 'DiffText')

    -- other
    hi('Directory', { fg = colors.ui_highlight })
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
    vim.api.nvim_set_hl(0, '@mutable', { bg = colors.highlighted_background, underdotted = true, special = colors.info })
    vim.api.nvim_create_augroup('LspTokenUpdateForMutability', { clear = true })

    create_mutability_autocommand('*.java', 'property')
    create_mutability_autocommand('*.js', 'variable')
    create_mutability_autocommand('*.scala', 'parameter', 'property', 'variable')
end

local function set_highlights(colors)
    hi('Normal', { fg = colors.identifier, bg = colors.bg })

    set_native_syntax(colors)
    set_visual_elements(colors)

    set_cmp(colors)
    set_floaterm()
    set_gitsigns(colors)
    set_neovim(colors)
    set_nvimtree()
    set_telescope(colors)
    set_treesitter(colors)
    set_lsp(colors)

    set_filetype_gitcommit()
    set_filetype_html()
    set_filetype_lua()
    set_filetype_markdown(colors)
    set_filetype_vimwiki(colors)
    set_filetype_xml()

    set_gui(colors)

    set_lsp_mutability_markers(colors)
end

return { set_highlights = set_highlights }
