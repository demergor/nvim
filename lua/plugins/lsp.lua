return {
  {
    "neovim/nvim-lspconfig", 
    lazy = false, 
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "jdtls", "clangd" },
      }) 

      vim.diagnostic.config({
        virtual_text = true
      })

      vim.lsp.config("pyright", {})
      vim.lsp.config("jdtls", {})
      vim.lsp.config("clangd", {})
    end, 
  },
}
