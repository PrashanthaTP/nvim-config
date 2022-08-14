-- Script to automatically execute go code
--
local M = {}


--local  bufnr = vim.fn.input("Hello :" )
--vim.cmd("redraw")
--print(bufnr)

local function log(message)
    print("[Autorun] "..message)
end


M.target_bufnr = 0
M.set_target_bufnr = function(bufnr)
    M.target_bufnr = bufnr
    log("output will be linked to bufnr "..bufnr)
end


M.autorun_attach = function()
    local bufnr = vim.api.nvim_get_current_buf()
    M.set_target_bufnr(bufnr)
end

M.autorun_execute = function(cmd)
    local filepath = vim.fn.expand("%")
    log("executing : "..cmd)
    vim.api.nvim_buf_set_lines(M.target_bufnr,0,-1,false,{"Go output : "})
    local function append_data(channel_id,data,name)
        if not data then
            return
        end
-- nvim_buf_set_lines({buffer}, {start}, {end}, {strict_indexing}, {replacement})
        vim.api.nvim_buf_set_lines(M.target_bufnr,-1,-1,false,data)
    end

    --log("bufnr : "..M.target_bufnr)
    --log("filepath : "..filepath)
    --vim.fn.jobstart("go run "..filepath,{
    vim.fn.jobstart(cmd,{
        stdout_buffered = true,
        on_stdout = append_data,
        on_stderr = append_data
    })
end

_G.autorun_attach = M.autorun_attach
_G.autorun_execute = M.autorun_execute

vim.api.nvim_set_keymap("n","<leader>aa","<cmd>call v:lua.autorun_attach()<CR>",{noremap=true})
vim.api.nvim_set_keymap("n","<leader>ae","<cmd>call v:lua.autorun_execute('mingw32-make.exe -s')<CR>",{noremap=true})

return M
