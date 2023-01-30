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
    use ({
        'wbthomason/packer.nvim',    -- The plugin location string
        as = 'packer.nvim'
    })
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        as = 'telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim' ,as='plenary.nvim'} }
	})
	use ({
        'ellisonleao/gruvbox.nvim', tag = '1.0.0',
        as = 'gruvbox.nvim'
        --config = function()    -- Specifies code to run after this plugin is loaded.
        --   vim.cmd('colorscheme gruvbox')
        --end
    })
	use ({
        'sainnhe/gruvbox-material',
        as = 'gruvbox-material',
        config = function()    -- Specifies code to run after this plugin is loaded.
            vim.cmd('colorscheme gruvbox-material')
        end
    })

end)
