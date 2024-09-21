return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				highlight = { enable = false },
				indent = { enable = true },
				ensure_installed = {
					"javascript",
					"vim",
					"lua",
          "go",
					"yaml",
					"java",
					"json",
					"html",
					"markdown",
					"bash",
					"dockerfile",
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<cr>",
						node_incremental = "<cr>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
			})
		end,
	},
}
