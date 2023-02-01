vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {})
vim.keymap.set("i", "jk", "<ESC>", {})
vim.keymap.set('n', '<Leader>vs', ':source $MYVIMRC<CR>',
    { noremap = true })
vim.keymap.set('n', '<Leader>vo', ':edit $MYVIMRC<CR>',
    { noremap = true })

-- https://jdhao.github.io/2022/10/05/nvim-v08-release/#check-command-or-map-location
vim.keymap.set('n', '<Leader>ff', "", {
    desc = "format file using lsp",
    callback = function()
        vim.lsp.buf.format()
    end
})
