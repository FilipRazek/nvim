vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ({
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function() vim.cmd('colorscheme rose-pine') end
    })

    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('ThePrimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup { }
        end,
    })
end)
