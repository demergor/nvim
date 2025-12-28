return {
  "mfussenegger/nvim-jdtls",
  ft = "java",  -- only load for java files
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("jdtls_lsp")
  end
}
