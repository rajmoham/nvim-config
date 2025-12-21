vim.o.number = true
vim.o.cursorline = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.termguicolors = true
vim.o.winborder = "rounded"
vim.o.wrap = false
vim.o.swapfile = false
vim.o.signcolumn = "yes"
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.sidescrolloff = 20
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.showmatch = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.autoread = true
vim.o.backspace = "indent,eol,start"


-- Remove continuation for inline comments on new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Feedback for yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup,
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Blinking Cursor
vim.o.guicursor = "a:blinkwait700-blinkoff400-blinkon250-Cursor"
