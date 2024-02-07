require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tsserver", "rust_analyzer", "tailwindcss", "quick_lint_js", "cssls", "html",
        "jsonls", "luau_lsp" }
})

local lspconfig = require("lspconfig")

local on_attach = function(_, _)
    vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
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
    end,
    ['omnisharp'] = function()
        lspconfig.omnisharp.setup({
            enable_editorconfig_support = true,
        })
    end
})

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "_G" },
            },
        },
    },
}
