-- Normal only
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<C-z>', ':u<CR>')


-- Visual and select
vim.keymap.set('v', "<M-Up>", ":m .-2<CR>gv=gv", { silent = true })
vim.keymap.set('v', "<M-Down>", ":m .+1<CR>gv=gv", { silent = true })
