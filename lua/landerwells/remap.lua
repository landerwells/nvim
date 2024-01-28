vim.g.mapleader = " "

vim.keymap.set("n", "<C-b>", ':Neotree toggle<CR>')

vim.keymap.set("i", "<BS>", '<C-w>')

vim.keymap.set("v", "J", ":m '>+7<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<4<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "gd", "gdzz")

vim.keymap.set("n", "<C-a>", "ggVG")

-- prevent x from copying over Vim clipboard
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

vim.keymap.set("i", "<C-BS>", "<C-w>")

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>v", vim.cmd.vs)
vim.keymap.set("n", "<leader>h", vim.cmd.split)

vim.keymap.set('n', '<C-e>', '<nop>')

-- Copilot
vim.keymap.set('n', '<leader>c', function()
    -- Check if Copilot is enabled
    local copilot_enabled = vim.g.copilot_enabled
    if copilot_enabled then
        -- If enabled, disable it
        vim.cmd(":Copilot disable")
    else
        -- If disabled, enable it
        vim.cmd("Copilot enable")
    end
    -- Toggle the state variable
    vim.g.copilot_enabled = not copilot_enabled
end)
