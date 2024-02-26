return {
    "neovim/nvim-lspconfig",
    "ThePrimeagen/vim-be-good",
    {
        "tiagovla/tokyodark.nvim",
        opts = {},
        config = function(_, opts)
            require("tokyodark").setup(opts)
            vim.cmd [[colorscheme tokyodark]]
        end,
    },



    "nvim-lua/plenary.nvim",
    {
    "nvim-telescope/telescope.nvim", tag = '0.1.5',
    dependencies = { { 'nvim-lua/plenary.nvim'},{ "BurntSushi/ripgrep"} },
	cmd = "Telescope",
  keys = {
    { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
    { "<leader>f/", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
  },
  config = true,
    },
    "tpope/vim-fugitive",
   -- "github/copilot.vim",
    "eandrju/cellular-automaton.nvim",
    "telescope-fzf-native.nvim",
    "nvim-telescope/telescope-fzf-writer.nvim",
    "nvim-tree/nvim-web-devicons",
    {
    "mbbill/undotree",
        keys = {
            {"<leader>u", "<cmd>UndotreeToggle<cr>", desc = "toggle on/off" },
        }
    },
    "folke/trouble.nvim",
  --[[  {
        'nvim-tree/nvim-tree.lua',
        version = "*",
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
        local tree = require("nvim-tree")
        tree.setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = true
            },
        })
        end
    },]]--
    {
    "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim"},
    	config = function()
        local harpoon = require("harpoon")
		harpoon:setup()
                vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
                vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

                vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
                vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
                vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
                vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

                -- Toggle previous & next buffers stored within Harpoon list
                vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
                vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    	end

    },
    
  

}
