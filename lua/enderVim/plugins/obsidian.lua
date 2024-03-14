return {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    config = function()
        require("obsidian").setup({
            workspaces = {
                {
                    name = "Ender",
                    path = "/Users/jriera/Desktop/Obsidian_Vaults/Ender",
                },
                {
                    name = "Mango",
                    path = "/Users/jriera/MangoProjects/obsidian-vault",
                },
            },
            new_notes_location = "notes_subdir",
            notes_subdir = "quick_notes",
            daily_notes = {
                -- Optional, if you keep daily notes in a separate directory.
                folder = "notes/daily",
                -- Optional, if you want to change the date format for the ID of daily notes.
                date_format = "%Y-%m-%d",
                -- Optional, if you want to change the date format of the default alias of daily notes.
                alias_format = "%B %-d, %Y",
                -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
                template = nil
            },
            completion = {
                -- Set to false to disable completion.
                nvim_cmp = true,
                -- Trigger completion at 2 chars.
                min_chars = 2,
            },
            ui = {
                enable = true, -- set to false to disable all additional syntax features
                update_debounce = 200, -- update delay after a text change (in milliseconds)
                -- Define how various check-boxes are displayed
                checkboxes = {
                    -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
                    [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
                    ["x"] = { char = "", hl_group = "ObsidianDone" },
                    [">"] = { char = "", hl_group = "ObsidianRightArrow" },
                    ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
                    -- You can also add more custom ones...
                },
                -- Use bullet marks for non-checkbox lists.
                bullets = { char = "•", hl_group = "ObsidianBullet" },
                external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
                -- Replace the above with this if you don't have a patched font:
                -- external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
                reference_text = { hl_group = "ObsidianRefText" },
                highlight_text = { hl_group = "ObsidianHighlightText" },
                tags = { hl_group = "ObsidianTag" },
                block_ids = { hl_group = "ObsidianBlockID" },
                hl_groups = {
                    -- The options are passed directly to `vim.api.nvim_set_hl()`. See `:help nvim_set_hl`.
                    ObsidianTodo = { bold = true, fg = "#f78c6c" },
                    ObsidianDone = { bold = true, fg = "#89ddff" },
                    ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
                    ObsidianTilde = { bold = true, fg = "#ff5370" },
                    ObsidianBullet = { bold = true, fg = "#89ddff" },
                    ObsidianRefText = { underline = true, fg = "#c792ea" },
                    ObsidianExtLinkIcon = { fg = "#c792ea" },
                    ObsidianTag = { italic = true, fg = "#89ddff" },
                    ObsidianBlockID = { italic = true, fg = "#89ddff" },
                    ObsidianHighlightText = { italic= true, bg = "#75662e" },
                },
            },
            -- see below for full list of options 👇
            vim.keymap.set("n", "<leader>oo", vim.cmd.ObsidianToday),
            vim.keymap.set("n", "<leader>oy", vim.cmd.ObsidianYesterday),
            vim.keymap.set("n", "<leader>ot", vim.cmd.ObsidianTomorrow),
            vim.keymap.set("n", "<leader>ol", vim.cmd.ObsidianFollowLink),
            vim.keymap.set("n", "<leader>on", vim.cmd.ObsidianNew),
            vim.keymap.set("n", "<leader>os", vim.cmd.ObsidianSearch),
            vim.keymap.set("n", "<leader>ob", vim.cmd.ObsidianBacklinks),
        })
    end
}
