local firenvimPlugin="D:/Applications/Nvim/nvim/plugged/firenvim"

vim.cmd([[ let &runtimepath.=','.fnameescape("D:/Applications/Nvim/nvim/plugged/firenvim") ]])
vim.cmd([[
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }
let fc = g:firenvim_config['localSettings']
let fc['.*'] = { 'selector': 'textarea' }
let fc['.*'] = { 'takeover': 'never' }
]])
