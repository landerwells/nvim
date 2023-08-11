return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = { 'TSInstallInfo', 'TSInstall' },
    config = function()
      local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')

      if not status_ok then
        return
      end

      treesitter.setup({
        ensure_installed = { "cpp", "java", "ruby", "lua", "markdown_inline", "c", "vim" },
        sync_install = false,
        auto_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        context_commentstring = {
          enable = true,
          autocmd = false
        },
--        autopairs = {
--          enable = true
--        },
        autotag = {
          enable = true
        },
        indent = {
          enable = true,
          disable = { 'go' }
        }
      })
    end

  }
}
