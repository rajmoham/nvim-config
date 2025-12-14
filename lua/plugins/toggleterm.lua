return {
    "akinsho/toggleterm.nvim",
    config = function()
	require("toggleterm").setup{
	    size = vim.o.columns * 0.4,
	    open_mapping = [[<c-\>]],
	    direction = "vertical",
	}

	vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
    end
}
