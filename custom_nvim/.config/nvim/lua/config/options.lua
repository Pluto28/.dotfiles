local opt = vim.o

-- Configure cursor
opt.guicursor = "a:hor20"

-- Configure indenting
opt.expandtab = true -- spaces instead of tabs
opt.shiftwidth = 4 -- Shift 4 spaces when tab
opt.tabstop = 4 -- 1 tab == 4 spaces
opt.smartindent = true -- Autoindent new lines

-- Configure line numbers showing
opt.relativenumber = true
opt.number = true
opt.scrolloff = 10

-- Highlight search
opt.hlsearch = true
-- TODO: set hl-IncSearch
opt.incsearch = true

-- enable 24-bit colors on the terminal
opt.termguicolors = true
