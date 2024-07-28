---@return 'win' | 'unix'
local function get_os_name()
    return package.config:sub(1, 1) == "\\" and "win" or "unix"
end

local function cwd(os_name)
    local work_dir = ''

    if os_name == 'win' then
        work_dir = io.popen "cd":read '*l'
    else
        work_dir = os.getenv("PWD") --[[ @as string ]]
    end

    -- DBG()()

    return work_dir
end

return {get_os_name = get_os_name, cwd = cwd}
