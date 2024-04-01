return {
    "folke/tokyonight.nvim",
    config = function()
        require("tokyonight").setup({
            style = "night",
            styles = {
                comments = { italic = true },
                functions = { bold = false },
                variables = {},
                operators = { italic = true },
                numbers = {},
                error = { bold = true },
                warning = { italic = true },
                info = { italic = true },
                hint = { italic = true },
            },
            on_colors = function(colors)
                colors.hint = colors.orange
                colors.bg = "#000b14"
            end,
            on_highlights = function(hi)
                hi.Function = { fg = "#82AAFF" }
                hi["Type"] = { fg = "#9d7cd8" }
                hi["@keyword"] = { fg = "#ff7afc", style = { italic = true } }
                hi["@variable"] = { fg = "#C3E88D", style = { italic = true } }
                hi["@variable.member"] = { fg = "#C3E88D", style = { italic = true } }
                hi.String = { fg = "#ecc48d", style = { italic = true } }
                hi["lsp.type.decorator"] = { fg = "#82AAFF", style = { italic = true } }
                hi["lsp.type.decorator"] = { fg = "#82AAFF", style = { italic = true } }
                -- floating menu styles cmp
                hi["PmenuSel"] = { bg = "#282C34", fg = "NONE" }
                hi["Pmenu"] = { fg = "#C5CDD9", bg = "#22252A" }

                hi["CmpItemAbbrDeprecated"] = { fg = "#7E8294", bg = "NONE", strikethrough = true }
                hi["CmpItemAbbrMatch"] = { fg = "#82AAFF", bg = "NONE", bold = true }
                hi["CmpItemAbbrMatchFuzzy"] = { fg = "#82AAFF", bg = "NONE", bold = true }
                hi["CmpItemMenu"] = { fg = "#C792EA", bg = "NONE", italic = true }

                hi["CmpItemKindField"] = { fg = "#EED8DA", bg = "#B5585F" }
                hi["CmpItemKindProperty"] = { fg = "#EED8DA", bg = "#B5585F" }
                hi["CmpItemKindEvent"] = { fg = "#EED8DA", bg = "#B5585F" }

                hi["CmpItemKindText"] = { fg = "#C3E88D", bg = "#9FBD73" }
                hi["CmpItemKindEnum"] = { fg = "#C3E88D", bg = "#9FBD73" }
                hi["CmpItemKindKeyword"] = { fg = "#C3E88D", bg = "#9FBD73" }

                hi["CmpItemKindConstant"] = { fg = "#FFE082", bg = "#D4BB6C" }
                hi["CmpItemKindConstructor"] = { fg = "#FFE082", bg = "#D4BB6C" }
                hi["CmpItemKindReference"] = { fg = "#FFE082", bg = "#D4BB6C" }

                hi["CmpItemKindFunction"] = { fg = "#EADFF0", bg = "#A377BF" }
                hi["CmpItemKindStruct"] = { fg = "#EADFF0", bg = "#A377BF" }
                hi["CmpItemKindClass"] = { fg = "#EADFF0", bg = "#A377BF" }
                hi["CmpItemKindModule"] = { fg = "#EADFF0", bg = "#A377BF" }
                hi["CmpItemKindOperator"] = { fg = "#EADFF0", bg = "#A377BF" }

                hi["CmpItemKindVariable"] = { fg = "#C5CDD9", bg = "#7E8294" }
                hi["CmpItemKindFile"] = { fg = "#C5CDD9", bg = "#7E8294" }

                hi["CmpItemKindUnit"] = { fg = "#F5EBD9", bg = "#D4A959" }
                hi["CmpItemKindSnippet"] = { fg = "#F5EBD9", bg = "#D4A959" }
                hi["CmpItemKindFolder"] = { fg = "#F5EBD9", bg = "#D4A959" }

                hi["CmpItemKindMethod"] = { fg = "#DDE5F5", bg = "#6C8ED4" }
                hi["CmpItemKindValue"] = { fg = "#DDE5F5", bg = "#6C8ED4" }
                hi["CmpItemKindEnumMember"] = { fg = "#DDE5F5", bg = "#6C8ED4" }

                hi["CmpItemKindInterface"] = { fg = "#D8EEEB", bg = "#58B5A8" }
                hi["CmpItemKindColor"] = { fg = "#D8EEEB", bg = "#58B5A8" }
                hi["CmpItemKindTypeParameter"] = { fg = "#D8EEEB", bg = "#58B5A8" }
            end
        })

        --vim.cmd[[colorscheme tokyonight]]
        vim.cmd.colorscheme("tokyonight")
    end
}

-- Customization for Pmenu



-- alternate colorscheme
--[[{
        "tiagovla/tokyodark.nvim",
        opts = {},
        config = function(_, opts)
            require("tokyodark").setup(opts)
            vim.cmd [[colorscheme tokyodark]]
--end,
--    },]]--
