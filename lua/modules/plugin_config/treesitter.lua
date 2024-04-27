require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "javascript", "typescript", "rust", "lua", "vim", "python" },
    indent = {
        enable = true,
        disable = { 'python', 'c' }
    },

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,

        disable = { "c", "rust" }
    },
}
