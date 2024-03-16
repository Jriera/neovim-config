return {
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" }, {
                RGB = true,      -- #RGB hex codes
                RRGGBB = true,   -- #RRGGBB hex codes
                RRGGBBAA = true, -- #RRGGBBAA hex codes
                rgb_fn = true,   -- CSS rgb() and rgba() functions
                hsl_fn = true,   -- CSS hsl() and hsla() functions
                css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
                js = true,       -- Enable all JavaScript features: RGB, RRGGBBAA
                ts = true,       -- Enable all TypeScript features: RGB, RRGGBBAA
                json = true,     -- Enable all JSON features: RGB, RRGGBB
                lua = true,      -- Enable all Lua features: RGB, RRGGBB
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
            { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "toggle on/off" },
        }
    },
    { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
    { "MunifTanjim/nui.nvim",  lazy = true }
}
