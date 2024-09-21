return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
      },
    })
    vim.keymap.set("n", "<leader>fa", vim.lsp.buf.format, {desc='Format All', silent=true})
    vim.keymap.set("v", "<leader>fs", vim.lsp.buf.format, {desc='Format Selection', silent=true})
  end,
}
