vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
vim.keymap.set("n", "lg", vim.cmd.LazyGit)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>p", "\"_dP") -- paste without updating register with the deketed text
vim.keymap.set("n", "C-d", "C-dzz") -- move down half a page and center the cursor
vim.keymap.set("n", "C-u", "C-uzz") -- move up half a page and center the cursor
--[[Motions to learn, and later decide if remap is necessary
-- ciw - change inner word
-- ci" - change inner quote
-- ci( - change inner parentheses
-- ci{ - change inner curly braces
-- ci[ - change inner square brackets
-- ci< - change inner angle brackets
-- ci` - change inner backticks
-- caw - change a word
-- ca" - change a quote
-- ca( - change a parentheses
-- ca{ - change a curly braces
-- viw - visually select inner word
-- vi" - visually select inner quote
-- vi( - visually select inner parentheses
--
-- yiw - yank inner word
-- etc 
--
-- vim.keymap.set("n", "C-d", "C-dzz") -- move down half a page and center the cursor
-- vim.keymap.set("n", "C-u", "C-uzz") -- move up half a page and center the cursor
-- dap - delete a paragraph (including leading/trailing empty lines)
-- vip - visually select inner paragraph ( not including leading/trailing empty lines)
--
]]--
