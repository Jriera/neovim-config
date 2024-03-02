vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
vim.keymap.set("n", "gg", vim.cmd.LazyGit)
        
