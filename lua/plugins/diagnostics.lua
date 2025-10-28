return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
	require("tiny-inline-diagnostic").setup({
	    preset = "minimal",
	    transparent_bg = true,
	    signs = {
		arrow = "              ",
		up_arrow = "              ",
	    },
	    options = {
		multilines = { enabled = true },
		throttle = 100,
		severity = {
		    vim.diagnostic.severity.ERROR,
		    vim.diagnostic.severity.WARN,
		    -- vim.diagnostic.severity.INFO,
		    -- vim.diagnostic.severity.HINT,
		},
		add_messages = {
		    messages = false
		},
		show_all_diags_on_cursorline = true,
		-- show_diags_only_under_cursor = true,
	    }
	})
	vim.diagnostic.config({ virtual_text = false })
    end,
}


