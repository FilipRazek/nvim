vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ( 'rose-pine/neovim' )

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

    use ('github/copilot.vim')
    use ('tpope/vim-unimpaired')

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use( "stevearc/oil.nvim" )
    use {
        'neoclide/coc.nvim',
        branch = 'release',
        run = 'yarn install --frozen-lockfile'
    }
end)
