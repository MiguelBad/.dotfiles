-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    ------ THEMES COLLECTION ------
    -- note: select colorscheme in after/colors.lua 

    -- rosepine theme
    use ({
        "rose-pine/neovim",
        as = "rose-pine",

        config = function ()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- nord theme
    use ({
        'shaunsingh/nord.nvim',
        config = function ()
            vim.cmd('colorscheme nord')
        end
    })

    -- kanagawa theme
    use ({
        'rebelot/kanagawa.nvim',

        config = function ()
            vim.cmd("colorscheme kanagawa")
        end
    })

    -- catpuccin theme
    use ({
        "catppuccin/nvim",
        as = "catppuccin",
    })

    -- sonokai theme
    use 'sainnhe/sonokai'

    -- everforest theme
    use 'sainnhe/everforest'

    -- nightfox theme
    use "EdenEast/nightfox.nvim"

    -- nordic theme
    use 'AlexvZyl/nordic.nvim'

    ------ END THEMES COLLECTION ------

    -- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('nvim-treesitter/nvim-treesitter-context')

    -- Harpoon
    use ('theprimeagen/harpoon')

    -- Undo Tree
    use ('mbbill/undotree')

    -- for git
    use ('tpope/vim-fugitive')

    -- commenting
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- LSP completion
    use {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
    }

    -- snippets 
    use {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'ThePrimeagen/vim-be-good'

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

end)

-- use { 'christoomey/vim-tmux-navigator', }

-- use({
--     "MaximilianLloyd/ascii.nvim",
--     requires = {
--         "MunifTanjim/nui.nvim"
--     },
-- })

-- lualine
