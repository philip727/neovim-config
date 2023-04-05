local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', "<C-f>", builtin.find_files, {})

-- Find Git Repo file
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Prevois Files
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})

-- Search for all instances of a query
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})

-- Not sure what this actually does tbh
vim.keymap.set('n', '<C-h>', builtin.help_tags, {})
