local function remap(mode, new_key, command, opts)
    opts = type(opts) == "table" and opts or {}

    vim.keymap.set(mode, new_key, command, opts)
end


-- Clear highlights
remap('n', '<leader>h', ':nohlsearch<CR>')

-- Format file
remap('n', '<leader>f', vim.lsp.buf.format, {})

-- Save
remap('n', '<C-s>', ':wa!<CR>')
remap('v', '<C-s>', ':wa!<CR>')
remap('i', '<C-s>', '<Esc>:wa!<CR>')


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

remap("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
