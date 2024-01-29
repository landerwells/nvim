return {
  -- lualine      https://github.com/nvim-lualine/lualine.nvim
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        disabled_filetypes = { "alpha", "dashboard", "neo-tree" },
        -- component_separators = { left = '', right = '' },
        component_separators = { left = "|", right = "|" },
        -- section_separators = { left = '', right = '' },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
      },
    })
  end,
}
