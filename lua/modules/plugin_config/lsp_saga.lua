vim.diagnostic.config {
    virtual_text = true,
}

require "lspsaga".setup{}

local remap = vim.keymap.set

remap("n", '<leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true })
remap("v", '<leader>ca', '<cmd>Lspsaga range_code_action<CR>', { silent = true })

remap('n', "<leader>r", "<cmd>Lspsaga rename<CR>", { silent = true })
remap('n', "<leader>r", "<cmd>Lspsaga rename ++project<CR>", { silent = true })

-- Peek definition
-- Use <C-t> to jump back
remap("n", "pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Go to definition
remap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { silent = true })

-- Peek type definition
-- Use <C-t> to jump back
remap("n", "pt", "<cmd>Lspsaga peek_type_definition<CR>", { silent = true })

-- Go to type definition
remap("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", { silent = true })
--
-- Show line diagnostics
-- You can pass argument ++unfocus to
-- unfocus the show_line_diagnostics floating window
remap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics ++unfocus<CR>", { silent = true })

-- Show buffer diagnostics
remap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { silent = true })

-- Show workspace diagnostics
remap("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>", { silent = true })

-- Show cursor diagnostics
remap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- Map a key to call the above function
vim.api.nvim_set_keymap('n', '<Leader>fr', '<cmd>lua ShowReferencesOnHover()<CR>', { noremap = true, silent = true })

-- Find references
remap("n", "<leader>fr", vim.lsp.buf.references, { silent = true })

-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
remap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
