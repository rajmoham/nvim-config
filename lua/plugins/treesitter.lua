return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	require("nvim-treesitter.install").prefer_git = false
	require("nvim-treesitter.install").compilers = { "gcc", "clang" }
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight={
		enable = true,
	    },
	    indent = { enable = true },
	    autotage = { enable = true },
	    ensure_installed = {
		"cpp",
	    },
	    auto_install = false,
	})
    end
}

