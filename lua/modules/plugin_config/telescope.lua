local telescope = require("telescope")
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

telescope.setup {}
-- Bind keys to Telescope functions
vim.keymap.set('n', "<C-f>", builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<C-h>', builtin.help_tags, {})
