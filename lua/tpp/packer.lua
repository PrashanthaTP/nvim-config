--vim.opt.rtp:append("D:/Applications/Nvim/nvim")
vim.opt.packpath:append("D:/Applications/Nvim/nvim")

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
require('packer').init(
    {
        package_root = "D:/Applications/Nvim/nvim/pack"
    }
)
return require('packer').startup(function(use)
    -- Packer can manage itself
    use({
        'wbthomason/packer.nvim', -- The plugin location string
        as = 'packer.nvim'
    })
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        as = 'telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim', as = 'plenary.nvim' } }
    })
    use({
        'ellisonleao/gruvbox.nvim', tag = '1.0.0',
        as = 'gruvbox.nvim'
        --config = function()    -- Specifies code to run after this plugin is loaded.
        --   vim.cmd('colorscheme gruvbox')
        --end
    })
    use({
        'sainnhe/gruvbox-material',
        as = 'gruvbox-material',
        config = function() -- Specifies code to run after this plugin is loaded.
            vim.cmd('colorscheme gruvbox-material')
        end
    })
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use({
        'nvim-treesitter/nvim-treesitter',
        as = 'nvim-treesitter',
        { run = ':TSUpdate' }
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        as = "lsp-zero.nvim",
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig', as = "nvim-lspconfig.nvim" }, -- Required
            { 'williamboman/mason.nvim', as = "mason.nvim" }, -- Optional
            { 'williamboman/mason-lspconfig', "mason-lspconfig" }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp', as = "nvim-cmp" }, -- Required
            { 'hrsh7th/cmp-nvim-lsp', "cmp-nvim-lsp" }, -- Required
            { 'hrsh7th/cmp-buffer', "cmp-buffer" }, -- Optional
            { 'hrsh7th/cmp-path', as = "cmp-path" }, -- Optional
            { 'saadparwaiz1/cmp_luasnip', as = 'cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua', as = 'cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip', as = 'LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets', as = 'friendly-snippets' }, -- Optional
        }
    }
end)
