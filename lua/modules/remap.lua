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

-- Tabs
remap('n', '<leader>tn', ':tab split<CR>', { silent = true })
remap('n', '<leader>tx', ':tabclose<CR>', { silent = true })

-- Switching tabs
remap('n', '<leader>th', ':tabnext -<CR>', { silent = true })
remap('n', '<leader>tl', ':tabnext +<CR>', { silent = true })

-- Moving tabs
remap('n', '<leader><C-h>', ':tabmove -<CR>', { silent = true })
remap('n', '<leader><C-l>', ':tabmove +<CR>', { silent = true })

remap('n', '<leader>Q', ':q<CR>', { silent = true })

-- NetRW
-- remap('n', '<leader>e', ':Ex<CR>', { silent = true })
remap('n', '<leader>cd', [[:cd %:p:h<CR>:pwd<CR>]], { noremap = true })

remap('n', '<leader>e', ':Neotree source=filesystem reveal=true position=float toggle=true<CR>', { silent = true })
