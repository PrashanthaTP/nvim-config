function CreateFloatingWindow(overrides)
	-- Window maths lovingly stolen from:
	--   https://www.2n.pl/blog/how-to-make-ui-for-neovim-plugins-in-lua
	local width = vim.api.nvim_get_option('columns')
	local height = vim.api.nvim_get_option('lines')
	local win_height = math.ceil(height * 0.8 )
	--local win_height = math.ceil(height * 0.8 - 4)
	local win_width = math.ceil(width * 0.8)
	local col = math.ceil((width - win_width) / 2)
	local buf = vim.api.nvim_create_buf(false, true)

	local opts = {
		relative = 'editor',
		width = win_width,
		height = win_height,
		col = col,
		row = 2,
		border = 'rounded',
	}
	for k,v in pairs(overrides) do opts[k] = v end

	return vim.api.nvim_open_win(buf, true, opts)
end

local M = {}
M.FindFiles = function(directory)
    if directory == nil then
        directory = ""
    end
   local opts = {
        on_exit = function()
            local selectedFile=table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), " ")
            --local selectedFile=vim.api.nvim_buf_get_lines(0, 0, 1, false)
            vim.cmd("bdelete!")
            print("You selected "..selectedFile)
            vim.fn.execute(":e".." "..selectedFile)
        end
    }


    CreateFloatingWindow({height=10})
    vim.fn.termopen('rg --files '..directory..' | fzy',opts)
    vim.cmd("startinsert")
end

return M
