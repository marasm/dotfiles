return {
  "marasm/toggle-checkbox.nvim",
  config = function()
    require("toggle-checkbox").setup({
      --can override characters for states
      checked_char = "",
      --unchecked_char = " ",
      --failed_char = "x",
      --partial_char = "~",
    })

		vim.keymap.set("n", "<leader>tt", ":ToggleCheckbox<CR>", {desc='Toggle checkbox state', silent=true})
		vim.keymap.set("n", "<leader>tc", ":ToggleCheckboxCheck<CR>", {desc='Mark checkbox as checked', silent=true})
		vim.keymap.set("n", "<leader>tu", ":ToggleCheckboxUnCheck<CR>", {desc='Mark checkbox as unchecked', silent=true})
		vim.keymap.set("n", "<leader>tp", ":ToggleCheckboxPartial<CR>", {desc='Mark checkbox as partial', silent=true})
		vim.keymap.set("n", "<leader>tf", ":ToggleCheckboxFailed<CR>", {desc='Mark checkbox as failed', silent=true})
  end
}
