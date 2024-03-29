vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


require("nvim-tree").setup({
    filters = {
        dotfiles = true,
        custom = { ".meta$", ".asset$" },
    },
    update_focused = {
        enable = true;
    }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
