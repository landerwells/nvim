return {
  "nvim-lualine/lualine.nvim",
  config = function()
    -- Custom component to display Harpoon mark status
    local harpoon_mark_indicator = function()
      local marks = require('harpoon.mark').get_current_marks()
      if next(marks) ~= nil then
        -- Check if the current file is marked. Adjust the indicator as needed.
        return '🔖'
      else
        return ''
      end
    end

    require("lualine").setup({
      options = {
        theme = "auto",
        disabled_filetypes = { "alpha", "dashboard", "neo-tree" },
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_x = {
          "encoding",
          { "fileformat", symbols = { unix = "" } },
          "filetype",
          harpoon_mark_indicator, -- Add the custom component here
        },
      },
    })
  end,
}

