vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"
vim.o.wrap = false
vim.o.swapfile = false
vim.o.signcolumn = "yes"
vim.o.expandtab = true
vim.o.autoindent = true

-- Remove continuation for inline comments on new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
