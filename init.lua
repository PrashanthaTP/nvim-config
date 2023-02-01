-- TPP Neovim Configuration

MASON_BIN_PATH = "D:/Applications/Nvim/nvim/mason/bin"
CLANGD_BIN_PATH = "D:/Applications/Nvim/nvim/mason/packages/clangd/clangd/bin"

local join = function(...)
    local arg = { ... }
    local res = ""
    for _, item in ipairs(arg) do
        res = res .. tostring(item)
    end
    return res
end

local pathEntrySeperator = ";"
vim.env.PATH = join(MASON_BIN_PATH, pathEntrySeperator) .. vim.env.PATH
vim.env.PATH = join(CLANGD_BIN_PATH, pathEntrySeperator) .. vim.env.PATH

require('tpp')
