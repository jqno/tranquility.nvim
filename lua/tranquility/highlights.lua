local util = require('tranquility.util')
local none = util.none
local hi = util.hi
local merge = util.merge

local function set_native_syntax(colors)
    hi('Normal', colors.normal)
    hi('Comment', colors.comment)
    hi('Constant', colors.literal)
    hi('Debug', colors.warning)
    hi('Delimiter', colors.operator)
    hi('Error', colors.error)
    hi('Ignore', colors.conceal)
    hi('Operator', colors.operator)
    hi('Special', colors.literal_badge)
    hi('Statement', colors.statement)
    hi('Title', colors.literal)
    hi('Todo', colors.warning_badge)
    hi('Type', colors.type)
    hi('Underlined', merge(colors.normal, { underline = true }))

    hi('Boolean', 'Constant')
    hi('Character', 'Constant')
    hi('Conditional', 'Statement')
    hi('Define', 'Delimiter')
    hi('Exception', 'Statement')
    hi('Float', 'Constant')
    hi('Function', 'Normal')
    hi('Identifier', 'Normal')
    hi('Include', 'Delimiter')
    hi('Keyword', 'Statement')
    hi('Label', 'Statement')
    hi('Macro', 'Define')
    hi('Number', 'Constant')
    hi('PreProc', 'Delimiter')
    hi('PreCondit', 'Delimiter')
    hi('Repeat', 'Statement')
    hi('SpecialChar', 'Special')
    hi('SpecialComment', 'Comment')
    hi('StorageClass', 'Keyword')
    hi('String', 'Constant')
    hi('Structure', 'Type')
    hi('Tag', 'Type')
    hi('Typedef', 'Type')
end

local function set_visual_elements(colors)
    hi('Terminal', 'Normal')
    hi('NonText', { fg = colors.ui_dim_text })
    hi('EndOfBuffer', 'Ignore')
    hi('Conceal', 'Ignore')
    hi('NormalFloat', { bg = colors.ui_dim_background })
    hi('FloatBorder', { fg = colors.ui_widget, bg = colors.ui_dim_background })
end

local function set_cmp(colors)
    hi('CmpItemAbbrMatch', { fg = colors.ui_highlight })
    hi('CmpItemAbbrMatchFuzzy', { fg = colors.ui_highlight })
    hi('CmpItemAbbrDeprecated', util.merge(colors.normal, { strikethrough = true }))
    hi('CmpItemKind', { fg = colors.ui_extra_highlight })
end

local function set_dap_ui()
    hi('DapUIScope', 'PmenuSel')
    hi('DapUIDecoration', 'Comment')
    hi('DapUIVariable', 'Normal')
    hi('DapUIType', 'Type')
    hi('DapUIValue', 'Constant')
    hi('DapUIStoppedThread', 'PmenuSel')
end

local function set_gitsigns(colors)
    hi('GitSignsAdd', colors.added)
    hi('GitSignsChange', colors.changed)
    hi('GitSignsDelete', colors.deleted)
end

local function set_neovim(colors)
    hi('healthError', colors.error_badge)
    hi('healthSuccess', colors.ok_badge)
    hi('healthWarning', colors.warning_badge)
end

local function set_nvimtree()
    hi('NvimTreeRootFolder', 'Comment')
end

local function set_treesitter(colors)
    hi('@comment', 'Comment')
    hi('@error', 'Error')
    hi('@keyword', 'Statement')
    hi('@none', 'Normal')
    hi('@operator', 'Operator')
    hi('@punctuation.delimiter', 'Delimiter')
    hi('@type', 'Type')
    hi('@variable', 'Normal')

    hi('@annotation', 'Type')
    hi('@attribute', '@annotation')
    hi('@boolean', 'Constant')
    hi('@character', 'Constant')
    hi('@comment.danger', 'Todo')
    hi('@comment.error', 'Todo')
    hi('@comment.note', 'Todo')
    hi('@comment.todo', 'Todo')
    hi('@comment.warning', 'Todo')
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
    hi('@function.call', 'Normal')
    hi('@function.macro', '@keyword')
    hi('@function.method.call', '@function.call')
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
    hi('@punctuation.special', 'Special')
    hi('@repeat', '@keyword')
    hi('@string', 'Constant')
    hi('@string.escape', 'Special')
    hi('@string.regexp', '@string')
    hi('@string.special', '@string')
    hi('@string.special.symbol', 'Constant')
    hi('@string.special.url', '@markup.link')
    hi('@tag', '@type')
    hi('@tag.attribute', '@type')
    hi('@tag.delimiter', '@punctuation.delimiter')
    hi('@type.builtin', '@type')
    hi('@type.qualifier', '@keyword')
    hi('@variable.builtin', '@keyword')
    hi('@variable.parameter', '@variable')

    hi('@markup', 'Normal')
    hi('@markup.italic', merge(colors.normal, { italic = true }))
    hi('@markup.link', colors.link)
    hi('@markup.strikethrough', merge(colors.normal, { strikethrough = true }))
    hi('@markup.strong', merge(colors.normal, { bold = true }))
    hi('@markup.environment', '@keyword')
    hi('@markup.environment.name', 'Constant')
    hi('@markup.heading', 'Title')
    hi('@markup.link.label', '@markup.link')
    hi('@markup.link.url', '@markup.link')
    hi('@markup.math', '@markup.raw')
    hi('@markup.raw', colors.raw_badge)
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

    hi('@lsp.typemod.keyword.documentation', '@keyword')
    hi('@lsp.typemod.parameter.documentation', 'Normal')

    hi('LspCodeLens', colors.lens)
    hi('LspCodeLensSeparator', colors.lens)
    hi('LspReferenceText', colors.highlight)
    hi('LspReferenceRead', colors.highlight)
    hi('LspReferenceWrite', colors.highlight_plus)
    hi('LspInlayHint', 'LspCodeLens')

    hi('DiagnosticError', colors.error)
    hi('DiagnosticWarn', colors.warning)
    hi('DiagnosticInfo', colors.info)
    hi('DiagnosticHint', colors.hint)
    hi('DiagnosticUnderlineError', colors.error_badge)
    hi('DiagnosticUnderlineWarn', colors.warning_badge)
    hi('DiagnosticUnderlineInfo', colors.info_badge)
    hi('DiagnosticUnderlineHint', colors.hint_badge)
    hi('DiagnosticFloatingError', 'DiagnosticError')
    hi('DiagnosticFloatingWarn', 'DiagnosticWarn')
    hi('DiagnosticFloatingInfo', 'DiagnosticInfo')
    hi('DiagnosticFloatingHint', 'DiagnosticHint')
    hi('DiagnosticSignError', 'DiagnosticError')
    hi('DiagnosticSignWarn', 'DiagnosticWarn')
    hi('DiagnosticSignInfo', 'DiagnosticInfo')
    hi('DiagnosticSignHint', 'DiagnosticHint')
    hi('DiagnosticVirtualTextError', 'DiagnosticSignError')
    hi('DiagnosticVirtualTextWarn', 'DiagnosticSignWarn')
    hi('DiagnosticVirtualTextInfo', 'DiagnosticSignInfo')
    hi('DiagnosticVirtualTextHint', 'DiagnosticSignHint')
    hi('DiagnosticUnnecessary', colors.unnecessary_badge)

    -- needed to properly display treesitter TODO comment highlights; see https://www.reddit.com/r/neovim/comments/14ecf5o/semantic_highlights_messing_with_todo_comments/
    hi('@lsp.type.comment', {})
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

local function set_filetype_java()
    hi('@function.builtin.java', '@keyword')
    hi('@type.builtin.java', '@keyword')
end

local function set_filetype_lua()
    hi('luaFunction', 'Keyword')
    hi('luaFunctionBlock', 'Function')
    hi('@keyword.operator.lua', 'Keyword')
end

local function set_filetype_markdown(colors)
    hi('@markup.quote.markdown', colors.comment)
    hi('markdownBoldDelimiter', 'Delimiter')
    hi('markdownCodeDelimiter', 'Delimiter')
    hi('markdownItalicDelimiter', 'Delimiter')
    hi('markdownCode', 'Keyword')
end

local function set_filetype_xml()
    hi('@tag.xml', '@keyword')
    hi('xmlAttrib', '@tag.attribute')
    hi('xmlAttribPunct', '@tag.delimiter')
    hi('xmlEqual', '@tag.delimiter')
    hi('xmlString', '@markup.raw')
    hi('xmlTagName', '@tag')
    hi('xmlTag', '@tag.delimiter')
end

local function set_gui(colors)
    -- messages
    hi('ErrorMsg', colors.error)
    hi('WarningMsg', colors.warning)
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
    hi('WinBar', 'StatusLine')
    hi('WinBarNC', 'StatusLineNC')
    hi('VertSplit', { fg = colors.ui_background, bg = colors.ui_background })
    hi('WinSeparator', { fg = colors.ui_widget })

    -- cursor
    hi('ColorColumn', { bg = colors.ui_extra_highlight })
    hi('CursorColumn', { bg = colors.ui_background })
    hi('CursorLine', 'CursorColumn')
    hi('Cursor', { bg = colors.cursor })
    hi('CursorIM', 'Cursor')
    hi('lCursor', 'Cursor')
    hi('LineNr', { fg = colors.ui_dim_text })
    hi('CursorLineNr', { fg = colors.ui_widget })
    hi('SignColumn', { fg = none })

    -- visual
    hi('Visual', colors.visual_badge)
    hi('VisualNOS', 'Visual')

    -- Pmenu
    hi('Pmenu', { fg = colors.ui_text, bg = colors.ui_background })
    hi('PmenuSel', { fg = colors.ui_text, bg = colors.ui_widget })
    hi('PmenuSbar', { bg = colors.ui_widget })
    hi('PmenuThumb', { bg = colors.ui_widget })

    -- folds
    hi('FoldColumn', { fg = colors.ui_dim_text })
    hi('Folded', { fg = colors.ui_dim_text })

    -- search
    hi('Search', colors.highlight)
    hi('CurSearch', colors.highlight_plus)
    hi('IncSearch', 'CurSearch')
    hi('MatchParen', 'Search')

    -- diagnostics
    hi('SpellBad', colors.warning)
    hi('SpellCap', 'SpellBad')
    hi('SpellLocal', 'SpellBad')
    hi('SpellRare', 'SpellBad')

    -- diff
    hi('DiffAdd', colors.added_badge)
    hi('DiffChange', colors.changed_badge)
    hi('DiffDelete', colors.deleted_badge)
    hi('DiffText', 'Normal')
    hi('diffAdded', 'DiffAdd')
    hi('diffChanged', 'DiffChange')
    hi('diffRemoved', 'DiffDelete')
    hi('diffLine', 'DiffText')

    -- other
    hi('Directory', { fg = colors.ui_highlight })
end

local function create_mutability_autocommand(pattern, ...)
    local types = { ... }

    vim.api.nvim_create_autocmd('LspTokenUpdate', {
        group = 'LspTokenUpdateForMutability',
        pattern = { pattern },
        callback = function(args)
            if not vim.diagnostic.config().underline then
                return
            end
            local token = args.data.token
            for _, type in ipairs(types) do
                if token.type == type and not token.modifiers.readonly then
                    vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'Mutable')
                end
            end
        end
    })
end

local function set_lsp_mutability_markers(colors)
    hi('Mutable', { underline = true, special = colors.highlight_color })
    vim.api.nvim_create_augroup('LspTokenUpdateForMutability', { clear = true })

    create_mutability_autocommand('*.java', 'property')
    create_mutability_autocommand('*.js', 'variable')
    create_mutability_autocommand('*.scala', 'parameter', 'property', 'variable')
end

local function set_highlights(colors)
    set_native_syntax(colors)
    set_visual_elements(colors)

    set_cmp(colors)
    set_dap_ui()
    set_gitsigns(colors)
    set_neovim(colors)
    set_nvimtree()
    set_treesitter(colors)
    set_lsp(colors)

    set_filetype_gitcommit()
    set_filetype_html()
    set_filetype_java()
    set_filetype_lua()
    set_filetype_markdown(colors)
    set_filetype_xml()

    set_gui(colors)

    set_lsp_mutability_markers(colors)
end

return { set_highlights = set_highlights }
