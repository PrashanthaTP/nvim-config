local M = {}
-- utils related to lua modules

-- remove module cache
M.prepare_module = function(module)
    package.loaded[module] = nil
end

-- reload module
M.require_with_force = function(module)
    M.prepare_module(module)
    return require(module)
end

return M
