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
end


local logger = require("utils.logger")

-- in tables keys are not to be surrounded with quotes
-- if keys are string then surround key with []
-- https://stackoverflow.com/questions/4514636/lua-implicit-table-creation-with-string-keys-why-the-extra-brackets
logger.print_message(logger.levels.DEBUG,
                    {init_path = init_path})


require('minimal')
require('shell')
require('colors')
