return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })

      vim.diagnostic.config({
        virtual_text = true,  --disable inline error messages
        signs = false,         --disable gutter signs (W | E)
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover,                {desc='Hover info'})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition,  {desc='Go to definition'})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references,  {desc='Go to references'})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc='Code actions'})
    end,
  },
}
