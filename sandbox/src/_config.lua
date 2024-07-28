local env = require 'env'

local function resolve_depman_path()
    package.path = env.depman_init_absolut_path .. ';' .. package.path
end

local function load_globals() require 'libs.debugger' end

load_globals()
resolve_depman_path()

