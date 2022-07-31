local global = vim.g
local options = vim.o

options.t_CO = 256
global.background = "dark"
options.termguicolors = true

options.number = true
options.relativenumber = false
options.signcolumn = 'yes'

-- Tabs
options.tabstop = 4
options.shiftwidth = 4
options.softtabstop = 4
options.expandtab=true

-- clipboard
options.clipboard = "unnamedplus"

global.mapleader = " "

-- key mappings
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>vs', ':source $MYVIMRC<CR>',
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>vo', ':edit $MYVIMRC<CR>',
                        {noremap = true})

vim.o.cursorline=true
vim.o.listchars="eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
--[[[
vim.opt.tabstop = 4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.cmd(
[[
:set tabstop=4
:set shiftwidth=4
:set expandtab
]]
--)
---]]]---
--