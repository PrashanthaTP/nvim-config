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
nnoremap("<leader>x","<cmd>source %<CR>")

-- netrw
nnoremap("<leader>ee","<cmd>Explore<CR>")
nnoremap("<leader>el","<cmd>Lexplore<CR>")

-- files
local fileUtils = require('files')
nnoremap("<leader>ff",fileUtils.FindFiles)


-- buffers
nnoremap("<leader>h","<cmd>bprev<CR>")
nnoremap("<leader>l","<cmd>bnext<CR>")

-- vim
vim.cmd(
[[
:command! -nargs=0 Q q!
]])
