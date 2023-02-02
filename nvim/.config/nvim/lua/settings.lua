-----------------------------------------------------------------------------
-- General options, no need for a specific scope
-------------------------------------------------------------------------------
local set = vim.opt

-- Set the cursor shape
set.guicursor = 'n-i-r:hor95' 

-- EOLs to try when starting new buffer
set.fileformats = "unix,dos,mac"

-- Smart tab
set.smarttab = true 

-- Smart cases when searching patterns
set.smartcase = true

-- ignore case when searching, overridden by smartcase
set.ignorecase = true 

-- number lines
set.number = true
set.relativenumber = true

-- scroll offset
set.scrolloff = 10

-- tabs to spaces
set.expandtab = true

-- 1 tab for 5 spaces
set.shiftwidth =  5
set.softtabstop = 5 -- There are multiple options to accomplish this, check later

-- enable 24-bit color when using vim in a terminal emulator. 
set.termguicolors = true

-------------------------------------------------------------------------------
-- Global config
-------------------------------------------------------------------------------
-- global options
local o = vim.o


-------------------------------------------------------------------------------
-- window-local config
-------------------------------------------------------------------------------
-- window local options
local wo = vim.wo 


-------------------------------------------------------------------------------
-- buffer local config
-------------------------------------------------------------------------------
-- buffer local options
local bo = vim.bo



-------------------------------------------------------------------------------
-- Settings for which there is no api for lua still 
-------------------------------------------------------------------------------
vim.cmd([[highlight PmenuSel guibg=darkmagenta]])
vim.cmd([[highlight Pmenu guibg=backgroud]])
