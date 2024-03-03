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



    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",
    "nvim-lua/plenary.nvim",
    "github/copilot.vim",
    "eandrju/cellular-automaton.nvim",
    "nvim-tree/nvim-web-devicons",
    {
    "mbbill/undotree",
        keys = {
            {"<leader>u", "<cmd>UndotreeToggle<cr>", desc = "toggle on/off" },
        }
    },
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
