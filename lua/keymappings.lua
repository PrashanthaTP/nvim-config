-- keybindings
--
local noremap = function(mode,from,to,options)
    vim.keymap.set(mode,from,to,options)
end

local nnoremap = function(from,to)
    vim.keymap.set("n",from,to,{noremap=true})
end

-- opening vimrc

nnoremap("<leader>vl","<cmd>e ~/.config/nvim-0.7.0/lua<CR>")

-- sourcing current file
function sourceCurrentFile(file)
    local filepath=vim.fn.expand(file) 
    vim.cmd("source "..filepath)
    print("Reloaded : "..filepath)
end
--nnoremap("<leader>x","<cmd>source %<CR>")
nnoremap("<leader>x",":lua sourceCurrentFile('%')<CR>")

-- netrw
nnoremap("<leader>ee","<cmd>Explore<CR>")
nnoremap("<leader>el","<cmd>Lexplore<CR>")

-- files
local fileUtils = require('files')
_G.FindFiles = fileUtils.FindFiles
nnoremap("<leader>ff","<cmd>call v:lua.FindFiles()<CR>")
nnoremap("<leader>fc","<cmd>lua FindFiles(vim.fn.fnameescape(vim.fn.expand('$HOME')..'/.config/nvim-0.7.0'))<CR>")


-- buffers
nnoremap("<leader>h","<cmd>bprev<CR>")
nnoremap("<leader>l","<cmd>bnext<CR>")

-- vim
vim.cmd(
[[
:command! -nargs=0 Q q!
]])
