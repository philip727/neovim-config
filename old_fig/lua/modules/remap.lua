local remap = vim.keymap.set

-- Clear highlights
remap('n', '<leader>c', ':nohlsearch<CR>')

-- Format file
remap('n', '<leader>f', vim.lsp.buf.format, {})

-- Save
remap('n', '<C-s>', ':wa!<CR>')
remap('v', '<C-s>', ':wa!<CR>')
remap('i', '<C-s>', '<Esc>:wa!<CR>')

remap('n', '<leader>w', '<C-w>w')
remap('n', '<leader>W', '<C-w>W')

-- Moving Line
remap('v', "<M-k>", ":m '<-2<CR>gv=gv", { silent = true })
remap('v', "<M-j>", ":m '>+1<CR>gv=gv", { silent = true })

remap('n', "<M-k>", ":m .-2<CR>==", { silent = true })
remap('n', "<M-j>", ":m .+1<CR>==", { silent = true })

remap('i', "<M-k>", "<Esc>:m .-2<CR>==gi", { silent = true })
remap('i', "<M-j", "<Esc>:m .+1<CR>==gi", { silent = true })

remap('v', '<Up>', ':echo "use k instead, not this"<CR>')
remap('n', '<Up>', ':echo "use k instead, not this"<CR>')
remap('i', '<Up>', '<Esc>:echo "use k instead, this"<CR>')

remap('v', '<Right>', ':echo "use l instead, not this"<CR>')
remap('n', '<Right>', ':echo "use l instead, not this"<CR>')
remap('i', '<Right>', '<Esc>:echo "use l instead, this"<CR>')

remap('v', '<Left>', ':echo "use h instead, not this"<CR>')
remap('n', '<Left>', ':echo "use h instead, not this"<CR>')
remap('i', '<Left>', '<Esc>:echo "use h instead, this"<CR>')

remap('v', '<Down>', ':echo "use j instead, not this"<CR>')
remap('n', '<Down>', ':echo "use j instead, not this"<CR>')
remap('i', '<Down>', '<Esc>:echo "use j instead, this"<CR>')

-- Tabs
remap('n', '<leader>n', ':tab split<CR>', { silent = true })
remap('n', '<leader>x', ':tabclose<CR>', { silent = true })

-- Switching tabs
remap('n', '<leader>h', ':tabnext -<CR>', { silent = true })
remap('n', '<leader>l', ':tabnext +<CR>', { silent = true })

-- Moving tabs
remap('n', '<leader><C-h>', ':tabmove -<CR>', { silent = true })
remap('n', '<leader><C-l>', ':tabmove +<CR>', { silent = true })
