local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", 
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- LSP
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
  
  -- mason
  {
    "williamboman/mason.nvim", 
    build = function()
      require("mason").update()
    end,
  },

  { "williamboman/mason-lspconfig.nvim" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
})
