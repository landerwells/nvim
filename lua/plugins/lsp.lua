return {
  {
    'folke/neodev.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local neodev_status_ok, neodev = pcall(require, 'neodev')

      if not neodev_status_ok then
        return
      end

      neodev.setup()
    end
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    cmd = 'Mason',
    branch = 'v2.x',
    dependencies = {
      { 'neovim/nvim-lspconfig' },

      {
        'williamboman/mason.nvim',
        opts = {
          ensure_installed = {
            "rust-analyzer",
          },
        },
      },

      { 'williamboman/mason-lspconfig.nvim', },

      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'onsails/lspkind.nvim' },
      { 'L3MON4D3/LuaSnip' },
      { 'SmiteshP/nvim-navic' }
    },

    config = function()

      local lsp = require('lsp-zero').preset({})

      local navic = require('nvim-navic')

      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, bufnr)
        end
      end)

      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

      lsp.ensure_installed({
        'lua_ls',
        'clangd',
      })

      lsp.setup()

      local cmp = require('cmp')
      -- local cmp_action = require('lsp-zero').cmp_action()

      require('lspkind').init({
        -- DEPRECATED (use mode instead): enables text annotations
        --
        -- default: true
        -- with_text = true,

        -- defines how annotations are shown
        -- default: symbol
        -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
        mode = 'symbol_text',

        -- default symbol map
        -- can be either 'default' (requires nerd-fonts font) or
        -- 'codicons' for codicon preset (requires vscode-codicons font)
        --
        -- default: 'default'
        preset = 'codicons',

        -- override preset symbols
        --
        -- default: {}
        symbol_map = {
          Text = "󰉿",
          Method = "󰆧",
          Function = "󰊕",
          Constructor = "",
          Field = "󰜢",
          Variable = "󰀫",
          Class = "󰠱",
          Interface = "",
          Module = "",
          Property = "󰜢",
          Unit = "󰑭",
          Value = "󰎠",
          Enum = "",
          Keyword = "󰌋",
          Snippet = "",
          Color = "󰏘",
          File = "󰈙",
          Reference = "󰈇",
          Folder = "󰉋",
          EnumMember = "",
          Constant = "󰏿",
          Struct = "󰙅",
          Event = "",
          Operator = "󰆕",
          TypeParameter = "",
        },
      })
      require('luasnip.loaders.from_vscode').lazy_load()
      local lspkind = require 'lspkind'

      cmp.setup({
        preselect = cmp.PreselectMode.None,
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        },
        mapping = {
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        formatting = {
          format = lspkind.cmp_format({with_text = true, maxwidth = 50})
        }
      })

    end
  },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'rafamadriz/friendly-snippets' },
  -- {
  --     'dgagn/diagflow.nvim',
  --     opts = {
  --         -- placement = 'inline',
  --         scope = 'line',
  --         padding_right = 5
  --     }
  -- }
}
