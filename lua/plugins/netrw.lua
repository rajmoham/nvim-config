-- Plugin already exists so no need to install
-- Contains configs to customise the view

vim.g.netrw_winsize = 50
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_sizestyle = "H"
vim.g.netrw_liststyle = 3
vim.g.netrw_hide = 0
vim.g.netrw_preview = 1

local netrw = {}

return netrw
