local mod = {
    none = 'NONE',
    bold = 'bold',
    italic = 'italic',
    underline = 'underline'
}

local function hi(group, fg, bg, gui)
    local cmd = 'highlight ' .. group
    if fg ~= nil then
        cmd = cmd .. ' guifg=' .. fg
    end
    if bg ~= nil then
        cmd = cmd .. ' guibg=' .. bg
    end
    if gui ~= nil then
        cmd = cmd .. ' gui=' .. gui
    end
    vim.cmd(cmd)
end

local function hilink(group, link)
    local cmd = string.format('highlight! link %s %s', group, link)
    vim.cmd(cmd)
end

return {mod = mod, hi = hi, hilink = hilink}
