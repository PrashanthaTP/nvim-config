-- TPP Neovim Configuration

MASON_BIN_PATH = "D:/Applications/Nvim/nvim/mason/bin"
CLANGD_BIN_PATH = "D:/Applications/Nvim/nvim/mason/packages/clangd/clangd/bin"


DEFAULT_COLOR_THEME="gruvbox-material"
TREESITTER_PARSERS_DIR="D:/Applications/Nvim/nvim/tree-sitter-parsers"
MASON_INSTALLATION_DIR="D:/Applications/Nvim/nvim/mason"

local join = function(...)
    local arg = { ... } -- https://stackoverflow.com/a/7574047/12988588
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

