vim.opt.makeprg = "mingw32-make.exe -s run"
vim.keymap.set('n',"<leader>m",":!./run.sh<CR>",{noremap=true})
