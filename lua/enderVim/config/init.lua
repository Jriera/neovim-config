--require("enderVim.config.autocmds")
----- HELPER ----
local scopes = { o = vim.o, b = vim.bo, w = vim.wo }
local function opt(scope,key, value)
    scopes[scope][key] = value
    if scope ~= 'o'then scopes['o'] = value end
end

-------

local indent = 4
vim.o.formatoptions = "jcqnt"
vim.o.shortmess = "filnxtToOFWIcC"
vim.opt.breakindent = true
vim.opt.cmdheight = 1
vim.opt.completeopt = "menuone,noselect"
vim.opt.conceallevel = 3
vim.opt.confirm = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.inccommand = "split" -- show changes incrementally in a split window specially useful for substitutions
vim.opt.joinspaces = false
vim.opt.laststatus = 0
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
vim.opt.shiftround = true
vim.opt.shiftwidth = indent
vim.opt.showmode = false
vim.opt.sidescrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true
vim.opt.tabstop = 4 -- number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4 -- number of spaces that a <Tab> counts for when using the > or < commands
vim.opt.virtualedit = "block" -- allow cursor to move anywhere in visual block mode 
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.updatetime = 200
vim.opt.wrap = false
-- opt('o', 'termguicolors', true)
-- vim.opt.clipboard = "unnamedplus" this synchronizes the system clipboard with the buffer clipboard
