local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Appearance
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'norcalli/nvim-colorizer.lua'
    use "xiyaowong/transparent.nvim"
    use 'nanozuki/tabby.nvim'

    -- File browsing
    use 'nvim-tree/nvim-tree.lua'
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use {
        "startup-nvim/startup.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require "startup".setup()
        end
    }

    -- Themes
    use 'ellisonleao/gruvbox.nvim'
    use {
        'olivercederborg/poimandres.nvim',
        config = function()
            require('poimandres').setup {}
        end
    }
    use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
    use 'bcicen/vim-vice'
    use 'tomasiser/vim-code-dark'
    use 'sainnhe/edge'
    use { 'catppuccin/nvim', as = "catppuccin" }
    use { 'rose-pine/neovim', as = 'rose-pine' }
    use 'folke/tokyonight.nvim'
    use 'liuchengxu/space-vim-dark'
    use "Alexis12119/nightly.nvim"


    -- Completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
    use({
        "glepnir/lspsaga.nvim",
        opt = true,
        branch = "main",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup {};
        end,
        requires = {
            { "nvim-tree/nvim-web-devicons" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    })
    use {
        'gelguy/wilder.nvim',
        config = function()
            -- config goes here
        end,
    }

    -- Auto pair
    use {rh2EW34TU FGWEHI 
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    --LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } },
    }


    -- Github integration
    use "lewis6991/gitsigns.nvim"
    use "tpope/vim-fugitive"
    use "tpope/vim-rhubarb"

    if packer_bootstrap then
        require('packer').sync()
    end
end)
