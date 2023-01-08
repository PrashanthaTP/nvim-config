-- +--------------------------------------------------------------+
-- |                                                              |
-- |                  Neovim Lua Config                           |
-- |                                                              |
-- |                       init.lua                               |
-- +--------------------------------------------------------------+

-- add init.lua's directory to runtime path
-- https://github.com/LunarVim/LunarVim/blob/109c766809760f7a9aba5dfb467d8299d2996de0/init.lua#L1-L6
-- about 'debug' standard library : https://www.lua.org/pil/23.1.html


-- getinfo : introspective function 
--         : first argument : stack level
--         : second optional argument : which info is need to be extracted

-- see string library for `sub` function
-- sub is used to remove @ at the beginning
local init_path = debug.getinfo(1, "S").source:sub(2) -- ~.config/nvim/init.lua
local base_dir = init_path:match("(.*[/\\])"):sub(1, -2) -- ~.config/nvim

-- add init.lua's directory to runtime path
if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
    vim.opt.rtp:append(base_dir)
    vim.opt.rtp:append(base_dir..package.config:sub(1,1).."after")
end

--package.loaded["utils.lua_specific"] = nil
local utils = require("utils.lua_specific")
local require_with_force = utils.require_with_force

local logger = require_with_force("utils.logger")
logger.set_level_status(logger.levels.DEBUG,false)

-- in tables keys are not to be surrounded with quotes
-- if keys are string then surround key with []
-- https://stackoverflow.com/questions/4514636/lua-implicit-table-creation-with-string-keys-why-the-extra-brackets

logger.print_message(logger.levels.DEUBG,
                    {init_path = init_path})

require_with_force('minimal')
require_with_force('shell')
require_with_force('colors')
require_with_force('keymappings')

require_with_force('firenvim_config')
require_with_force('autorun')

require_with_force('planner')
require_with_force('temp')--for adding project specific local settings
