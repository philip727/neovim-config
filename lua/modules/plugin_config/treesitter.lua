require'nvim-treesitter.configs'.setup {
    -- A lit of parser names, or "all"
    ensure_installed = { "c", "javascript", "typescript", "rust", "lua", "vim", "python" },

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
