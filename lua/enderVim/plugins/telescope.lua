return {
    {
        "nvim-telescope/telescope.nvim", tag = '0.1.5',
            dependencies = {
                { 'nvim-lua/plenary.nvim'},
                { "BurntSushi/ripgrep"}
            },
            cmd = "Telescope",
            keys = {
             { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
             { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
             { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
             { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
             { "<leader>f/", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
             { "<leader>vh", "<cmd>Telescope help_tags<cr>", desc = "Telescope_help_tags"},
             { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Telescope find string"}
            },
            config = function()
               require("telescope").setup({
               defaults = {
                    --many of the ignore patterns below are related to DxC Silo software, 
                    --to avoid most of their unrelated files in angular projects
                file_ignore_patterns = {"node_modules/*", "**/generator/*", "**/Borradores/*", "**/dist/*", "**/build/*", "**/coverage","**/node-oracledb/*"}
                }
            })
            end
    },
    "telescope-fzf-native.nvim",
    "nvim-telescope/telescope-fzf-writer.nvim",
}
