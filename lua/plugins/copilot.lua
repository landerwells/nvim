return {
  'github/copilot.vim',
  -- I want to have leader c toggle copilot completions
  config = function()
    vim.keymap.set("n", "<leader>ce", ':Copilot enable<CR>')
    vim.keymap.set("n", "<leader>cd", ':Copilot disable<CR>')
  end
}
