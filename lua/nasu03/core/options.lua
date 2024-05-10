
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

--basic

vim.opt.title = true
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.virtualedit = 'onemore'
vim.opt.laststatus = 2
vim.opt.pumheight = 8
vim.opt.exrc = true
vim.opt.syntax = 'on'
vim.opt.ruler = true
vim.opt.mouse = 'a'
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.scrolloff = 8
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.hidden = true
vim.opt.wildignore:append { "*/node_modules/*" }
vim.opt.clipboard:append { "unnamedplus" }

--highlight

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.opt.wildoptions = 'pum'

