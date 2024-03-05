-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme purple")
vim.cmd('highlight Comment cterm=italic gui=italic')
vim.cmd("highlight RainbowDelimiterRed guifg=#ffd700")
vim.cmd("highlight RainbowDelimiterYellow guifg=#da70d6")
vim.cmd("highlight RainbowDelimiterBlue guifg=#179fff")
vim.cmd("highlight RainbowDelimiterOrange guifg=#ffd700")
vim.cmd("highlight RainbowDelimiterGreen guifg=#da70d6")
vim.cmd("highlight RainbowDelimiterViolet guifg=#179fff")
vim.cmd("highlight CmpItemKindSnippetDefault  guifg=#da70d6")
vim.cmd("highlight lualine_c_normal guibg=#171717")
vim.cmd("highlight lualine_c_insert guibg=#171717")
vim.cmd("highlight lualine_c_inactive guibg=#171717")
vim.cmd("highlight FloatBorder guifg=#179fff")
vim.cmd("highlight Normal guibg=#1d1d1d")
vim.cmd("highlight Pmenu guibg=#3f3f3f")
-- vim.cmd("highlight GitSignsAdd guifg=#58d354")
-- vim.cmd("highlight GitSignsChange guifg=#ffae44")
-- end themery block

-- alternate method for transparency
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
