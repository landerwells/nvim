vim.opt.nu = true
vim.opt.relativenumber = true

--Sets spaces instead of tabs
vim.opt.expandtab = true

--Work spacing
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

--[[
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--]]

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 50
vim.cmd [[ highlight clear ]]

vim.opt.background = "dark" -- set this to dark or light

vim.opt.backspace = "indent,eol,start"

vim.opt.cursorline = true
vim.opt.winblend = 0
vim.opt.colorcolumn = "81"

vim.o.pumheight = 15

vim.cmd([[ 
augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>
endfunction

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_home=$XDG_CACHE_HOME.'/vim'
]])
