require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tsserver", "rust_analyzer@nightly", "tailwindcss", "quick_lint_js", "cssls", "html",
        "jsonls", "luau_lsp" }
})


vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "*.wgsl",
    callback = function()
        vim.bo.filetype = "wgsl"
    end
})

local lspconfig = require("lspconfig")

--lspconfig.dartls.setup {
--    cmd = { "dart", "language-server", "--protocol=lsp" },
--}

local on_attach = function(_, bufnr)
    vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_defaults = {
    on_attach = on_attach,
    capabilities = capabilities,
}

require("flutter-tools").setup {
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
    end,
    ["rust_analyzer"] = function()
        lspconfig.rust_analyzer.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        targetDir = true,
                        allFeatures = true,
                        loadOutDirsFromCheck = true,
                        runBuildScripts = true,
                    },
                    -- Add clippy lints for Rust.
                    checkOnSave = {
                        allFeatures = true,
                        command = "clippy",
                        extraArgs = { "--no-deps" },
                    },
                    procMacro = {
                        enable = true,
                        ignored = {
                            ["async-trait"] = { "async_trait" },
                            ["napi-derive"] = { "napi" },
                            ["async-recursion"] = { "async_recursion" },
                        },
                    },
                }
            }
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

lspconfig.wgsl_analyzer.setup {
    on_attach = on_attach,
}
