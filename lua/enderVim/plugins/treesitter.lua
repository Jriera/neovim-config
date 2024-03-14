return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
            ensure_installed = { "vimdoc", "javascript","typescript","lua", "rust","html", "css", "scss" , "markdown", "markdown_inline"},
            sync_install = false,
            auto_install = true,
            indent = {
             enable = true
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = {"markdown"},
            }
        })
    end
    },
    --[[{
        Use this only when working with inline templates or jsx
        "elgiano/nvim-treesitter-angular",
        branch = "topic/jsx-fix"
    },]]--
    "nvim-treesitter-angular"
}

