local function hi(group, param)
    if type(param) == 'string' then
        vim.api.nvim_set_hl(0, group, { link = param })
        return
    end

    vim.api.nvim_set_hl(0, group, param)
end

local function merge(t1, t2)
    return vim.tbl_extend('error', t1, t2)
end

return { none = 'NONE', hi = hi, merge = merge }
