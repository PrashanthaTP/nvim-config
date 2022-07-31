local M = {}

local levels = { 
	DEBUG=false,
	INFO=true, 
	WARNING=true,
	ERROR=true
}
M.levels = levels

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

M.print_message = print_message
return M
