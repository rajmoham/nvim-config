return {
    "akinsho/toggleterm.nvim",
    config = function()
	require("toggleterm").setup{
	    size = 20,
	    open_mapping = [[<c-\>]],
	    direction = "float",
	    float_opts = {
		title_pos = 'center',
		border = 'curved'
	    },
	}

	vim.api.nvim_set_keymap("n", "<leader>t", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("t", "<leader>t", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true })
    end
}
