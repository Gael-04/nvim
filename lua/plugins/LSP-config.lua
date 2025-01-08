return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {},
                automatic_installation = true,
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.grammarly.setup({
                capabilities = capabilities,
            })
            lspconfig.pylsp.setup({
                capabilities = capabilities,
            })
            lspconfig.r_language_server.setup({
                capabilities = capabilities,
            })
            lspconfig.sqlls.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>k", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
