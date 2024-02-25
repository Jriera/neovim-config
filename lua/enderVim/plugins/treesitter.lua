return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
            ensure_installed = { "vimdoc", "javascript","typescript","lua", "rust","html", "css", "scss" },
            sync_install = false,
            auto_install = true,
            indent = {
             enable = true
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            }
            
        })
    end
    },
    --[[{
        "elgiano/nvim-treesitter-angular",
        branch = "topic/jsx-fix"
    },]]--
    "nvim-treesitter-angular"
    
}

