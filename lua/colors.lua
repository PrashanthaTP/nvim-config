vim.cmd("colorscheme github")
vim.cmd("highlight! Normal cterm=NONE gui=NONE ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE")
local function highlight(group,fg,bg)
--print("highlight! "..group.." guifg='"..fg.."' guibg='"..bg.."'")
vim.cmd("highlight! "..group.." guifg='"..fg.."' guibg='"..bg.."'")
end
highlight("CustomStatusline","#ffffff","#061018")
vim.o.statusline="%#CustomStatusline#%f%=%l/%L"

highlight("LineNr","#3D3F5F","#061018")
highlight("SignColumn","#3D3F5F","#061018")
highlight("CursorLine","NONE","#081A1A")
highlight("CursorLineNr","#3D3F5F","#0A1D1F")


