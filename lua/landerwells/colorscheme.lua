-- Themery block
-- This block will be replaced by Themery.
require("boo-colorscheme").use({
  italic = true, -- toggle italics
  theme = "boo"
})
vim.cmd("colorscheme oxocarbon")
vim.cmd("highlight GitSignsAdd guifg=#58d354")
vim.cmd("highlight GitSignsChange guifg=#ffae44")
-- end themery block

-- alternate method for transparency
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
