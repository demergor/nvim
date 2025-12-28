return {
  {
    "neovim/nvim-lspconfig", 
    lazy = false, 
    config = function()      -- Suppress JDTLS exit messages
      vim.notify = (function(orig_notify)
        return function(msg, log_level, opts)
          if type(msg) == "string" and msg:match("Client jdtls quit") then
            return
          end
          orig_notify(msg, log_level, opts)
        end
      end)(vim.notify)

      -- Enable global LSP file watching handler (for jdtls)
      vim.lsp.handlers["workspace/didChangeWatchedFiles"] =
      vim.lsp.handlers["workspace/didChangeWatchedFiles"] or function() end

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "clangd" },
      }) 

      vim.diagnostic.config({
        virtual_text = false,      -- disable inline virtual text
        signs = true,              -- keep gutter signs
        underline = true,          -- highlight problematic code
        float = {
          border = "rounded",      -- rounded border
          source = "always",       -- show LSP source
          focusable = false,       -- lightweight, doesn't steal focus
          max_width = 88,          -- restrict width
          max_height = 20,         -- optional: limit height
          wrap = true,             -- wrap long lines
        },
      })

      vim.lsp.config("pyright", {})
      vim.lsp.config("clangd", {})
    end, 
  },
}
