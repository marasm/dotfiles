return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>fb", ":Neotree toggle<CR>", {desc="Toggle file browser", silent=true})
		vim.keymap.set("n", "<leader>ob", ":Neotree buffers reveal float<CR>", {desc="Show open buffers", silent=true})

    require("neo-tree").setup({
      close_if_last_window = false,
      sort_case_insensitive = true,
      enable_git_status = false,
      enable_diagnostics = false,
      filesystem={
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true,
        },
        follow_current_file = {
          enabled = false, -- This will find and focus the file in the active buffer every time
          --               -- the current file is changed while the tree is open.
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
        hijack_netrw_behavior = "open_default" 
      }
    })
	end,
}
