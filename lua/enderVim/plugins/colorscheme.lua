
return {
        "folke/tokyonight.nvim",
        config = function()
            local tokyonight = require("tokyonight").setup({
                style = "night",
                styles={
                    comments = {italic = true},
                    functions = {bold = false},
                    variables = {},
                    operators = {italic = true},
                    numbers = {},
                    error = {bold = true},
                    warning = {italic = true},
                    info = {italic = true},
                    hint = {italic = true},
                },
                on_colors = function(colors)
                    colors.hint = colors.orange
                    colors.bg= "#011627"
                end,
                on_highlights = function(hi)
                    hi.Function = {fg = "#82AAFF"}
                    hi["Type"]= {fg = "#9d7cd8"}
                    hi["@keyword"]= {fg = "#b701b4", style ={italic = true}}
                    hi.String = {fg = "#ecc48d",style = {italic = true}}
                    hi["lsp.type.decorator"] = {fg = "#82AAFF", style = {italic = true}}
                end
                
            }),
            vim.cmd[[colorscheme tokyonight]]
        end
    } 
-- alternate colorscheme
    --[[{
        "tiagovla/tokyodark.nvim",
        opts = {},
        config = function(_, opts)
            require("tokyodark").setup(opts)
            vim.cmd [[colorscheme tokyodark]]
        --end,
--    },]]--
