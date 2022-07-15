-- +--------------------------------------------------------------+
-- |                                                              |
-- |                  Neovim Lua Config                           |
-- |                                                              |
-- |                       init.lua                               |
-- +--------------------------------------------------------------+

local levels = { 
	DEBUG=false,
	INFO=true, 
	WARNING=true,
	ERROR=true
}


local function print_message(level, ...)
	-- https://stackoverflow.com/questions/48273776/vararg-function-parameters-dont-work-with-arg-variable
	local arg = {...}
	if( level == nil or level == "" ) then
		level = "DEBUG"
	end
	if(not levels[level]) then 
	-- Only nil and false are falsy; 0 and '' are true!
		return 
	end

	local debuginfo = debug.getinfo(2,"Sl")
	local currentline = debuginfo.currentline
	local short_src = debuginfo.short_src
	local filename = short_src:match("[%a_]+.%a+$")
	message = string.format("[%s]: %s:%d ",level,filename,currentline).."\n"

	for i,v in ipairs(arg) do
		if(type(v)=="table")then
			for key,value in pairs(v) do
				message = message..tostring(key).." : "..tostring(value).."\n"
			end
		else
			message = message..tostring(v).."\n"
		end
	end
	print(message)
end


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

-- in tables keys are not to be surrounded with quotes
-- if keys are string then surround key with []
-- https://stackoverflow.com/questions/4514636/lua-implicit-table-creation-with-string-keys-why-the-extra-brackets
print_message("DEBUG",{init_path = init_path})

-- add init.lua's directory to runtime path
if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
    vim.opt.rtp:append(base_dir)
end

require('minimal')

vim.cmd("colorscheme murphy")

vim.cmd(
[[
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
if has("win32")
 let &shell='"C:/Program Files/Git/bin/sh.exe"'
 let &shellcmdflag = '-c'
 let &shellredir = '>%s 2>&1'
 set shellquote= shellxescape=
 " set noshelltemp
 set shellxquote=
 " important to have shellslash
 set shellslash
 let &shellpipe='2>&1| tee'
" let $TMP='"C:/Program Files/Git/tmp"'
endif
]])

