local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Appearance
    "nvim-tree/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-context",
    "xiyaowong/transparent.nvim",
    "nanozuki/tabby.nvim",
    "p00f/alabaster.nvim",
    'huyvohcmc/atlas.vim',
    'ntk148v/komau.vim',
    'pbrisbin/vim-colors-off',
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    },
    {
        "j-hui/fidget.nvim",
        opts = {
            -- options
        },
    },
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            }
        }
    },

    -- Installed themes
    { "catppuccin/nvim",          name = "catpuccin" },
    'NTBBloodbath/doom-one.nvim',
    { "ellisonleao/gruvbox.nvim", priority = 1000,   config = true, opts = ... },
    "bluz71/vim-nightfly-colors",
    "joshdick/onedark.vim",
    "rose-pine/neovim",
    'sainnhe/everforest',
    "rebelot/kanagawa.nvim",
    "diegoulloao/neofusion.nvim",
    "ray-x/aurora",
    "embark-theme/vim",
    "Mofiqul/vscode.nvim",
    'shaunsingh/nord.nvim',
    'craftzdog/solarized-osaka.nvim',
    'projekt0n/github-nvim-theme',
    'sainnhe/sonokai',
    'marko-cerovac/material.nvim',
    'junegunn/seoul256.vim',
    'datsfilipe/min-theme.nvim',
    'b0o/lavi.nvim',
    'oneslash/helix-nvim',
    'comfysage/aki',
    'kvrohit/rasmus.nvim',
    'ronxvier/ymir.nvim',
    'binbandit/aetherglow.nvim',
    'tourcoder/larn.nvim',
    "olimorris/onedarkpro.nvim",
    {
      url = "https://codeberg.org/jthvai/lavender.nvim",
      branch = "stable", -- versioned tags + docs updates from main
      lazy = false,
      priority = 1000,
    },
    "atelierbram/Base2Tone-nvim",



    -- install with yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && npm install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },


    -- Completion
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "windwp/nvim-autopairs",
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    "gelguy/wilder.nvim",

    -- Mason
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
        "nvimdev/lspsaga.nvim",
        config = function()
            require("lspsaga").setup({})
        end,
        branch = "main",
        event = "LspAttach",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "nvim-treesitter/nvim-treesitter",
        },
    },


    -- Tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },

    -- Git
    "lewis6991/gitsigns.nvim",
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",

    "loctvl842/monokai-pro.nvim",

    "vague2k/vague.nvim",
    "savq/melange-nvim",
    'rktjmp/lush.nvim',
    "jacoborus/tender.vim",
    "nyoom-engineering/oxocarbon.nvim",
    "nyoom-engineering/nyoom.nvim",
    "rmehri01/onenord.nvim",
    "Shatur/neovim-ayu",
    "everviolet/nvim",
    "dgox16/oldworld.nvim",
    "ramojus/mellifluous.nvim",
    "mellow-theme/mellow.nvim",
    -- Copilot
    --'github/copilot.vim',
})
