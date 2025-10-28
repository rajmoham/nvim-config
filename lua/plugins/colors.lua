return {
    {
	"catppuccin/nvim",
	config = function()
	    vim.cmd.colorscheme "catppuccin-frappe"
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'tokyonight',
	},
    },
}
