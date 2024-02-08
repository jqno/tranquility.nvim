local mod = {
    none = 'NONE',
    bold = 'bold',
    italic = 'italic',
    underline = 'underline',
    strikethrough = 'strikethrough'
}

local function hi(group, param)
    if type(param) == 'string' then
        vim.api.nvim_set_hl(0, group, { link = param })
        return
    end

    vim.api.nvim_set_hl(0, group, param)
end

return { mod = mod, hi = hi }
