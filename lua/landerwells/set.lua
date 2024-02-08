-- Indentation
vim.opt.autoindent = true           -- Enable auto-indentation
vim.opt.expandtab = true            -- Converts tabs to spaces
vim.opt.smartindent = true          -- Makes indenting smart
vim.opt.smarttab = true             -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.shiftround = true           -- Round indent
vim.opt.shiftwidth = 2              -- Size of an indent
vim.opt.softtabstop = 2             -- Number of spaces tabs count for  
vim.opt.tabstop = 2                 -- Number of spaces tabs count for

-- Display
vim.opt.nu = true                  -- Show line numbers
vim.opt.relativenumber = true      -- Show relative line numbers
vim.opt.wrap = false               -- Disable line wrapping
vim.opt.colorcolumn = "81"
vim.opt.signcolumn = "yes"

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/vim/undodir"
vim.opt.undofile = true

-- Misc
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.isfname:append("@-@")
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.cmd [[ highlight clear ]]
vim.opt.background = "dark" -- set this to dark or light
vim.opt.backspace = "indent,eol,start"
vim.opt.cursorline = true
vim.opt.winblend = 0
vim.o.pumheight = 15

-- vim.cmd([[ 
-- augroup netrw_mapping
--   autocmd!
--   autocmd filetype netrw call NetrwMapping()
-- augroup END
--
-- function! NetrwMapping()
--   nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>
-- endfunction
--
-- let g:netrw_liststyle = 3
-- let g:netrw_banner = 0
-- let g:netrw_home=$XDG_CACHE_HOME.'/vim'
-- ]])
--

vim.on_key(function(char)
if vim.fn.mode() == "n" then
vim.opt.hlsearch = vim.tbl_contains({ "<CR>", "n", "N", "*", "#", "?", "/" }, vim.fn.keytrans(char))
end
end, vim.api.nvim_create_namespace "auto_hlsearch")
