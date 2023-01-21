vim.opt.nu = true  -- line numbers
vim.opt.relativenumber = true   -- relative line numbers

-- fix to soul-crushing default indents 🤕
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true  -- word wrap

vim.opt.cursorline = true

vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard:append("unnamedplus")
vim.opt.iskeyword:append("-")  -- "-" is part of word

vim.opt.cmdheight = 2
vim.opt.mouse = "a"  -- allow mouse to be used in neovim
vim.opt.pumheight = 10
vim.opt.writebackup = false

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- TODO set up undotree and then uncomment
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false  -- don't keep search highlighted after `/` search
vim.opt.incsearch = true  -- keeps highlighting updated as you search

vim.opt.termguicolors = true  -- better colors

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"  -- left column always shows

vim.opt.updatetime = 50  -- fast update time

vim.opt.colorcolumn = "80"

vim.g.mapleader = " " --  leader key
