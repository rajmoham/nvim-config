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

-- Terminal

