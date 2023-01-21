vim.g.mapleader = " "

vim.keymap.set("n", "<leader>.", vim.cmd.Ex)  -- netrw


-- use 'J' and 'K' to move highligted text down and up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 'J' in normal mode appends next line to current (with space separation)
-- This keeps the cursor at the same place so this may be repeatedly executed
vim.keymap.set("n", "J", "mzJ`z")

-- Ctrl+D and Ctrl+U half-page jump down and up
-- This keeps cursor at same position as you do so
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- When searching for anything, cursor is kept in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Does not copy deleted text when you replace it
vim.keymap.set("x", "<leader>p", "\"_dP")

-- not needed as "unnamedplus" is added to clipboard
-- <leader>Y copies text into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- don't copy to clipboard when deleting
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- replace all occurences of current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make current file an executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

