return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "vimdoc", "javascript", "typescript", "lua", "rust", "html", "css", "scss", "markdown", "markdown_inline", "angular" },
                sync_install = false,
                auto_install = true,
                indent = {
                    enable = true
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<leader>is",
                        node_incremental = "<leader>in",
                        scope_incremental = "<leader><Up>",
                        node_decremental = "<leader>dn",
                    },
                },
                textobjects = {
                    select = {
                        enable = true,
                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm (see TSEditQueries ["highlights", "textobjects"] and insptectTree)
                            ["af"] = { query = "@function.outer", desc = "select around function" },
                            ["if"] = { query = "@function.inner", desc = "select inside function" },
                            -- You can optionally set descriptions to the mappings (used in the desc parameter of
                            -- nvim_buf_set_keymap) which plugins like which-key display
                            ["ac"] = { query = "@class.outer", desc = "Select around a class" },
                            ["ic"] = { query = "@class.inner", desc = "Select inside a class" },
                            ["as"] = { query = "@scope", desc = "Select language scope"}
                        },
                    },
                    -- You can choose the select mode (default is charwise 'v')
                    --
                    -- Can also be a function which gets passed a table with the keys
                    -- * query_string: eg '@function.inner'
                    -- * method: eg 'v' or 'o'
                    -- and should return the mode ('v', 'V', or '<c-v>') or a table
                    -- mapping query_strings to modes.
                    selection_modes = {
                        ['@parameter.outer'] = 'v', -- charwise
                        ['@function.outer'] = 'V', -- linewise
                        ['@class.outer'] = '<c-v>', -- blockwise
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["]m"] = "@function.outer",
                            ["]]"] = "@class.outer",
                        },
                        goto_next_end = {
                            ["]M"] = "@function.outer",
                            ["]["] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[m"] = "@function.outer",
                            ["[["] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[M"] = "@function.outer",
                            ["[]"] = "@class.outer",
                        },
                    },
                },
            })
        end
    },
    --[[{
        Use this only when working with inline templates or jsx
        "elgiano/nvim-treesitter-angular",
        branch = "topic/jsx-fix"
    },]] --
    "nvim-treesitter-angular",
    "nvim-treesitter-markdown",
    "nvim-treesitter/nvim-treesitter-textobjects",
}
