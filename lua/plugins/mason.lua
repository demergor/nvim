return {
  {
    "williamboman/mason.nvim", 
    build = function()
      require("mason").update()
    end,
  },
  { "williamboman/mason-lspconfig.nvim" },
}
