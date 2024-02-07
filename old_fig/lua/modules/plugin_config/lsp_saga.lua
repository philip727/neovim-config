vim.diagnostic.config {
    virtual_text = true,
}

local remap = vim.keymap.set

remap({ "n", "v" }, '<leader>ca', '<cmd>Lspsaga code_action<CR>', { silent = true })

remap('n', "<leader>r", "<cmd>Lspsaga rename<CR>", { silent = true })
remap('n', "<leader>r", "<cmd>Lspsaga rename ++project<CR>", { silent = true })


-- Peek definition
-- Use <C-t> to jump back
remap("n", "pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Go to definition
remap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { silent = true })

-- Peek type definition
-- Use <C-t> to jump back
remap("n", "pt", "<cmd>Lspsaga peek_type_definition<CR>")

-- Go to type definition
remap("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>")
--
-- Show line diagnostics
-- You can pass argument ++unfocus to
-- unfocus the show_line_diagnostics floating window
remap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics ++unfocus<CR>")

-- Show buffer diagnostics
remap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Show workspace diagnostics
remap("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")

-- Show cursor diagnostics
remap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
--
-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
remap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
--
-- Floating terminal
remap({ "n", "t" }, "<leader>t", "<cmd>Lspsaga term_toggle<CR>")
