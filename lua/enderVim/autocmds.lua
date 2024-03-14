
-- Highlight on yank
--[[vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})]]--

vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "Highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    group = vim.api.nvim_create_augroup("Conceal Level", { clear = true }),
    pattern = {"*.md"},
    desc = "Changes conceal level to 2",
    callback = function()
        vim.opt.conceallevel = 1
        print("Conceal level set to 1")
    end,
})
