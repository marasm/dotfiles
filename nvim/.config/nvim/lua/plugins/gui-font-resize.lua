return {
  "ktunprasert/gui-font-resize.nvim",
  config = function()
    require("gui-font-resize").setup({
      default_size = 10,
      change_by = 1, -- step value that will inc/dec the fontsize by
      bounds = {
        maximum = 24, -- maximum font size, when you try to set a size bigger than this it will default to max
        minimum = 8, -- any modification lower than 8 will spring back to 8
      },
    })
    local opts = { noremap = true, silent = true }

    vim.keymap.set("n", "<C-=>", "<cmd>:GUIFontSizeUp<CR>", opts)
    vim.keymap.set("n", "<C-->", "<cmd>:GUIFontSizeDown<CR>", opts)
    vim.keymap.set("n", "<C-0>", "<cmd>:GUIFontSizeSet<CR>", opts)
  end,
}
