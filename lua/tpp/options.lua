local global = vim.g
local options = vim.opt

-- UI
options.background = "dark"
options.termguicolors = true
options.lazyredraw=true

options.number = true
options.relativenumber = false
options.signcolumn = 'yes'

-- Tabs
options.tabstop = 4
options.shiftwidth = 4
options.softtabstop = 4
options.expandtab = true

-- clipboard
options.clipboard = "unnamedplus"

-- searching
options.ignorecase = true
options.hlsearch = false

options.colorcolumn="80"
options.cursorline=true
options.listchars="eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
