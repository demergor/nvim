return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "saghen/blink.cmp",
  },
  keys = {
    {
      "<leader>cf",
      function()
        local view = vim.fn.winsaveview()
        vim.cmd("normal! gggqG")
        vim.fn.winrestview(view)
      end,
      desc = "Format entire buffer while keeping current view",
      ft = { "c", "cpp", "h", "hpp", "hxx" },
    },
  },
  config = function()
    local caps = require("blink.cmp").get_lsp_capabilities()
    vim.lsp.config("*", { capabilities = caps })
    vim.lsp.config("clangd", {
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
      },
      root_markers = {
        "compile_commands.json",
        "compile_flags.txt",
        ".clangd",
        ".git",
      },
    })

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "clangd", "jdtls", "lua_ls", "omnisharp", "pyright" },
      automatic_enable = {
        exclude = { "jdtls" },
      },
    })
  end
}
