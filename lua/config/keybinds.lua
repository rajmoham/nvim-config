-- Leader keys
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Blackhole deleting
function _G.BlackholeOperator(motion)
    vim.cmd('normal! "_' .. motion)
end
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "d", function()
    vim.o.operatorfunc = "v:lua.BlackholeOperator"
    return '"_d'
end, { expr = true })
vim.keymap.set("v", "d", '"_d', { noremap = true})
vim.keymap.set("n", "x", '"_x', { noremap = true})

-- Configs shortcut
vim.keymap.set("n", "<leader>fc", function()
    require("telescope.builtin").find_files({
        cwd = vim.fn.stdpath("config"),
    })
end, { noremap = true, silent = true })

-- Move between focuses
vim.keymap.set("n", "<leader>h", "<C-w>h",{noremap = true})
vim.keymap.set("n", "<leader>l", "<C-w>l",{noremap = true})

-- Moving lines up and down
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", {noremap = true, silent = true })
vim.keymap.set("x", "<C-k>", ":m '<-2<CR>gv=gv", {noremap = true, silent = true })

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", {noremap = true, silent = true })
vim.keymap.set("x", "<C-j>", ":m '>+1<CR>gv=gv", {noremap = true, silent = true })

-- Keep cursor center of screen when finding
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Indentation
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Save file (due to bad habit and mainly muscle memory) - TODO
-- vim.keymap.set("n", "<C-s>", ":w<ENTER>", {noremap = true})
