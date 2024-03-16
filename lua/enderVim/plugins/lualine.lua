return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        config = function()
            local function truncate_branch_name(branch)
                if not branch or branch == "" then
                    return ""
                end

                -- Match the branch name to the specified format
                local user, team, ticket_number = string.match(branch, "^(%w+)/(%w+)%-(%d+)")

                -- If the branch name matches the format, display {user}/{team}-{ticket_number}, otherwise display the full branch name
                if ticket_number then
                    return user .. "/" .. team .. "-" .. ticket_number
                else
                    return branch
                end
            end


            require("lualine").setup({
                options = {
                    theme = "tokyonight",
                    globalstatus = true,
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "█", right = "█" },
                },
                sections = {
                    lualine_b = {
                        {
                            "branch",
                            --icon = "",
                            fmt = truncate_branch_name,
                            icons_enabled = true,
                        },
                        { "diff", symbols = { added = " ", modified = " ", removed = " " } },
                        { "diagnostics", sources = { "nvim_lsp" }, symbols = { error = " ", warn = " ", info = " " } },
                    },
                    lualine_c = {
                        { "filename", path = 1 },
                    },
                    lualine_x = {
                        {
                            "filetype",
                            icons_enabled = true,
                        },
                        {
                            function() return "Motion: " .. require("noice").api.status.command.get() end,
                            cond = function() return package.loaded["noice"] and
                                require("noice").api.status.command.has() end,
                        },
                    },
                    lualine_y = {
                        {
                            "fileformat",
                            icons_enabled = true,
                        },
                        { "progress", separator = " ",                  padding = { left = 1, right = 0 } },
                        { "location", padding = { left = 0, right = 1 } },
                    },
                    lualine_z = {
                        function()
                            return " " .. os.date("%R")
                        end,
                    },
                },
            })
        end,
    },
}
