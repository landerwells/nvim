vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Better incrementing/decrementing
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "_", "<C-x>")

-- prevent x from copying over Vim clipboard
-- test to see if I wanna keep it
-- this is the black hole register
vim.keymap.set('n', 'x', '"_x')

-- Quick way to open register menu
vim.keymap.set("n", "<leader>r", vim.cmd.reg)

-- indent and outdent lines in visual mode
vim.keymap.set('v', '<TAB>', '<S->>gv')
vim.keymap.set('v', '<S-TAB>', '<S-<>gv')

-- the greatest remap ever (Primeagen)
vim.keymap.set('v', '<leader>p', '"_dP')

-- keep cursor at front when appending lines below
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', 'x', '"_x')

-- creates a new line below the cursor and goes back into normal mode
vim.keymap.set('n', '<CR>', 'o<Esc>')

-- creates a new line above the cursor and goes back into normal mode
vim.keymap.set('n', '<A-CR>', 'O<Esc>')

-- Redo
vim.keymap.set("n", "U", "C-r")

vim.keymap.set("i", "<C-BS>", "<C-w>")

vim.keymap.set("n", "U", "<C-r>")

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
