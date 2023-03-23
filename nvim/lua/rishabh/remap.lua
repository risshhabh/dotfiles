vim.g.mapleader      = ' '
vim.g.maplocalleader = ' '

-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>rw', vim.cmd.Ex) -- netrw

-- Easier quit
vim.keymap.set("n", "<leader>qq", ":confirm q<CR>")
-- Easier write
vim.keymap.set("n", "<leader>w", ":write<CR>")

-- Errors with Trouble.nvim
vim.keymap.set("n", "<leader>t", ":Trouble<CR>")


-- use 'J' and 'K' to move highlighted text down and up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- match braces because vim doesn't
vim.keymap.set('i', '{<CR>', '{<CR>}<Esc>ko')
vim.keymap.set('i', '(<CR>', '(<CR>)<Esc>ko')
vim.keymap.set('i', '[<CR>', '[<CR>]<Esc>ko')

-- TODO make this work 🤒
-- TODO mark current cursor position
-- go to top of file and format to bottom
-- go to top of file and fix indents to 4-space
-- TODO fix clang braces to allman braces
-- write changes
-- TODO return to mark
-- vim.keymap.set('n', '<leader>w', 'gggqGgg=G:w<CR>g;')

-- 'J' in normal mode appends next line to current (with space separation)
-- This keeps the cursor at the same place so this may be repeatedly executed
vim.keymap.set('n', 'J', 'mzJ`z')

-- Ctrl+D and Ctrl+U half-page jump down and up
-- This keeps cursor at same position as you do so
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- When searching for anything, cursor is kept in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Does not copy deleted text when you replace it
vim.keymap.set('x', '<leader>p', '\"_dP')

-- not needed as 'unnamedplus' is added to clipboard
-- <leader>Y copies text into system clipboard
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')

-- don't copy to clipboard when deleting
vim.keymap.set('n', '<leader>d', '\"_d')
vim.keymap.set('v', '<leader>d', '\"_d')

-- replace all occurences of current word
vim.keymap.set('n', '<leader>sr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make current file an executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- <M-Arrow> to switch pane focus
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-l>', '<C-w>l')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-Left>', '<C-w>h')
vim.keymap.set('n', '<M-Right>', '<C-w>l')
vim.keymap.set('n', '<M-Up>', '<C-w>k')
vim.keymap.set('n', '<M-Down>', '<C-w>j')

-- <C-Arrow> to create pane
vim.keymap.set('n', '<C-k>', '<C-w>s')
vim.keymap.set('n', '<C-l>', '<C-w>v')
