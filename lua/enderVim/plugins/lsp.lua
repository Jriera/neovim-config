
return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'williamboman/mason.nvim',
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
        local config = require("lspconfig")
        require('mason').setup()
        require('mason-lspconfig').setup({
                ensure_installed = { "lua_ls", "rust_analyzer" , "angularls"},
            })
            config.angularls.setup({
                filetypes = { "angular", "html", "typescript", "typescriptreact", "angular.html"}
            })
            config.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            })
        end
  },
}


