vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv",vim.cmd.Ex,{})
vim.keymap.set("i","jk","<ESC>",{})
vim.keymap.set('n', '<Leader>vs', ':source $MYVIMRC<CR>',
                        {noremap = true})
vim.keymap.set('n', '<Leader>vo', ':edit $MYVIMRC<CR>',
                        {noremap = true})
