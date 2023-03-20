require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tsserver", "rust_analyzer", "tailwindcss", "quick_lint_js", "cssls" } 
})

local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require("telescope.builtin").lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

    print("attached")

    vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_defaults = {
    on_attach = on_attach,
    capabilities = capabilities,
}


require("mason-lspconfig").setup_handlers({
    function(server)
        lspconfig[server].setup(lsp_defaults)
    end,
    ['tsserver'] = function()
        lspconfig.tsserver.setup({
            settings = {
                completions = {
                    completeFunctionCalls = true
                }
            }
        })
    end
})

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "_G" },
            },
        },
    },
}
