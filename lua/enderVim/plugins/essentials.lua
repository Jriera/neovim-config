return {
    {
    "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" }, {
                RGB = true, -- #RGB hex codes
                RRGGBB = true, -- #RRGGBB hex codes
                RRGGBBAA = true, -- #RRGGBBAA hex codes
                rgb_fn = true, -- CSS rgb() and rgba() functions
                hsl_fn = true, -- CSS hsl() and hsla() functions
                css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
                js = true, -- Enable all JavaScript features: RGB, RRGGBBAA
                ts = true, -- Enable all TypeScript features: RGB, RRGGBBAA
                json = true, -- Enable all JSON features: RGB, RRGGBB
                lua = true, -- Enable all Lua features: RGB, RRGGBB
            })
            vim.keymap.set("n", "<leader>cc", "<cmd>ColorizerToggle<cr>", { noremap = true, silent = true })
        end
    },
    "neovim/nvim-lspconfig",
    "ThePrimeagen/vim-be-good",
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
            ---  selection of attached buffers in harpoon
            vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(2) end)
            vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
            vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
                -- Toggle previous & next buffers stored within Harpoon list
            vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
            vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
        end

    },
    {"ellisonleao/glow.nvim", config = true, cmd = "Glow"}

}
