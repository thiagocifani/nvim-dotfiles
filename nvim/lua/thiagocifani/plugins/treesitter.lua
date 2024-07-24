return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },

				vim.api.nvim_command("autocmd BufRead,BufNewFile *.jbuilder set filetype=ruby"),
			})
		end,
	},
}
