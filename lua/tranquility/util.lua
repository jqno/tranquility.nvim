local mod = {
    none = {'NONE', 'NONE'},
    bold = 'bold',
    italic = 'italic',
    underline = 'underline'
}

local function hi(group, fg, bg, gui)
    local cmd = 'highlight ' .. group
    if fg ~= nil then
        cmd = cmd .. ' guifg=' .. fg[1] .. ' ctermfg=' .. fg[2]
    end
    if bg ~= nil then
        cmd = cmd .. ' guibg=' .. bg[1] .. ' ctermbg=' .. bg[2]
    end
    if gui == nil then
        gui = mod.none[1]
    end
    cmd = cmd .. ' gui=' .. gui
    vim.cmd(cmd)
end

local function hilink(group, link)
    local cmd = string.format('highlight! link %s %s', group, link)
    vim.cmd(cmd)
end

return {mod = mod, hi = hi, hilink = hilink}
